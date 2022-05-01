-- SQLite
alter table records add texto text

update records set es_pdf='si'

select * from records where es_pdf='no'


select [index],[Marca temporal],[Nombre],[Apellidos],[DNI],
[Grado académico actual],[Celular],[Correo electrónico],[CV],[Tratamiento de datos personales],
[aprobado],[dni_dos],[dni_ok],
[grupo grado],[id],[es_pdf] from records 


select 
count(1),
sum(case when lower(texto) like '%python%' or lower(texto) like '%sql%'
or lower(texto) like '%power bi%' or lower(texto) like '%tableau%'
or lower(texto) like '%gcp%' or lower(texto) like '%azure%' then 1 else 0 end)
from records where texto is not null 


update records set aprobado='x' where id='0000';
update records set aprobado='ok' where id='0001';
update records set aprobado='ok' where id='0003';
update records set aprobado='x' where id='0006';
update records set aprobado='ok' where id='0007';
update records set aprobado='x' where id='0008';
update records set aprobado='x' where id='0009';
update records set aprobado='x' where id='0010';
update records set aprobado='x' where id='0011';
update records set aprobado='ok' where id='0012';
update records set aprobado='x' where id='0014';
update records set aprobado='x' where id='0015';
update records set aprobado='ok' where id='0016';
update records set aprobado='x' where id='0018';
update records set aprobado='ok' where id='0020';
update records set aprobado='x' where id='0021';
update records set aprobado='x' where id='0022';
update records set aprobado='x' where id='0023';
update records set aprobado='ok' where id='0024';
update records set aprobado='x' where id='0027';
update records set aprobado='ok' where id='0028';
update records set aprobado='ok' where id='0031';
update records set aprobado='ok' where id='0032';
update records set aprobado='x' where id='0033';
update records set aprobado='x' where id='0036';
update records set aprobado='x' where id='0037';
update records set aprobado='x' where id='0038';
update records set aprobado='x' where id='0042';
update records set aprobado='ok' where id='0043';
update records set aprobado='x' where id='0048';
update records set aprobado='x' where id='0050';
update records set aprobado='x' where id='0051';
update records set aprobado='x' where id='0052';
update records set aprobado='x' where id='0053';
update records set aprobado='x' where id='0056';
update records set aprobado='x' where id='0057';
update records set aprobado='x' where id='0059';
update records set aprobado='x' where id='0063';


select [index],[Marca temporal],[Nombre],[Apellidos],[DNI],
[Grado académico actual],[Celular],[Correo electrónico],[CV],[Tratamiento de datos personales],
[aprobado],[dni_dos],[dni_ok],
[grupo grado],[id],[es_pdf] from records where aprobado='ok'


select id,round( ( length(lower(texto)) - length(replace(lower(texto),'python','')) ) 
/ length('python')) from records where aprobado='ok'



select * from records where aprobado='ok'



