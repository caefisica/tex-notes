#import "/lib/notes.typ": *

= Principios Variacionales y Ecuaciones de Lagrange
== Cálculo de las Variaciones
- #strong[Cálculo de Variaciones:] El cálculo de variaciones se ocupa del problema de determinar extremales, es decir máximos y mínimos de funcionales.

- #strong[Funcional:] Es una aplicación de funciones sobre el de números reales, es decir asocia a cierta clase un número real.

Por ejemplo, un funcional es la distancia entre dos puntos.

Sabemos que $ upright(d) s^2 = upright(d) x^2 + upright(d) y^2 $ entonces $ upright(d) s = sqrt(upright(d) x^2 + upright(d) y^2) = upright(d) x sqrt(1 + dv( y , x )) $

Así el funcional de $y$ es $ s\[y\]= integral_(x_1)^(x_2) sqrt(1 + y' ""^2) upright(d) x\,quad s = s\(y'\) $

En general un funcional se denota por $J\[y\]$ y tiene la forma $ J\[y\]= integral_(x_1)^(x_2) f (y \( x \) \, y' \( x \) \, x) upright(d) x $

#emph["El problema del cálculo variacional consiste en determinar para que función $y\(x\)$ el funcional $J\(y\)$ asume un valor extremo, un máximo o un mínimo."]

Donde $ macron(y)\(x\)= y\(x\)+ epsilon.alt eta\(x\) $ Con la condición de frontera $ eta\(x_1\)= eta\(x_2\)= 0 $ donde $eta\(x\)$ es una función continua y diferenciable.

El funcional de $macron(y)$ será: $ J\[macron(y)\(x\)\]= integral_(x_1)^(x_2) f [macron(y) \( x \) \, dot(macron(y)) \( x \) \, x] upright(d) x = Phi\(epsilon.alt\) $

Cuando $epsilon.alt = 0$, entonces $J\[macron(y)\(x\)\]$ es máximo o mínimo. Esto implica que $P h i\(epsilon.alt\)$ es un máximo o mínimo $ dv( Phi\(epsilon.alt\), epsilon.alt )\|_(epsilon.alt = 0) & = 0\
dv( Phi\(epsilon.alt\), epsilon.alt )\|_(epsilon.alt = 0) & = integral_(x_1)^(x_2) (pdv( f , macron(y) ) pdv( macron(y) , epsilon.alt ) + pdv( f , macron(y)' ) pdv( macron(y)' , epsilon.alt ))\|_(epsilon.alt = 0) upright(d) x = 0\
 & = integral_(x_1)^(x_2) (pdv( f , y ) eta + pdv( f , y' ) eta') upright(d) x $

Si $y\(x\)$ extremiza al funcional $J\[y\]$ entonces $ dv( Phi , epsilon.alt )\|_(epsilon.alt = 0) = 0 med arrow.r.double med integral_(x_1)^(x_2) (pdv( f , y ) eta + pdv( f , y' ) eta') upright(d) x = 0 $ Haciendo una integración por partes $ integral_(x_1)^(x_2) pdv( f , y' ) eta' upright(d) x = pdv( f , y' ) eta\|_(x_1)^(x_2) - integral_(x_1)^(x_2) eta dv( , x ) (pdv( f , y' )) upright(d) x $ Entonces $ integral_(x_1)^(x_2) [pdv( f , y ) eta - dv( , x ) (pdv( f , y' )) eta] upright(d) x = integral_(x_1)^(x_2) underbrace([pdv( f , y ) - dv( , x ) (pdv( f , y' ))], text(fill: #red,  M\(x\))) eta upright(d) x = 0 $

$M\(x\)$ debe ser nula para cualquier $eta\(x\)$. Por tanto se llega a la ecuación de Euler(1744) $ pdv( f , y ) - dv( , x ) (pdv( f , y' )) = 0 $

=== Problema de Braquistócrona
La idea esta en determinar una curva por la cual una partícula se desliza recorriendo el menor tiempo.

Por conservación de energia $ m g y = 1 / 2 m v^2 quad & arrow.r.double quad v = sqrt(2 g y)\
v = dv( s , t ) quad & arrow.r.double upright(d) t = frac(upright(d) s, v) = frac(upright(d) s, sqrt(2 g y))\
 & upright(d) t = sqrt(upright(d) x^2 + upright(d) y^2) / sqrt(2 g y) $

Como $y = y\(x\)$, entonces $ upright(d) t = sqrt(1 + y' ""^2) / sqrt(2 g y) upright(d) x $

Sea el funcional $ T\[y\]= integral_0^(x_0) underbrace(sqrt(1 + y' ""^2) / sqrt(2 g y), f\(y\,y'\,x\)) upright(d) x $

Se resuelve con la ecuación de Euler $ pdv( f , y ) - dv( , x ) (pdv( f , y' )) = 0 $

Buscando una curva que depende de $y$: $x = x\(y\)$ $ T\[x\]= 1 / sqrt(2 g) integral_0^(y_0) sqrt(1 + x' ""^2) / sqrt(y) upright(d) y $

Usando Euler $ underbrace(pdv( f , x ), 0) - dv( , y ) (pdv( f , x' )) = 0 med arrow.r med pdv( f , x' ) = c_1 $

Quedando $ frac(x', sqrt(1 + x' ""^2) sqrt(y)) = c_1 $

Considerando un parámetro $t$ tal que $x' = tan t$, sustituyendo $ y = 1 / c_1^2 sin^2 t = c_2 sin^2 t\,med c_2 = 1 / c_1^2 $

Pero $ x' & = dv( x , y ) = tan t\
upright(d) x & = upright(d) y tan t = 2 c_2 sin t cos t tan t upright(d) t\
upright(d) x & = 2 c_2 sin^2 t upright(d) t = c_2\(1 - cos\(2 t\)\)upright(d) t $

Integrando $ x\(t\)= c_3 + c_2 / 2\(2 t - sin\(2 t\)\) $

Para $y\(t\)$ $ y\(t\)= c_2 / 2\(1 + cos\(2 t\)\) $

Como la curva pasa por $\(0\,0\)$ entonces $c_3 = 0$, Haciendo $ c_2 / 2 = c\,quad 2 t = theta $ entonces tenemos las ecuaciones paramétricas $ x\(theta\) & = c\(theta - sin theta\)\
y\(theta\) & = c\(1 - cos theta\) $

Problema: Hallar las geodésicas de un cilindro de radio $R$.

Donde #sinnum[$  x^2 + y^2 = R^2\,quad upright(d) s^2 = upright(d) x^2 + upright(d) y^2 + upright(d) z^2 $] entonces #sinnum[$  s & = integral_(①)^(②) sqrt(upright(d) x^2 + upright(d) y^2 + upright(d) z^2)\
 & = integral_(①)^(②) sqrt(1 + y' ""^2 + z' ""^2) upright(d) x $]

Sea $f = sqrt(1 + y' ""^2 + z' ""^2)$, haciendo #sinnum[$  y = plus.minus sqrt(R^2 - x^2)\,quad y' = minus.plus x / sqrt(R^2 - x^2) $] entonces #sinnum[$  f & = sqrt(1 + (minus.plus x / sqrt(R^2 - x^2))^2 + z' ""^2)\
 & = sqrt(frac(R^2, R^2 - x^2) + z' ""^2) $]

Usando Euler #sinnum[$  pdv( f , z ) - dv( , x ) (pdv( f , z' )) = 0\
dv( , x ) (frac(z', frac(R^2, R^2 - x^2) + z' ""^2)) = 0\
therefore frac(z', frac(R^2, R^2 - x^2) + z' ""^2) = c_1 $] entonces #sinnum[$  dv( z , x ) = z' = plus.minus frac(c_2 R, sqrt(R^2 - x^2))\;quad c_2 = c_1 / sqrt(1 - c_1^2) $]

Integrando #sinnum[$  z = plus.minus c_2 R tan^(- 1) (frac(x, R^2 - x^2)) + c_3 $] la cual es la ecuación de la Helicoide.

=== Funcional General
Una funcional puede depender de varias variables, es decir de varias funciones $ J\[y_1\,dots.h.c\,y_n\]= integral_(x_1)^(x_2) f\(y\,dots.h.c\,y_n\,y'_1\,dots.h.c\,y'_n\,x\)upright(d) x $ donde cada función $y_i$ es independiente, y el problema se centra en hallar para que función $y_i$ el funcional $J$ es un extremal. $ macron(y)_i = y_i + epsilon.alt eta_i\(x\) $

Vamos a obtener una ecuación de Euler para $y_i$, por tanto $ pdv( f , y_i ) - dv( , x ) (pdv( f , y'_i )) = 0\,quad i = 1\,2\,dots.h.c\,n . $

Sea $y_i arrow.r q_i$ y $x arrow.r t$, entonces $ f\(y\,y'\,x\)quad arrow.l.r quad L\(q_i\,dot(q)_i\,t\) $

Entonces la ecuación de Euler toma la forma $ pdv( L , q_i ) - dv( , t ) (pdv( L , dot(q)_i )) = 0 $ la cual se conoce como la ecuación de Euler-Lagrange para un sistema holónomo.

Por tanto las ecuaciones de movimiento de la mecánica, es decir, las ecuaciones de Lagrange se pueden derivar del principio variacional.

==== Notacion Variacional
Sea una cantidad $S$:funcional $S$ definido de la forma $ S\[q_1\,dots.h.c\,q_n\]= integral_(t_1)^(t_2) L\(q_1\,dots.h.c\,q_n\,dot(q)_1\,dots.h.c\,dot(q)_n\,t\)upright(d) t $

Las ecuaciones de movimiento son las ecuaciones de Euler para $S$. El movimiento de un sistema mecánica entre dos puntos en un espacio de configuraciones entre un intervalo de tiempo es aquel que minimiza el funcional $S\[q_1\,dots.h.c\,q_n\]$ llamado #strong[Acción]#footnote[Este principio es conocido como el Principio de Hamilton o de mínima acción.].

Considerando coordenadas generalizadas

El principio de Hamilton dice: De todos los movimientos posibles que un sistema pudiera ejecutar partiendo de $t_1$ y llegar a $t_2$, la trayectoria física o realizada para una trayectoria que torna a la acción $S\[q_1\,dots.h.c\,q_n\]$ será mínima(minimiza la acción).

Entonces $ macron(q)_i\(t\)= q_i\(t\)+ epsilon.alt eta\(t\)med arrow.r med underbrace(epsilon.alt eta\(t\), delta q_i\(t\)) = macron(q)_i\(t\)- q_i\(t\) $

Tomando la derivada $ dot(arrow(q))_i\(t\)= dot(q)_i\(t\)+ underbrace(epsilon.alt dot(eta)\(t\), delta dot(q)_i\(t\)) $

Por definición $ delta dot(q)_i = dv( , t ) delta q_i\(t\) $ produciendo una variación en el funcional.

=== Variación del Funcional $S$
Del funcional $ S\(q_i\)= integral_(t_1)^(t_2) L\(q_i\,dot(q)_i\,t\)upright(d) t $

Tenemos una variación en el funcional #sinnum[$  delta S & = integral_(t_1)^(t_2) sum_(i = 1)^n (pdv( L , q_i ) delta q_i + pdv( L , dot(q)_i ) delta dot(q)_i) upright(d) t quad\(alpha\)\
delta S & = underbrace(S\(macron(q)\), f i n a l) - underbrace(S\(q\), i n i c i a l) $] donde solamente consideramos términos de $1$er orden $ S\(macron(q)\)- S\(q\)= integral [L \( q + delta q \, dot(q) + delta dot(q) \, t \) - L \( q \, dot(q) \, t \)] upright(d) t $

Haciendo una integración por partes en () #sinnum[$  delta S = integral_(t_1)^(t_2) sum_(i = 1)^n underbrace([pdv( L , q_i ) - dv( , t ) (pdv( L , dot(q)_i ))], 0) delta q_i upright(d) t = 0 quad upright("(I)") $]

Por tanto $ delta S = 0 $

De (I) $ delta S = integral sum_(i = 1)^n [pdv( L , q_i ) - dv( , t ) (pdv( L , dot(q)_i ))] delta q_i upright(d) t $

Si consideramos que la acción $S$ no varia $delta S = 0$, entonces $ pdv( L , q_i ) - dv( , t ) (pdv( L , dot(q)_i )) = 0 $ llegamos a las ecuaciones de Euler-Lagrange.

=== Lagrangianos Equivalentes
#emph[Definición:] Las Lagrangianas $L\(q\,dot(q)\,t\)$ y $macron(L)\(q\,dot(q)\,t\)$ son equivalentes si existe la función $f\(q\,t\)$ tal que $ macron(L)\(q\,dot(q)\,t\)= L\(q\,dot(q)\,t\)+ dv( d , t ) f\(q\,t\) $ #emph[Notar] $ dv( , t ) f\(q\,t\)= sum_(i = 1)^n pdv( t , q_i ) dv( q_i , t ) + pdv( f , t ) $

#emph[Teorema:] Dos Lagrangianas equivalentes generan ecuaciones de Lagrange identicas.

Demostración: $ macron(S) = integral_(t_1)^(t_2) macron(L) upright(d) t = integral_(t_1)^(t_2) L upright(d) t + integral_(t_1)^(t_2) dv( , t ) f\(q\,t\)upright(d) t $

Por el principio de Hamilton $ delta S = 0 med arrow.r med L $ Si la acción es única, entonces $ delta macron(S) = 0 med arrow.r med macron(L) $ así, tenemos $ delta q_i\(t_1\)= delta q_i\(t_2\)= 0 med arrow.r med L = macron(L) $

== Principio de Hamilton para el caso No-holónomo
Existen coordenadas generalizadas independientes porque los vinculos son holónomos.

Cuando los vínculos son No-holónomos, en general es imposible introducir coordenadas generalizadas de modo que las ecuaciones de vinculo sean satisfechas.

Sin embargo, aun así, es posible deducir las ecuaciones de movimiento a partir del principio de Hamilton en el caso de vinculos No-holónomos.

Para el caso de vínculos No-holónomos las ecuaciones diferenciales son de la forma $ sum_(k = 1)^n a_(l k) upright(d) q_k + a_(l t) upright(d) t = 0\;quad l = 1\,dots.h.c\,beta $ donde $a_(l k)$ y $a_(l t)$ son funciones solamente de $\(q_1\,q_2\,dots.h.c\,q_n\,t\)$.

Otra forma equivalente para la expresión anterior $ sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) = 0 $

Usando el principio de Hamilton $ delta S = integral_(t_1)^(t_2) upright(d) t sum_(k = 1)^n [pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k ))] delta q_k = 0 $

Para vinculos holónomos #sinnum[$  cases(reverse: #true, & q_k : upright("independientes"), delta & q_k : upright("independientes")) upright("Son arbitrarios") $]

Cuando los vinculos son de la forma $a_(l t)$ en $ sum_(k = 1)^n a_(l k) upright(d) q_k + a_(l t) upright(d) t = 0 $

Entonces $delta q_k$ no son todos independientes entre sí porque esta restringido por los vinculos.

Notar que: $ macron(q)_k\(t\)= q_k\(t\)+ delta q_k\(t\) $

Si en la ecuación $ sum_(k = 1)^n a_(l k) upright(d) q_k + a_(l t) upright(d) t = 0 $ el tiempo es fijo, se tiene $ sum_(k = 1)^n a_(l k) upright(d) q_k = 0\,quad l = 1\,dots.h.c\,p $ donde $\(n - p\)$ variaciones de los $q_k$ son independientes entre sí.

Para resolver este problema Lagrange usó el método de multiplicadores $ sum_(l = 1)^p lambda_l sum_(k = 1)^n a_(l k) upright(d) q_k = 0 $

Integrando #sinnum[$  integral_(t_1)^(t_2) upright(d) t sum_(l = 1)^p lambda_l sum_(k = 1)^n a_(l k) upright(d) q_k = 0 quad\(omega\) $]

Notar que #sinnum[$  delta S = integral_(t_1)^(t_2) upright(d) t sum_(k = 1)^n [pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k ))] delta q_k = 0 quad\(phi.alt\) $]

Sumando () y () $ integral_(t_1)^(t_2) upright(d) t sum_(k = 1)^n [pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k )) + sum_(l = 1)^p lambda_l a_(l k)] delta q_k = 0 $

donde $delta q_k$ siguen siendo dependientes, pero $\(n - p\)$ coordenadas son independientes para los cuales $delta q_k$ son independientes los $p$ últimos vinculos son regidos por $ sum_(k = 1)^n a_(l k) delta q_k = 0\,quad l = 1\,dots.h.c\,p $

Entonces suponemos que #sinnum[$  delta q_1\,dots.h.c\,delta q_(\(n - p\)) med arrow.r med & upright("son independientes.")\
delta q_(\(n - p\)+ 1)\,dots.h.c\,delta q_n med arrow.r med & upright("son determinados en función de")\
 & upright("los que son independientes.") $]

Podemos escoger $p$ multiplicadores de Lagrange que pueden anular el coeficiente de $delta q_k$ para los $p$-últimos $delta q_k$.

Es posible escoger $lambda_1\,dots.h.c\,lambda_p$ de modo $ pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k )) + sum_(l = 1)^p lambda_l a_(l k) = 0\,quad k = n - p - 1\,dots.h.c\,n $

Entonces $ integral_(t_1)^(t_2) upright(d) t sum_(k = 1)^(n - p) [pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k ) + sum_(l = 1)^p lambda_l a_(l k))] delta q_k = 0 $ como $delta q_1\,dots.h.c\,delta q_(n - p)$ son independientes y arbitrarios, entonces $ pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k )) + sum_(l = 1)^p lambda_l a_(l k) = 0\,quad k = 1\,dots.h.c\,n - p $

