#import "/lib/notes.typ": *

= Análisis Vectorial
== Producto Escalar de Vectores
Sea el vector: $ arrow(A) = A_x hat(i) + A_y hat(j) + A_z hat(k) = A_x hat(e)_x + A_y hat(e)_y + A_z hat(e)_z $ o también $ arrow(A) = A_1 hat(e)_1 + A_2 hat(e)_2 + A_3 hat(e)_3 = underbrace(sum_(i = 1)^3 A_i hat(e)_i, upright("N. Indicial")) $ En la notación de Einstein: $ arrow(A) = A_i hat(e)_i $ Por lo tanto el producto escalar lo podemos expresar como: $ arrow(A) dot.op arrow(B) = A_1 B_1 + A_2 B_2 + A_3 B_3 = sum_(i = 1)^3 A_i B_i $

== Tensor delta de Kronecker
El tensor delta de Kronecker es un tensor de rango 2 y simetrico el cual esta definido por: $ delta_(i j) = cases(delim: "{", 1 & "si" & i = j, 0 & "si" & i eq.not j) $ Entonces: $ cases(reverse: #true, hat(e)_1 dot.op hat(e)_1 = hat(e)_2 dot.op hat(e)_2 = hat(e)_3 dot.op hat(e)_3 = 1, hat(e)_1 dot.op hat(e)_2 = hat(e)_2 dot.op hat(e)_3 = hat(e)_1 dot.op hat(e)_3 = 0) hat(e)_i dot.op hat(e)_j = delta_(i j) $ Por lo tanto: $ sum_(i = 1)^3 a_i delta_(i j) & = a_1 delta_(1 j) + a_2 delta_(2 j) + a_3 delta_(3 j)\
 & = a_1 + a_2 + a_3 $

#nota[

#sinnum[$  hat(i) dot.op hat(i) = 1\;quad hat(i) dot.op hat(j) = 0 quad arrow.r quad upright("coordenadas cartesianas")\
hat(e)_rho dot.op hat(e)_rho = 1\;quad hat(e)_rho dot.op hat(e)_phi = 0 quad arrow.r quad upright("coordenadas cilíndricas")\
hat(e)_r dot.op hat(e)_r = 1\;quad hat(e)_r dot.op hat(e)_phi = 0 quad arrow.r quad upright("coordenadas esféricas") $]

]

Por tanto la matriz identidad $I_(n times n)$ tiene entradas iguales al delta de Kronecker: $ I_(i j) = delta_(i j) $ En dos dimensiones: $ delta_(i j) = mat(delim: "(", 1, 0; 0, 1) $ En tres dimensiones: $ delta_(i j) = mat(delim: "(", 1, 0, 0; 0, 1, 0; 0, 0, 1) $ #emph[El delta de Kronecker no está definido para números complejos].

#heading(level: 3, numbering: none)[Propiedades]
+ #sinnum[$  sum_j delta_(i j) a_j = a_i $]

+ #sinnum[$  sum_k delta_(i k) delta_(k j) = delta_(i j) $]

+ #sinnum[$  sum_i a_i delta_(i j) = a_j $]

+ #sinnum[$  delta_(n m) = 1 / N sum_(k = 1)^N e^(2 pi i K / N\(n - m\)) $]

Sea: $ cases(reverse: #true, arrow(A) = sum_(i = 1)^3 A_i hat(e)_i, , arrow(B) = sum_(j = 1)^3 B_j hat(e)_j) arrow(A) dot.op arrow(B) = sum_(i = 1)^3 sum_(j = 1)^3 A_i B_j\(hat(e)_i hat(e)_j\) $

#block[
\= A\_i B\_j \_ij

]
== Producto Vectorial
Si tenemos dos vectores $arrow(A)$ y $arrow(B)$ de la forma: #sinnum[$  arrow(A) = A_1 hat(e)_1 + A_2 hat(e)_2 + A_3 hat(e)_3\
arrow(B) = B_1 hat(e)_1 + B_2 hat(e)_2 + B_3 hat(e)_3 $] De modo que el producto vectorial esta definido como: $ arrow(A) times arrow(B) = mat(delim: "|", hat(e)_1, hat(e)_2, hat(e)_3; A_1, A_2, A_3; B_1, B_2, B_3) =\(A_2 B_3 - B_2 A_3\)hat(e)_1 +\(B_1 A_3 - A_1 B_3\)hat(e)_2 +\(A_1 B_2 - B_1 A_2\)hat(e)_3 $

