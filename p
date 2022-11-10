import pandas as pd



df = pd.read_excel("power bi aula 1.xlsx")

df.head()

df.dtypes

df.isnull().sum()

df.dropna(inplace=True)

df["Dia"].min()

df["diferença_dias"] = df["Dia"] - df["Dia"].min()

df.sample(0)

df["Dia"].value_counts(ascending=False)

df.groupby(df["Dia"].dt.year)["Lucro"].sum().plot.pie()

