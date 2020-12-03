import cx_Oracle as cx
import pandas as pd

"""
Some quick start guides:
* cx_Oracle 8: https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html
* pandas: https://pandas.pydata.org/pandas-docs/stable/user_guide/10min.html
"""
# TODO change path of Oracle Instant Client to yours
cx.init_oracle_client(lib_dir = "/Users/clint/Desktop/embedded/instantclient_19_8")

# TODO change credentials
# Connect as user "user" with password "mypass" to the "CSC423" service
# running on lawtech.law.miami.edu
connection = cx.connect("cljucsc423", "c08868", "lawtech.law.miami.edu/CSC_423")
cursor = connection.cursor()

querystring1 = "SELECT * from Client"
querystring2 = "SELECT * from Employee"
querystring3 = "SELECT * from Equipment"
querystring4 = "SELECT * from Requirements"
querystring5 = "SELECT c.cNum, e.eqId FROM Client c, Equipment e, Requirements r WHERE c.cNum=r.cNum"
querystring6 = "SELECT * FROM Client WHERE phoneNum LIKE '%555%'"
querystring7 = "SELECT COUNT(cNum) FROM Requirements"
querystring8 = "SELECT COUNT(cNum) FROM Requirements WHERE eTime LIKE '5 PM'"
querystring9 = "SELECT * FROM Requirements WHERE eTime LIKE '5 PM'"

# cursor.execute("""
#     SELECT *
#     FROM Client
#     """)

cursor.execute(querystring1)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring2)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring3)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring4)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring6)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring7)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring8)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column

cursor.execute(querystring9)

# get column names from cursor
columns = [c[0] for c in cursor.description]
# fetch data
data = cursor.fetchall()
# bring data into a pandas dataframe for easy data transformation
df = pd.DataFrame(data, columns = columns)
print(df) # examine
print(df.columns)
# print(df['FIRST_NAME']) # example to extract a column