#sinnum[$  cases(reverse: #true, hat(i) times hat(j) = hat(k) arrow.r hat(j) times hat(i) = - hat(k), hat(j) times hat(k) = hat(i) arrow.r hat(k) times hat(j) = - hat(i), hat(i) times hat(i) = 0) bold("Coordenadas Cartesianas") $] #sinnum[$  cases(reverse: #true, hat(e)_r times hat(e)_theta = hat(e)_phi.alt arrow.r hat(e)_theta times hat(e)_r = - hat(e)_phi.alt, hat(e)_theta times hat(e)_phi.alt = hat(e)_r arrow.r hat(e)_phi.alt times hat(e)_theta = - hat(e)_r, hat(e)_r times hat(e)_r = 0) bold("Coordenadas Esféricas") $] #sinnum[$  cases(reverse: #true, hat(e)_rho times hat(e)_phi = hat(e)_z arrow.r hat(e)_phi times hat(e)_rho = - hat(e)_z, hat(e)_phi times hat(e)_z = hat(e)_rho arrow.r hat(e)_z times hat(e)_phi = - hat(e)_rho, hat(e)_rho times hat(e)_rho = 0) bold("Coordenadas Cilíndricas") $]

== Tensor de Levi-Civita
El tensor de Levi-Civita es un tensor de rango 3 y antisimétrico, definido como: $ epsilon_(i j k) = cases(delim: "{", 1 & \;& upright("si hay permutación par de ") i\,j\,k upright("(permutación cíclica)."), 0 & \;& upright("si dos índices se repiten."), - 1 & \;& upright("si hay permutación impar de ") i\,j\,k upright("(permutación anticiclica).")) $

#sinnum[$  epsilon_(i j k) arrow.r epsilon_(j i k) = - 1\;quad epsilon_(i j k) arrow.r^(i\,j) epsilon_(j i k) arrow.r^(i\,k) epsilon_(j k i) = 1\
epsilon_(i j k)_arrow.ccw arrow.r epsilon_(j k i) arrow.r epsilon_(k i j) = 1 $] #strong[Regla:] #sinnum[$  epsilon_(i j k) = epsilon_(j k i) = epsilon_(k i j) & = 1\
epsilon_(i k j) = epsilon_(k j i) = epsilon_(j i k) & = - 1 $]

ó

#sinnum[$  epsilon_123 = epsilon_231 = epsilon_312 & = 1\
epsilon_132 = epsilon_321 = epsilon_213 & = - 1 $]

#nota[

$ epsilon_(i j k) epsilon_(n m k) = delta_(i n) delta_(j m) - delta_(i m) delta_(n j) $ Si: #sinnum[$  epsilon_(i j k) epsilon_(n k m) = epsilon_(i j k)\(- epsilon_(n m k)\)= - epsilon_(i j k) epsilon_(n m k) & = -\(delta_(i n) delta_(j n) - delta_(i m) delta_(n j)\)\
 & = delta_(i m) delta_(n j) - delta_(i n) delta_(j m) $]

]

Analizando: #sinnum[$  arrow(A) times arrow(B) =\(A_2 B_3 - A_3 B_2\)hat(e)_1 +\(B_1 A_3 - B_3 A_1\)hat(e)_2 +\(A_1 B_2 - A_2 B_1\)hat(e)_3 $]

+ La primera componente: #sinnum[$ \(arrow(A) times arrow(B)\)_1 =\(B_1 A_3 - B_3 A_1\) & = epsilon_123 A_2 B_3 + epsilon_132 A_3 B_2\
   & = epsilon_(1 j k) A_j B_k = sum_(j k) epsilon_(i j k) A_j B_k $]

+ La segunda componente: #sinnum[$ \(arrow(A) times arrow(B)\)_2 =\(B_1 A_3 - B_3 A_1\) & = epsilon_231 A_3 B_1 + epsilon_213 A_1 B_3\
   & = epsilon_(2 j k) A_j B_k = sum_(j k) epsilon_(2 j k) A_j B_k $]

