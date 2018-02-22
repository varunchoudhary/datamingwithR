import pandas as pd
import xlrd
import numpy as np
from sklearn.model_selection import KFold
from sklearn.cluster import KMeans
####data acredation from different country data files
# df = pd.read_excel('Online Retail.xlsx')
# df.to_pickle('onlinepicklesdata.pickle')
df=pd.read_pickle('onlinepicklesdata.pickle')
# StockCode=df.StockCode.unique()
# Description = df.Description.unique()
# Invoice = df.InvoiceNo.unique()
# print(len(Invoice))
# print(len(Description))

#
# #
country = df.Country.unique()
print(country)
# # dataf = pd.read_csv('onlineUSAd.csv')
# # dataf.to_pickle('pickle/onlineUSA.pickle')
# dataf = pd.read_pickle('pickle/onlineUSA.pickle')
# print(dataf.head())
# Invoice = dataf.InvoiceNo.unique()
# print(Invoice)
# for i in Invoice:
#     for j in dataf.InvoiceNo:
#             if i==j:
#                 np.array([[df.Description]])
# print(np.array)

#
# dfcountry={}
# tbpivot={}

#### changing data to pivoted form

# for j in country:
# 	dfcountry[j] = pd.DataFrame(pd.read_excel('disdata/online'+j+'.xlsx'))
# 	dfcountry[j]=dfcountry[j].drop(['StockCode','InvoiceDate','UnitPrice','CustomerID','Country'],axis=1)
# 	tbpivot[j] = dfcountry[j].pivot_table(index='InvoiceNo',columns="Description",values='Quantity',dropna=False,fill_value='0')
# 	tbpivot[j].to_excel('pivot/onilnepivoted'+j+'.xlsx')

# tablepivot = pd.read_excel('pivot/onilnepivotedUSA.xlsx')
# tablepivot[tablepivot.columns[tablepivot.dtypes != np.object]] =  tablepivot[tablepivot.columns[tablepivot.dtypes != np.object]].abs()
# # tablepivot[tablepivot !=0 ] = 1
# print(tablepivot)
# tablepivot.to_excel('pivot/pivotedUSA.xlsx')
#
# X = pd.read_excel('pivot/pivotedUSA.xlsx')
# X.plot.scatter(x='X.InvoiceNO',y='x.Description')
#
# kmeans = KMeans(n_clusters=100, random_state=0).fit(X)
#
# print(kmeans.labels_)
# print(kmeans.cluster_centers_)



















# df = pd.read_excel('test.xlsx')
# # df.to_pickle("fullcountry.pickle")
# # X= np.array(df)
# # country = df.Description.unique()

# # # country1= df.Description
# # # features = pd.DataFrame()
# # # columns=[]
# # # for i in range(4224):

# # features= pd.get_dummies(country)
# # print(features)
# # print(len(country),len(country1))
# # df.pivot(columns="Description",values='1')
# table = df.pivot_table(index='InvoiceNo',columns='Description',dropna=False,fill_value='0')
# print(table.head())
# # pd.melt(df)
# # df=df.CustomerID.dropna()

# # print(len(country),len(country1))
# # print(df.head())
# table.to_excel('pivot.xlsx')
# print(table)
# print(country[5])
####################################################
# dflist={}
# code to write data into multiple data  files depending on county
# for i in country:
#  	dflist[i]=df[df['Country'] == i]
#  	dflist[i].to_excel("online"+i+".xlsx",index=False)

#####################################################
# kmeans = []
# for i in country:
# 	dflist[i] = pd.read_excel("disdata/online"+i+".xlsx",index=False)
# 	# df =pd.DataFrame(pd.DataFrame(dflist[i]))
# print(df.head())

# df.to_pickle("countrydataframe.pickle")



# kmeans = KMeans.(n_clusters=38).fit(X)
