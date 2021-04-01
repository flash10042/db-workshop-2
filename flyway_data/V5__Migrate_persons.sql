-- POPULATE PERSONS
INSERT INTO tbl_person (outID, birth, sex, studyStatus, registrationLocID, classProfile, classLang, studyInstID)
SELECT zno.OUTID, zno.Birth, zno.SEXTYPENAME, zno.REGTYPENAME, loc.regionID, zno.ClassProfileNAME, zno.ClassLangName, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.REGNAME = loc.regionName AND zno.AREANAME = loc.areaName AND zno.TERNAME = loc.terrName
LEFT JOIN tbl_institution AS inst
ON zno.EONAME = inst.instName;