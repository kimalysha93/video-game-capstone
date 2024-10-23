SELECT
  Name, Year_of_Release, Platform, Genre, Average_Score, Rating, NA_Sales_Actual_Units, EU_Sales_Actual_Units
FROM
  `data.video_game_sales_with_scores_and_ratings`
WHERE
  Developer_Copied = "Nintendo"
ORDER BY
  Average_Score DESC