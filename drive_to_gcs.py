# %%
import pandas as pd
from googleapiclient import discovery
from googleapiclient.http import MediaIoBaseDownload
from httplib2 import Http
from oauth2client import file, client, tools
import io
import os

BUCKET_NAME= "bucket_for_applicant_selector"

def upload_to_gcs(file_path,bucket_name,blob_path):
    from google.cloud import storage
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(blob_path)
    blob.upload_from_filename(file_path)

def drive_to_local(service,file_id,file_path):
    request=service.files().get_media(fileId=file_id)
    fh = io.BytesIO()
    downloader = MediaIoBaseDownload(fh, request)
    done = False
    while done is False:
        status, done = downloader.next_chunk()
        print ("Download %d%%." % int(status.progress() * 100))
    fh.seek(0)
    with open(file_path,'wb') as f:
        f.write(fh.read())
# %%
df = pd.read_excel("data/input/Formulario Big Data - FTM (respuestas).xlsx")
# %%
df.sort_values('Marca temporal', inplace=True)
df = df.reset_index()
df["id"] =df["index"].apply(lambda x: str(x).zfill(4))
df.head()


# %%
SCOPES = "https://www.googleapis.com/auth/drive",
#'https://www.googleapis.com/auth/drive.readonly.metadata']
store = file.Storage('.credentials/storage.json')
creds = store.get()
if not creds or creds.invalid:
    flow = client.flow_from_clientsecrets('.credentials/client_id.json', SCOPES)
    creds = tools.run_flow(flow, store)
DRIVE = discovery.build('drive', 'v3', http=creds.authorize(Http()))

# %%
index=187
for index, row in df[df.index > index].iterrows():
    print(index)
    cv_id = row["id"]
    file_id = f"{row['CV']}".split("=")[1]
    print(file_id)
    file_name=f"{cv_id}.pdf"
    file_path=f"data/output/pdf/{file_name}"
    try:
        drive_to_local(DRIVE,file_id,file_path)
        blob_path = f"cvs/{cv_id}.pdf"
        upload_to_gcs(file_path,BUCKET_NAME,blob_path)
        os.remove(file_path)
    except:
        pass


# %%

# %%
df[df.index == 187]
# %%
