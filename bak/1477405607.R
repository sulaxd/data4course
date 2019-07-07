library(tm)
(myCorpus <- Corpus(VectorSource(wiki.ds.vec)))

# remove stopwords from corpus
myCorpus <- tm_map(myCorpus, removeWords, stopwords("english"))
lapply(myCorpus, content)

# Strip extra whitespace
myCorpus <- tm_map(myCorpus, stripWhitespace)
lapply(myCorpus, content)

# stemming & completion
myCorpusCopy <- myCorpus
myCorpus <- tm_map(myCorpus, stemDocument)
lapply(myCorpus, content)

# completion (bug patch) 
# 原stemCompletion的x需character vector，但tm_map進去的為1個character
stemCompletion_mod <- function(x,dict=dictCorpus) {
  stripWhitespace(paste(stemCompletion(unlist(strsplit(as.character(x)," ")),dictionary=dict, type="shortest"),sep="", collapse=" "))
}

myCorpus <- tm_map(myCorpus, content_transformer(function(u){
  stemCompletion_mod(u, dict=myCorpusCopy)
  }))
lapply(myCorpus, content)


# Building a Term-Document Matrix
# 稀疏矩陣（Sparse matrix），是其元素大部分為零的矩陣
# 稀疏度指的是稀疏矩陣中，零所佔的比例
(myTdm <- DocumentTermMatrix(myCorpus))
dtm_corpus <- as.matrix(myTdm)
dtm_corpus[,1:10]
# 每個欄的總合剛好就是整個語料庫的word count
tail(sort(colSums(dtm_corpus)), 20)
