#import "/lib/notes.typ": *

= Ecuaciones de Movimiento de Hamilton
== Dinámica Hamiltoniana
Considerando un sistema con $n$ coordenadas generalizadas($n$ grados de libertad) ($q_1\,dots.h.c\,q_n$) y lagrangiano $L\(q_1\,dots.h.c\,q_n\,dot(q)_1\,dots.h.c\,dot(q)_n\,t\)$. Entonces tiene $n$ ecuaciones diferenciales ordinarias de 2do orden en el tiempo, denominados ecuaciones de Lagrange $ dv( , t ) (pdv( L , dot(q)_i )) - pdv( L , q_i ) = 0\,quad i = 1\,dots.h.c\,n . $

La teoria Hamiltoniana fue desarrollada por Hamilton en el siglo XIX. Está basada en la sustitución de las $n$ ecuaciones de movimiento dadas por la ecuación de Lagrange, por un conjunto duplicado ($2 n$) de ecuaciones diferenciales ordinarias de primer orden en el tiempo, este método consiste en la reducción del orden en el tiempo de las ecuaciones diferenciales ordinarias.

=== Formulación Hamiltoniana
Se introducen $2 n$ coordenadas: $ \(q_1\,dots.h.c\,q_n\,p_1\,dots.h.c\,p_n\) $

Se construye una función $ H\(q_1\,dots.h.c\,q_n\,p_1\,dots.h.c\,p_n\,t\) $

Las ecuaciones de movimiento son ahora $2 n$ ecuaciones diferenciales ordinarias de primer orden denominadas #strong[ecuaciones de Hamilton].

==== Reduciendo el orden
Sea $dot(q)_i arrow.r S_i$, entonces $ L\(q\,dot(q)\,t\)arrow.r L\(q\,S\,t\) $ La ecuación de Lagrange será $ dv( , t ) (pdv( L , dot(q)_i )) - pdv( L , q_i ) = 0 med arrow.r med dv( , t ) (pdv( L , S_i )) - pdv( L , q_i ) = 0 $ en esta teoría de Hamilton $p$ representa los momentos canónicos conjugados.

==== Momentos Canónicos
Sabemos que $ p_i = pdv( L , dot(q)_i )\,quad i = 1\,dots.h.c\,n $<ec3.6>

Sea la matriz Hessiana $ W =\(w_(i j)\) $ donde $ w_(i j) = pdv( L , dot(q)_i , dot(q)_j ) $ suponemos que $det W eq.not 0$, está hipotesis es para garantizar que las ecuaciones $p_i = partial L\/partial dot(q)_i$\($n$ ecuaciones) pueden ser resueltas para las $n$ velocidades $dot(q)_i$ generalizadas en función de $p_i$ y las variables $q_i$ y $t$. Entonces por el teorema de la función implícita, las ecuaciones #ref(<ec3.6>) pueden ser resueltas para las velocidades generalizadas $ dot(q)_i = f_i\(q\,p\,t\) $

=== Función de Hamilton
La función $H\(q\,p\,t\)$ se define como: $ H\(q\,p\,t\)= sum_(i = 1)^n dot(q)_i p_i - L\(q\,dot(q)\,t\) $ donde, en el segundo miembro, debe sustituirse $dot(q)_i$ por $f_i\(q\,p\,t\)$.

La transformación de $L\(q\,dot(q)\,t\)$ en $H\(q\,p\,t\)$ es conocida como transformación de Legendre.

==== Transformaciones de Legendre
Supongase que se tiene la relación $ F = F\(u_1\,dots.h.c\,u_n\)= F\(u_i\)\,quad i = 1\,dots.h.c\,n $ llamada relación fundamental.

Ahora tomando las variables $ v_i = pdv( F\(u_j\), u_i ) $ como variable independiente sin perder nada de información contenida en la relación fundamental, se quiere escribir $ F = F\(v_i\) $ una transformada de Legendre da como resultado una nueva función en la que se sustituye una o más variables independientes con la derivada de la función original respecto a esa variable.

