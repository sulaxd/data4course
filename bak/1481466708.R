kmeansGoo <- kmeans(dtm_corpus.matrix, k)
euc.dist <- function(x1, x2) sqrt(rowSums((x1 - x2) ^ 2))

for (i in sort(unique(kmeansGoo$cluster))) {
  cat(paste("<<Cluster ", i, ">>： 
", sep=""))
  doc.index <- which(kmeansGoo$cluster==i)
  print(gooData[head(doc.index)])
  # print(gooData[as.integer(names(head(sort(euc.dist(dtm_corpus.matrix[doc.index,],kmeansGoo$centers[i,])),5)))])
  cat("
")
}
