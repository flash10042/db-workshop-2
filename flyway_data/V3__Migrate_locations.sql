-- POPULATE LOCATIONS
INSERT INTO tbl_location (regionName, areaName, terrName, terrType)
SELECT DISTINCT REGNAME, AREANAME, TERNAME, TerTypeName
FROM tbl_zno_res;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT EORegName, EOAreaName, EOTerName
FROM tbl_zno_res
WHERE EORegName IS NOT NULL AND EOAreaName IS NOT NULL AND EOTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT UkrPTRegName, UkrPTAreaName, UkrPTTerName
FROM tbl_zno_res
WHERE UkrPTRegName IS NOT NULL AND UkrPTAreaName IS NOT NULL AND UkrPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT histPTRegName, histPTAreaName, histPTTerName
FROM tbl_zno_res
WHERE histPTRegName IS NOT NULL AND histPTAreaName IS NOT NULL AND histPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT mathPTRegName, mathPTAreaName, mathPTTerName
FROM tbl_zno_res
WHERE mathPTRegName IS NOT NULL AND mathPTAreaName IS NOT NULL AND mathPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT physPTRegName, physPTAreaName, physPTTerName
FROM tbl_zno_res
WHERE physPTRegName IS NOT NULL AND physPTAreaName IS NOT NULL AND physPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT chemPTRegName, chemPTAreaName, chemPTTerName
FROM tbl_zno_res
WHERE chemPTRegName IS NOT NULL AND chemPTAreaName IS NOT NULL AND chemPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT bioPTRegName, bioPTAreaName, bioPTTerName
FROM tbl_zno_res
WHERE bioPTRegName IS NOT NULL AND bioPTAreaName IS NOT NULL AND bioPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT geoPTRegName, geoPTAreaName, geoPTTerName
FROM tbl_zno_res
WHERE geoPTRegName IS NOT NULL AND geoPTAreaName IS NOT NULL AND geoPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT engPTRegName, engPTAreaName, engPTTerName
FROM tbl_zno_res
WHERE engPTRegName IS NOT NULL AND engPTAreaName IS NOT NULL AND engPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT fraPTRegName, fraPTAreaName, fraPTTerName
FROM tbl_zno_res
WHERE fraPTRegName IS NOT NULL AND fraPTAreaName IS NOT NULL AND fraPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT deuPTRegName, deuPTAreaName, deuPTTerName
FROM tbl_zno_res
WHERE deuPTRegName IS NOT NULL AND deuPTAreaName IS NOT NULL AND deuPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;


INSERT INTO tbl_location (regionName, areaName, terrName)
SELECT DISTINCT spaPTRegName, spaPTAreaName, spaPTTerName
FROM tbl_zno_res
WHERE spaPTRegName IS NOT NULL AND spaPTAreaName IS NOT NULL AND spaPTTerName IS NOT NULL
EXCEPT
SELECT regionName, areaName, terrName
FROM tbl_location;