+ #strong[Para funciones de una variable] \ Función convexa $ dv( F\(u\), u , 2 ) & gt.eq 0 med arrow.r med upright("Función convexa")\
  dv( F\(u\), u , 2 ) & > 0 med arrow.r med upright("Función est. convexa") $ Función cóncava#footnote[Abreviamos estrictamente como est.] $ dv( F\(u\), u , 2 ) & lt.eq 0 med arrow.r med upright("Función concava")\
  dv( F\(u\), u , 2 ) & < 0 med arrow.r upright("Función est. cóncava") $

+ #strong[Para funciones de varias variables] \ La matriz Hessiana $H$ de una función de $n$ variables $F = F\(u_1\,dots.h.c\,u_n\)= F\(u_i\)$\; $i = 1\,dots.h.c\,n$ es la matriz cuadrada simétrica $n times n$ formada por las segundas derivadas de $F\(u_i\)$ cuyos elementos vienen dados por: $ H_(i j) = pdv( F\(u_k\), u_i , u_j ) $ entonces $ H = mat(delim: "(", pdv( F , u_1 , 2 ), pdv( F , u_1 , u_2 ), dots.h.c, pdv( F , u_1 , u_n ); pdv( F , u_2 , u_1 ), pdv( F , u_2 , 2 ), dots.h.c, pdv( F , u_2 , u_n ); dots.v, dots.v, dots.down, dots.v; pdv( F , u_n , u_1 ), pdv( F , u_n , u_2 ), dots.h.c, pdv( F , u_n , 2 )) $

Se llaman #strong[menores principales dominantes] $D_k$ a los $n$ determinantes $ D_1 = pdv( F , u_1 , 2 )\,quad D_2 = mat(delim: "‖", pdv( F , u_1 , 2 ), pdv( F , u_1 , u_2 ); pdv( F , u_2 , u_1 ), pdv( F , u_2 , 2 ))\,quad D_3 = mat(delim: "‖", pdv( F , u_1 , 2 ), pdv( F , u_1 , u_2 ), pdv( F , u_1 , u_3 ); pdv( F , u_2 , u_1 ), pdv( F , u_2 , 2 ), pdv( F , u_2 , u_3 ); pdv( F , u_3 , u_1 ), pdv( F , u_3 , u_2 ), pdv( F , u_3 , 2 ))\,dots.h.c $ Asociando $F = F\(u_i\)$ con $cal(H)$ mediante la siguiente tabla

#block[
#box(image("../figures/tabla.png", width: 100.0%, alt: "image"))

]
y si la función no es convexa ni cóncava, entonces se dice que es indefinida.

Ejemplo: Determinar si la función $F : bb(R)^2 arrow.r bb(R)$ #sinnum[$  F\(u_1\,u_2\)= u_1^4 + u_2^2 $] es concava o convexa.

Solución:

Hallamas la matriz Hessiana #sinnum[$  cal(H) = mat(delim: "(", pdv( F , u_1 , 2 ), pdv( F , u_1 , u_2 ); pdv( F , u_2 , u_1 ), pdv( F , u_2 , 2 )) = mat(delim: "(", 12 u_1^2, 0; 0, 2) $] Hallando los menores principales #sinnum[$  D_1 = 12 u_1^2 gt.eq 0\;quad D_2 = mat(delim: "‖", 12 u_1^2, 0; 0, 2) = 24 u_1^2 gt.eq 0 $] utilizando la tabla notamos que $F\(u_1\,u_2\)$ es convexa.

==== Transformada de Legendre para una v. independiente
Dada una función $F\(u\)$, la transformada de Legendre proporciona una forma más conveniente de almacenar la información en la función cuando se cumple:

+ La función es suave(tiene derivadas continuas).

+ La función $F\(u\)$ es convexa(estrictamente).

De la figura: $ tan sigma = v = frac(F + G, u) = dv( F\(u\), u ) $ donde $ G\(v\)= u v - F\(u\) $ esta es la transformada de Legendre para una variable independiente. La función $G\(v\)$ es la transformada de Legendre de $F\(u\)$.

#block[
#box(image("../figures/legendre1.png", width: 80.0%, alt: "image"))

]
Ejemplo: Sea $F\(u\)= a u^2 + b u + c$, donde $a\,b$ y $c$ son constantes, encontrar su transformación de Legendre

