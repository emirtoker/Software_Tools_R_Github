
temp_4 <- read.table(file = 'https://web.itu.edu.tr/~tokerem/Goztepe_IST_Temp_1839-2013_Monthly.dat', na.strings = -999.9)
temp_4

temp_4 <- temp_4[2:13]
temp_4

attributes(temp_4)
attributes(temp_4)$names
attributes(temp_4)$names <- month.abb
attributes(temp_4)$row.names
attributes(temp_4)$row.names <- seq(1839,2013)

temp <- na.omit(temp_4)
temp

which(temp$Jun<temp$Jul)
index_Jun_Jul <- which(temp$Jun<temp$Jul)

rownames(temp)[index_Jun_Jul]

# or -----> rownames(temp)[which(temp$Jun<temp$Jul)]
# or -----> attributes(temp)$row.names[which(temp$Jun<temp$Jul)]
# or -----> attributes(temp)$row.names[index_Jun_Jul]


a <- 6

for (i in 5:10) {
  if (i==a){
    break
  }
  print(i)
}
  



a <- 0

for (i in c(1,2,3)) {
  a <- a + 1
  print(a)
}




a <- 0

for (i in c(1,2,3)) {
  a <- a + i
  print(a)
}




a <- 0

for (i in c("apple","umbrella","book")) {
  a <- a + length(i)
  print(a)
}





a <- 0

for (i in c("orange","umbrella","book")) {
    if (i == "orange") {
    print("HEY I'M AN ORANGE")
  } else if (i != "orange") {
        if (i == "umbrella") {
        print(48)
      } else {
        print("note")
      }
   }
print(i)
}