Entonces las ecuaciones de movimiento pueden ser escritas como $ dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = sum_(l = 1)^p lambda_l a_(l k)\;quad k = 1\,dots.h.c\,n $<ec:2.61> la cual es la ecuación de movimiento para sistemas mecánicos sujetos a vinculos No-holónomos lineales en las velocidades.

#strong[Nota:]

- $L med arrow.r$ Solo envuelve las fuerzas aplicadas o asociadas a fuerzas activas, no tiene nada que ver con las fuerzas de vínculo.

- Se tiene $p$ ecuaciones de vinculo $sum_(i = 1)^n a_(l k) dot(q)_k + a_(l k) = 0$ más $n$ ecuaciones de #ref(<ec:2.61>) forman un conjunto de $\(n + p\)$ ecuaciones para $\(n + p\)$ incógnitas que son los $n arrow.r q_k$ y los $p arrow.r lambda_l$, entonces se tiene igual número de ecuaciones y de incógnitas.

#strong[Encontrando sentido a los multiplicadores de Lagrange.]

Usando el principio de D'Alembert $ dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) = Q_k $ donde $ Q_k = - underbrace(pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k )), upright("Fuerzas aplicadas")) + Q'_k $ y $Q'_k$ es la fuerza de vinculo. Reemplazando $U med arrow.r$ potencial conservativo $ dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) = - pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k )) + Q'_k $

