# %%
import json
import re
import pandas as pd
from google.cloud import vision
from google.cloud import storage
import sqlite3

BUCKET_NAME= "bucket_for_applicant_selector"

# %%
from sqlalchemy import create_engine
e = create_engine('sqlite:///applicants.db') 

df = pd.read_sql_table(table_name='records', con=e)

# %%

def exists_file(id):
    from google.cloud import storage
    storage_client = storage.Client()
    return storage.Blob(bucket=storage_client.bucket(BUCKET_NAME), 
                        name=f"cvs/{id}.pdf").exists(storage_client)
# %%

def update_id_in_sqlite(id):
    conn = sqlite3.connect('applicants.db')
    sql = f"UPDATE records SET es_pdf='no' WHERE id = '{id}'"
    cur = conn.cursor()
    cur.execute(sql)
    conn.commit()

# %%
def get_json_from_pdf(id):
    if exists_file(id):
        mime_type = 'application/pdf'
        batch_size = 6
        client = vision.ImageAnnotatorClient()
        feature = vision.Feature(
            type_=vision.Feature.Type.DOCUMENT_TEXT_DETECTION)
        gcs_source = vision.GcsSource(uri=f"gs://bucket_for_applicant_selector/cvs/{id}.pdf")
        input_config = vision.InputConfig(
            gcs_source=gcs_source, mime_type=mime_type)
        gcs_destination = vision.GcsDestination(uri=f"gs://bucket_for_applicant_selector/cv_json/{id}/")
        output_config = vision.OutputConfig(
            gcs_destination=gcs_destination, batch_size=batch_size)
        async_request = vision.AsyncAnnotateFileRequest(
            features=[feature], input_config=input_config,
            output_config=output_config)
        operation = client.async_batch_annotate_files(
            requests=[async_request])
    else:
        update_id_in_sqlite(id)
# %%

index=0
for index, row in df[df.index > index].iterrows():
    print(index)
    get_json_from_pdf(row["id"])
# %%