update records set aprobado='x' where id='0000';
update records set aprobado='ok' where id='0001';
update records set aprobado='ok' where id='0003';
update records set aprobado='x' where id='0006';
update records set aprobado='ok' where id='0007';
update records set aprobado='x' where id='0008';
update records set aprobado='x' where id='0009';
update records set aprobado='x' where id='0010';
update records set aprobado='x' where id='0011';
update records set aprobado='ok' where id='0012';
update records set aprobado='x' where id='0014';
update records set aprobado='x' where id='0015';
update records set aprobado='ok' where id='0016';
update records set aprobado='x' where id='0018';
update records set aprobado='ok' where id='0020';
update records set aprobado='x' where id='0021';
update records set aprobado='x' where id='0022';
update records set aprobado='x' where id='0023';
update records set aprobado='ok' where id='0024';
update records set aprobado='x' where id='0027';
update records set aprobado='ok' where id='0028';
update records set aprobado='ok' where id='0031';
update records set aprobado='ok' where id='0032';
update records set aprobado='x' where id='0033';
update records set aprobado='x' where id='0036';
update records set aprobado='x' where id='0037';
update records set aprobado='x' where id='0038';
update records set aprobado='x' where id='0042';
update records set aprobado='ok' where id='0043';
update records set aprobado='x' where id='0048';
update records set aprobado='x' where id='0050';
update records set aprobado='x' where id='0051';
update records set aprobado='x' where id='0052';
update records set aprobado='x' where id='0053';
update records set aprobado='x' where id='0056';
update records set aprobado='x' where id='0057';
update records set aprobado='x' where id='0059';
update records set aprobado='x' where id='0063';
update records set aprobado='x' where id='0067';
update records set aprobado='ok' where id='0074';
update records set aprobado='x' where id='0079';
update records set aprobado='x' where id='0083';
update records set aprobado='x' where id='0088';
update records set aprobado='ok' where id='0115';
update records set aprobado='x' where id='0116';
update records set aprobado='x' where id='0129';
update records set aprobado='ok' where id='0130';
update records set aprobado='x' where id='0151';
update records set aprobado='x' where id='0176';
update records set aprobado='ok' where id='0194';
update records set aprobado='ok' where id='0261';
update records set aprobado='x' where id='0288';
update records set aprobado='x' where id='0291';
update records set aprobado='ok' where id='0296';
update records set aprobado='x' where id='0302';
update records set aprobado='x' where id='0346';
update records set aprobado='ok' where id='0361';
update records set aprobado='x' where id='0367';
update records set aprobado='x' where id='0560';
update records set aprobado='x' where id='0563';
update records set aprobado='x' where id='0578';
update records set aprobado='x' where id='0777';
update records set aprobado='x' where id='0791';
update records set aprobado='x' where id='0867';
update records set aprobado='ok' where id='0938';
update records set aprobado='x' where id='0943';
update records set aprobado='ok' where id='0986';


update records set aprobado='x' where id='0000';
update records set aprobado='ok' where id='0001';
update records set aprobado='ok' where id='0003';
update records set aprobado='x' where id='0006';
update records set aprobado='ok' where id='0007';
update records set aprobado='x' where id='0008';
update records set aprobado='x' where id='0009';
update records set aprobado='x' where id='0010';
update records set aprobado='x' where id='0011';
update records set aprobado='ok' where id='0012';
update records set aprobado='x' where id='0014';
update records set aprobado='x' where id='0015';
update records set aprobado='ok' where id='0016';
update records set aprobado='x' where id='0018';
update records set aprobado='ok' where id='0020';
update records set aprobado='x' where id='0021';
update records set aprobado='x' where id='0022';
update records set aprobado='x' where id='0023';
update records set aprobado='ok' where id='0024';
update records set aprobado='x' where id='0027';
update records set aprobado='ok' where id='0028';
update records set aprobado='ok' where id='0031';
update records set aprobado='ok' where id='0032';
update records set aprobado='x' where id='0033';
update records set aprobado='x' where id='0034';
update records set aprobado='x' where id='0036';
update records set aprobado='x' where id='0037';
update records set aprobado='x' where id='0038';
update records set aprobado='x' where id='0042';
update records set aprobado='ok' where id='0043';
update records set aprobado='x' where id='0048';
update records set aprobado='x' where id='0050';
update records set aprobado='x' where id='0051';
update records set aprobado='x' where id='0052';
update records set aprobado='x' where id='0053';
update records set aprobado='x' where id='0055';
update records set aprobado='x' where id='0056';
update records set aprobado='x' where id='0057';
update records set aprobado='x' where id='0059';
update records set aprobado='x' where id='0063';
update records set aprobado='x' where id='0064';
update records set aprobado='x' where id='0065';
update records set aprobado='x' where id='0066';
update records set aprobado='x' where id='0067';
update records set aprobado='ok' where id='0069';
update records set aprobado='ok' where id='0070';
update records set aprobado='ok' where id='0071';
update records set aprobado='ok' where id='0072';
update records set aprobado='x' where id='0073';
update records set aprobado='ok' where id='0074';
update records set aprobado='x' where id='0079';
update records set aprobado='x' where id='0088';
update records set aprobado='x' where id='0108';
update records set aprobado='x' where id='0110';
update records set aprobado='x' where id='0111';
update records set aprobado='ok' where id='0115';
update records set aprobado='x' where id='0116';
update records set aprobado='x' where id='0129';
update records set aprobado='ok' where id='0130';
update records set aprobado='x' where id='0133';
update records set aprobado='x' where id='0137';
update records set aprobado='x' where id='0151';
update records set aprobado='x' where id='0156';
update records set aprobado='x' where id='0176';
update records set aprobado='ok' where id='0187';
update records set aprobado='ok' where id='0194';
update records set aprobado='x' where id='0199';
update records set aprobado='x' where id='0221';
update records set aprobado='x' where id='0233';
update records set aprobado='x' where id='0244';
update records set aprobado='ok' where id='0261';
update records set aprobado='x' where id='0274';
update records set aprobado='x' where id='0288';
update records set aprobado='x' where id='0291';
update records set aprobado='ok' where id='0296';
update records set aprobado='x' where id='0302';
update records set aprobado='x' where id='0306';
update records set aprobado='x' where id='0313';
update records set aprobado='x' where id='0317';
update records set aprobado='x' where id='0327';
update records set aprobado='x' where id='0336';
update records set aprobado='x' where id='0337';
update records set aprobado='x' where id='0339';
update records set aprobado='x' where id='0346';
update records set aprobado='x' where id='0353';
update records set aprobado='ok' where id='0361';
update records set aprobado='x' where id='0367';
update records set aprobado='x' where id='0382';
update records set aprobado='x' where id='0389';
update records set aprobado='x' where id='0419';
update records set aprobado='x' where id='0479';
update records set aprobado='x' where id='0505';
update records set aprobado='x' where id='0516';
update records set aprobado='x' where id='0560';
update records set aprobado='x' where id='0563';
update records set aprobado='x' where id='0576';
update records set aprobado='x' where id='0578';
update records set aprobado='x' where id='0605';
update records set aprobado='x' where id='0628';
update records set aprobado='x' where id='0650';
update records set aprobado='x' where id='0703';
update records set aprobado='x' where id='0709';
update records set aprobado='x' where id='0777';
update records set aprobado='x' where id='0791';
update records set aprobado='x' where id='0825';
update records set aprobado='x' where id='0826';
update records set aprobado='x' where id='0827';
update records set aprobado='x' where id='0867';
update records set aprobado='x' where id='0891';
update records set aprobado='ok' where id='0938';
update records set aprobado='x' where id='0943';
update records set aprobado='x' where id='0984';
update records set aprobado='ok' where id='0986';
update records set aprobado='x' where id='1048';
update records set aprobado='x' where id='1062';