Solución:

Sabemos que: #sinnum[$  G\(v\)= u v - F\(u\)= u v -\(a u^2 + b u + c\) $] entonces #sinnum[$  v = dv( F\(u\), u ) = 2 a u + b med arrow.r med u\(v\)= frac(1, 2 a)\(v - b\) $] quedando así #sinnum[$  G\(v\) & = frac(1, 2 a)\(v - b\)v - [a (frac(1, 2 a) \( v - b \))^2 + b (frac(1, 2 a) \( v - b \)) + c]\
therefore G\(v\) & = frac(1, 4 a)\(v - b\)^2 - c $]

==== Transformada de Legendre para más de una v. indep.
Usando el desarrollo anterior para cada variable y luego generalizando $ G\(v_j\)= sum_(i = 1)^n u_i v_i - F\(u_j\)\;quad j = 1\,dots.h.c\,n $ donde $G\(v_j\)$ es la transformada de Legendre para $n$ variables independientes $u_j$, con $ v_j = pdv( F\(u_i\), u_j ) $

Ejemplo: Encuentre la transformada de Legendre $G\(v_1\,v_2\,v_3\)$ de la función: $F\(u_1\,u_2\,u_3\)= u_1^2 + c u_3 sin u_2$ donde $c$ es una constante.

Solución:

Tenemos $n = 3$ variables independientes #sinnum[$  G\(v_1\,v_2\,v_3\)= u_1 v_1 + u_2 v_2 + u_3 v_3 -\(u_1^2 + c u_3 sin u_2\) $] Luego #sinnum[$  v_1 & = pdv( F , u_1 ) = 2 u_1 med arrow.r med u_1 = v_1 / 2\
v_2 & = pdv( F , u_2 ) = c u_3 cos u_2 med arrow.r med u_3 = v_2 / c sec u_2\
v_3 & = pdv( F , u_3 ) = c sin u_2 med arrow.r med u_2 = sin^(- 1) (v_3 / c) $] Entonces #sinnum[$  u_3 = v_2 / c sec [sin^(- 1) (v_3 / c)] = v_2 / sqrt(c^2 - v_3^2) $] calculando $G\(v_1\,v_2\,v_3\)$ #sinnum[$  G\(v_1\,v_2\,v_3\) & = v_1 / 2 v_1 + v_2 sin^(- 1) (v_3 / c) + frac(v_3 v_2, sqrt(c^2 - v_3^2)) - {(v_1 / 2)^2 + c sqrt(2) / sqrt(c^2 - v_3^2) sin [sin^(- 1) (v_3 / c)]} $] simplificando #sinnum[$  therefore G\(v_1\,v_2\,v_3\)= v_1^2 / 4 + v_2 sin^(- 1) (v_3 / c) $]

=== Ecuaciones canónicas de Hamilton
Consideremos una función de dos variables $f\(x\,y\)$ $ upright(d) f = pdv( f , x ) upright(d) x + pdv( f , y ) upright(d) y = u upright(d) x + v upright(d) y cases(delim: "{", u = pdv( f , x ), , v = pdv( f , y )) $ queremos cambiar las variables $x\,y$ por las variables $u\,y$ de manera que las cantidades se expresen en función de $upright(d) u$ y $upright(d) y$.

Sea $g = g\(u\,y\)$ definida por $ g = f - u x $ entonces: $ upright(d) g & = upright(d) f - u upright(d) x - x upright(d) u\
upright(d) g & = u upright(d) x + v upright(d) y - u upright(d) x - x upright(d u)\
upright(d) g = v upright(d) y - x upright(d) u $ con $x = - pdv( g , u )$ y $v = pdv( g , y )$.

