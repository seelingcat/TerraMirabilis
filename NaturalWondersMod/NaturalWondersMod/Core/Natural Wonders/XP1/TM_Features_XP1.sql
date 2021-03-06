/*
	Features XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,	Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',		'MOMENT_DATA_FEATURE',		FeatureType,	'MOMENT_'||FeatureType
FROM	TM_Validation WHERE Active = 1 AND Requirement = 'TM';

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,			Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',		'MOMENT_DATA_FEATURE',		'FEATURE_WULINGYUAN',	'MOMENT_FEATURE_WULINGYUAN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_WULINGYUAN');