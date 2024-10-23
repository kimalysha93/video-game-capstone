SELECT
  na.Developer_Copied, na.SUM_of_NA_Sales_Actual_Units, na.AVERAGE_of_NA_Sales_Actual_Units, na.COUNTA_of_Name, eu.SUM_of_EU_Sales_Actual_Units, eu.AVERAGE_of_EU_Sales_Actual_Units, eu.COUNTA_of_Name, na.SUM_of_NA_Sales_Actual_Units + eu.SUM_of_EU_Sales_Actual_Units as SUM_of_NA_and_EU_Actual_Units
FROM `data.associated_developer_na` na
  INNER JOIN `data.associated_developer_eu` eu on na.Developer_Copied = eu.Developer_Copied
ORDER BY
  SUM_of_NA_and_EU_Actual_Units DESC