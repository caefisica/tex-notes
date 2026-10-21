#import "/lib/notes.typ": *

= Fórmulas y Método de Green
== Formulas de Green
=== Ecuaciones del tipo Eliptico
Sabemos que la ecuacion: $ sum_(i\,j = 1)^N a_(i j) pdv( u , x_i , x_j ) + sum_(i = 1)^N b_i pdv( u , x_1 ) + c u = - f $ es en el punto $M\(x_1^0\,dots.h.c\,x_N^0\)$, una ecuación del tipo elíptico si, en este punto, la forma cuadrática $ sum_(i\,j = 1)^N a_(i j)\(x_1^0\,dots.h.c\,x_N^0\)xi_i xi_j = 0 $ tiene signo definido. La ecuación elíptica mas simple es la ecuación de Laplace: $ nabla^2 u = pdv( u , x , 2 ) + pdv( u , y , 2 ) pdv( u , z , 2 ) = 0 $

#definicion[

La función $u\(M\)$ es continua en $cal(D)$, junto con sus primeras derivadas hasta el $2^(d o)$ orden y que satisfacen la ecuación de Laplace se denominan #strong[armónicas].

]

#strong[Ejemplo]: En coordenadas esféricas: $ nabla^2 = 1 / r^2 pdv( , r ) (r^2 pdv( , r )) + 1 / r^2 (frac(1, sin theta) pdv( , theta ) (sin theta pdv( , theta )) + frac(1, sin^2 theta) pdv( , phi , 2 )) $ Si $u = u\(r\)$, entonces: $ nabla^2 = 1 / r^2 pdv( , r ) (r^2 pdv( u , r )) = 0\
arrow.r r^2 pdv( u , r ) = C_1 arrow.r pdv( u , r ) = C_1 / r^2 arrow.r u\(r\)= C_1 / r + C_2 $

=== Formulas de Green
Dada las condiciones para que cumpla la formula de Gauss: $ integral_(cal(D)) div  arrow(A) d Omega = integral.cont_(partial cal(D)) arrow(n) dot.op arrow(A) d sigma $<eq12.7> Y que en $cal(D)$ están definidas las funciones $u\,v$ tal que $u\,v in C^(\(1\))\(macron(cal(D))\)inter C^(\(2\))\(cal(D)\)$. Además se tiene el operador diferencial $ cal(L) u = div \(k grad  u\) - q u $ donde $k\,q in C\(macron(cal(D))\)$. \ Veamos la integral $ integral_(cal(D)) v cal(L) u d Omega = integral_(cal(D)) v div \(k grad  u\) d Omega - integral_(cal(D)) q v u d Omega $ Considerando que $ v div \(k grad  u\) = div \(v k grad  u\) - k grad  u dot.op grad  v $ obtenemos la #strong[Primera formula de Green], utilizando la ecuación #ref(<eq12.7>) $ integral_(cal(D)) v cal(L) u d Omega & = integral.cont_(partial cal(D)) k v arrow(n) dot.op grad  u d sigma - integral_(cal(D))\(k grad  u dot.op grad  v - q v u\)d Omega\
integral_(cal(D)) v cal(L) u d Omega & = integral_(partial cal(D)) k v pdv( u , n ) d sigma - integral_(cal(D))\(k grad  u dot.op grad  v - q v u\)d Omega $<eq12.12> En #ref(<eq12.12>), si reemplazamos $u$ por $v$ y $v$ por $u$, entonces: $ integral_(cal(D)) u cal(L) v d Omega = integral_(partial cal(D)) k u pdv( v , n ) d sigma - integral_(cal(D))\(k grad  u dot.op grad  v - q v u\)d Omega $<eq12.13> Restamos las ecuaciones #ref(<eq12.13>) y #ref(<eq12.12>) para obtener la #strong[Segunda formula de Green]: $ integral_(cal(D)) (v cal(L) u - u cal(L) v) d Omega = integral_(partial cal(D)) k (v pdv( u , n ) - u pdv( v , n )) d sigma $ Para el operador de Laplace, cuando $k = 1\,q = 0$ tendremos lo siguiente $ integral_(cal(D)) v nabla^2 u d Omega = integral_(partial cal(D)) v pdv( u , n ) d sigma - integral_(cal(D)) k grad  u dot.op grad  v d Omega\
integral_(cal(D)) (v nabla^2 u - u nabla^2 v) d Omega = integral_(partial D) (v pdv( u , n ) - u pdv( v , n )) d sigma $

