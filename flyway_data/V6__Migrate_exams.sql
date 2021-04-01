-- POPULATE EXAMS
INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, adaptScale, testInstID)
SELECT zno.outID, zno.UkrTest, zno.zno_year, zno.UkrTestStatus, zno.UkrBall100, zno.UkrBall12, zno.UkrBall12, zno.UkrAdaptScale, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.UkrPTName = inst.instName
WHERE zno.UkrTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.histTest, zno.zno_year, zno.histTestStatus, zno.histBall100, zno.histBall12, zno.histBall12, zno.histLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.histPTName = inst.instName
WHERE zno.histTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.mathTest, zno.zno_year, zno.mathTestStatus, zno.mathBall100, zno.mathBall12, zno.mathBall12, zno.mathLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.mathPTName = inst.instName
WHERE zno.mathTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.physTest, zno.zno_year, zno.physTestStatus, zno.physBall100, zno.physBall12, zno.physBall12, zno.physLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.physPTName = inst.instName
WHERE zno.physTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.chemTest, zno.zno_year, zno.chemTestStatus, zno.chemBall100, zno.chemBall12, zno.chemBall12, zno.chemLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.chemPTName = inst.instName
WHERE zno.chemTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.bioTest, zno.zno_year, zno.bioTestStatus, zno.bioBall100, zno.bioBall12, zno.bioBall12, zno.bioLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.bioPTName = inst.instName
WHERE zno.bioTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, testLang, testInstID)
SELECT zno.outID, zno.geoTest, zno.zno_year, zno.geoTestStatus, zno.geoBall100, zno.geoBall12, zno.geoBall12, zno.geoLang, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.geoPTName = inst.instName
WHERE zno.geoTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, dpaLevel, testInstID)
SELECT zno.outID, zno.engTest, zno.zno_year, zno.engTestStatus, zno.engBall100, zno.engBall12, zno.engBall12, zno.engDPALevel, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.engPTName = inst.instName
WHERE zno.engTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, dpaLevel, testInstID)
SELECT zno.outID, zno.fraTest, zno.zno_year, zno.fraTestStatus, zno.fraBall100, zno.fraBall12, zno.fraBall12, zno.fraDPALevel, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.fraPTName = inst.instName
WHERE zno.fraTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, dpaLevel, testInstID)
SELECT zno.outID, zno.deuTest, zno.zno_year, zno.deuTestStatus, zno.deuBall100, zno.deuBall12, zno.deuBall12, zno.deuDPALevel, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.deuPTName = inst.instName
WHERE zno.deuTest IS NOT NULL;


INSERT INTO tbl_exam (outID, subjectName, examYear, testStatus, ball100, ball12, ball, dpaLevel, testInstID)
SELECT zno.outID, zno.spaTest, zno.zno_year, zno.spaTestStatus, zno.spaBall100, zno.spaBall12, zno.spaBall12, zno.spaDPALevel, inst.instID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_institution AS inst
ON zno.spaPTName = inst.instName
WHERE zno.spaTest IS NOT NULL;