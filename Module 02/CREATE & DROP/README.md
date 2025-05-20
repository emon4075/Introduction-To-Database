# SQL Database Commands

This README explains fundamental SQL commands for database creation and deletion.

## CREATE DATABASE

The `CREATE DATABASE` command is used to create a new database in a database management system.

```sql
CREATE DATABASE my_db;
```

### Purpose
- Creates a new, empty database with the specified name
- Sets up the necessary files and system structures to store data
- Establishes a new namespace for database objects

### Syntax
```sql
CREATE DATABASE [IF NOT EXISTS] database_name
[CHARACTER SET charset_name]
[COLLATE collation_name];
```

### Key Points
- Database names must be unique within the database server
- The optional `IF NOT EXISTS` clause prevents errors if the database already exists
- Character set and collation options define how text is stored and compared
- Administrator privileges are typically required to create databases

## DROP DATABASE

The `DROP DATABASE` command permanently removes a database and all its contents.

```sql
DROP DATABASE my_db;
```

### Purpose
- Completely removes a database from the system
- Deletes all tables, views, stored procedures, and other objects contained within
- Frees up disk space previously used by the database

### Syntax
```sql
DROP DATABASE [IF EXISTS] database_name;
```

### Warning
⚠️ **CAUTION:** This operation is **irreversible** and will permanently delete all data. Make sure to back up any important data before executing this command.

### Key Points
- The optional `IF EXISTS` clause prevents errors if the database doesn't exist
- Administrator privileges are typically required to drop databases
- All users connected to the database will be disconnected
- All scheduled jobs or triggers associated with the database will be terminated

## Related Links

### CREATE DATABASE
- [MySQL Documentation: CREATE DATABASE](https://dev.mysql.com/doc/refman/8.0/en/create-database.html)
- [PostgreSQL Documentation: CREATE DATABASE](https://www.postgresql.org/docs/current/sql-createdatabase.html)
- [SQL Server Documentation: CREATE DATABASE](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-database-transact-sql)

### DROP DATABASE
- [MySQL Documentation: DROP DATABASE](https://dev.mysql.com/doc/refman/8.0/en/drop-database.html)
- [PostgreSQL Documentation: DROP DATABASE](https://www.postgresql.org/docs/current/sql-dropdatabase.html)
- [SQL Server Documentation: DROP DATABASE](https://learn.microsoft.com/en-us/sql/t-sql/statements/drop-database-transact-sql)