=== Solución fundamental de la ecuación de Laplace
#definicion[

Se denomina solucion fundamental de la ecuacion de Laplace en $cal(R)^n$ a la funcion $ E\(x\,xi\)= cases(delim: "{", frac(1, 2 pi) ln\|xi - x\| & \,n = 2, - frac(1, omega_n\(n - 2\)\|xi - x\|^(n - 2)) & \,n gt.eq 3) $ done $omega_n$ es el área de la esfera $n$ dimensional.

]

#heading(level: 3, numbering: none)[Tercera formula de Green]
La solución fundamental de la ecuación de Laplace para $n = 3$, en el punto $M_0$ $ v\(M\,M_0\)= frac(1, 4 pi R_(M M_0)) $ Consideremos que $M_0$ es un punto interior de $cal(D)$:

- $sum_epsilon.alt$ es la esfera de radio $epsilon.alt$ con centro en $M_0$.

- $k_epsilon.alt^(M_0)$ es una bola con frontera $sum_epsilon.alt$.

En $cal(D) without K_epsilon.alt^(M_0)$, aplicamos la $2^(d a)$ formula de Green para $u in C^(\(2\))\(cal(D)\)inter C^(\(1\))\(macron(cal(D))\)$ y la función $v\(M\,M_0\)$. $ integral_(cal(D) without K_epsilon.alt^(M_0)) (v nabla^2 u - u nabla^2 v) d Omega = integral_(partial cal(D)) (v pdv( u , n ) - u pdv( v , n )) d sigma - integral_(sum_epsilon.alt) (v pdv( u , n ) - u pdv( v , n )) d sigma $ En $sum_epsilon.alt$: $ v\|_(sum_epsilon.alt) = frac(1, 4 pi epsilon.alt)\,pdv( v , n )\|_(sum_epsilon.alt) = - pdv( , r ) (frac(1, 4 pi r))\|_(r = epsilon.alt) = frac(1, 4 pi epsilon.alt^2) $ Utilizando el teorema del valor medio, obtenemos $ integral.cont_(sum_epsilon.alt) (v pdv( u , n ) - u pdv( v , n )) d sigma = & frac(1, 4 pi) integral.cont_(sum_epsilon.alt) (1 / epsilon.alt pdv( u , n ) - u 1 / epsilon.alt^2) d sigma\
=^(T . V . M) & frac(1, 4 pi) (1 / epsilon.alt pdv( u , n ) \( M^(*) \) - 1 / epsilon.alt^2 u \( M^(*) \)) 4 pi epsilon.alt^2 $ Hacemos $epsilon.alt arrow.r 0$ $ frac(1, 4 pi) integral_(cal(D)) frac(nabla^2 u, R_(M M_0)) d Omega = frac(1, 4 pi) integral.cont_(partial cal(D)) (1 / R_(M M_0) pdv( u , n ) - u pdv( , n ) (1 / R_(M M_0))) d sigma - u\(M_0\)\,M_0 in cal(D) $ Por lo tanto, obtenemos la #strong[Tercera formula de Green] $ u\(M_0\)= frac(1, 4 pi) integral.cont_(partial cal(D)) (1 / R_(M M_0) pdv( u , n ) - u pdv( , n ) (1 / R_(M M_0))) d sigma - frac(1, 4 pi) integral_(cal(D)) frac(nabla^2 u, R_(M M_0)) d Omega\,M_0 in cal(D) $ Si $M_0 in.not cal(D)$, entonces $ frac(1, 4 pi) integral.cont_(partial cal(D)) (1 / R_(M M_0) pdv( u , n ) - u pdv( , n ) (1 / R_(M M_0))) d sigma - frac(1, 4 pi) integral_(cal(D)) frac(nabla^2 u, R_(M M_0)) d Omega = 0\,M_0 in cal(D) $ Si $M_0 in partial cal(D)$ $ u\(M_0\)= frac(1, 2 pi) integral.cont_(partial cal(D)) (1 / R_(M M_0) pdv( u , n ) - u pdv( , n ) (1 / R_(M M_0))) d sigma - frac(1, 2 pi) integral_(cal(D)) frac(nabla^2 u, R_(M M_0)) d Omega $ Por lo tanto $ frac(1, 4 pi) integral.cont_(partial cal(D)) (1 / R pdv( u , n ) - u pdv( , n ) 1 / R) d sigma - frac(1, 4 pi) integral_(cal(D)) frac(nabla^2 u, R) d Omega cases(delim: "{", u\(M_0\) & \,M_0 in cal(D), , frac(u\(M_0\), 2) & \,M_0 in partial cal(D), , 0 & \,M_0 in.not macron(cal(D))) $ #strong[Ejemplo]: Si $u = phi\(M\)$ (Potencial eléctrico) $ nabla^2 phi = - rho / epsilon.alt_0\,pdv( phi , n ) = arrow(n) dot.op grad  phi = E_n $ Para el caso bidimensional $ frac(1, 4 pi) integral.cont_(partial cal(D)) (ln 1 / R pdv( u , n ) - u pdv( , n ) ln 1 / R) d sigma - frac(1, 4 pi) integral_(cal(D)) nabla^2 u ln 1 / R d Omega cases(delim: "{", u\(M_0\) & \,M_0 in cal(D), , frac(u\(M_0\), 2) & \,M_0 in partial cal(D), , 0 & \,M_0 in.not macron(cal(D))) $ Se puede generalizar para $cal(L) u = div \(k grad  u\) - q u$ si hallamos la solución fundamental del operador $cal(L)$, resolviendo la ecuación $ cal(L) u = - delta\(M\,M_0\) $

