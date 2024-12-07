#dt1
file_path <- "//uofa/users$/users0/a1898510/Desktop/2010.4.1-2012.12.31.csv"


dt1 <- read.csv(file_path, header = TRUE,sep = "\t")


head(dt1)

str(dt1)


raw_data <- dt1[, 1]


split_data <- do.call(rbind, strsplit(raw_data, "\\s+"))


dt1_clean <- as.data.frame(split_data, stringsAsFactors = FALSE)


colnames(dt1_clean) <- c("Date", "Time", "OpenPrice", "ClosePrice")


dt1_clean$OpenPrice <- as.numeric(dt1_clean$OpenPrice)
dt1_clean$ClosePrice <- as.numeric(dt1_clean$ClosePrice)


head(dt1_clean)


#dt2
file_path <- "//uofa/users$/users0/a1898510/Desktop/2013-2015.csv"


dt2 <- read.csv(file_path, header = TRUE,sep = "\t")


head(dt2)

str(dt2)


raw_data <- dt2[, 1]


split_data <- do.call(rbind, strsplit(raw_data, "\\s+"))


dt2_clean <- as.data.frame(split_data, stringsAsFactors = FALSE)


colnames(dt2_clean) <- c("Date", "Time", "OpenPrice", "ClosePrice")


dt2_clean$OpenPrice <- as.numeric(dt2_clean$OpenPrice)
dt2_clean$ClosePrice <- as.numeric(dt2_clean$ClosePrice)


head(dt2_clean)

#dt3
file_path <- "//uofa/users$/users0/a1898510/Desktop/2015-2017.csv"


dt3 <- read.csv(file_path, header = TRUE,sep = "\t")


head(dt3)

str(dt3)


raw_data <- dt2[, 1]


split_data <- do.call(rbind, strsplit(raw_data, "\\s+"))


dt3_clean <- as.data.frame(split_data, stringsAsFactors = FALSE)


colnames(dt3_clean) <- c("Date", "Time", "OpenPrice", "ClosePrice")


dt3_clean$OpenPrice <- as.numeric(dt3_clean$OpenPrice)
dt3_clean$ClosePrice <- as.numeric(dt3_clean$ClosePrice)


head(dt3_clean)


#dt4
file_path <- "//uofa/users$/users0/a1898510/Desktop/2017-2019.4.29.csv"


dt4 <- read.csv(file_path, header = TRUE,sep = "\t")


head(dt4)

str(dt4)


raw_data <- dt4[, 1]


split_data <- do.call(rbind, strsplit(raw_data, "\\s+"))


dt4_clean <- as.data.frame(split_data, stringsAsFactors = FALSE)


colnames(dt4_clean) <- c("Date", "Time", "OpenPrice", "ClosePrice")


dt4_clean$OpenPrice <- as.numeric(dt4_clean$OpenPrice)
dt4_clean$ClosePrice <- as.numeric(dt4_clean$ClosePrice)


head(dt4_clean)



combined_data <- rbind(dt1_clean, dt2_clean, dt3_clean, dt4_clean)


head(combined_data)
tail(combined_data)


str(combined_data)


# 保存为CSV文件
write.csv(combined_data, "SH300IFcombined.csv", row.names = FALSE)

View(combined_data)


#Using dt4
write.csv(combined_data, "SH300IFcombined.csv", row.names = FALSE)
view(dt4_clean)