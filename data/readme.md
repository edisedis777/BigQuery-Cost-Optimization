# Google BigQuery Cost Optimization for Raw Data Dumps

## Example Data

The `data/` directory contains an example CSV file (`events.csv`) that simulates event data. This data can be used to test the SQL queries and optimization techniques demonstrated in this repository.

The `events.csv` file contains the following columns:

* `event_timestamp`: The timestamp of the event.
* `user_id`: The ID of the user who triggered the event.
* `event_type`: The type of event (e.g., login, page_view, purchase).
* `event_data`: Additional event data in JSON format.

You can load this data into your BigQuery dataset to test the queries.

## Loading the Example Data into BigQuery:

You can do this using the BigQuery web UI, the bq command-line tool, or the BigQuery API.

Example using the bq command-line tool:

Bash

** bq load --source_format=CSV your_project_id:your_dataset.your_raw_data_table data/events.csv event_timestamp:TIMESTAMP,user_id:STRING,event_type:STRING,event_data:STRING **

Replace placeholders:

- your_project_id: Your Google Cloud project ID.
- your_dataset: The BigQuery dataset where you want to create the table.
- your_raw_data_table: The name of your new table.
