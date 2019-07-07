hc <- hclust(dist(mtcars))
plot(hc)
hccut <- cutree(hc,5)
rect.hclust(hc,5)
