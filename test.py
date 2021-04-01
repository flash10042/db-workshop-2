import os
import re
import csv
import psycopg2
from config import config
from psycopg2.extras import execute_values

conn = psycopg2.connect(**config)
cur = conn.cursor()

cur.execute("""
SELECT outID, birth, sextypename, REGTYPENAME, ClassProfileNAME, ClassLangName, REGNAME, AREANAME, TERNAME, TerTypeName,
UkrTest, UkrTestStatus, UkrBall100, UkrPTName
FROM tbl_zno_res
WHERE outID = '4ba3e361-8e8c-48c1-830d-1ea85b9d4c77';
""")

print(cur.fetchone())

cur.execute("""
SELECT pers.outid, pers.birth, pers.sex, pers.studystatus, pers.classprofile, pers.classlang, 
loc.regionname, loc.areaname, loc.terrname, loc.terrtype, 
ex.subjectName, ex.testStatus, ex.ball100,
inst.instName
FROM tbl_person as pers
JOIN tbl_location as loc
ON pers.registrationLocID = loc.regionID
JOIN tbl_exam as ex
ON pers.outid = ex.outid
JOIN tbl_institution as inst
ON ex.testInstID = inst.instID
WHERE pers.outID = '4ba3e361-8e8c-48c1-830d-1ea85b9d4c77';
""")

print(cur.fetchone())

cur.close()
conn.close()