Si $L = T - U$, entonces $ Q'_k = dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) $

Comparando con la ecuación de multiplicadores de Lagrange $ dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = sum_(l = 1)^p lambda_l a_(l k) $

Notamos que $ Q'_k = sum_(l = 1)^p lambda_l a_(l k) $ que son las fuerzas generalizadas de vínculo.

Los multiplicadores de Lagrange van a dar la información sobre fuerzas de vínculo que actuan sobre el sistema.

#strong[Ejemplo:] Considerando un patinete en una superficie horizontal.

Donde #sinnum[$  arrow(v)_(C M) = dot(x) hat(x) + dot(y) hat(y)\,quad hat(u) parallel arrow(v)_(C M)\,quad hat(u) = cos theta hat(x) + sin theta hat(y) $]

Como $hat(u) parallel arrow(v)_(C M)$ entonces $arrow(v)_(C M) times hat(u) = 0$: #sinnum[$  arrow(v)_(C M) times hat(u) = mat(delim: "‖", hat(i), hat(j), hat(k); dot(x), dot(y), 0; cos theta, sin theta, 0) =\(dot(x) sin theta - dot(y) cos theta\)hat(k) = 0 $] Tenemos la ecuación de vínculo #sinnum[$  dot(x) sin theta - dot(y) cos theta = 0 $] Usando la ecuación de multiplicadores de Lagrange #sinnum[$  dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = sum_(l = 1)^p lambda_l a_(l k)\,quad k = 1\,dots.h.c\,n $] Se puede aplicar esta expresión si los vinculos cumplen con: #sinnum[$  sum_(k = 1)^n a_(l k) upright(d) q_k + a_(l t) upright(d) t = 0 $] O también #sinnum[$  sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) = 0 $] el cual son los vinculos lineales con la velocidad.

Si tenemos que #sinnum[$  q_1 = x\,quad q_2 = y\,quad q_3 = theta $] Usando #sinnum[$  sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) = 0\,quad l = 1\,dots.h.c\,p $] entonces #sinnum[$  quad\(alpha\)a_11 underbrace(dot(q)_1, dot(x)) + a_12 underbrace(dot(q)_2, dot(y)) + a_13 underbrace(dot(q)_2, dot(theta)) + a_(1 t) = 0 $] Como tenemos una sola ecuación de vinculo, entonces $l = 1$ y $p = 1$. Como el patinete se encuentra en el piso #sinnum[$  V = 0 med arrow.r med L = T = m / 2\(dot(x)^2 + dot(y)^2\)+ I / 2 dot(theta)^2 $] De () #sinnum[$  a_11 dot(x) + a_12 dot(y) + a_13 dot(theta) + a_(1 t) = 0 $] Comparando con la ecuación de vínculo #sinnum[$  dot(x) sin theta - dot(y) cos theta = 0 med arrow.r.double med a_11 = sin theta\,a_12 = - cos theta\,a_13 = a_(1 t) = 0 $] Reemplazando en la ecuación de Multiplicadores de Lagrange

- Para $k = 1$ #sinnum[$  dv( , t ) (pdv( L , dot(q)_1 )) - pdv( L , q_1 ) & = lambda_1 a_11\
  dv( , t ) (pdv( L , dot(x) )) - pdv( L , x ) & = lambda_1 a_11\
  dv( , t ) (pdv( L , dot(x) )) & = lambda_1 sin theta\
  m dot.double(x) & = lambda_1 sin theta quad\(1\) $]

- Para $k = 2$ #sinnum[$  dv( , t ) (pdv( L , dot(q)_2 )) - pdv( L , q_2 ) & = lambda_1 a_12\
  dv( , t ) (pdv( L , dot(y) )) - pdv( L , y ) & = lambda_1 a_12\
  dv( , t ) (pdv( L , dot(y) )) & = - lambda_1 cos theta\
  m dot.double(y) & = - lambda_1 cos theta quad\(2\) $]

