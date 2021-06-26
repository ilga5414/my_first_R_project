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

vtor_ketras <- letters[1:6]
paste(vtor_ketras, LETTERS[1:6])
paste(vtor_ketras, "A")
paste(vtor_ketras, LETTERS[1:3], sep = " - ")
