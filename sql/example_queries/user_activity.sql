-- Example: User activity over a specific time range

SELECT
  DATE(event_timestamp) AS event_date,
  COUNT(*) AS event_count
FROM
  `your_project.your_dataset.your_partitioned_clustered_table`
WHERE
  user_id = 'userID' -- Replace with a user ID
  AND DATE(event_timestamp) BETWEEN '2024-10-20' AND '2024-10-25' -- Replace with your date range
GROUP BY
  event_date
ORDER BY
  event_date;
