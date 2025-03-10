-- Example: Daily report of event counts by user

SELECT
  user_id,
  COUNT(*) AS event_count
FROM
  `your_project.your_dataset.your_partitioned_clustered_table`
WHERE
  DATE(event_timestamp) = CURRENT_DATE() - 1 -- Get data for yesterday
GROUP BY
  user_id
ORDER BY
  event_count DESC;