=== Principales propiedades de las funciones armónicas
+ Si $u$ es armónica en $cal(D)$ $ integral.cont_(partial cal(D)) pdv( u , n ) d sigma = 0 $ la cual se conoce como la formula de Gauss para las funciones armónicas. \ Tomamos en la $1^(r a)$ formula de Green a $v = 1$, entonces $ integral_(cal(D)) nabla^2 u d Omega = integral.cont_(partial cal(D)) pdv( u , n ) d sigma $ Si $nabla^2 u = - f\(M\)$, entonces $ integral.cont_(partial cal(D)) pdv( u , n ) d sigma = - integral_(cal(D)) f\(M\)d Omega $

+ #strong[Teorema del valor medio]: Sea $u\(M\)$ armónica en $cal(D)$, entonces $ u\(M_0\)= frac(1, 4 pi a^2) integral.cont_(sum_a) u\(M\)d sigma $ #strong[Prueba.-] Usemos la $3^(r a)$ formula de Green en la bola $k_a^(M_0)$ $ u\(M_0\)= - frac(1, 4 pi) integral.cont_(sum_a) (1 / R pdv( u , n ) - u pdv( , n ) 1 / R) d sigma $ Dado que $ 1 / R_(M M_0)\|_(M in sum_a) = 1 / a\,pdv( , n ) 1 / R_(M M_0)\|_(sum_a) = pdv( , r ) 1 / r\|_(r = a) = - 1 / a^2 $ Usando #ref(<eq12.7>), obtenemos: $ u\(M_0\)= frac(1, 4 pi a^2) integral.cont_(sum_a) u\(M\)d sigma $

+ Una función armónica en $cal(D)$, tiene dentro de $cal(D)$ derivadas de todos los ordenes.

+ #strong[Principio del máximo]: Una función armónica en al región $cal(D)$, continua en $macron(cal(D))$, alcanza sus valores máximos y mínimos en la frontera $partial cal(D)$ de la región $cal(D)$. \ #strong[Prueba.-] Sea $u_0 = max_(macron(cal(D))) u\(M\)= u\(M_0\)gt.eq u\(M\)$ $ u\(M_0\) & = frac(1, 4 pi rho^2) integral_(sum_rho^(M_0)) u\(p\)d sigma lt.eq frac(1, 4 pi rho^2) integral_(sum_rho^(M_0)) u\(M_0\)d sigma\
   & = u\(M_0\)frac(1, 4 pi rho^2) integral_(sum_rho^(M_0)) d sigma = u\(M_0\) $ Entonces $ u\(p\)\|_(sum_rho^(M_0)) equiv u\(M_0\) $

