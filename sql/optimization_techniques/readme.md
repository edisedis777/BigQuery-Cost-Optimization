# Google BigQuery Cost Optimization for Raw Data Dumps

## Optimization Techniques

### Partitioning and Clustering

The `sql/optimization_techniques/partitioning_clustering.sql` script shows how to create a partitioned and clustered table. Partitioning by date and clustering by a frequently filtered column (e.g., user ID) can significantly improve query performance and reduce costs.

### Limiting Scanned Data

The `sql/optimization_techniques/limiting_scanned_data.sql` script shows how to write queries that limit the amount of data scanned. By using `WHERE` clauses on partitioned and clustered columns, you can significantly reduce the amount of data processed.
