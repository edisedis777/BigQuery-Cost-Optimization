# Google BigQuery Cost Optimization for Raw Data Dumps

## Example Data

The `data/` directory contains an example CSV file (`events.csv`) that simulates event data. This data can be used to test the SQL queries and optimization techniques demonstrated in this repository.

The `events.csv` file contains the following columns:

* `event_timestamp`: The timestamp of the event.
* `user_id`: The ID of the user who triggered the event.
* `event_type`: The type of event (e.g., login, page_view, purchase).
* `event_data`: Additional event data in JSON format.

You can load this data into your BigQuery dataset to test the queries.
