fit_pam1 <- pam(newiris, 3)
table(iris$Species, fit_pam1$cluster)
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=fit_pam1$cluster)
points(fit_pam1$medoids[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)