== Método de la función de Green
Sea el problema de contorno $ cases(delim: "{", cal(L) u = f & \,upright("en") med Omega, , (alpha_1 u + alpha_2 pdv( u , n )) = g & \,upright("en") med Omega) $<eq12.40> Consideremos que $u\(x\)$, es continuo con sus primeras derivadas en $macron(Omega) subset cal(R)^n$, delimitada por la superficie $partial Omega$, siendo lo suficientemente suave junto a sus segundas derivadas en $Omega$ e integrales en $Omega$. Denotando que $arrow(n)$ es la normal externa a $partial Omega$, $alpha_1\,alpha_2$ $in cal(R)$, tal que $a_1^2 + a_2^2 eq.not 0$, $x =\(x_1\,dots.h.c\,x_n\)$. \ El método de la función de Green, consiste en resolver el problema auxiliar $ cases(delim: "{", cal(L) G = delta\(x\,x_0\) & \,x_0 in Omega, , (alpha_1 G + alpha_2 pdv( G , n ))\|_(partial Omega) = 0 & med) $<eq12.41>

#definicion[

La solución del problema #ref(<eq12.41>) se denomina función de Green del problema #ref(<eq12.40>).

]

Se exige que la función de Green $G\(x\,x_0\)$ sea continua(finito a sus primeras derivadas) en $macron(Omega)$, excepto en $x_0$, en el cual puede tener una discontinuidad. \ Si hemos resuelto #ref(<eq12.41>), entonces la solucion de #ref(<eq12.40>) se halla usando la $2^(d a)$ formula de Green $ integral_Omega (v cal(L) u - u cal(L) v) d Omega = integral_(partial Omega) k (v pdv( u , n ) - u pdv( v , n )) d sigma $ Dado que $ integral_Omega u\(x\)delta\(x\,x_0\)d Omega = u\(x_0\) $ Y obtenemos $ u\(x_0\)= integral_(partial Omega) k (G pdv( u , n ) - u pdv( G , n )) d sigma - integral_Omega f\(x\)G\(x\,x_0\)d Omega $

- Si $alpha_1 = 1$, $alpha_2 = 0$, $G\|_(partial Omega) = 0$, $u\|_(partial Omega) = g$ (Problema de Dirichlet) $ u\(x_0\)= - integral_(partial Omega) k g pdv( G , n ) d sigma - integral_Omega f\(x\)G\(x\,x_0\)d Omega $

- Si $alpha_1 =$, $alpha_2 = 1$, $pdv( G , n )\|_(partial Omega) = 0$, $pdv( u , n )\|_(partial Omega) = g$ (Problema de Neumann) $ u\(x_0\)= integral_(partial Omega) k G g d sigma - integral_Omega G\(x\,x_0\)f\(x\)d Omega $

=== Función de Green para el problema de Dirichlet de la ecuación de Laplace
Sabemos que la solución fundamental de la ecuación de Laplace es $ E\(x\,xi\)= cases(delim: "{", frac(1, 2 pi) ln\|xi - x\| & \,n = 2, - frac(1, omega_n\(n - 2\)\|xi - x\|^(n - 2)) & \,n gt.eq 3) $<eq12.47>

#definicion[

Se denomina función de Green $G\(x\,xi\)$ del problema de Dirichlet de la ecuación de Laplace a la función $G\(x\,xi\)$, $x eq.not xi in macron(Omega)$, que tiene las siguientes propiedades

+ Tiene la forma $G\(x\,xi\)= E\(x\,xi\)+ g\(x\,xi\)$, donde $E\(x\,xi\)$ se forma de #ref(<eq12.47>) y $g\(x\,xi\)$ es armónica en $Omega$, tanto para $x$ como para $xi$, es decir $ nabla_x^2 g\(x\,xi\)= nabla_xi^2 g\(x\,xi\)= 0\,med x\,xi in Omega $

+ #sinnum[$  G\(x\,xi\)\|_(x in partial Omega) = 0\,med G\(x\,xi\)\|_(xi in partial Omega) = 0 $]

]

#proposicion[

Si $G\(x\,xi\)$ es la funcion de Green del problema de Dirichlet para la ecuacion de Laplace en $Omega$, entonces:

+ #sinnum[$  G\(x\,xi\)lt.eq 0\,#h(2em) x eq.not xi in Omega $]