- Para $k = 3$ #sinnum[$  dv( , t ) (pdv( L , dot(q)_3 )) - pdv( L , q_3 ) & = lambda_1 a_13\
  dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) & = lambda_1 a_13\
  dv( , t ) (pdv( L , dot(theta) )) & = 0\
  I dot.double(theta) & = 0\
  theta\(t\) & = theta_0 + Omega t $]

De (1) $div$ (2) #sinnum[$  dot.double(x) / dot.double(y) = - frac(sin theta, cos theta) med arrow.r.double med dot.double(x) cos theta + dot.double(y) sin theta = 0 quad\(3\) $] Pero por la ecuación de ligadura #sinnum[$  dot(x) sin theta - dot(y) cos theta = 0 med arrow.r med dot(y) = dot(x) tan theta $] derivando #sinnum[$  dot.double(y) = dot.double(x) tan theta + dot(x) dot(theta) sec^2 theta quad\(4\) $] (4) en (3) #sinnum[$  dot.double(x) cos theta +\(dot.double(x) tan theta + dot(x) dot(theta) sec^2 theta\)sin theta & = 0\
dot.double(x) (cos theta + frac(sin^2 theta, cos theta)) + dot(x) dot(theta) frac(sin theta, cos^2 theta) & = 0\
frac(dot.double(x), cos theta) + dot(x) dot(theta) frac(sin theta, cos^2 theta) & = 0\
dv( , t ) (frac(dot(x), cos theta)) = 0 med arrow.r med frac(dot(x), cos theta) & = C\
therefore x = x_0 + C sin\(theta_0 + Omega t\) $] donde $theta = theta_0 + Omega t$, como $dot(y) = dot(x) tan theta$ #sinnum[$  therefore y = y_0 - cos\(theta_0 + Omega t\) $] Notamos que la trayectoria del scouter es una circunferencia #sinnum[$ \(x - x_0\)^2 +\(y - y_0\)^2 = C^2 $] Las fuerzas de vínculo serán: #sinnum[$  Q'_k = sum_(l = 1)^p lambda_l a_(l k) $] Para nuestro caso #sinnum[$  & * Q'_1 = Q'_x = lambda_1 a_11 = m dot.double(x) = - m C Omega^2 sin theta\
 & * Q'_2 = Q'_y = lambda_1 a_12 = m dot.double(y) = m C Omega^2 cos theta\
 & * Q'_3 = Q'_theta = lambda_1 a_13 = 0 $] Notar que la fuerza #sinnum[$  F' & =\(Q'_x\,Q'_y\)=\(- m C Omega^2 sin theta\,m C Omega^2 cos theta\)\
 & = m c Omega^2\(- sin theta\,cos theta\)= k\(- sin theta\,cos theta\) $]

== Vinculos Holónomos y los multiplicadores de Lagrange
Los vinculos holónomos son de la forma $ f_l\(q_1\,dots.h.c\,q_n\,t\)= 0\,quad l = 1\,dots.h.c\,p $

Tomando la derivada $ sum_(k = 1)^n pdv( f_1 , q_k ) dot(q)_k + pdv( f_1 , t ) = 0\,quad l = 1\,dots.h.c\,p $

Son de la forma $ sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) = 0 $

Comparando tenemos $ a_(l k) = pdv( f_l , q_k )\,quad a_(l t) = pdv( f_l , t ) $

== Problemas resueltos
=== Maquina de Atwood
Tenemos la energía cinética $ T = 1 / 2 m_1 dot(x)^2 + 1 / 2 m_2 dot(y)^2 $

Y la energía potencial $ V = - m_1 g x - m_2 g y $

Entonces el Lagrangiano $ L = T - V = 1 / 2 m_1 dot(x)^2 + 1 / 2 m_2 dot(y)^2 + m_1 g x + m_2 g y $

El vinculo es $ x + y = c t e $

Sea #sinnum[$  quad\(I\)f\(x\,y\)= x + y med arrow.r med dot(x) + dot(y) = 0 $]

#emph[Notar] #sinnum[$  pdv( f , x ) = 1\,quad pdv( f , y ) = 1 $]

Sea $q_1 = x$, $q_2 = y$. Usando $ pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k )) + lambda_l a_(l k) = 0 $ obtenemos #sinnum[$  quad\(I I\)* pdv( L , x ) - dv( , t ) (pdv( L , dot(x) )) + lambda a_11 & = 0\
* pdv( L , y ) - dv( , t ) (pdv( L , dot(y) )) + lambda a_22 & = 0 $ <ec:II>]

Por otro lado #sinnum[$  sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) & = 0\
a_11 dot(q)_1 + a_12 dot(q)_2 + a_(1 t) & = 0\
a_11 dot(x) + a_12 dot(y) + a_(1 t) & = 0 $]

Comparando tenemos $a_11 = 1$, $a_12 = 1$ y $a_(1 t) = 0$.

Otra forma es $ a_(l k) = pdv( f_1 , q_k ) med cases(delim: "{", a_11 & = pdv( f_1 , q_1 ) = pdv( f , x ) = 1, a_12 & = pdv( f_2 , q_2 ) = pdv( f , y ) = 1) $ en #ref(<ec:II>) #sinnum[$  quad\(alpha\)m_1 g + lambda & = m_1 dot.double(x)\
m_2 g + lambda & = m_2 dot.double(y) $ <ec:alpha4>]

Como $dot(x) + dot(y) = 0 quad arrow.r quad dot.double(x) + dot.double(y) = 0$, entonces #sinnum[$  quad\(beta\)dot.double(x) = - dot.double(y) $]

Resolviendo #ref(<ec:alpha4>) con () $ dot.double(x) = (frac(m_1 - m_2, m_1 + m_2)) g $ de donde $ lambda = - (frac(2 m_1 m_2, m_1 + m_2)) g $ entonces $ arrow(F)_(v i n c) = Q' = lambda a_11 hat(x) = - frac(2 m_1 m_2, m_1 + m_2) hat(x) $

Por Newton #sinnum[$  m_1 g - T & = m_1 dot.double(x)\
T = m_1\(g - dot.double(x)\) & = m_1 (g - frac(m_1 - m_2, m_1 + m_2))\
 & = - frac(2 m_1 m_2, m_1 + m_2) g $]

=== Partícula que cae por un domo
Una partícula se desliza sobre la superficie de un domo hemisferico. Encontrar la ecuación de movimiento y el ángulo donde se despega de la superficie. #sinnum[$  upright("Despege") med & arrow.r med upright("pérdida de contacto") med arrow.r med upright("fuerza de vinculo se anula") med arrow.r med upright("usar M. Lagrange")\
upright("Movimiento circular") med & arrow.r med upright("usar coordenadas polares ")\(r\,phi.alt\) $]

Hallamos la energía cinética y potencial $ T & = 1 / 2 m v^2 = 1 / 2 m (dot(r)^2 + \( r dot(phi.alt) \)^2) = 1 / 2 m\(dot(r)^2 + r^2 dot(phi.alt)^2\)\
V & = m g r cos phi.alt $

Entonces el Lagrangiano $ L = T - V = 1 / 2 m\(dot(r)^2 + r^2 dot(phi.alt)^2\)- m g r cos phi.alt $

La ecuación de vínculo será $ f\(r\,phi.alt\)= r - a = 0 $

En la ecuación de Lagrange $ pdv( L , q_k ) - dv( , t ) (pdv( L , dot(q)_k )) + sum_(l = 1)^p lambda_l a_(l k) = 0\,quad k = 1\,dots.h.c\,n cases(delim: "{", q_1 & = r, q_2 & = phi.alt) $

Como tenemos una ecuación de vínculo $l = p = 1$ #sinnum[$  quad\(alpha\)pdv( L , r ) - dv( , t ) (pdv( L , dot(r) )) + lambda a_11 & = 0\
pdv( L , phi.alt ) - dv( , t ) (pdv( L , dot(phi.alt) )) + lambda a_12 & = 0 $ <ec:alpha5>]

