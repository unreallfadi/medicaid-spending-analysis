-- ============================================================
-- CMS Medicaid Spending by Drug (2019-2023)
-- Step 1: Create database and table
-- ============================================================

CREATE DATABASE IF NOT EXISTS medicaid_spending;
USE medicaid_spending;

CREATE TABLE IF NOT EXISTS drug_spending (
    id                               INT AUTO_INCREMENT PRIMARY KEY,
    Brnd_Name                        VARCHAR(255),
    Gnrc_Name                        VARCHAR(255),
    Tot_Mftr                         INT,
    Mftr_Name                        VARCHAR(255),

    -- 2019
    Tot_Spndng_2019                  DECIMAL(18,2),
    Tot_Dsg_Unts_2019                DECIMAL(18,2),
    Tot_Clms_2019                    DECIMAL(18,2),
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2019 DECIMAL(18,6),
    Avg_Spnd_Per_Clm_2019           DECIMAL(18,2),
    Outlier_Flag_2019                TINYINT,

    -- 2020
    Tot_Spndng_2020                  DECIMAL(18,2),
    Tot_Dsg_Unts_2020                DECIMAL(18,2),
    Tot_Clms_2020                    DECIMAL(18,2),
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2020 DECIMAL(18,6),
    Avg_Spnd_Per_Clm_2020           DECIMAL(18,2),
    Outlier_Flag_2020                TINYINT,

    -- 2021
    Tot_Spndng_2021                  DECIMAL(18,2),
    Tot_Dsg_Unts_2021                DECIMAL(18,2),
    Tot_Clms_2021                    DECIMAL(18,2),
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2021 DECIMAL(18,6),
    Avg_Spnd_Per_Clm_2021           DECIMAL(18,2),
    Outlier_Flag_2021                TINYINT,

    -- 2022
    Tot_Spndng_2022                  DECIMAL(18,2),
    Tot_Dsg_Unts_2022                DECIMAL(18,2),
    Tot_Clms_2022                    DECIMAL(18,2),
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2022 DECIMAL(18,6),
    Avg_Spnd_Per_Clm_2022           DECIMAL(18,2),
    Outlier_Flag_2022                TINYINT,

    -- 2023
    Tot_Spndng_2023                  DECIMAL(18,2),
    Tot_Dsg_Unts_2023                DECIMAL(18,2),
    Tot_Clms_2023                    INT,
    Avg_Spnd_Per_Dsg_Unt_Wghtd_2023 DECIMAL(18,6),
    Avg_Spnd_Per_Clm_2023           DECIMAL(18,2),
    Outlier_Flag_2023                TINYINT,

    -- Trend columns
    Chg_Avg_Spnd_Per_Dsg_Unt_22_23  DECIMAL(10,4),
    CAGR_Avg_Spnd_Per_Dsg_Unt_19_23 DECIMAL(10,4)
);
