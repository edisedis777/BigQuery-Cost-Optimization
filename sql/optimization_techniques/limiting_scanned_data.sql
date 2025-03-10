-- Example: Limiting scanned data using a WHERE clause on a partitioned column

SELECT
  *
FROM
  `your_project.your_dataset.your_partitioned_clustered_table`
WHERE
  DATE(event_timestamp) = '2024-10-25' -- Filter by a specific date
  AND user_id = 'userID'; -- Filter by user ID