Aplicando esta teoría a la Hamiltoniana. Calculando $upright(d) H$ $ upright(d) H = sum_(i = 1)^n (upright(d) dot(q)_i p_i + dot(q)_i upright(d) p_i) - {sum_(i = 1)^n (pdv( L , q_i ) upright(d) q_i + pdv( L , dot(q)_i ) upright(d) dot(q)_i) + pdv( L , t )} $ donde $upright(d) dot(q)_i p_i = 0$ y $pdv( L , dot(q)_i ) = p_i med arrow.r med pdv( L , dot(q)_i ) upright(d) dot(q)_i = 0$. De las ecuaciones de Lagrange $ dv( , t ) (pdv( L , dot(q)_i )) - pdv( L , q_i ) = 0 med arrow.r med dot(p)_i = pdv( L , q_i ) $ por tanto $ upright(d) H = sum_(i = 1)^n\(dot(q)_i upright(d) p_i - dot(p)_i upright(d) q_i\)- pdv( L , t ) upright(d) t $ pero $ upright(d) H = sum (pdv( H , q_i ) upright(d) q_i + pdv( H , p_i ) upright(d) p_i) + pdv( H , t ) upright(d) t $

Las ecuaciones de Hamilton o ecuaciones canónicas de Hamilton son $ dot(q)_i = pdv( H , p_i )\,quad dot(p)_i = - pdv( H , q_i )\,quad i = 1\,dots.h.c\,n $ también $ pdv( H , t ) = - pdv( L , t ) $

=== Formulación Lagrangiana
El espacio de configuración no caracteriza el estado del sistema. Para caracterizar la evolución de un sistema mecánico no es suficiente con especificar la posición de las partículas sino también su velocidad de los mismos.

#block[
#box(image("../figures/img3.1.png", width: 63.0%, alt: "image"))

]
=== Formulación Hamiltoniana
La formulación Hamiltoniana en lugar de espacio de configuración introduce el llamado #strong[espacio de fase]. El espacio de fase es un espacio de dimensión $2 n$ en el cual las trayectorias no se cortan. Un punto en el espacio de fase especifica completamente el estado de un estado mecánico.

#block[
#box(image("../figures/img3.2.png", width: 48.0%, alt: "image"))

]
Considerando que $ L = T - V $ donde $V$ no depende de las velocidades y $T$ es función puramente cuadrática de las velocidades. $ p_i = pdv( L , dot(q)_i ) = pdv( T , dot(q)_i ) med arrow.r med H = sum p_i dot(q)_i - L = sum dot(q)_i pdv( T , dot(q)_i ) -\(T - V\) $

Sabemos que por el teorema de Euler de las funciones homogéneas $ sum dot(q)_i pdv( T , dot(q)_i ) = 2 T $ Por tanto $ H & = 2 T - T + V = T + V\
H & = E $ la cual es la energía total del sistema.

Ejemplo: Particula en un potencial central #sinnum[$  L = m / 2\(dot(r)^2 + r^2 dot(theta)^2 + r^2 sin^2 theta dot(phi)^2\)- V\(r\) $]

Sus momentos canónicos #sinnum[$  p_r & = pdv( L , dot(r) ) = m dot(r) med arrow.r med dot(r) = p_r / m\
p_theta & = pdv( L , dot(theta) ) = m r^2 dot(theta) med arrow.r med dot(theta) = frac(p_theta, m r^2)\
p_phi & = pdv( L , dot(phi) ) = m r^2 sin^2 theta med arrow.r med dot(phi) = frac(p_phi, m r^2 sin^2 theta) $] Como $H = sum p_i dot(q)_i - L$, entonces #sinnum[$  H & = dot(r) p_r + dot(theta) p_theta + dot(phi) p_phi - L\
H & = p_r / m p_r + frac(p_theta, m r^2) p_theta + frac(p_phi, m r^2 sin^2 theta) p_phi - [m / 2 p_r^2 / m^2 + r^2 frac(p_theta^2, m r^4) + r^2 sin^2 theta (frac(p_phi, m r^2 sin^2 theta))^2 - V \( r \)]\
H & = frac(p_r^2, 2 m) + frac(p_theta^2, 2 m r^2) + frac(p_phi^2, 2 m r^2 sin^2 theta) + V\(r\) $]

