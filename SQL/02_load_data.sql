-- ============================================================
-- Step 2: Load CSV into drug_spending table
-- ============================================================
-- Before running:
-- 1. Download the CSV from CMS website (link in data/README.md)
-- 2. Place the CSV in your MySQL secure_file_priv folder
--    Run this to find the path: SHOW VARIABLES LIKE 'secure_file_priv';
-- 3. Update the file path below
-- ============================================================

USE medicaid_spending;

LOAD DATA INFILE '/path/to/DSD_MCD_RY25_P06_V20_D23_BGM.csv'
INTO TABLE drug_spending
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    Brnd_Name, Gnrc_Name, Tot_Mftr, Mftr_Name,
    Tot_Spndng_2019, Tot_Dsg_Unts_2019, Tot_Clms_2019,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2019, Avg_Spnd_Per_Clm_2019, Outlier_Flag_2019,
    Tot_Spndng_2020, Tot_Dsg_Unts_2020, Tot_Clms_2020,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2020, Avg_Spnd_Per_Clm_2020, Outlier_Flag_2020,
    Tot_Spndng_2021, Tot_Dsg_Unts_2021, Tot_Clms_2021,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2021, Avg_Spnd_Per_Clm_2021, Outlier_Flag_2021,
    Tot_Spndng_2022, Tot_Dsg_Unts_2022, Tot_Clms_2022,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2022, Avg_Spnd_Per_Clm_2022, Outlier_Flag_2022,
    Tot_Spndng_2023, Tot_Dsg_Unts_2023, Tot_Clms_2023,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2023, Avg_Spnd_Per_Clm_2023, Outlier_Flag_2023,
    Chg_Avg_Spnd_Per_Dsg_Unt_22_23, CAGR_Avg_Spnd_Per_Dsg_Unt_19_23
);

-- Verify row count (expected: ~16,938 rows)
SELECT COUNT(*) AS total_rows FROM drug_spending;