Ahora usando la condición de linealidad de la velocidad $ sum_(k = 1)^n a_(l k) dot(q)_k + a_(l t) = 0 med arrow.r med a_11 dot(r) + a_12 dot(phi.alt) + a_(1 t) = 0 $<ec:2.85>

De la ecuación de ligadura: $f\(r\,phi.alt\)= r - a = 0$, entonces $ dot(r) = 0 $<ec:2.86>

#heading(level: 4, numbering: none)[Cálculo de $a_11$ y $a_12$]
#strong[Forma 1:]

Comparando #ref(<ec:2.85>) y #ref(<ec:2.86>) $ a_11 = 1\,quad a_12 = 0\,quad a_(1 t) = 0 $

#strong[Forma 2:] Teniendo que $ a_(l k) = pdv( f_l , q_k ) $ con $f_l\(r\,phi.alt\)= r - a$, entonces $ a_11 = pdv( f_l , q_1 ) = pdv( f_l , r ) = 1\,quad a_12 = pdv( f_l , q_2 ) = pdv( f_l , phi.alt ) = 0 $

En #ref(<ec:alpha5>) $ pdv( L , r ) - dv( , t ) (pdv( L , dot(r) )) + lambda & = 0\
pdv( L , phi.alt ) - dv( , t ) (pdv( L , dot(phi.alt) )) & = 0 $

Efectuando las operaciones se tiene $ m r dot(phi.alt)^2 - m g cos phi.alt - m dot.double(r) + lambda & = 0\
m g r sin theta - m r^2 dot.double(phi.alt) - 2 m r dot(r) dot(phi.alt) & = 0 $

Usando la condición $r = a quad arrow.r quad dot(r) = dot.double(r) = 0$, obtenemos: $ m a dot(phi.alt)^2 - m g cos phi.alt + lambda & = 0\
m g a sin theta - m a^2 dot.double(phi.alt) & = 0 $<ec:2.92>

De #ref(<ec:2.92>) $ dot.double(phi.alt) = g / a sin theta $

Haciendo $ dot.double(phi.alt) = dv( , t ) dot(phi.alt) = dv( dot(phi.alt) , phi.alt ) dv( phi.alt , t ) = dot(phi.alt) dv( dot(phi.alt) , phi.alt ) $

Luego $ dot(phi.alt) dv( dot(phi.alt) , phi.alt ) & = g / a sin theta\
integral_0^phi.alt dot(phi.alt) upright(d) dot(phi.alt) & = g / a integral sin theta upright(d) phi.alt\
dot(phi.alt)^2 / 2 & = - g / a cos phi.alt + g / a\
1 / 2 (dv( phi.alt , t ))^2 & = g / a\(1 - cos phi.alt\)\
1 / 2 dv( phi.alt , t ) & = sqrt(g / a\(1 - cos phi.alt\))\
upright(d) t & = frac(upright(d) phi.alt, 2 sqrt(g / a\(1 - cos phi.alt\))) $

Integrando $ t = integral_0^phi.alt frac(upright(d) phi.alt, 2 sqrt(g / a\(1 - cos phi.alt\))) $ notamos que la integral diverge.

Usando la ecuación #ref(<ec:2.92>) para obtener $lambda$ $ lambda = m g cos phi.alt - m a dot(phi.alt)^2 $

Reemplazando $dot(phi.alt)^2 / 2 = - g / a cos phi.alt + g / a$ $ lambda & = m g cos phi.alt - m a (- frac(2 g, a) cos phi.alt + frac(2 g, a))\
lambda & = m g\(3 cos phi.alt - 2\) $

La fuerza de vínculo será: $ F^(v i n c) = underbrace(a_11, 1) lambda = m g\(3 cos phi.alt - 2\) $ haciendo $F^(v i n c) = 0 quad arrow.r quad 3 cos phi.alt - 2 = 0$ $ phi.alt = arccos\(2\/3\) $

=== Cilindro fijo
Sea un cilindro fijo sobre el cual rueda otro cilindro de radio $a$ sin deslizar. Calcular el momento que este cilindro abandona la superficie del cilindro fijo.

Consideramos tres coordenadas independientes $r$, $theta$ y $phi.alt$, entonces su Lagrangiano $ L & = T - V\
L & = m / 2\(dot(r)^2 + r^2 dot(theta)^2\)+ I / 2 dot(phi.alt)^2 - m g r cos theta $

== Propiedades de Simetría y Leyes de Conservación
Constante de movimiento: Son las cantidades conservadas, por definición es una función de las coordenadas, velocidades generalizadas y el tiempo que permanece constante en el tiempo. Las coordenadas o velocidades pueden cambiar en el tiempo pero la función de ellas no cambiar $ f\(q_1\,dots.h.c\,q_n\,dot(q)_1\,dots.h.c\,dot(q)_n\,t\)= c t e $ o $ f (q_1 \( t \) \, dots.h.c \, q_n \( t \) \, dot(q)_1 \( t \) \, dots.h.c \, dot(q)_n \( t \) \, t) = c t e $

Entonces $ dv( , t ) f\(q_i\,dot(q)_i\,t\)= 0 $

Ejemplo: Sea el oscilador $dot.double(x) + omega^2 x = 0$ y la función: $f\(x\,dot(x)\,t\)= arctan (frac(omega x, dot(x))) - omega t$. Se pretende saber si $f\(x\,dot(x)\,t\)$ es una constante de movimiento.

En el caso del oscilador la derivada total será: #sinnum[$  dv( f , t ) & = pdv( f , x ) dot(x) + pdv( f , dot(x) ) dot.double(x) + pdv( f , t )\
 & = (frac(1, 1 + frac(omega^2 x^2, dot(x)^2))) dot(x) + frac(1, 1 + frac(omega^2 x^2, dot(x)^2)) (- frac(omega x, dot(x)^2)) dot.double(x) - omega\
 & = frac(omega + omega^3 x^2 / dot(x)^2, 1 + frac(omega^2 x^2, dot(x)^2)) - omega = frac(omega (1 + frac(omega^2 x^2, dot(x)^2)), (1 + frac(omega^2 x^2, dot(x)^2))) - omega\
 & = omega - omega = 0 $] $therefore f\(x\,dot(x)\,t\)$ es una constante de movimiento para el oscilador.

#emph[Definición:] El momento conjugado $p_i$ a una coordenada $q_i$ es definido por $ p_i = pdv( L , dot(q)_i ) $

Ejemplo: Sea $L = m / 2\(dot(x)^2 + dot(y)^2 + dot(z)^2\)- V\(x\,y\,z\)$

Entonces el componente del momento lineal será $ p_x = pdv( L , dot(x) ) = m dot(x) $

Ejemplo: Sea $L = m / 2\(dot(x)^2 + dot(y)^2 + dot(z)^2\)- e phi.alt\(arrow(r)\,t\)+ e / c arrow(v) dot.op arrow(A)\(arrow(r)\,t\)$. Luego:

$ p_x = pdv( L , dot(x) ) = m dot(x) + e / c A_x $

Ejemplo: Sea $L = m / 2\(dot(x)^2 + dot(y)^2 + dot(z)^2\)- e phi.alt\(arrow(r)\,t\)+ e / c arrow(v) dot.op arrow(A)\(arrow(r)\,t\)$. Luego $ p_x = pdv( L , dot(x) ) = m dot(x) + e / c A_x $

#emph[Definición:] Una coordenada $q_i$ es cíclica o ignorable si $dot(q)_i$ aparece en la lagrangiana pero $q_i$ no aparece.

#emph[Teorema:] Si $q_i$ es una coordenada cíclica de una lagrangiana, entonces su momento conjugado $p_i$ es constante de movimiento.

