import sqlite3
import pandas as pd

def ExecuteSqlFromFile(sqlFile, database):
    with open(sqlFile) as sqlQ:
        sqlQuery = sqlQ.read()
        print(sqlQuery)
        with sqlite3.connect(database) as conn:
            conn.executescript(sqlQuery)
            conn.commit()

if __name__ == "__main__":
    dataFile = '99Bikers_Raw_data.xlsx'
    resultDataBase = 'test_db.db'

    # Загрузка данных напрямую из файла Excel
    Transactionslist = pd.read_excel(dataFile, sheet_name='Transactions')
    CustomerDemographiclist = pd.read_excel(dataFile, sheet_name='CustomerDemographic')
    CustomerDemographiclist = CustomerDemographiclist.drop('default', axis=1)
    CustomerAddresslist = pd.read_excel(dataFile, sheet_name='CustomerAddress')

    # Выполнение SQL-скриптов
    ExecuteSqlFromFile('Sql\\C_stg_CustomerAddress.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\C_stg_CustomerDemographic.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\C_stg_Transactions.sql', resultDataBase)

    ExecuteSqlFromFile('Sql\\C_dwh_Products.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\C_dwh_Customers.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\C_dwh_Transaction.sql', resultDataBase)

    # Запись данных в SQLite базу данных
    with sqlite3.connect(resultDataBase) as conn:
        Transactionslist.to_sql('stg_Transactions', conn, if_exists='append')
        CustomerDemographiclist.to_sql('stg_CustomerDemographic', conn, if_exists='append')
        CustomerAddresslist.to_sql('stg_CustomerAddress', conn, if_exists='append')

    ExecuteSqlFromFile('Sql\\I_dwh_Products.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\I_dwh_Customers.sql', resultDataBase)
    ExecuteSqlFromFile('Sql\\I_dwh_Transaction.sql', resultDataBase)
