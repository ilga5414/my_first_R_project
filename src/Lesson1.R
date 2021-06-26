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


# matrices
m <- matrix(1:12, nrow=3, ncol=4)
m
m[3,3]
m[1:2, ]
m[, 4]
