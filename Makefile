AWS_PROFILE=${MY_AWS_PROFILE}
CONFIG_FILE=env/config.json

$(eval HOST=$(shell jq '.Parameters.Host' ${CONFIG_FILE}))
$(eval USERNAME=$(shell jq '.Parameters.Username' ${CONFIG_FILE}))
$(eval PWD=$(shell jq '.Parameters.Pwd' ${CONFIG_FILE}))

MSSQL_CMD=sqlcmd -S ${HOST} -U ${USER} -P "${PWD}" -y 30 -Y 30

run_sql_cmds:
	# run SQL commands to create sample database and load data
	${MSSQL_CMD} -i eg_bikestore_db/mssql/1_create_db_objs.sql
	${MSSQL_CMD} -i rds/sql_example/mssql/2_load_data.sql
