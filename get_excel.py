# %%
import pandas as pd
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
from sklearn.tree import DecisionTreeClassifier # Import Decision Tree Classifier
from sklearn.model_selection import train_test_split # Import train_test_split function
from sklearn import metrics 
import sqlite3
# %%
from sqlalchemy import create_engine
e = create_engine('sqlite:///applicants.db') 

df = pd.read_sql("""select [index],[Marca temporal],[Nombre],[Apellidos],[DNI],
[Grado académico actual],[Celular],[Correo electrónico],[CV],[Tratamiento de datos personales],
[aprobado],[dni_dos],[dni_ok],
[grupo grado],[id],[es_pdf],
aprobado_por_ml,
filter_1,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'python','')) ) 
/ length('python')) as int) python,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'sql','')) ) 
/ length('sql')) as int) sql,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'power bi','')) ) 
/ length('power bi')) as int) power_bi,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'analytics','')) ) 
/ length('analytics')) as int) analytics,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'data','')) ) 
/ length('data')) as int) data,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'machine learning','')) ) 
/ length('machine learning')) as int) machine_learning,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'web','')) ) 
/ length('web')) as int) web,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'estudiante','')) ) 
/ length('estudiante')) as int) estudiante,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'etl','')) ) 
/ length('etl')) as int) etl,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'business intelligence','')) ) 
/ length('business intelligence')) as int) bi,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'indicadores','')) ) 
/ length('indicadores')) as int) indicadores,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'monitor','')) ) 
/ length('monitor')) as int) monitoreo,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'big data','')) ) 
/ length('big data')) as int) big_data,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'análisis de información','')) ) 
/ length('análisis de información')) as int) analisis_informacion,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'inteligencia','')) ) 
/ length('inteligencia')) as int) inteligencia,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'soporte','')) ) 
/ length('soporte')) as int) soporte_tecnico,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'desk','')) ) 
/ length('desk')) as int) service_desk,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'seguimiento','')) ) 
/ length('seguimiento')) as int) seguimiento,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'logistica','')) ) 
/ length('logistica')) as int) logistica,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'dashboard','')) ) 
/ length('dashboard')) as int) dashboard,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'predic','')) ) 
/ length('predic')) as int) predic,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'scientist','')) ) 
/ length('scientist')) as int) scientist,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'docente','')) ) 
/ length('docente')) as int) docente,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'administrador','')) ) 
/ length('administrador')) as int) administrador,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'developer','')) ) 
/ length('developer')) as int) developer,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'programador','')) ) 
/ length('programador')) as int) programador,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'seguridad','')) ) 
/ length('seguridad')) as int) seguridad,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'municipalidad','')) ) 
/ length('municipalidad')) as int) municipalidad,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'hana','')) ) 
/ length('hana')) as int) hana,
cast(round( ( length(lower(texto)) - length(replace(lower(texto),'ministerio','')) ) 
/ length('ministerio')) as int) ministerio
 from records""", con=e)

# %%
df.head()
# %%
df.columns
# %%
df.to_excel("data/input/data7.xlsx",index=False)
# %%

df2 = df[df['aprobado'].notnull()]
df2["aprobado"] = df2["aprobado"].map(dict(ok=1, x=0))
df2.head()
df2.shape

# %%
feature_cols = ['python',
       'sql', 'power_bi', 'analytics', 'data', 'machine_learning', 'web',
       'estudiante', 'etl', 'bi', 'indicadores', 'monitoreo', 'big_data',
       'analisis_informacion', 'inteligencia', 'soporte_tecnico',
       'service_desk', 'seguimiento', 'logistica', 'dashboard', 'predic',
       'scientist', 'docente', 'administrador', 'developer', 'programador',
       'seguridad', 'municipalidad', 'hana', 'ministerio']
X = df2[feature_cols] # Features
y = df2.aprobado # Target variable
# %%
#X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=1) 

# %%%
clf = DecisionTreeClassifier()

# Train Decision Tree Classifer
clf = clf.fit(X,y)


# %%
X_test = df[feature_cols]
X_test.head()

# %%
X_test["aprobado"]=clf.predict(X_test)
# %%
X_test["aprobado"].value_counts()
# %%
X_test2 = X_test.join(df["id"])
X_test2.head()
# %%
for index, row in X_test2.iterrows():
    print(index)
    conn = sqlite3.connect('applicants.db')
    sql = f"UPDATE records SET aprobado_por_ml='{row['aprobado']}' WHERE id = '{row['id']}'"
    #print(sql)
    cur = conn.cursor()
    cur.execute(sql)
    conn.commit()
# %%
df2.shape
# %%
df2['aprobado'].value_counts()
# %%
