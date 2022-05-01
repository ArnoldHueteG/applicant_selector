# %%
from google.cloud import storage
import sqlite3
import pandas as pd
import json
BUCKET_NAME= "bucket_for_applicant_selector"


def read_json(id):
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(BUCKET_NAME)
    #blob = bucket.blob('filename.json')
    ls_page = []
    for blob in storage_client.list_blobs(BUCKET_NAME, prefix=f'cv_json/{id}'):
        print(blob)
        data = json.loads(blob.download_as_string(client=None))
        for pg in range(len(data["responses"])):
            print(f"page : {pg}")
            if data["responses"][pg].get("fullTextAnnotation"):
                ls_page.append(data["responses"][pg]["fullTextAnnotation"]["text"])
    return ls_page

# %%
def update_id_in_sqlite(id,text):
    conn = sqlite3.connect('applicants.db')
    sql = f"UPDATE records SET texto='{text}' WHERE id = '{id}'"
    #print(sql)
    cur = conn.cursor()
    cur.execute(sql)
    conn.commit()

# %%
update_id_in_sqlite('0000',"".join(pages))
# %%
from sqlalchemy import create_engine
e = create_engine('sqlite:///applicants.db') 

df = pd.read_sql_table(table_name='records', con=e)
# %%
index=36
for index, row in df[df.index > index].iterrows():
    print(index)
    pages = read_json(row["id"])
    text_to_update="".join(pages).replace("'","")
    update_id_in_sqlite(row["id"],text_to_update)
# %%
pages = read_json("0037")
# %%
pages
# %%
update_id_in_sqlite("0001","".join(pages))
# %%
id='0037'
storage_client = storage.Client()
bucket = storage_client.get_bucket(BUCKET_NAME)
#blob = bucket.blob('filename.json')
ls_page = []
for blob in storage_client.list_blobs(BUCKET_NAME, prefix=f'cv_json/{id}'):
    data = json.loads(blob.download_as_string(client=None))
    ls_page.append(data)
# %%
ls_page[0]["responses"][2]["fullTextAnnotation"]["text"]
# %%
ls_page[1]["responses"][0]["fullTextAnnotation"]["text"]
# %%
ls_page[2]["responses"][0]["fullTextAnnotation"]["text"]
# %%
ls_page[3]["responses"][0]["fullTextAnnotation"]["text"]
# %%
# %%
len(ls_page[0]["responses"])
# %%
len(ls_page[2]["responses"])
# %%
ls_page[0]["responses"][2]
# %%

if ls_page[0]["responses"][2].get("fullTextAnnotation"):
    print('go')

# %%
