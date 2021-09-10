SHELL = /bin/sh

default: create_snowflake_account_objs create_snowflake_raw_db_objs

config_file=conf/config.json

$(eval program=$(shell jq '.Parameters.program' ${config_file}))
$(eval program_lower=$(shell echo $(program) | tr 'A-Z' 'a-z'))
$(eval sf_conn_profile=$(shell echo $(program) | tr 'A-Z' 'a-z'))
$(eval bootstrap_version=$(shell jq '.Parameters.bootstrap_version' ${config_file}))
$(eval snowsql_version=$(shell jq '.Parameters.snowsql_version' ${config_file}))
$(eval snowsql_installer_path=$(shell jq '.Parameters.snowsql_installer_path' ${config_file}))
$(eval sf_acc_name=$(shell jq '.Parameters.SnowflakeParams.sf_acc_name' ${config_file}))
$(eval sf_username=$(shell jq '.Parameters.SnowflakeParams.sf_username' ${config_file}))
$(eval sf_pass=$(shell jq '.Parameters.SnowflakeParams.sf_pass' ${config_file}))

installations: deps install clean

snowsql_query=snowsql -c ${sf_conn_profile} -o friendly=false -o header=false -o timing=false

beep:
	${snowsql_query}

deps:
	$(info [+] Download the relevant dependencies)
	# download SnowSQL
	@cd tmp && curl ${snowsql_installer_path} > snowsql-darwin_x86_64.pkg

install:
	$(info [+] Install the relevant dependencies)
	# install SnowSQL
	@cd tmp && installer -pkg snowsql-darwin_x86_64.pkg -target CurrentUserHomeDirectory
	# optional (for .z-shell only: add an alias to snowsql to your profile)
	@echo "alias snowsql=~/Applications/SnowSQL.app/Contents/MacOS/snowsql" >> ~/.zshrc && source ~/.zshrc

#add_sf_conn_profile:
test:
	@sed "s/%program/${program_lower}/g" conf/conn_profile.txt > tmp/conn_profile.txt
	@sed -i -e "s/%sf_acc_name/${sf_acc_name}/g" tmp/conn_profile.txt
	@sed -i -e "s/%sf_username/${sf_username}/g" tmp/conn_profile.txt
	@sed -i -e "s/%sf_pass/${sf_pass}/g" tmp/conn_profile.txt
	@cat tmp/conn_profile.txt >> ~/.snowsql/config
	@rm tmp/conn_profile.txt-e

clean:
	$(info [+] Remove any redundant files, e.g. downloads)
	@rm tmp/*.pkg
	@rm tmp/conn_profile.txt-e

create_snowflake_account_objs:
	$(info [+] Create the snowflake account objects)
	@[ "${sf_conn_profile}" ] || ( echo "\nError: sf_conn_profile variable is not set\n"; exit 1 )
	@${snowsql_query} -f snowflake/account_objects/role/v1_roles.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_dba_role.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_db_and_wh_perms.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/resource_monitor/v1_resource_monitors.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_resource_monitor_ownership_perms.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/warehouse/v1_warehouses.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/ownership/v1_grant_wh_ownership_perms.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/database/v1_raw_db_and_schemas.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/database/v1_curated_db_and_schemas.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/database/v1_analytics_db_and_schemas.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_execute_task_perms.sql --variable program=${program}	--variable ENV=${ENV}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/create/v1_grant_create_stage_perms.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/v1_create_role_hierarchy.sql --variable program=${program}
	@${snowsql_query} -f snowflake/account_objects/role/permissions/grant_permissions/v1_grant_role_permissions.sql --variable program=${program} --variable ENV=${ENV}

create_snowflake_raw_db_objs:
	$(info [+] Create the snowflake RAW db objects)
	@${snowsql_query} -f snowflake/database_objects/raw_db/table/v1_tbls.sql --variable program=${program}

populate_snowflake_raw_db_tbls:
	$(info [+] Populate the RAW db tables)
	@${snowsql_query} -f snowflake/load_data.sql --variable program=${program}
