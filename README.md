Within this repo, you will find a dbt project that uses publicly available Airbnb data. The main focus for this project was to set up a dbt project and build out a data warehouse using the Airbnb data. In order to 
accomplish this task, I used the following tech stack:

- Snowflake as the warehouse and storage.
- dbt for data transformations and modeling.
- Preset for a simple dashboard for visulizations.
- Dagster for orchestration.

The following steps were taken:

- Created the necessary role and user for dbt to use.
- Import the raw data into snowflake.
- Connect dbt to the snowflake warehouse. From here, the raw data is connected to dbt using the source/seed connections. These are pulling the raw tables directly from the raw schema in snowflake. Since these don't
- need to be views or tables themselves, I indicated within the dbt project to make these ephemeral models. This will reference them as CTE's instead of tables or views and save of storage costs.
- After the source tables are connected, the first dimensional models were created. These dimensional models are designed to be building steps for our end tables. Since these are not the end tables, they are set
- to materialize as views.
- Finally, the mart/fact tables are created based off the dimensional views. Since these are the final tables designed for analytics, I have them materialized as tables to enhance the query capabilities for end users.
- Within the schema.yml file, you will find a multitude of tests. These are designed to test the quality of the data to ensure the overall health of the data and the pipeline are good. It is essential to ensure end
- users can trust the data they are using.
- Along with the tests in the schema.yml file, you will find documentation for each table. It is important to have thorough documentation when working with data to ensure any user can understand what the data is
- meant to tell them.
- To further build out the project and replicate a real-world implementation, macros were generated. These macros are meant to reduce the redundancy of writing the same code in different data models. They are also
- simple macros just to show my capabilities in writing them.
- For a simple visualization, I created a free preset account and connected the final tables. The link to the dashboard is here:
- https://9293b275.us2a.app.preset.io/superset/dashboard/8/?edit=true&native_filters_key=Y1a7_IfM3kydxOYLKcEj2soSFA0ooL3HtECQx-2i-480RKtCmleWJqUoDbCBkdpo
- Or you can find it within the dashboard.yml file.
- Finally, I created a dagster project in order to orchestrate the models. In my real-world experience, we used Fivetran in order to orchestrate our dbt models to run but I decided to use an open source software for
- this project.
