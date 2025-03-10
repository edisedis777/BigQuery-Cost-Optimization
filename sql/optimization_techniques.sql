-- Example: Creating a partitioned and clustered table

CREATE OR REPLACE TABLE `your_project.your_dataset.your_partitioned_clustered_table`
PARTITION BY DATE(event_timestamp) -- Partition by date
CLUSTER BY user_id -- Cluster by user ID
AS
SELECT
  event_timestamp,
  user_id,
  event_type,
  event_data
FROM
  `your_project.your_dataset.your_raw_data_table`
WHERE
  event_timestamp IS NOT NULL; -- Filter out null timestamps