alter table records add aprobado_por_ml int

alter table records add filter_1 int

update records 
set filter_1=case when (lower(texto) like '%python%' or lower(texto) like '%sql%'
or lower(texto) like '%power bi%' or lower(texto) like '%tableau%'
or lower(texto) like '%gcp%' or lower(texto) like '%azure%' )
and ([grupo grado] not in ('docente') or [grupo grado] is null)
then 1 else 0 end


select  filter_1,aprobado_por_ml,count(1) from records 
group by filter_1,aprobado_por_ml

update records set aprobado='x' where id='0000';
update records set aprobado='ok' where id='0001';
update records set aprobado='ok' where id='0003';
update records set aprobado='x' where id='0006';
update records set aprobado='ok' where id='0007';
update records set aprobado='x' where id='0008';
update records set aprobado='x' where id='0009';
update records set aprobado='x' where id='0010';
update records set aprobado='x' where id='0011';
update records set aprobado='ok' where id='0012';
update records set aprobado='x' where id='0014';
update records set aprobado='x' where id='0015';
update records set aprobado='ok' where id='0016';
update records set aprobado='x' where id='0018';
update records set aprobado='ok' where id='0020';
update records set aprobado='x' where id='0021';
update records set aprobado='x' where id='0022';
update records set aprobado='x' where id='0023';
update records set aprobado='ok' where id='0024';
update records set aprobado='x' where id='0027';
update records set aprobado='ok' where id='0028';
update records set aprobado='ok' where id='0031';
update records set aprobado='ok' where id='0032';
update records set aprobado='x' where id='0033';
update records set aprobado='x' where id='0036';
update records set aprobado='x' where id='0037';
update records set aprobado='x' where id='0038';
update records set aprobado='x' where id='0042';
update records set aprobado='ok' where id='0043';
update records set aprobado='x' where id='0048';
update records set aprobado='x' where id='0050';
update records set aprobado='x' where id='0051';
update records set aprobado='x' where id='0052';
update records set aprobado='x' where id='0053';
update records set aprobado='x' where id='0056';
update records set aprobado='x' where id='0057';
update records set aprobado='x' where id='0059';
update records set aprobado='x' where id='0063';
update records set aprobado='x' where id='0064';
update records set aprobado='x' where id='0065';
update records set aprobado='x' where id='0066';
update records set aprobado='x' where id='0067';
update records set aprobado='ok' where id='0069';
update records set aprobado='ok' where id='0070';
update records set aprobado='ok' where id='0071';
update records set aprobado='ok' where id='0072';
update records set aprobado='x' where id='0073';
update records set aprobado='ok' where id='0074';
update records set aprobado='x' where id='0079';
update records set aprobado='x' where id='0088';
update records set aprobado='ok' where id='0115';
update records set aprobado='x' where id='0116';
update records set aprobado='x' where id='0129';
update records set aprobado='ok' where id='0130';
update records set aprobado='x' where id='0151';
update records set aprobado='x' where id='0176';
update records set aprobado='ok' where id='0194';
update records set aprobado='ok' where id='0261';
update records set aprobado='ok' where id='0296';
update records set aprobado='x' where id='0302';
update records set aprobado='ok' where id='0361';
update records set aprobado='x' where id='0367';
update records set aprobado='ok' where id='0938';
update records set aprobado='ok' where id='0986';

