# This Python script will execute a simple BigQuery query and print the results.

from google.cloud import bigquery

def execute_bigquery_query(project_id, query):
    """Executes a BigQuery query and returns the results."""
    client = bigquery.Client(project=project_id)
    query_job = client.query(query)
    results = query_job.result()
    return results

if __name__ == "__main__":
    project_id = "your_project_id"  # Replace with your project ID
    query = """
        SELECT
          user_id,
          COUNT(*) AS event_count
        FROM
          `your_project_id.your_dataset.your_partitioned_clustered_table`
        WHERE
          DATE(event_timestamp) = CURRENT_DATE() - 1
        GROUP BY
          user_id
        ORDER BY
          event_count DESC
    """

    results = execute_bigquery_query(project_id, query)

    for row in results:
        print(f"User ID: {row.user_id}, Event Count: {row.event_count}")