Demostración: Tenemos #sinnum[$  dv( , t ) underbrace((pdv( L , dot(q)_k )), p_i) - underbrace(pdv( L , q_k ), 0) = 0 $] entonces #sinnum[$  dv( , t ) p_i = 0 quad arrow.r quad p_i = c t e $]

Ejemplo: Una partícula en un campo central en coordenadas esféricas tendra la lagrangiana $ L = m / 2\(dot(r)^2 + r^2 dot(theta)^2 + r^2 sin^2 theta dot(phi)^2\)- V\(r\) $ donde #sinnum[$  r med arrow.r med & upright("no es coordenada cíclica.")\
theta med arrow.r med & upright("no es coordenada cíclica.")\
phi med arrow.r med & upright("si es una coordenada cíclica.") $] entonces $ p_phi = pdv( L , dot(phi) ) = m r^2 sin^2 theta dot(phi) = upright("cte. de mov.") $

=== Propiedades de simetría
Sea el lagrangiano $ L = T - V = sum_(i = 1)^N m_i / 2 dot(arrow(r))_i^2 - V\(arrow(r)_1\,dots.h.c\,arrow(r)_N\) $ haciendo una transformación infinitesimal $ arrow(r)_i & arrow.r arrow(r)'_i = arrow(r)_i + delta arrow(r)_i\
dot(arrow(r))_i = arrow(v)_i & arrow.r arrow(v)'_i = arrow(v)_i + delta arrow(v)_i $

Analizando $L$ con la transformación $ delta L & = L\(arrow(r)'_i\,arrow(v)'_i\,t\)- L\(arrow(r)_i\,arrow(v)_i\,t\)\
 & = sum_(i = 1)^n (pdv( L , arrow(r)_i ) delta arrow(r)_i + pdv( L , arrow(v)_i ) delta arrow(v)_i) $

En coordenadas cartesianas $ pdv( L , arrow(r)_i ) & = pdv( L , x_i ) hat(x) + pdv( L , y_i ) hat(y) + pdv( L , z_i ) hat(z)\
pdv( L , arrow(v)_i ) & = pdv( L , v_(i x) ) hat(x) + pdv( L , v_(i y) ) hat(y) + pdv( L , v_(i z) ) hat(z) $

=== Traslación Infinitesimal
$ arrow(r)'_i & = arrow(r)_i + epsilon.alt hat(n)\
dot(arrow(r))'_i & = dot(arrow(r))_i + dv( , t )\(epsilon.alt hat(n)\)\
arrow(v)'_i & = arrow(v)_i $ En resumen en una traslación infinitesimal $ cases(reverse: #true, arrow(r)'_i = arrow(r)_i + epsilon.alt hat(n), arrow(v)'_i = arrow(v)_i) delta arrow(r)_i = epsilon.alt hat(n)\
delta arrow(v)_i = 0 $

=== Rotación Infinitesimal
$ \|delta arrow(r)_i\| & = r_i sin alpha delta theta\
delta arrow(r)_i & = delta arrow(theta) times arrow(r)_i\,quad delta arrow(theta) = delta theta hat(n) $ partiendo de $delta arrow(r)_i = arrow(r)_i times delta arrow(theta)$, para la velocidad tenemos $ delta arrow(v)_i = arrow(v)_i times delta arrow(theta) $

En resumen para una rotación infinitesimal $ delta arrow(r)_i & = arrow(r)_i times delta arrow(theta)\
delta arrow(v)_i & = arrow(v)_i times delta arrow(theta) $

#emph[Teorema:] Si $L$ y los vinculos son invariantes sobre translaciones invariantes, entonces el momento lineal total del sistema es conservado.

Demostración: Sea la lagrangiana modificada $ cal(L) = L + sum_(i = 1)^n lambda_l f_l $ la cual nos proporciona las ecuaciones correctas de movimiento.#footnote[Donde $f_l$ son las ecuaciones de vínculo.]

Como $delta cal(L) = 0$, entonces $ delta cal(L) = 0 & = sum_(i = 1)^N pdv( cal(L) , arrow(r)_i )\(delta arrow(r)_i\)\,quad delta arrow(r)_i = epsilon.alt hat(n)\
 & = sum_(i = 1)^N pdv( cal(L) , arrow(r)_i )\(epsilon.alt hat(n)\) $ esta ecuación es para vínculos holónomos. Usando las ecuaciones de Lagrange $ dv( , t ) (pdv( cal(L) , dot(arrow(r))_i )) - pdv( cal(L) , arrow(r)_i ) = 0 $

#emph[Notar:] $ pdv( cal(L) , dot(arrow(r))_i ) = pdv( L , dot(arrow(r))_i ) = m dot(arrow(r))_i = arrow(p)_i $

Entonces $ 0 & = delta cal(L) =\(epsilon.alt hat(n)\)sum_(i = 1)^N pdv( cal(L) , arrow(r)_i )\
0 & =\(epsilon.alt hat(n)\)sum_(i = 1)^N dv( , t ) p_i = sum_(i = 1)^N dv( , t ) underbrace(\(hat(n) p_i\), arrow(p)_i) $

Como $ 0 & = dv( , t ) sum arrow(p)_i\
0 & = dv( , t ) arrow(P)_i\,quad arrow(P)_i = upright("cte.") $

#emph[Teorema:] Si $L$ y los vínculos son invariantes sobre rotaciones arbitrarias, entonces el momento angular total del sistema se conserva.

Demostración:

Partiendo de $ 0 = delta cal(L) & = sum_(i = 1)^N [(pdv( cal(L) , arrow(r)_i ) dot.op \( delta arrow(theta) times arrow(r)_i \)) + pdv( cal(L) , v_i ) \( delta arrow(theta) times arrow(v)_i \)]\
 & = sum_(i = 1)^N [dot(arrow(p))_i dot.op \( delta arrow(theta) times arrow(r)_i \) + arrow(p)_i dot.op \( delta arrow(theta) times arrow(v)_i \)] $

Usando la propiedad del triple producto escalar $ sum_(i = 1)^N [delta arrow(theta) dot.op \( arrow(r)_i times arrow(p)_i \) + delta arrow(theta) dot.op \( arrow(v)_i times arrow(p)_i \)] = 0 $ factorizando $delta arrow(theta)$ $ delta arrow(theta) dot.op sum_(i = 1)^N dv( , t )\(arrow(r)_i times arrow(p)_i\)= 0 $

Como $delta arrow(theta)$ es arbitrario $ sum_(i = 1)^N dv( , t ) underbrace(\(arrow(r)_i times arrow(p)_i\), arrow(L)_i) = 0\
sum_(i = 1)^N dv( , t )\(arrow(L)_i\)= dv( , t ) (sum_(i = 1)^N arrow(L)_i)\
dv( , t ) arrow(L) = 0\,quad arrow(L) = upright("cte") $

#emph[Nota:]

- La conservación del momentum lineal total indica la homogeneidad del espacio o sistema.

- La conservación del momento angular total indica la isotropia del espacio.

- La lagrangiana que describe sistemas aislados debe ser invariante ante traslaciones y rotaciones.

=== Conservación de la Energía
#emph[Teorema:] Sean $q_1\,dots.h.c\,q_n$ coordenadas generalizadas y $L\(q\,dot(q)\,t\)$ una lagrangiana. Si $L$ no depende explicitamente del tiempo, la cantidad $ h = sum_(i = 1)^n dot(q)_k pdv( L , dot(q)_k ) - L $ es una constante de movimiento.