Notar que: $H = H\(r\,theta\,phi\,p_r\,p_theta\,p_phi\)$. Las ecuaciones de Hamilton son: #sinnum[$  q_i = pdv( H , p_i ) arrow.r cases(delim: "{", dot(r) & = pdv( H , p_r ) = p_r / m, dot(theta) & = pdv( H , p_theta ) = frac(p_theta, m r^2), dot(phi) & = pdv( H , p_phi ) = frac(p_phi, m r^2 sin^2 theta)) $] #sinnum[$  dot(p)_i = - pdv( H , q_i ) arrow.r cases(delim: "{", dot(p)_r & = - pdv( H , r ) = frac(p_theta^2, m r^3) + frac(p_phi^2, m r^3 sin^2 theta) - dv( V , r ), dot(p)_theta & = - pdv( H , theta ) = frac(p_phi^2 cot theta, m r^2 sin^2 theta), dot(p)_phi & = - pdv( H , phi ) = 0) $]

#emph[Teorema:] Si $H$ no depende explicitamente del tiempo, entonces $H$ es constante de movimiento.

Demostración: Como $H = H\(q\,p\,t\)$ $ dv( H , t ) = sum_(i = 1)^n (pdv( , q_i ) dot(q)_i + pdv( H , p_i ) dot(p)_i) + pdv( H , t ) $ usando las ecuaciones de Hamilton $ dv( H , t ) = sum_i underbrace((pdv( H , q_i ) pdv( H , p_i ) - pdv( H , p_i ) pdv( H , q_i )), 0) + pdv( H , t ) = pdv( H , t ) $ Si $pdv( H , t ) = 0$, entonces $ therefore dv( H , t ) = 0 med arrow.r med H = upright("cte") $

Pueden suceder las siguientes condiciones

+ $H = upright("cte")$ pero $H eq.not E$.

+ $H = E$ pero $H eq.not upright("cte")$.

Ejemplo: Considere una esferita de masa $m$ que puede deslizarse, sin rozamiento, por un alambre que gira en un plano horizontal

Solución:

El lagrangiano $ L = T = m / 2\(dot(r)^2 + r^2 dot(theta)^2\) $

La hamiltoniana $ p_r = pdv( L , dot(r) ) = m dot(r) $ entonces $ H & = dot(r) p_r - L = p_r / m p_r - m / 2 (p_r^2 / m^2 + omega^2 r^2)\
H & = frac(p_r^2, 2 m) - frac(m omega^2, 2) r^2 $ así #sinnum[$  i & \)pdv( H , t ) = 0 med arrow.r med H = upright("cte")\
i i & \)H eq.not E = T $]

#heading(level: 2, numbering: none)[Problemas]
+ Dada la Lagrangiana $ L = frac(m dot(q)^2, 2) - 1 / 2 k q^2 + lambda dot(q) q $

  + Hallar la Hamiltoniana.

  + Hallar las ecuaciones de Hamilton.

+ Una partícula de masa $m$ se mueve bajo la influencia de la gravedad a lo largo de la espiral $z = k phi$, como se muestra en la figura, donde $r$ y $k$ son constantes. Hallar las ecuaciones de movimiento de Hamilton.

+ Una particula de masa $m$ se mueve en una dimensión bajo la influencia de la fuerza $ F\(x\,t\)= k / x^2 e^(- t\/tau) $ donde $k$ y $tau$ son constantes.

  + Encuentre la función de Hamilton o Hamiltoniana.

  + Halle las ecuaciones de Hamilton.

  + ¿Es la Hamiltoniana igual a la energía total?

+ Obtenga el Hamiltoniano y las ecuaciones de movimiento de una partícula de masa $m$ que desliza sin rozamiento por el interior de un casquete de radio $R$ de forma esférica. ¿Qué constantes de movimiento posee el sistema?

#heading(level: 2, numbering: none)[Problemas Final]
+ La figura muestra una cuenta(una pequeña esfera con un orificio central) de masa $m$ que puede moverse libremente a lo largo de un aro de radio $R$ y masa despreciable. El aro, a su vez, gira con frecuencia angular $w$ constante alrededor del eje vertical $z$. Sea $theta$ el ángulo que el vector posición de la cuenta hace con la dirección vertical. La aceleración de la gravedad se denota por $arrow(g)$.

  + Calcula la lagrangiana $L\(theta\,dot(theta)\)$ de la partícula.

  + Demuestre que la hamiltoniana puede ser escrita en la forma #sinnum[$  H\(theta\,p\)= frac(p^2, 2 m R^2) - frac(m R^2 w^2 sin^2 theta, 2) - m g R cos theta $]

  + Partiendo de las ecuaciones de Hamilton, obtenga las ecuaciones de movimiento del sistema.

  + Si $p$ es constante, demuestre que $theta = arccos\(g\/R w^2\)$.

  + ¿Es posible afirmar que la hamiltoniana del item (b) corresponde a la energía total del sistema? Justifique su respuesta.

