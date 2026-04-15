import pandas as pd

df = pd.read_csv("sales.csv", sep="\t")

df["total"] = df["price"] * df["quantity"]

result = df.groupby("product")["total"].sum()

print(result)