+ La tercera componente: #sinnum[$ \(arrow(A) times arrow(B)\)_3 =\(A_1 B_2 - A_2 B_1\) & = epsilon_312 A_1 B_2 + epsilon_321 A_2 B_1\
   & = epsilon_(3 j k) A_j B_k = sum_(j k) epsilon_(3 j k) A_j B_k $]

$ therefore arrow(A) times arrow(B) = epsilon_(1 j k) A_j B_k hat(e)_1 + epsilon_(2 j k) A_j B_k hat(e)_2 + epsilon_(3 j k) A_j B_k hat(e)_3 $

#block[
\=\_ijk A\_j B\_k \_i

]
O también se puede expresar de la siguiente forma: #sinnum[$  arrow(A) times arrow(B) & = sum_(j k) epsilon_(1 j k) A_j B_k hat(e)_1 + sum_(j k) epsilon_(2 j k) A_j B_k hat(e)_2 + sum_(j k) epsilon_(3 j k) A_j B_k hat(e)_3\
 & = sum_(j k) [\( epsilon_(1 j k) hat(e)_1 + epsilon_(2 j k) hat(e)_2 + epsilon_(3 j k) hat(e)_3 \) A_j B_k]\
 & = sum_(i j k) epsilon_(i j k) hat(e)_i A_j B_k $]

#block[
\=\_ijk \_ijk A\_j B\_k \_i

]
#nota[

Al delta de Kronecker se le llama también #strong[operador de sustitución]: #sinnum[$  delta_(i j) V_i = V_j $] Otra forma de expresar el tensor de Levi-Civita es: #sinnum[$  epsilon_(i j k) = 1 / 2\(i - j\)\(j - k\)\(k - i\) $] Notar que: #sinnum[$  epsilon_(i j k) delta_(l i) = epsilon_(l j k) $]

]

Entonces tenemos que: #sinnum[$  epsilon_(i j k) & = epsilon_(l m n) delta_(l i) delta_(m j) delta_(n k)\
 & = delta_(1 i) delta_(2 j) delta_(3 k) - delta_(1 i) delta_(3 j) delta_(2 k) - delta_(2 i) delta_(1 j) delta_(3 k) + delta_(3 i) delta_(1 j) delta_(2 k) + delta_(2 i) delta_(3 j) delta_(1 k) - delta_(3 i) delta_(2 j) delta_(1 k)\
 & = delta_(1 i)\(delta_(2 j) delta_(3 k) - delta_(3 j) delta_(2 k)\)- delta_(1 j)\(delta_(2 i) delta_(3 k) - delta_(3 i) delta_(2 k)\)+ delta_(1 k)\(delta_(2 i) delta_(3 j) - delta_(3 i) delta_(2 j)\) $] Por lo tanto tenemos: $ epsilon_(i j k) = mat(delim: "|", delta_(1 i), delta_(1 j), delta_(1 k); delta_(2 i), delta_(2 j), delta_(2 k); delta_(3 i), delta_(3 j), delta_(3 k)) = mat(delim: "|", delta_(1 i), delta_(2 i), delta_(3 i); delta_(1 j), delta_(2 j), delta_(3 j); delta_(1 k), delta_(2 k), delta_(3 k)) $ De este modo: $ epsilon_(i j k) epsilon_(p q r) = mat(delim: "|", delta_(1 i), delta_(2 i), delta_(3 i); delta_(1 j), delta_(2 j), delta_(3 j); delta_(1 k), delta_(2 k), delta_(3 k)) mat(delim: "|", delta_(1 p), delta_(1 q), delta_(1 r); delta_(2 p), delta_(2 q), delta_(2 r); delta_(3 p), delta_(3 q), delta_(3 r)) $ Notar que: $delta_(1 i) delta_(1 p) + delta_(2 i) delta_(2 p) + delta_(3 i) delta_(3 p) = delta_(m i) delta_(m p) = delta_(i p)$ $ epsilon_(i j k) epsilon_(p q r) = mat(delim: "|", delta_(i p), delta_(i q), delta_(i r); delta_(j p), delta_(j q), delta_(j r); delta_(k p), delta_(k q), delta_(k r)) = delta_(i p) delta_(j q) - delta_(i q) delta_(j p) $

#problema(titulo: [Demostrar\ que:])[

