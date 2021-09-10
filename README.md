## sql_templates

SQL template scripts I've collated over time.

| Folder                    | Description                                                                                       |
| --------------------------| --------------------------------------------------------------------------------------------------|
| eg_bikestore_db            | Template SQL scripts to create a sample Bike store db |
| sql            | Template SQL scripts |


## eg_bikestore_db

This folder contains SQL scripts to create and populate a sample bike store database in both an MSSQL and Snowflake DB. To run these scripts, see the 2 `makefiles` within the respective folders inside `eg_bikestore_db`.

### Prerequisite

Note: There is a prerequisite to executing the Snowflake scripts, in that a SnowSQL 'named profile' (containing your login creds) needs to be created. Though this is now part of the build script (`Makefile`).