+ #sinnum[$  nabla_x^2 G\(x\,xi\)= nabla_xi^2 G\(x\,xi\)= 0\,quad x eq.not xi in Omega $]

+ #sinnum[$  G\(x\,xi\)= G\(xi\,x\)\,quad x eq.not xi in macron(Omega) $]

]

#teorema[

Si $G\(x\,xi\)$ es la funcion de Green del problema $ cases(delim: "{", nabla^2 u = sum_(i = 1)^n pdv( u , x_i , 2 ) = 0 & \,x in Omega, u\(x\)\|_(x in partial Omega) = phi\(x\) & \,x in partial Omega) $<eq12.49> entonces la solución de #ref(<eq12.49>) se puede expresar de la forma $ u\(x\)= integral_(partial Omega) pdv( G\(x\,xi\), n_xi ) phi\(xi\)d sigma_xi $ donde $pdv( G\(x\,xi\), n_xi )$ es la derivada en la dirección de la normal externa a $partial Omega$ en el punto $xi in partial Omega$.

]

=== Método de la imágenes
Se tiene el potencial de Newton en 3D $ E_N\(x\,xi\)= - 4 pi E\(x\,xi\)= frac(1, \|x - xi\|) $ Entonces $ G\(x\,xi\)= - frac(1, 4 pi) frac(1, \|x - xi\|) + g\(x\,xi\) $ donde $G\(x\,xi\)$ es el potencial en $xi$, $frac(1, 4 pi) frac(1, \|x - xi\|)$ es el potencial en $xi$ creado por la carga en $x$ y $g\(x\,xi\)$ es el potencial en $xi$ creado por las cargas inducidas. \ Del principio de reciprocidad del potencial se tiene que #sinnum[$  G\(x\,xi\)= G\(xi\,x\) $] Para construir la funcion de Green se debe cumplir $ nabla_x^2 g\(x\,xi\)= nabla_xi^2 g\(x\,xi\)= 0\,quad x\,xi in Omega\
g\(x\,xi\)\|_(x in partial Omega) = - E\(x\,xi\)\|_(x in partial Omega) $<eq12.53>

#heading(level: 3, numbering: none)[Para el caso n-dimensional]
- #strong[Paso 1.-] Construimos la solución fundamental de la ecuación de Laplace $ E\(x\,xi\)= cases(delim: "{", frac(1, 2 pi) ln\|xi - x\| & \,n = 2, - frac(1, omega_n\(n - 2\)\|xi - x\|^(n - 2)) & \,n gt.eq 3) $

- #strong[Paso 2.-] Colocamos en $xi in Omega$ una carga unitaria y denotamos $xi^(+)$ el punto simétrico a $xi$ con respecto a la superficie $partial Omega$ y colocamos en $xi^(+)$ una carga negativa $- q\(xi\)$.

- #strong[Paso 3.-] Buscamos la solucion del problema #ref(<eq12.53>)-#ref(<eq12.53>) de la forma $ g = E\(q x\,q xi^(*)\)= cases(delim: "{", - frac(1, 2 pi) ln q\|xi^(*) - x\| & \,n = 2, frac(1, omega_n\(n - 2\)q^(n - 2)\|xi^(*) - x\|^(n - 2)) & \,n > 2) $ Se debe hallar $\(q\,xi\,xi^(*)\)$.

- #strong[Paso 4.-] Construimos la funcion de Green de la forma $ G\(x\,xi\)= E\(x\,xi\)+ g\(x\,xi\) $

#heading(level: 3, numbering: none)[Para $n = 2$]
- Paso 1.- #sinnum[$  E\(x\,xi\)= frac(1, 2 pi) ln\|xi - x\| $]

- Paso 2.- Colocamos en $xi in Omega$ una carga unitaria positiva. Denotamos por $xi^(*)$ el punto simétrico a $xi$ con respecto a $partial Omega$ y colocamos en $xi^(*)$ la carga $q\(xi\)$.

