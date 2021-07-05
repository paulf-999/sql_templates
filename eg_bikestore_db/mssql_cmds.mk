MSSQL_CMD=sqlcmd -S ${HOST} -U ${USER} -P "${PWD}" -y 30 -Y 30

run_sql_cmds:
	# run SQL commands to create sample database and load data
	${MSSQL_CMD} -i mssql/1_create_db_objs.sql
	${MSSQL_CMD} -i mssql/2_load_data.sql