+ + Encuentre la transformación canónica generada por #sinnum[$  F\(q\,Q\)= lambda q^2 cot Q\, $] donde $lambda$ es una constante.

  + Si en la representación $\(Q\,P\)$ la hamiltoniana es #sinnum[$  K\(Q\,P\)= (frac(2 lambda, mu) cos^2 Q + frac(mu Omega^2, 2 Lambda) sin^2 Q) P\, $] donde $mu$ y $Omega$ son constantes, encuentre la hamiltoniana $H\(q\,p\)$ en l representación $\(q\,p\)$.

  + Encuentre el valor de $lambda$ tal que $K\(Q\,P\)$ sea independiente de $Q$ y describa el movimiento en las representaciones $\(Q\,P\)$ y $\(q\,p\)$.

+ Considere un movimiento unidimensional de una partícula con coordenadas generalizadas $q$, cuya lagrangiana es dada por #sinnum[$  L\(q\,dot(q)\)= 1 / 2 (dot(q)^2 / q^4 - 1 / q^2) $]

  + Obtenga la hamiltoniana del sistema $H\(q\,p\)$ en términos de la coordenada $q$ y $p$.

  + Utilizando la función generadora de primer tipo $F\(q\,Q\)= - Q\/q$, obtenga la transformación $Q = p q^2$ y $P = 1\/q$, donde $Q$ y $P$ representan respectivamente las coordenadas y el momento transformados. Verifique que esa transformación es canónica.

  + Calcule la hamiltoniana transformada $K = K\(Q\,P\)$ y resuelva las ecuaciones de Hamilton de movimiento para la coordenada $Q = Q\(t\)$ y momento $P = P\(t\)$ considere las siguientes condiciones iniciales $Q\(0\)= 1$ y $P\(0\)= 0$.

  + De los resultados anteriores calcule la expresión para $q = q\(t\)$ y $p = p\(t\)$. Verifique explicitamente que esta solución satisface la ecuación de Hamilton para $H\(q\,p\)$.

+ Considere una partícula descrita por la hamiltoniana #sinnum[$  H = frac(p^2, 2 m) - k x e^(- lambda t) $] donde $m$ es la masa, $k$ y $lambda$ son constantes positivas.

  + Resuelva la ecuación de Hamilton-Jacobi #sinnum[$  pdv( S , t ) + H\(x\,p = pdv( S , q )\,t\)= 0 . $]

  + Obtenga la posición $x\(t\)$ y el momento lineal $p\(t\)$ de la partícula para las condiciones iniciales $x\(0\)= 0 = p\(0\)$.

  + Calcule la aceleración $a\(t\)$ y describa el movimiento de la partícula para $t > 0$ y $t > > 1\/t$.

+ Se tiene un proyectil (partícula puntual de masa $m$) que es disparado en un tiempo $t = 0$ desde el origen de coordenadas con una velocidad inicial $v_0$ y un ángulo $alpha$ con la horizontal, en presencia de un campo de fuerzas gravitatorio. Considerando el movimiento en dos dimensiones(plano $x y$), calcular lo siguiente utilizando el formalismo de Hamilton-Jacobi. Considere que la aceleración de la gravedad, de magnitud $g$ esta en al dirección $y$ y que en la dirección $x$ actua una aceleración $a_x = g\/2$. Hallar

  + Las ecuaciones de movimiento para cada coordenada: $y\(t\)$ y $x\(t\)$.

  + La ecuación de la trayectoria, $y\(x\)$.

  Utilizar las condiciones iniciales para obtener el valor de las constantes obtenidas por el método.