UPDATE records SET aprobado_por_ml=0;



alter table records add centro_estudios text;


update records
set centro_estudios='villareal'
where lower(texto) like '%villareal%';

update records
set centro_estudios='villareal'
where lower(texto) like '%villarreal%';

update records
set centro_estudios='garcilazo de la vega'
where lower(texto) like '%uigv%';

update records
set centro_estudios='garcilazo de la vega'
where lower(texto) like '%garcilaso de la vega%' and centro_estudios is null;

update records
set centro_estudios='callao'
where lower(texto) like '%callao%' and centro_estudios is null;

update records
set centro_estudios='san cristobal de huamanga'
where lower(texto) like '%huamanga%' and centro_estudios is null;

update records
set centro_estudios='uni'
where lower(texto) like '%nacional de ingenier%' and centro_estudios is null;


update records
set centro_estudios='san marcos'
where lower(texto) like '%san marcos%' and centro_estudios is null;

update records
set centro_estudios='continental'
where lower(texto) like '%continental%' and centro_estudios is null;

update records
set centro_estudios='cesar vallejo'
where lower(texto) like '%cesar vallejo%' and centro_estudios is null;

update records
set centro_estudios='upca'
where lower(texto) like '%ciencias aplicadas%';

update records
set centro_estudios='upca'
where lower(texto) like '%peruana de ciencias%' and centro_estudios is null;

update records
set centro_estudios='pucp'
where lower(texto) like '%@pucp.edu.pe%' and centro_estudios is null;

update records
set centro_estudios='pucp'
where lower(texto) like '%universidad catolica%' and centro_estudios is null;

update records
set centro_estudios='pucp'
where lower(texto) like '%pucp%' and centro_estudios is null;

update records
set centro_estudios='pucp'
where lower(texto) like '%universidad católica%' and centro_estudios is null;

update records
set centro_estudios='cibertec'
where texto like '%cibertec%' and centro_estudios is null;


update records
set centro_estudios='san pedro'
where texto like '%san pedro%' and centro_estudios is null;

update records
set centro_estudios='san agustin'
where lower(texto) like '%san agustín%' and centro_estudios is null;

update records
set centro_estudios='senati'
where lower(texto) like '%senati%' and centro_estudios is null;

update records
set centro_estudios='San Antonio Abad del Cusco'
where lower(texto) like '%san antonio abad del cusco%' and centro_estudios is null;

update records
set centro_estudios='san marcos'
where lower(texto) like '%unmsm%' and centro_estudios is null;


update records
set centro_estudios='josé faustino sanchez'
where lower(texto) like '%josé faustino%' and centro_estudios is null;

update records
set centro_estudios='cesca'
where lower(texto) like '%cesca%' and centro_estudios is null;

update records
set centro_estudios='nacional de trujillo'
where lower(texto) like '%nacional de trujillo%' and centro_estudios is null;

update records
set centro_estudios='nacional de cañete'
where lower(texto) like '%nacional de cañete%' and centro_estudios is null;

update records
set centro_estudios='san ignacio de loyola'
where lower(texto) like '%san ignacio de loyola%' and centro_estudios is null;


