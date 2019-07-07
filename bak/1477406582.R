mixseg <- worker()
# 取得IDF並存於工作目錄下
get_idf(wiki.ds.list, path = "idf.txt")
tokenEngine <- worker("keywords", idf = "idf.txt") #有Error?
# 以文件1為例，計算TFIDF，其中log為natural logarithms
for(i in 1:length(wiki.ds.list)){
  print(vector_keywords(wiki.ds.list[[i]], tokenEngine))
}
