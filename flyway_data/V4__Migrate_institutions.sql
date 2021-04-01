-- POPULATE INSITUTIONS
INSERT INTO tbl_institution (instName, instType, instLocID, instParent)
SELECT DISTINCT on (zno.EONAME) zno.EONAME, zno.EOTYPENAME, loc.regionID, zno.EOParent
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.EORegName = loc.regionName AND zno.AreaName = loc.areaName AND zno.EOTerName = loc.terrName
WHERE zno.EONAME IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.UkrPTName) zno.UkrPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.UkrPTRegName = loc.regionName AND zno.UkrPTAreaName = loc.areaName AND zno.UkrPTTerName = loc.terrName
WHERE zno.UkrPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.UkrPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.histPTName) zno.histPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.histPTRegName = loc.regionName AND zno.histPTAreaName = loc.areaName AND zno.histPTTerName = loc.terrName
WHERE zno.histPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.histPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.mathPTName) zno.mathPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.mathPTRegName = loc.regionName AND zno.mathPTAreaName = loc.areaName AND zno.mathPTTerName = loc.terrName
WHERE zno.mathPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.mathPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.physPTName) zno.physPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.physPTRegName = loc.regionName AND zno.physPTAreaName = loc.areaName AND zno.physPTTerName = loc.terrName
WHERE zno.physPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.physPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.chemPTName) zno.chemPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.chemPTRegName = loc.regionName AND zno.chemPTAreaName = loc.areaName AND zno.chemPTTerName = loc.terrName
WHERE zno.chemPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.chemPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.bioPTName) zno.bioPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.bioPTRegName = loc.regionName AND zno.bioPTAreaName = loc.areaName AND zno.bioPTTerName = loc.terrName
WHERE zno.bioPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.bioPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.geoPTName) zno.geoPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.geoPTRegName = loc.regionName AND zno.geoPTAreaName = loc.areaName AND zno.geoPTTerName = loc.terrName
WHERE zno.geoPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.geoPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.engPTName) zno.engPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.engPTRegName = loc.regionName AND zno.engPTAreaName = loc.areaName AND zno.engPTTerName = loc.terrName
WHERE zno.engPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.engPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.fraPTName) zno.fraPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.fraPTRegName = loc.regionName AND zno.fraPTAreaName = loc.areaName AND zno.fraPTTerName = loc.terrName
WHERE zno.fraPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.fraPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.deuPTName) zno.deuPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.deuPTRegName = loc.regionName AND zno.deuPTAreaName = loc.areaName AND zno.deuPTTerName = loc.terrName
WHERE zno.deuPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.deuPTName IS NOT NULL;


INSERT INTO tbl_institution (instName, instLocID)
SELECT DISTINCT ON (zno.spaPTName) zno.spaPTName, loc.regionID
FROM tbl_zno_res AS zno
LEFT JOIN tbl_location AS loc
ON zno.spaPTRegName = loc.regionName AND zno.spaPTAreaName = loc.areaName AND zno.spaPTTerName = loc.terrName
WHERE zno.spaPTName NOT IN (
SELECT instName
FROM tbl_institution
) AND zno.spaPTName IS NOT NULL;