Demostración $ dv( , t ) h = sum_(i = 1)^N [dot.double(q)_k pdv( L , dot(q)_k ) + dot(q)_k dv( , t ) (pdv( L , dot(q)_k ))] - sum_(i = 1)^N (pdv( L , q_k ) dot(q)_k + pdv( L , dot(q)_k ) dot.double(q)_k + pdv( L , t )) $ donde se cancelan los terminos $pdv( L , dot(q)_k )\,dv( , t ) (pdv( L , dot(q)_k ))\,pdv( L , q_k )$. Por las ecuaciones de Lagrange tenemos $ dv( , t ) (pdv( L , dot(q)_k )) = pdv( L , q_k ) $ por tanto $ dv( h , t ) = - pdv( L , t ) = 0 med arrow.r med h = upright("cte. de mov.") $ La constante de movimiento $h$ es conocida como integral de Jacobi.

Veamos en que circunstancias se puede garantizar que $h$ es la energia total del sistema.

==== Energía Cinética
Tenemos que la energía cinética esta definida como $ T = 1 / 2 sum_(i = 1)^N m_i v_i^2 $ donde $ arrow(v)_i = dv( arrow(r)_i , t ) = sum_(i = 1)^N pdv( arrow(r)_i , q_k ) dot(q)_k + pdv( arrow(r)_i , t ) $ entonces $ T = 1 / 2 sum_(i = 1)^N m_i (sum_(i = 1)^N pdv( arrow(r)_i , q_k ) dot(q)_k + pdv( arrow(r)_i , t )) (sum_(i = 1)^N pdv( arrow(r)_i , q_k ) dot(q)_k + pdv( arrow(r)_i , t )) $ Se puede escribir de la forma $ T = M_0 + sum M_k dot(q)_k + 1 / 2 sum_(k\,l = 1)^n M_(k l) dot(q)_k dot(q)_l $ donde

- $M_0$ no depende de la velocidad.

- $M_k$ es de primer grado en velocidades.

- $M_(k l)$ es el termino que depende del cuadrado de las velocidades.

Como $L = T - V$, $V$ no depende de $dot(q)_k$, entonces $ h = sum dot(q)_k pdv( L , dot(q)_k ) - L = sum_(i = 1) dot(q)_k pdv( T , dot(q)_k ) -\(T - V\) $

Suponiendo que los vinculos no dependen explicitamente del tiempo $ arrow(r)_i = arrow(r)_i\(q_k\,dot(q)_k\)med arrow.r med pdv( arrow(r)_i , t ) = 0 $

Entonces $ T = 1 / 2 sum_(k\,l = 1)^N M_(k\,l) dot(q)_l dot(q)_k $

==== Función homogénea de grado $p$
Sea $f\(x_1\,dots.h.c\,x_n\)$, multiplicamos cada variable por $lambda$ $ f\(lambda x_1\,dots.h.c\,lambda x_n\)= lambda^p f\(x\,dots.h.c\,x^n\)\,forall lambda $ entonces $f$ es una función homogenea de grado $p$.

==== Teorema de Euler de las funciones homogeneas
La función $f$ es homogenea de grado $p$ si y solamente si $ sum_(k = 1)^n x_k pdv( f , x_k ) = p f $

Aplicando a la energía cinética $T$ $ T\(lambda dot(q)_1\,dots.h.c\,lambda dot(q)_n\) & = 1 / 2 sum_(k\,l = 1)^N M_(k l) lambda dot(q)_k lambda dot(q)_l\
 & = lambda^2 1 / 2 sum_(k\,l = 1)^N M_(k l) dot(q)_k dot(q)_l\
 & = lambda^2 T\(dot(q)_1\,dots.h.c\,dot(q)_n\) $ donde $T$ es una función homogenea de grado 2. Utilizando el teorema de Euler $ sum_(k = 1)^N dot(q)_k pdv( T , dot(q)_k ) = 2 T $ pero $ h = sum_(k = 1)^n dot(q)_k pdv( L , dot(q)_k ) - L = 2 T -\(T - V\)\
h = T + V = E . T o t a l $

Conclusión: Si la lagrangiana no depende explicitamente del tiempo corresponde a decir que en un desplazamiento temporal el lagrangiano no cambia es invariante ante traslaciones temporales o cambio en el tiempo. Por tanto el teorema de conservación de la energía es visto como consecuencia de la homogeneidad del tiempo.

==== Teorema de Noether
Relaciona propiedades de simetría con leyes de conservación suponiendo que un sistema es descrito por la lagrangiana: $ L\(q\,dot(q)\,t\)med arrow.r med S = integral_(t_1)^(t_2) L\(q\,dot(q)\,t\)upright(d) t $

