AWS_PROFILE=${MY_AWS_PROFILE}
PROGRAM=BIKESTORES
SNOWFLAKE_CONN_PROFILE=dbt_cicd_demo
MSSQL_CMD=sqlcmd -S ${HOST} -U ${USER} -P "${PWD}" -y 30 -Y 30
SNOWSQL_QUERY=snowsql -c ${SNOWFLAKE_CONN_PROFILE} -o friendly=false -o header=false -o timing=false

run_sql_cmds:
	# run SQL commands to create sample database and load data
	${MSSQL_CMD} -i eg_bikestore_db/mssql/1_create_db_objs.sql
	${MSSQL_CMD} -i eg_bikestore_db/mssql/2_load_data.sql

run_snowflake_cmds:
	# run SQL commands to create sample database and load data	@[ "${SNOWFLAKE_CONN_PROFILE}" ] || ( echo "\nError: SNOWFLAKE_CONN_PROFILE variable is not set\n"; exit 1 )
	${SNOWSQL_QUERY} -i eg_bikestore_db/snowflake/1_create_db_objs.sql
	${SNOWSQL_QUERY} -i eg_bikestore_db/snowflake/2_load_data.sql

create_snowflake_account_objs:
	$(info [+] Create the snowflake account objects)
	@[ "${SNOWFLAKE_CONN_PROFILE}" ] || ( echo "\nError: SNOWFLAKE_CONN_PROFILE variable is not set\n"; exit 1 )
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/v1_roles.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/v1_grant_dba_role.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_db_and_wh_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/resource_monitor/v1_resource_monitors.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_resource_monitor_ownership_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/warehouse/v1_warehouses.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_wh_ownership_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/database/v1_raw_db_and_schemas.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/database/v1_curated_db_and_schemas.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/v1_grant_execute_task_perms.sql --variable PROGRAM=${PROGRAM}	--variable ENV=${ENV}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_stage_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f eg_bikestore_db/snowflake/account_objects/role/permissions/v1_create_role_hierarchy.sql --variable PROGRAM=${PROGRAM}
