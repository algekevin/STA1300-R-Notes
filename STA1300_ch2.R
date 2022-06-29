x <- c(164, 478.7, 251.3, 351.7, 173, 448.9, 300.6,
       362, 272.4, 740.2, 329, 327.2, 270.5, 332.1,
       288.8, 176.1, 282.2, 236.1, 358.2, 270.5, 290.7)

hist(x, 
     xlab=mtext(side=1,
                line=2,
                "Silk Yield Stress (MPa)",
                font=2),
     ylab=mtext(side=2,
                line=2,
                "Frequency (f)",
                font=2),
     main="Histogram of Spider Silk Stress Data")

legend("topright", 
       legend=c("Mean", "Median"),
       col=c("blue", "darkgreen"),
       lwd=2)

abline(v=mean(x), col="blue", lwd=2)
abline(v=median(x), col="darkgreen", lwd=2)

boxplot(x, 
        horizontal=T,
        xlab="Silk Yield Stress (MPa)",
        main="Boxplot of Silk Yield Stress")

fivenum(x)
IQR(x)

xbar <- mean(x); n <- length(x)
sqrt(sum((x - xbar)^2)/(n-1))
sd(x)
