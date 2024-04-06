# 相關安裝套件
# pip install opencc opencc-python-reimplemented datasets
import json
import opencc
from datasets import load_dataset

# s2t: 簡體到正體, s2twp:簡體到台灣正體
op_cc=opencc.OpenCC('s2twp')

# HF資料集
dataset_dict = load_dataset(
    "Hello-SimpleAI/HC3-Chinese",
    "baike",  # 選擇 baike 子集
    cache_dir="cache",  # 方便清理
    streaming=True,  # 啟用此選項，避免整份資料集被下載到硬碟裡面
)
dataset = dataset_dict['train']

# 轉檔
extracted_dataset = []
for _, data in zip(range(1000), dataset):
#for data in dataset:
    extracted_data = {
        "instruction": "你是個知識豐富的人工智慧助手，使用者將以中文向你提問，你將根據你的知識用中文來如實回答問題",
        "input":  op_cc.convert(data["question"]),
        #"output":  op_cc.convert(data["human_answers"]),
        "output":  op_cc.convert(data["chatgpt_answers"][0])        
    }
    extracted_dataset.append(extracted_data)

# 內容寫進檔案
with open("data.json", "wt", encoding="UTF-8") as fp:
    json.dump(extracted_dataset, fp, ensure_ascii=False, indent=4) 

