error <- read.csv("C:/users/SONY/Desktop/Result.csv")
g0 <- ggplot(error, aes(x = Vis, y = errPlus3))
g_box <- g0 + geom_boxplot(fill = "grey", color = "black") + theme_bw()
g_box <- g_box + stat_summary(fun.data = mean_cl_boot, geom = "errorbar", color = "red") + stat_summary(fun.y = mean, geom = "point", color = "red")
g_box