Considerando una transformación infinitesimal $ t med & arrow.r med t' = t + epsilon.alt X\(q\,t\)\
q_i\(t\)med & arrow.r med q'_i\(t'\)= q_i\(t\)+ epsilon.alt psi_i\(q_i\,t\) $

El teorema de Noether afirma que: #emph[Suponiendo que la acción $S$ es invariante sobre las transformaciones $t arrow.r t'$ y $q_i arrow.r q'_i$ entonces existe una cantidad conservada asociada a dicha invariancia de acción sobre la transformación considerada.] $ Delta S = integral_(t'_1)^(t'_2) L (q' \( t' \) \, dv( q' \( t' \) , t' ) \, t') upright(d) t' $

El teorema de Noether dice: Si $Delta S = 0$ entonces la cantidad $ C = sum_(i = 1)^n pdv( L , dot(q)_i )\(dot(q)_i X - psi_i\)- L X $ es conservada. Es decir es una constante de movimiento.

Demostración:

Partiendo de $ t' & = t + epsilon.alt X\(q\,t\)\
dv( t' , t ) & = 1 + epsilon.alt dot(X) $ Si expandimos $\(1 + X\)^lambda = 1 + lambda X + dots.h.c$ $ (dv( t' , t )) = dv( t , t' ) =\(1 + epsilon.alt dot(X)\)^(- 1) = 1 - epsilon.alt dot(X) $ Por tanto $ dv( q'_i\(t'\), t' ) = dv( q'_i\(t'\), t ) dot.op dv( t , t' ) =\(dot(q) + epsilon.alt dot(psi)\)\(1 - epsilon.alt dot(X)\)= dot(q)_i + epsilon.alt xi_i $ donde $xi_i = dot(psi)_i - dot(q) dot(X)$, entonces $ Delta S = integral_(t_1)^(t_2) L\(q + epsilon.alt psi\,dot(q) + epsilon.alt xi\,t + epsilon.alt X\)upright(d) t - integral_(t_1)^(t_2) L\(q\,dot(q)\,t\)upright(d) t $

Expandiendo por Taylor hasta el 1° orden $ Delta S = integral_(t_1)^(t_2) [L \( q \, dot(q) \, t \) + sum_(i = 1)^n (pdv( L , q_i ) epsilon.alt psi_i + pdv( L , dot(q)_i ) epsilon.alt xi_i) + pdv( L , t ) epsilon.alt X]\(1 + epsilon.alt dot(X)\)upright(d) t - integral_(t_1)^(t_2) L\(q\,dot(q)\,t\)upright(d) t $

Solamente consideramos términos de 1° orden en $epsilon.alt$ $ Delta S = epsilon.alt integral_(t_1)^(t_2) [sum_(i = 1)^n (pdv( L , q_i ) psi_i + pdv( L , dot(q)_i ) xi_i) + L dot(X)] upright(d) t = 0 $

Si $Delta S = 0$, siendo $epsilon.alt$ y $upright(d) t$ arbitrarios, entonces $ sum_(i = 1)^n [pdv( L , q_i ) psi_i + pdv( L , dot(q)_i ) \( dot(psi)_i - dot(q)_i dot(X) \)] + pdv( L , t ) X + L dot(X) = 0 $

Usando Lagrange #sinnum[$  dv( , t ) (pdv( L , dot(q)_i )) - pdv( L , q_i ) = 0 $] entonces $ sum_(i = 1)^n [dv( , t ) (pdv( L , dot(q)_i )) psi_i + pdv( L , dot(q)_i ) dot(psi)] - (sum_(i = 1)^n dot(q)_i pdv( L , dot(q)_i ) - L) dot(X) + pdv( L , t ) X = 0 $ donde $- h = sum_(i = 1)^n dot(q)_i pdv( L , dot(q)_i ) - L$ y $- dv( h , t ) = pdv( L , t ) X$, por tanto $ dv( , t ) [sum_(i = 1)^n pdv( L , dot(q)_i ) psi_i - h X] = 0 $ donde $ h X - sum_(i = 1)^n pdv( L , dot(q)_i ) psi_i = C\
sum_(i = 1)^n pdv( L , dot(q)_i )\(dot(q)_i X - psi_i\)- L X = upright("cte") $

Ejemplo: Recordando la transformación temporal $ t' & = t + epsilon.alt\
q'_i\(t'\) & = q_i\(t\) arrow.r.double cases(delim: "{", X = 1, psi = 0) $

Ejemplo: Oscilador armónico amortiguado $ dot.double(x) + lambda dot(x) + omega^2 x = 0 $ no existe una lagrangiana que reproduzca un movimiento como este, existen varios lagrangianos equivalentes $ L = e^(lambda t) (frac(m dot(x)^2, 2) - frac(m omega^2, 2) x^2) med arrow.r med e^(lambda t)\(m dot.double(x) + m lambda dot(x) + m omega^2 x\)= 0 $ entonces $ S = integral L upright(d) t = integral_(t_1)^(t_2) e^(lambda t) (frac(m dot(x)^2, 2) - frac(m omega^2, 2) x^2) upright(d) t $ por inspección, notamos que la acción es invariante sobre una transformación finita, haciendo $ t & = t' + alpha\
x'\(t'\) & = e^(- lambda alpha\/2) x\(t\) $ entonces $ S' & = integral_(t'_1)^(t'_2) e^(lambda t') (m / 2 dv( x' ""^2 \( t' \) , t' ) - frac(m omega^2, 2) x' ""^2 \( t' \)) upright(d) t'\
S' & = integral_(t_1)^(t_2) e^(lambda t) e^(lambda alpha) (m / 2 e^(- lambda alpha) dot(x)^2 - frac(m omega^2, 2) e^(- lambda alpha) x^2) upright(d) t = S $

Suponiendo $alpha = epsilon.alt$ infinitesimal $ t' = t + epsilon.alt\,quad x'\(t'\)= e^(- lambda epsilon.alt\/2) x\(t\)= (1 - frac(lambda epsilon.alt, 2)) x = x - frac(epsilon.alt lambda, 2) x $ Luego: $x = 1$, $psi = - lambda / 2 x$. Por tanto la cantidad de movimiento asociada es $ sum_(i = 1)^n pdv( L , dot(q)_i )\(dot(q)_i x - psi_i\)- L x = C arrow.r pdv( L , dot(x) ) (dot(x) + lambda / 2 x) - L = C $ entonces $ e^(lambda t) m dot(x) (dot(x) + lambda / 2 x) - e^(lambda t) (frac(m dot(x)^2, 2) - frac(m omega^2, 2) x^2) = C\
e^(lambda t) (frac(m dot(x)^2, 2) + frac(m omega^2, 2) x^2 + m lambda / 2 x dot(x)) = C $

== Problemas
1.- (a) Hallar el extremal de la funcional #sinnum[$  J = integral_1^2\(y' + y\)^2 upright(d) x $] bajo la condición de frontera $y\(1\)= 1$ y $y\(2\)= 0$.

\(b) Demuestre la invariancia de la ecuación de Euler frente a cambios de coordenadas.

2.- Halle la ecuación de Euler-Lagrange para el funcional de orden superior #sinnum[$  J\[y\(x\)\]= integral_a^b f\[x\,y\(x\)\,y'\(x\)\,y''\(x\)\]upright(d) x $] con las condiciones de frontera $y\(a\)= A$, $y\(b\)= B$, $y'\(a\)= A'$, $y'\(b\)= B'$.

3.- Problema de Kelvin: supongamos que en el plano $X O Y$ está distribuída una masa de densidad continua $mu\(x\,y\)$ y supongamos que se tiene en el plano una curva $Gamma$ suave a trozos y dos puntos $P_1$ y $P_2$ sobre la misma. Entre todas las curvas $C$ de longitud fija $L$ que unen estos puntos, hállese la que, conjuntamente con el arco $P_1 P_2$ de la curva $Gamma$, forme un recinto $D$ de masa máxima. Los puntos $P_1$ y $P_2$ pueden coincidir.

4.- (a) Una partícula se mueve a lo largo de una hélice dada por las ecuaciones $rho = a z$ y $phi = - b z$ ($a$ y $b$ son constantes) en un campo gravitatorio con aceleración de magntud $g$. Demuestre que la ecuación de movimiento esta dada por #sinnum[$ \(a^2 b^2 z^2 + a^2 + 1\)dot.double(z) + a^2 b^2 z dot(z)^2 + y = 0 $] (b) El lagrangiano de un sistema viene dado por #sinnum[$  L = 1 / 2 m\(a dot(x)^2 + 2 b dot(x) dot(y) + c dot(y)^2\)- 1 / 2\(a x^2 + 2 b x y + c y^2\) $] donde $a\,b$ y $c$ son constantes talque $a c eq.not b^2$.

Calcule y resuelva las ecuaciones de movimiento. ¿Qué sistema describe $L$? ¿Qué tiene de especial la situación $a c = b^2$.

5.- Halle las ecuaciones de movimiento para los siguientes lagrangianos

+ #sinnum[$  L\(x\,dot(x)\)= e^(x^2 - dot(x)) + 2 dot(x) e^(- x^2) integral_0^(dot(x)) e^(- y^2) upright(d) y $]

+ #sinnum[$  L\(x\,dot(x)\,t\)= 1 / 2 m\(dot(x)^2 - w^2 x^2\)e^(gamma t) $] donde $w$ y $gamma$ son constantes positivas.

6.- Encuentre la ecuación de movimiento de un péndulo paramétrico de masa $m$ cuya longitud se hace variar de la forma $l = l_0\(1 + b sin w t\)$.

7.- El lagrangiano de un sistema esclerónomo con tres grados de libertad viene dado por #sinnum[$  L = 1 / 2 m\(dot(r)^2 + r^2 dot(theta)^2 +\(a - r\)^2\)dot(phi)^2\, $] en coordenadas esféricas, donde $m$ es la masa de la partícula y $a > 0$.

+ Obtenga las ecuaciones de movimiento.

+ ¿Es posible resolver las ecuaciones de movimiento? Si es posible, demuestre que son integrables las ecuaciones de movimiento.

8.- Un péndulo compuesto está formado por una varilla de masa despreciable y longitud $l$, con un extremo fijo y el otro conectado al punto medio de una segunda varilla de masa despreciable y longitud $a$, ($a < l$), en cuyos extremos hay dos masas $m_1$ y $m_2$. Las varillas pueden rotar sin fricción en un mismo plano vertical. Encuentre las ecuaciones de movimiento de este sistema.

9.- La energía cinética de un sistema dinámico es #sinnum[$  T = 1 / 2\(q_1^2 + q_2^2\)\(dot(q)_1^2 + dot(q)_2^2\) $] y la energia potencial es #sinnum[$  V = frac(1, q_1^2 + q_2^2) . $] Demuestre que la relación entre $q_1$ y $q_2$ es #sinnum[$  a^2 q_1^2 + b^2 q_2^2 + 2 a b q_1 q_2 cos gamma = sin^2 gamma\, $] donde $a\,b\,gamma$ son constantes de integración.
