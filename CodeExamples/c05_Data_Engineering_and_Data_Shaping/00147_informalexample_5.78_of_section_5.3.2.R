# informalexample 5.78 of section 5.3.2 
# (informalexample 5.78 of section 5.3.2)  : Data Engineering and Data Shaping : Aggregating Transforms : Combining many rows into summary rows 

library("data.table")

iris_data.table <- as.data.table(iris)

iris_data.table[ , 
                 `:=`(mean_Petal.Length = mean(Petal.Length),
                      mean_Petal.Width = mean(Petal.Width)), 
                 by = "Species"]

# print(iris_data.table)

