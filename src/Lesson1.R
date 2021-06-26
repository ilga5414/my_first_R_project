# sections: cmd+mayus+r

# R basics I: vectors, lists, matrices, data.frames....

# alt+guión- : <-
a <- 5
b <- 3

# ejecutar: cmd + enter


#seq
nmrs <- seq(40)
nmrs
1:40
seq(from=4,40,2)

# c
# vectors~tupla en python
primer_vector <- c(5, 1, 4, 4, 3, 3, 8, 9)
primer_vector
segundo_vector <- c(7, 4, 3, 8, 9, 1, 1, 6)
segundo_vector
primer_vector + segundo_vector
# todas las operaciones/funciones están vectorizadas!!!

primer_vector + 6
primer_vector + c(4, 6)

tercer_v <- c(4, 5, 6, 7, 8)
tercer_v + c(9, 2, 2)
# RECICLAJEEE!!!

vtor_letras <- letters[1:6]
paste(vtor_letras, LETTERS[1:6])
paste(vtor_letras, "A")
paste(vtor_letras, LETTERS[1:3], sep = " - ")



# basuic functions
sum(primer_vector)
mean(primer_vector)
median(primer_vector)
min(primer_vector)
max(primer_vector)
length(primer_vector)

segundo_vector <- c(segundo_vector, -3, -5)
abs(segundo_vector)


# sclicing
primer_vector[1:2]
primer_vector[-1]
primer_vector[c(3,5,6)]
primer_vector[c(T, F, T, T, F, T)]
rbind(primer_vector, c(T, F, T, T, F, T))


# coercion (en un vector todos los elementos son del mismo tipo)
c(1, "av")
c(T, 4)
# para hacerlos todos del mismo tipo


# listas
list(1, "av")
# aqui no tienen por que ser del mismo tipo
my_list <- list(c(1, 3), letters[1:3], 100:140)

my_list[1]
my_list[1:2]


# acceder al objeto guardado en la lista
my_list[[2]] # esto es un vector
my_list[[2]][3]
my_named_list <- list(a=1:4, b=letters[1:5], cosa="holi")
my_named_list
# estas tres cosas son equivalentes
my_named_list$cosa
my_named_list[[3]]
my_named_list[3]

# matrices
m <- matrix(1:12, nrow=3, ncol=4, byrow=T) #False: en vertical
m
m[3,3]
m[1:2, ]
m[, 4]


# dataframes
my_1st_dataframe <- data.frame(a = letters[1:3], b = 2:4, c = c(T, F, T))
my_1st_dataframe$a

# seleccionar columnas
my_1st_dataframe$b
my_1st_dataframe[, c("a", "c")]
names(my_1st_dataframe)
my_1st_dataframe[, 1:3]
my_1st_dataframe[, c(2, 3)]


# ....by value 
my_1st_dataframe$b
my_1st_dataframe$b < 4
my_1st_dataframe[my_1st_dataframe$b < 4,] # IMPORTANTE!!!!


# R BASICS II: apply functions
data("mtcars")
df <- mtcars
names(df)
#  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

df[df$hp > 100,]
df[df$drat > 2.5 & df$drat < 3.5,]
df[df$drat > 2.5 |df$drat == 4,] # or = | (alt1)


# sel.filas                   sel.col
df[df$drat > 4 | df$carb == 4, c("mpg", "cyl", "hp")]
