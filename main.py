# %%
import pandas as pd
import gdown


# %%
df = pd.read_excel("Formulario Big Data - FTM (respuestas).xlsx")



# %%
df.sort_values('Marca temporal', inplace=True)
df = df.reset_index()
df["id"] =df["index"].apply(lambda x: str(x).zfill(4))
df.head()
# %%
url = f"{df['CV'].iloc[0]}/view"
url = "https://drive.google.com/file/d/1gt-dpBdIYvkRdmrr6wrYfCQPXic-l1LT/view"
cv_id=  df["id"].iloc[0]
# %%
#gdown.download(url,output=f"{dni}.pdf")

# %%
from googleapiclient import discovery
from googleapiclient.http import MediaIoBaseDownload
from httplib2 import Http
from oauth2client import file, client, tools
import io


SCOPES = "https://www.googleapis.com/auth/drive",
#'https://www.googleapis.com/auth/drive.readonly.metadata']
store = file.Storage('storage.json')
creds = store.get()
if not creds or creds.invalid:
    flow = client.flow_from_clientsecrets('client_id.json', SCOPES)
    creds = tools.run_flow(flow, store)
DRIVE = discovery.build('drive', 'v3', http=creds.authorize(Http()))
file_id = "1gt-dpBdIYvkRdmrr6wrYfCQPXic-l1LT"
file_name=f"{cv_id}.pdf"


request=DRIVE.files().get_media(fileId=file_id)
fh = io.BytesIO()
downloader = MediaIoBaseDownload(fh, request)
done = False
while done is False:
    status, done = downloader.next_chunk()
    print ("Download %d%%." % int(status.progress() * 100))
fh.seek(0)
with open(file_name,'wb') as f:
    f.write(fh.read())
# %%
from google.cloud import storage

storage_client = storage.Client()
bucket = storage_client.bucket("bucket_for_applicant_selector")

blob = bucket.blob(f"cvs/{cv_id}.pdf")
blob.upload_from_filename(file_name)



# %%
import os

os.getenv('GOOGLE_APPLICATION_CREDENTIALS')
# %%
import json

f = open("data/output/json/cv_txt_output-1-to-2.json")
dc = json.load(f)
# %%
dc.keys()
# %%
len(dc["responses"])
# %%
dc["responses"][0].keys()
# %%
dc["responses"][0]["fullTextAnnotation"].keys()
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"]
# %%
len(dc["responses"][0]["fullTextAnnotation"]["pages"])
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0].keys()
# %%
len(dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"])
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0].keys()
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0]["paragraphs"][0]
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0]["paragraphs"][0].keys()
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0]["paragraphs"][0]["words"][0]
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0]["paragraphs"][0]["words"][0].keys()
# %%
dc["responses"][0]["fullTextAnnotation"]["pages"][0]["blocks"][0]["paragraphs"][0]["words"][0]["symbols"]
# %%
print(dc["responses"][0]["fullTextAnnotation"]["text"])
# %%
dc["responses"][1]["fullTextAnnotation"]["text"]
# %%
import json
import re
from google.cloud import vision
from google.cloud import storage

# Supported mime_types are: 'application/pdf' and 'image/tiff'
mime_type = 'application/pdf'

# How many pages should be grouped into each json output file.
batch_size = 6

client = vision.ImageAnnotatorClient()

feature = vision.Feature(
    type_=vision.Feature.Type.DOCUMENT_TEXT_DETECTION)

gcs_source = vision.GcsSource(uri="gs://bucket_for_applicant_selector/cvs/0001.pdf")
input_config = vision.InputConfig(
    gcs_source=gcs_source, mime_type=mime_type)

gcs_destination = vision.GcsDestination(uri="gs://bucket_for_applicant_selector/cv_json/0001/")
output_config = vision.OutputConfig(
    gcs_destination=gcs_destination, batch_size=batch_size)

async_request = vision.AsyncAnnotateFileRequest(
    features=[feature], input_config=input_config,
    output_config=output_config)

operation = client.async_batch_annotate_files(
    requests=[async_request])
# %%


# %%
import json
import re
import pandas as pd
from google.cloud import vision
from google.cloud import storage

BUCKET_NAME= "bucket_for_applicant_selector"

df = pd.read_excel("data/input/data.xlsx")
df.head()
#%%
df.sort_values('Marca temporal', inplace=True)
df = df.reset_index()
df["id"] =df["index"].apply(lambda x: str(x).zfill(4))
df.head()

# %%
from sqlalchemy import create_engine
e = create_engine('sqlite:///applicants.db') 

df.to_sql(name='records', con=e,index=False)
# %%
from google.cloud import storage
import json

# Instantiate a Google Cloud Storage client and specify required bucket and file
storage_client = storage.Client()
bucket = storage_client.get_bucket('bucket_name')
blob = bucket.blob('filename.json')

# Download the contents of the blob as a string and then parse it using json.loads() method
data = json.loads(blob.download_as_string(client=None))