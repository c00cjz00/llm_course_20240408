# 相關安裝套件
# pip install pandas json
import pandas as pd
import json

# JSON資料集
input_file="33-baike.json"
data = pd. read_json ( input_file )
df = pd.DataFrame(data) # 轉成 DataFrame

# 轉檔
extracted_dataset = []
for index, row in df.iterrows():
    print(row['output'])
    extracted_data = {
        "instruction": row['instruction'],
        "input":  row['input'],
        "output": row['output']        
    }
    extracted_dataset.append(extracted_data)

# 內容寫進檔案
with open("data.json", "wt", encoding="UTF-8") as fp:
    json.dump(extracted_dataset, fp, ensure_ascii=False, indent=4) 