update records
set centro_estudios='managua'
where lower(texto) like '%managua%' and centro_estudios is null;

update records
set centro_estudios='universidad de lima'
where lower(texto) like '%universidad de lima%' and centro_estudios is null;


update records
set centro_estudios='cesar vallejo'
where lower(texto) like '%ucv%' and centro_estudios is null;


update records
set centro_estudios='utp'
where lower(texto) like '%tecnológica del perú%' and centro_estudios is null;



update records
set centro_estudios='utp'
where UPPER(texto) like '%TECNOLÓGICA DEL PERÚ%' and centro_estudios is null;

update records
set centro_estudios='utp'
where lower(texto) like '%utp%' and centro_estudios is null;


select centro_estudios,count(1) from records
group by centro_estudios


select id,texto from records
where centro_estudios is null

update records set aprobado='x' where id='0000';
update records set aprobado='ok' where id='0001';
update records set aprobado='ok' where id='0003';
update records set aprobado='x' where id='0006';
update records set aprobado='ok' where id='0007';
update records set aprobado='x' where id='0008';
update records set aprobado='x' where id='0009';
update records set aprobado='x' where id='0010';
update records set aprobado='x' where id='0011';
update records set aprobado='ok' where id='0012';
update records set aprobado='x' where id='0014';
update records set aprobado='x' where id='0015';
update records set aprobado='ok' where id='0016';
update records set aprobado='x' where id='0018';
update records set aprobado='ok' where id='0020';
update records set aprobado='x' where id='0021';
update records set aprobado='x' where id='0022';
update records set aprobado='x' where id='0023';
update records set aprobado='ok' where id='0024';
update records set aprobado='x' where id='0027';
update records set aprobado='ok' where id='0028';
update records set aprobado='ok' where id='0031';
update records set aprobado='ok' where id='0032';
update records set aprobado='x' where id='0033';
update records set aprobado='x' where id='0034';
update records set aprobado='x' where id='0036';
update records set aprobado='x' where id='0037';
update records set aprobado='x' where id='0038';
update records set aprobado='x' where id='0042';
update records set aprobado='ok' where id='0043';
update records set aprobado='x' where id='0048';
update records set aprobado='x' where id='0050';
update records set aprobado='x' where id='0051';
update records set aprobado='x' where id='0052';
update records set aprobado='x' where id='0053';
update records set aprobado='x' where id='0054';
update records set aprobado='x' where id='0055';
update records set aprobado='x' where id='0056';
update records set aprobado='x' where id='0057';
update records set aprobado='x' where id='0058';
update records set aprobado='x' where id='0059';
update records set aprobado='x' where id='0063';
update records set aprobado='x' where id='0064';
update records set aprobado='x' where id='0065';
update records set aprobado='x' where id='0066';
update records set aprobado='x' where id='0067';
update records set aprobado='x' where id='0068';
update records set aprobado='ok' where id='0069';
update records set aprobado='ok' where id='0070';
update records set aprobado='ok' where id='0071';
update records set aprobado='ok' where id='0072';
update records set aprobado='x' where id='0073';
update records set aprobado='ok' where id='0074';
update records set aprobado='x' where id='0075';
update records set aprobado='x' where id='0076';
update records set aprobado='x' where id='0077';
update records set aprobado='x' where id='0078';
update records set aprobado='x' where id='0079';
update records set aprobado='x' where id='0080';
update records set aprobado='x' where id='0081';
update records set aprobado='ok' where id='0082';
update records set aprobado='x' where id='0083';
update records set aprobado='x' where id='0085';
update records set aprobado='x' where id='0086';
update records set aprobado='x' where id='0088';
update records set aprobado='ok' where id='0089';
update records set aprobado='x' where id='0092';
update records set aprobado='ok' where id='0093';
update records set aprobado='x' where id='0094';
update records set aprobado='x' where id='0095';
update records set aprobado='x' where id='0096';
update records set aprobado='x' where id='0099';
update records set aprobado='x' where id='0100';
update records set aprobado='ok' where id='0101';
update records set aprobado='x' where id='0102';
update records set aprobado='x' where id='0103';
update records set aprobado='x' where id='0104';
update records set aprobado='x' where id='0105';
update records set aprobado='x' where id='0106';
update records set aprobado='x' where id='0107';
update records set aprobado='x' where id='0108';
update records set aprobado='ok' where id='0109';
update records set aprobado='x' where id='0110';
update records set aprobado='x' where id='0111';
update records set aprobado='ok' where id='0115';
update records set aprobado='x' where id='0116';
update records set aprobado='ok' where id='0117';
update records set aprobado='ok' where id='0119';
update records set aprobado='ok' where id='0121';
update records set aprobado='x' where id='0122';
update records set aprobado='x' where id='0123';
update records set aprobado='x' where id='0124';
update records set aprobado='x' where id='0129';
update records set aprobado='x' where id='0130';
update records set aprobado='x' where id='0133';
update records set aprobado='x' where id='0137';
update records set aprobado='x' where id='0147';
update records set aprobado='x' where id='0151';
update records set aprobado='x' where id='0156';
update records set aprobado='x' where id='0159';
update records set aprobado='x' where id='0167';
update records set aprobado='x' where id='0175';
update records set aprobado='x' where id='0176';
update records set aprobado='ok' where id='0185';
update records set aprobado='ok' where id='0187';
update records set aprobado='ok' where id='0194';
update records set aprobado='ok' where id='0195';
update records set aprobado='x' where id='0199';
update records set aprobado='x' where id='0201';
update records set aprobado='x' where id='0221';
update records set aprobado='ok' where id='0227';
update records set aprobado='x' where id='0233';
update records set aprobado='ok' where id='0235';
update records set aprobado='x' where id='0239';
update records set aprobado='x' where id='0240';
update records set aprobado='x' where id='0242';
update records set aprobado='x' where id='0244';
update records set aprobado='x' where id='0247';
update records set aprobado='x' where id='0257';
update records set aprobado='x' where id='0258';
update records set aprobado='x' where id='0260';
update records set aprobado='ok' where id='0261';
update records set aprobado='ok' where id='0263';
update records set aprobado='x' where id='0273';
update records set aprobado='x' where id='0274';
update records set aprobado='x' where id='0287';
update records set aprobado='x' where id='0288';
update records set aprobado='x' where id='0291';
update records set aprobado='x' where id='0292';
update records set aprobado='ok' where id='0296';
update records set aprobado='x' where id='0298';
update records set aprobado='x' where id='0301';
update records set aprobado='x' where id='0302';
update records set aprobado='x' where id='0306';
update records set aprobado='x' where id='0313';
update records set aprobado='x' where id='0317';
update records set aprobado='ok' where id='0319';
update records set aprobado='x' where id='0327';
update records set aprobado='x' where id='0329';
update records set aprobado='x' where id='0336';
update records set aprobado='x' where id='0337';
update records set aprobado='x' where id='0339';
update records set aprobado='x' where id='0346';
update records set aprobado='ok' where id='0347';
update records set aprobado='x' where id='0352';
update records set aprobado='x' where id='0353';
update records set aprobado='ok' where id='0361';
update records set aprobado='x' where id='0367';
update records set aprobado='x' where id='0368';
update records set aprobado='x' where id='0369';
update records set aprobado='ok' where id='0373';
update records set aprobado='x' where id='0382';
update records set aprobado='x' where id='0389';
update records set aprobado='x' where id='0419';
update records set aprobado='x' where id='0479';
update records set aprobado='x' where id='0505';
update records set aprobado='x' where id='0516';
update records set aprobado='x' where id='0560';
update records set aprobado='x' where id='0563';
update records set aprobado='x' where id='0576';
update records set aprobado='x' where id='0578';
update records set aprobado='x' where id='0605';
update records set aprobado='x' where id='0628';
update records set aprobado='x' where id='0650';
update records set aprobado='x' where id='0703';
update records set aprobado='x' where id='0709';
update records set aprobado='x' where id='0777';
update records set aprobado='x' where id='0791';
update records set aprobado='x' where id='0825';
update records set aprobado='x' where id='0826';
update records set aprobado='x' where id='0827';
update records set aprobado='x' where id='0867';
update records set aprobado='x' where id='0891';
update records set aprobado='ok' where id='0938';
update records set aprobado='x' where id='0943';
update records set aprobado='x' where id='0984';
update records set aprobado='ok' where id='0986';
update records set aprobado='x' where id='1048';
update records set aprobado='x' where id='1062';