#sinnum[$  arrow(A)\(arrow(B) times arrow(C)\)=\(arrow(A) times arrow(B)\)dot.op arrow(C) = arrow(B) dot.op\(arrow(C) times arrow(A)\) $] #underline[ Solución:] \ #sinnum[$  arrow(A) dot.op\(arrow(B) times arrow(C)\) & = A_m hat(e)_m dot.op sum_(i j k) epsilon_(i j k) B_j C_k hat(e)_i\
 & = A_m sum_(i j k) epsilon_(i j k) B_j C_k\(hat(e)_m dot.op hat(e)_i\)\
 & = A_m sum_(i j k) epsilon_(i j k) B_j C_k delta_(m i) = sum_(i j k) A_i B_j C_k $] Entonces: $arrow(A) dot.op\(arrow(B) times arrow(C)\)= sum_(i j k) epsilon_(i j k) A_i B_j C_k$. \ Pero $epsilon_(i j k) = epsilon_(j k i) = epsilon_(k i j) = 1$. #sinnum[$  therefore sum_(i j k) epsilon_(i j k) A_i B_j C_k & = sum_(j k i) epsilon_(j k i) B_j C_k A_i = sum_(k i j) epsilon_(k i j) C_k A_i B_j\
arrow(A) dot.op\(arrow(B) times arrow(C)\) & = arrow(B) dot.op\(arrow(C) times arrow(A)\)= arrow(C) dot.op\(arrow(A) times arrow(B)\) $]

]

#problema(titulo: [Demostrar\ que:])[

#sinnum[$  arrow(A) times\(arrow(B) times arrow(C)\)= arrow(B)\(arrow(A) dot.op arrow(C)\)= arrow(C)\(arrow(A) dot.op arrow(B)\) $] #underline[ Solución:] \ #sinnum[$  arrow(A) times\(arrow(B) times arrow(C)\) & = A_n hat(e)_n times sum_(i j k) epsilon_(i j k) B_j C_k hat(e)_i\
arrow(A) times\(arrow(B) times arrow(C)\) & = sum_(i j k) epsilon_(i j k) B_j C_k A_n\(hat(e)_n times hat(e)_i\)\
arrow(A) times\(arrow(B) times arrow(C)\) & = sum_(i j k) epsilon_(i j k) B_j C_k A_n sum_(s n i) epsilon_(s n i) hat(e)_s\
arrow(A) times\(arrow(B) times arrow(C)\) & = sum_(s n i) sum_(i j k) epsilon_(s n i) epsilon_(i j k) B_j C_k A_n hat(e)_s\
 & upright("pero") med epsilon_(i j k) = epsilon_(j k i)\
arrow(A) times\(arrow(B) times arrow(C)\) & = sum_(s n i) sum_(j k i) epsilon_(s n i) epsilon_(j k i) B_j C_k A_n hat(e)_s\
arrow(A) times\(arrow(B) times arrow(C)\) & =\(delta_(s j) delta_(n k) - delta_(s k) delta_(n j)\)B_j C_k A_n hat(e)_s\
arrow(A) times\(arrow(B) times arrow(C)\) & = delta_(s j) delta_(n k) B_j C_k A_n hat(e)_s - delta_(s k) delta_(n j) B_j C_k A_n hat(e)_s\
arrow(A) times\(arrow(B) times arrow(C)\) & = sum_(s = j)_(n = k) delta_(s s) delta_(k k) B_j C_k A_k hat(e)_j - sum_(s = k)_(n = j) B_j C_k A_j hat(e)_k\
arrow(A) times\(arrow(B) times arrow(C)\) & = B_j hat(e)_j\(A_k C_k\)- C_k hat(e)_k\(A_j B_j\)\
arrow(A) times\(arrow(B) times arrow(C)\) & = arrow(B)\(arrow(A) dot.op arrow(C)\)- arrow(C)\(arrow(A) dot.op arrow(B)\) $]

]

== Derivada Direccional
Partiendo de la diferencial total: $ d f = pdv( f , x ) d x + pdv( f , y ) d y + pdv( f , z ) d z $ Por definición de gradiente de un campo escalar $f$: $ grad  f = pdv( f , x ) hat(i) + pdv( f , y ) hat(j) + pdv( f , z ) hat(k) = (pdv( f , x ) \, pdv( f , y ) \, pdv( f , z )) $ Podemos notar que: $ d f = (pdv( f , x ) \, pdv( f , y ) \, pdv( f , z )) dot.op\(d x\,d y\,d z\) $ donde $d arrow(l) = d arrow(r) =\(d x\,d y\,d z\)$:

#block[
df=d

]
La derivada direccional es la razón de cambio de la función $f$ por unidad de longitud al desplazarnos en una dirección dada, esto es: #sinnum[$  frac(d f, d l) & = lim_(Delta l arrow.r 0) frac(Delta f, Delta l)\
frac(d f, d l) & = frac(grad  f dot.op d arrow(l), d l) $]

#block[
\=

]
#heading(level: 3, numbering: none)[Ejemplo]
La temperatura de cierta región está dada por la función: #sinnum[$  f\(x\,y\,z\)= K (x^2 \, y^2 / 2 \, z^2) med^compose C\;med k = c t e $] Encontrar la razón de cambio de la temperatura en el punto $\(1\,1\,1\)$ a lo largo de la dirección $(3 / 5 \, 0 \, 4 / 5)$. \ #underline[ Solución:] \ Calculamos $grad  f = K\(2 x\,y\,2 z\)$: #sinnum[$  grad  f_(\(1\,1\,1\)) = K\(2\,1\,2\)\
therefore frac(d f, d l) = grad  f dot.op frac(d arrow(l), d l) = K\(2\,1\,2\)dot.op (3 / 5 \, 0 \, 4 / 5)\
frac(d f, d l) = K (6 / 5 + 3 / 5) = 14 / 5 K frac(""^compose C, m) $] Partiendo de: #sinnum[$  frac(d f, d l) = grad  f dot.op frac(d arrow(l), d l) =\|grad  dot.op f\|cos theta $] para $theta = 0$, $frac(d f, d l)$ toma su mismo valor: #sinnum[$  (frac(d f, d l))_(upright("máx")) =\|grad  dot.op f\| $] Por lo tanto el gradiente de un campo escalar $f$, en cada punto del espacio es un vector cuya magnitud es el valor de la máxima derivada direccional y cuya dirección es aquella en que se obtiene la máxima derivada direccional.

== Campo Irrotacional
Para que un campo $arrow(F)$ sea irrotacional en una región simplemente conexa debe cumplir:

+ $grad  times arrow(F) = 0$

+ Si $grad  times arrow(F) = 0$, entonces $arrow(F)$ proviene del gradiente de un campo escalar: #sinnum[$  arrow(F) = grad  phi.alt $]

+ $integral.cont_C arrow(F) dot.op d arrow(l)$

== Campo Solenoidal
El campo solenoidal $arrow(F)$ debe cumplir:

+ $grad  dot.op arrow(F) = 0$

+ Si $grad  dot.op arrow(F) = 0$, entonces $arrow(F)$ debe provenir del rotacional de un campo vectorial: #sinnum[$  arrow(F) = grad  times arrow(A) $]

+ $integral.double_C arrow(F) dot.op d arrow(s) = 0$

== Teorema de Helmholtz
Si la divergencia $grad  dot.op arrow(F)$ y el rotacional $grad  times arrow(F)$ de una función vectorial $arrow(F)\(arrow(r)\)$ están especificados y si ambos tienden a cero mas rápido que $1 / r^2$ a meida que $r arrow.r oo$, y si $arrow(F)\(arrow(r)\)$ tiende a cero a medida que $r arrow.r oo$, entonces $arrow(F)$ está dado por:

#block[
\=-+

]
donde $ phi.alt\(arrow(r)\)= frac(1, 4 pi) integral frac(grad ' dot.op arrow(F)\(arrow(r)'\), upright(bold(r))) d v' $ $ arrow(A)\(arrow(r)\)= frac(1, 4 pi) integral frac(grad ' arrow(F)\(arrow(r)\), upright(bold(r))) d v' $ donde: $upright(bold(r)) =\|arrow(r) - arrow(r)'\|$. \ Este teorema también se puede expresar como cualquier campo vectorial, que tiende más de prisa a cero que $1 / r$ cuando $r arrow.r oo$, está determinado si su divergencia y su rotacional están especificados en todos los puntos.