- Paso 3.- Buscamos la solución de #ref(<eq12.53>)-#ref(<eq12.53>) de la forma: #sinnum[$  g = - E\(q x\,q xi^(*)\)= - frac(1, 2 pi) ln\(q\|xi^(*) - x\|\) $] Hallamos $q$ de la relación #ref(<eq12.53>) #sinnum[$  underbrace(g\(x\,xi\)\|_(x in partial Omega), - frac(1, 2 pi) ln\(q\|xi^(*) - x\|\)) = underbrace(- E\(x\,xi\)\|_(x in partial Omega), frac(1, 2 pi) ln\|xi - x\|) $] donde $ln\(q\|xi^(*) - x\|\) = ln\|xi - x\|$, $x in partial Omega$, entonces #sinnum[$  q = frac(\|xi - x\|, \|xi^(*) - x\|) $]

- Paso 4.- Construimos la función de Green #sinnum[$  G\(x\,xi\) & = E\(x\,xi\)+ g\(x\,xi\)\
  G\(x\,xi\) & = frac(1, 2 pi) ln\|xi - x\|- frac(1, 2 pi) ln\(q\|xi^(*) - x\)\
  G\(x\,xi\) & = frac(1, 2 pi) ln (frac(\|xi - x\|, q\|xi^(*) - x\|)) $]

#heading(level: 3, numbering: none)[Para $n = 3$]
- Paso 1.- #sinnum[$  E\(x\,xi\)= - frac(1, 4 pi\|xi - x\|) $]

- Paso 2- #sinnum[$  xi med arrow.r med xi^(*) med arrow.r med - q\(xi\) $]

- Paso 3.- Buscamos $g$ de la forma #sinnum[$  g = - E\(q x\,q xi^(*)\)= frac(1, 4 pi q\|xi^(*) - x\|) $] que cumple #ref(<eq12.53>) #sinnum[$  underbrace(g\(x\,xi\)\|_(x in partial Omega), frac(1, 4 pi q\|xi^(*) - x\|)) = underbrace(- E\(x\,xi\)\|_(x in partial Omega), frac(1, 4 pi\|xi - x\|)) $] De modo que $frac(1, q\|xi^(*) - x\|) = frac(1, \|xi - x\|)$, entonces #sinnum[$  q = frac(\|xi - x\|, \|xi^(*) - x\|)\|_(x in partial Omega) $]

- Paso 4.- Construimos la función de Green #sinnum[$  G\(x\,xi\) & = E\(x\,xi\)+ g\(x\,xi\)\
  G\(x\,xi\) & = frac(1, 4 pi) (frac(1, q\|xi^(*) - x\|) - frac(1, \|xi - x\|)) $]

=== Función de Green en el semiplano
$ cases(delim: "{", nabla^2 = pdv( u\(x_1\,x_2\), x_1 , 2 ) + pdv( u\(x_1\,x_2\), x_2 , 2 ) = 0 & \,x_1 in cal(R)\,x_2 > 0, u\(x_1\,0\)= phi\(x_1\) & \,x_1 in cal(R)) $ Paso 1.- $ E\(x\,xi\)= frac(1, 2 pi) ln\|xi - x\|\,quad\|xi - x\|= sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2) $ Paso 2.- Colocamos en el punto $xi =\(xi_1\,xi_2\)$, $xi_2 > 0$ una carga unitaria. Denotamos el punto simétrico a $xi$, respecto #sinnum[$  partial Omega = { xi_2 = 0 } #h(2em) xi^(*) =\(xi_1^(*)\,xi_2^(*)\)=\(xi_1\,- xi_2\) $] Paso 3.- Buscamos la solucion de #ref(<eq12.53>)-#ref(<eq12.53>): #sinnum[$  - 2 pi g = 2 pi E\(q x\,q xi^(*)\)= ln\(q\|xi^(*) - x\|\) = ln q + 1 / 2 ln (\( xi_1 - x_1 \)^2 + \( xi_2 + x_2 \)^2) $] Se debe cumplir $g\(x\,xi\)\|_(x in partial Omega) = - E\(x\,xi\)\|_(x in partial Omega)$, en consecuencia #sinnum[$  q\(xi\)= frac(\|xi - x\|, \|xi^(*) - x\|)\|_(x in partial Omega) = frac(\|xi - x\|, \|xi^(*) - x\|)\|_(x_2 = 0) equiv 1 $] Por lo tanto #sinnum[$  g = - frac(1, 4 pi) ln (\( xi_1 - x_1 \)^2 + \( xi_2 + x_2 \)^2) = - frac(1, 2 pi) ln\|xi^(*) - x\| $] Paso 4.- La función de Green es #sinnum[$  G\(x\,xi\)= frac(1, 2 pi) ln (frac(\|xi - x\|, \|xi^(*) - x\|)) = frac(1, 4 pi) ln (frac(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2, \(xi_1 - x_1\)^2 +\(xi_2 + x_2\)^2)) $] Paso 5.- Escribimos la solución de la forma #sinnum[$  u\(x\)- integral_(partial Omega) pdv( G\(x\,xi\), n_xi ) phi\(xi\)d sigma_xi $] Calculamos #sinnum[$  pdv( G\(x\,xi\), n_xi ) = - pdv( G\(x\,xi\), xi_2 ) & = frac(1, 4 pi) pdv( , xi_2 ) (ln (\( xi_1 - x_1 \)^2 + \( xi_2 + x_2 \)^2) - ln (\( xi_1 - x_1 \)^2 + \( xi_2 - x_2 \)^2))\
 & = frac(1, 2 pi) (frac(xi_2 + x_2, \(xi_1 - x_1\)^2 +\(xi_2 + x_2\)^2) - frac(xi_2 - x_2, \(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2)) $] Por lo tanto #sinnum[$  - pdv( G\(x\,xi\), xi_2 )\|_(xi_2 = 0) = 1 / pi frac(x_2, \(xi_1 - x_1\)^2 + x_2^2) $] En consecuencia tenemos $ u\(x\)= x_2 / pi integral_(- oo)^oo frac(1, \(xi_1 - x_1\)^2 + x_2^2) phi\(xi_1\)d xi_1 $ la cual se conoce como #strong[formula de Poisson].

