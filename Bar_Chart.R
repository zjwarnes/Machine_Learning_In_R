bar.chart <- function(data, x.Name, y.Name, main.Title, x.Axis.Labels, bar.colors, chart.legend){
	
	#file name and type
	png(file = cat(sprintf('\'%s\'.png', main.Title)))

	#plot the file
	barplot(H = data, xlab = x.Name, ylab = y.Name, main = main.Title,
		names.arg = x.Axis.Labels, col = bar.colors, border = bar.colors)

	if(!missing(chart.legend){
		legend("topleft", chart.legend, cex = 1.3, fill = bar.colors)	
	}

	#save the file
	dev.off()
}