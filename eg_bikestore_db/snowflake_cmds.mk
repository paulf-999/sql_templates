all: create_snowflake_account_objs create_snowflake_raw_db_objs

PROGRAM=BIKESTORES
SNOWFLAKE_CONN_PROFILE=dbt_cicd_demo
SNOWSQL_QUERY=snowsql -c ${SNOWFLAKE_CONN_PROFILE} -o friendly=false -o header=false -o timing=false

create_snowflake_account_objs:
	$(info [+] Create the snowflake account objects)
	@[ "${SNOWFLAKE_CONN_PROFILE}" ] || ( echo "\nError: SNOWFLAKE_CONN_PROFILE variable is not set\n"; exit 1 )
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/v1_roles.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_dba_role.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_db_and_wh_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/resource_monitor/v1_resource_monitors.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_resource_monitor_ownership_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/warehouse/v1_warehouses.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_wh_ownership_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/database/v1_raw_db_and_schemas.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/database/v1_curated_db_and_schemas.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/database/v1_analytics_db_and_schemas.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_execute_task_perms.sql --variable PROGRAM=${PROGRAM}	--variable ENV=${ENV}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_stage_perms.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/v1_create_role_hierarchy.sql --variable PROGRAM=${PROGRAM}
	@${SNOWSQL_QUERY} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_role_permissions.sql --variable PROGRAM=${PROGRAM} --variable ENV=${ENV}

create_snowflake_raw_db_objs:
	$(info [+] Create the snowflake RAW db objects)
	@${SNOWSQL_QUERY} -f snowflake/database_objects/raw_db/table/v1_tbls.sql --variable PROGRAM=${PROGRAM}

populate_snowflake_raw_db_tbls:
	$(info [+] Populate the RAW db tables)
	@${SNOWSQL_QUERY} -f snowflake/load_data.sql --variable PROGRAM=${PROGRAM}