=== Función de Green en el semiespacio
$ cases(delim: "{", nabla^2 u = pdv( u , x_1 , 2 ) + pdv( u , x_2 , 2 ) + pdv( u , x_3 , 2 ) = 0 & \,x_1\,x_2 in cal(R)\,x_1 > 0, u\(x_1\,x_2\,0\)= phi\(x_1\,x_2\) & \,x_1\,x_2 in cal(R)) $ Paso 1.- $ E\(x\,xi\)= - frac(1, 4 pi) frac(1, \|xi - x\|)\,med\|xi - x\|= sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 - x_3\)^2) $ Paso 2.- $ xi =\(xi_1\,xi_2\,xi_3\)\,quad & xi_1 > 0 med arrow.r med partial Omega = { xi_1 = 0 }\
 & arrow.r xi^(*) =\(xi_1\,xi_2\,- xi_3\) $

Paso 3.- $ g = - E\(q x\,q xi^(*)\)= frac(1, 4 pi) frac(1, q\|xi^(*) - x\|) = frac(1, 4 pi) frac(1, q sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 + x_3\)^2)) $ de donde $ q\(xi\)= frac(\|xi - x\|, \|xi^(*) - x\|)\|_(x_1 = 0) = 1 $ Por lo tanto $ g = frac(1, 4 pi sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 + x_3\)^2)) $ Paso 4.- $ G\(x\,xi\) & = frac(1, 4 pi) (frac(1, q\|xi^(*) - x\|) - frac(1, \|xi - x\|))\
 & = frac(1, 4 pi) (1 / sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 + x_3\)^2) - 1 / sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 - x_3\)^2)) $ Paso 5.- #sinnum[$  pdv( G , n ) = - pdv( G , xi_3 ) $] $ - pdv( G\(x\,xi\), xi_3 )\|_(xi_3 = 0) = frac(1, 2 pi) x_3 / [\( xi_1 - x_1 \) + \( xi_2 - x_2 \)^2 + x_3^2]^(3\/2) $ Finalmente $ G\(x\,xi\)= frac(1, 4 pi) (1 / sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 + x_3\)^2) - 1 / sqrt(\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 +\(xi_3 - x_3\)^2)) $ $ u\(x\)= frac(x_3, 2 pi) integral_oo^(+ oo) integral_oo^(+ oo) frac(phi\(xi_1\,xi_2\), \[\(xi_1 - x_1\)^2 +\(xi_2 - x_2\)^2 + x_3^2\]^(3\/2)) d xi_1 d xi_2 $
