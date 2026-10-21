#import "/lib/notes.typ": *

= Principios Fundamentales
== Mecánica de una partícula
<sec1>
Newton definió la cantidad de movimiento $ arrow(p) = m arrow(v) $ y su interacción(variación de $arrow(p)$) como $ arrow(F) = dv( arrow(p) , t ) = dot(arrow(p)) . $

Como $m$ y $t$ son invariantes entonces $ arrow(F)_(e x t) = dv(\(m arrow(v)\), t ) = m dv( arrow(v) , t ) = m arrow(a) . $

=== Conservación de la cantidad de movimiento
Si consideramos $ dv( arrow(p) , t ) = 0\, $ entonces $arrow(p) = c t e$.

Llegamos a que $ arrow(F)_(e x t) = 0 quad arrow.r.double quad dv( arrow(p) , t ) = 0\,med arrow(p) = c t e . $

=== Conservación del momento angular
Sea el momento angular o momento cinético definido como $ arrow(L) = arrow(r) times arrow(p) . $

Y el torque(pseudo vector) $ arrow(N) = arrow(r) times arrow(F)\, $ tendremos que $ arrow(N) & = arrow(r) times dv( p , t ) = arrow(r) times dv(\(m arrow(v)\), t ) = m arrow(r) times dv( arrow(v) , t )\
arrow(N) & = arrow(r) times dv(\(m arrow(v)\), t ) + arrow(0) = arrow(r) times dv(\(m arrow(v)\), t ) + arrow(v) times m arrow(v)\
arrow(N) & = dv(\(accent(r times m arrow(v), ⃗)\), t ) = dv(\(arrow(r) times arrow(p)\), t )\,arrow(L) = arrow(r) times arrow(p)\
arrow(N)_(e x t) & = dv( arrow(L) , t ) . $

Si $ arrow(N)_(e x t) = 0 quad arrow.r.double quad dv( arrow(L) , t ) = 0\,med arrow(L) = c t e . $

=== Trabajo
Denotamos el trabajo como $ W_12 & = integral arrow(F) dot.op upright(d) arrow(s) = integral dv( arrow(p) , t ) dot.op arrow(v) upright(d) t\
W_12 & = integral dv(\(m arrow(v)\), t ) dot.op arrow(v) d t = m / 2 integral_1^2 dv( v^2 , t ) upright(d) t\
W_12 & = m integral_1^2 dv(\(arrow(v) dot.op arrow(v)\), t ) upright(d) t = 1 / 2 m v^2\|_1^2\
W_12 & = T_2 - T_1 $ donde la expresión $W_12 = T_2 - T_1$ se conoce como el #strong[teorema del trabajo y la energía].

Para las fuerzas conservativas $ arrow(F) = - nabla V\(arrow(r)\)\,med nabla times V\(arrow(r)\)= 0 $ los potenciales conservativos $V\(arrow(r)\)$ solo dependen de $arrow(r)$, entonces $ W_12 & = integral_1^2 arrow(F) dot.op upright(d) arrow(s) = integral_1^2 - nabla V\(arrow(r)\)dot.op upright(d) arrow(s) = - integral_1^2 nabla V\(arrow(r)\)dot.op upright(d) arrow(s)\,med d arrow(s) =\(upright(d) x\,upright(d) y\,upright(d) z\)\
W_12 & = - integral_1^2 (pdv( , x ) \, pdv( , y ) \, pdv( , z )) V\(arrow(r)\)dot.op\(upright(d) x\,upright(d) y\,upright(d) z\)= - integral_1^2 (pdv( , x ) upright(d) x + pdv( , y ) upright(d) y + pdv( , z ) upright(d) z) V\(arrow(r)\)\
W_12 & = - integral_1^2 upright(d) V\(arrow(r)\)= V_1\(arrow(r)\)- V_2\(arrow(r)\). $

De modo que llegamos a $ W_12 = T_1 + V_1 = T_2 + V_2 $ la cual se conoce como la #strong[conservación de la energía].

Si $arrow(F) = - nabla V\(arrow(r)\,t\)$ donde el potencial es no conservativo, es decir disipa energía entonces $ W_12 = - integral_1^2 pdv( V , s ) upright(d) s eq.not V_1 - V_2 $

== Mecánica de un sistema de partículas
<sec2>
Actuan fuerzas externas denotadas por $arrow(F)^(\(e\))$ y fuerzas internas denotadas por $arrow(F)_(i j)$. De modo que la fuerza total que actua sobre "$i$" $ sum_j arrow(F)_(i j) + F_i^(\(e\)) = arrow(F)_(t o t) = dv(\(m_i arrow(r)_i\), t ) = dot(arrow(p)) . $

La fuerza total de todo el sistema será $ sum_i (sum_j arrow(F)_(i j) + F_i^(\(e\))) & = underbrace(sum_i sum_(i eq.not j) F_(i j), 0) + sum_i arrow(F)_i^(\(e\))\
sum_i (sum_j arrow(F)_(i j) + F_i^(\(e\))) & = sum_i arrow(F)_i^(\(e\)) = dv( , t , 2 ) (sum_i m arrow(r)_i) . $

Notar que: $ sum_i arrow(F)_i^(\(e\)) = arrow(F)^(\(e\)) arrow.r.double upright("Fuerza total") . $

Pero tenemos que $ arrow(R) = frac(sum_i m_i arrow(r)_i, M) arrow.r.double sum_i m_i arrow(r)_i = arrow(R) M . $

Entonces $ sum_i arrow(F)_i^(\(e\)) = dv( , t , 2 )\(arrow(R) M\)= M dv( , t , 2 ) arrow(R) . $

Por otro lado la cantidad de movimiento del sistema $ arrow(p)_T = sum_i dv( , t ) arrow(r)_i = dv( , t ) (sum_i m_i arrow(r)_i) = dv( , t )\(arrow(R) M\)= M dv( , t ) arrow(R)\, $ por lo que $ M dv( , t , 2 ) arrow(R) = dot(arrow(p)) quad arrow.r.double quad arrow(F)^(\(e\)) = dot(arrow(p)) . $

Si $arrow(F)^(\(e\)) = 0$ entonces $dot(arrow(p)) = c t e$ y esto se conoce como la #strong[conservación de la cantidad de movimiento de un sistema de partículas].

Por otra parte sobre "$i$" tenemos $ arrow(r)_i times (sum_i arrow(F)_(i j) + arrow(F)_i^(\(e\))) = arrow(L)\, $ y sobre todo el sistema $ sum_i arrow(r)_i times (sum_j arrow(F)_(i j) + arrow(F)_i^(\(e\))) & = sum_i arrow(r)_i times dot(arrow(p)_i)\
underbrace(sum sum_(i eq.not j) arrow(r)_i times arrow(F)_(i j), 0) + underbrace(sum_i arrow(r)_i times arrow(F)_i^(\(e\)), N^(\(e\))) & = sum_i dv( , t ) underbrace(\(arrow(r)_i times arrow(p)_i\), arrow(L)_i^(\(e\))) $ obtenemos que $ arrow(N)^(\(e\)) & = sum_i dv( , t ) arrow(L)_i^(\(e\))\,quad sum_i arrow(L)_i^(\(e\)) = arrow(L)^(\(e\))\
arrow(N)^(\(e\)) & = dv( , t ) arrow(L)^(\(e\))\, $ si $arrow(N)^(\(e\)) = 0$ entonces $arrow(L)^(\(e\)) = c t e$ lo cual se conoce como la #strong[conservación del momento angular de un sistema de partículas].

== Ligaduras
<sec3>
Son restricciones sobre las coordenadas de un sistema. Se expresan mediantes ecuaciones de ligadura. #sinnum[$  z & = 0\
tan theta & = frac(b - y, x)\
arrow.r.double y & = b - x tan theta $]

=== Ligadura Unilateral
Se expresan mediante una desigualdad.

Ejemplo \ Sea un gas confinado en un recipiente,

Sea $f$ una función que expresa una variable, entonces la ligadura será $ f\(arrow(r)_1\,arrow(r)_2\,dots.h.c\,arrow(r)_n\,t\)gt.eq 0\,quad R -\|arrow(r)_i\|gt.eq 0 . $

=== Ligadura Bilateral
Se expresan mediante igualdades.

$ f\(arrow(r)_i\,dot(arrow(r))_i\,t\)= 0\,forall i $

=== Ligaduras Reónomas
Dependen explicitamente del tiempo, se denominan ligaduras dinámicas o cinématicas.

Ejemplos: \

- #strong[Gas confinado en un recipiente elástico] $ R\(t\)gt.eq\|arrow(r)_i\| $

- #strong[Sistema dinámico] $ z & = 0\
  y & = b - x tan theta\
  y & = b - x tan\(w theta\) $

=== Ligadura esclerónoma
No dependen explicitamente del tiempo. También se denominan fijas o estacionarias.

=== Ligadura Holónoma
Son ligaduras bilaterales que no dependen de las velocidades y dependen exclusivamente de: #sinnum[$  & arrow.r.double upright("coordenadas (esclerónomas)")\
 & arrow.r.double upright("tiempo (reónomas)") $] $ f_l^h\(arrow(r)_i\,t\)= 0 cases(delim: "{", i = 1\,2\,dots.h.c\,N, l = 1\,2\,dots.h.c\,K) $ también se les denomin como ligaduras geométricas.

En un sistema holónomo todas las ligaduras deben ser holónomas. El número de grados de libertad viene dado por $ S = 3 N - K cases(delim: "{", N = upright("Número de coordenadas.") #h(2em) #h(2em), K = upright("Número de ecuaciones de ligadura.")) $

=== Grados de libertad configuracionales
Es el número de coordenadas independientes que junto con las ecuaciones de ligadura permiten especificar la configuración del sistema.

Ejemplos

+ #strong[Partícula moviendose en un plano]

  Ecuación del plano #sinnum[$  f^h = s\(x\,y\,z\)= s\(arrow(r)_1\)= 0 $] Entonces los grados de libertad #sinnum[$  S = 3\(1\)- 1 = 2 $]

+ #strong[Dos planos intersectados]

  #sinnum[$  f_1^h = s_1\(x\,y\,z\)= s\(arrow(r)_1\)= 0\,quad f_2^h = s_2\(x\,y\,z\)= s_2\(arrow(r)_1\)= 0 $] donde $arrow(r)$ describe los puntos comunes ($N = 1$). Y tenemos $2$ ecuaciones de ligadura ($K = 2$). #sinnum[$  S = 3\(1\)- 2 = 1 $]

=== Ligaduras holónomas y No-holónomas
Si #sinnum[$  & f\(arrow(r)\,t\)med arrow.r.double med upright("Holónoma")\
 & f\(arrow(r)\,arrow(v)\,t\)med arrow.r.double med upright("No Holónoma") $]

Ejemplo: Considerando un cilindro que rueda sin deslizar

$x$ y $phi.alt$ son independientes #sinnum[$  dot(x) = dot(phi.alt) R med arrow.r.double med dot(x) - dot(phi.alt) R = 0 $] Nos preguntamos si la ecuación de ligadura $dot(x) - dot(phi.alt) R = 0$ tiene la forma de una ligadura no Holónoma de la forma #sinnum[$  f\(arrow(r)\,dot(arrow(r))\,t\)= 0 $] podemos escribir #sinnum[$  dv( x , t ) - dv( phi.alt , t ) R = 0 arrow.r.double upright(d) x = upright(d) phi.alt R $]

Integrando #sinnum[$  x = phi.alt R + c $] la cual es una ecuación de ligadura Holónoma.

==== Integrabilidad de constricciones
El matemático alemán Johann Friedrich Pfaff postulo una metodología de integrabilidad de ecuaciones de ligadura o constricciones.

#emph[Toda restricción puede escribirse como] $ sum_(j = 1)^n C_(i j) upright(d) q_j + C_i upright(d) t = 0 $ #emph[conocida como forma diferencial o Pfaffiana.]

Para saber si esta ligadura es holónoma o no holónoma, es necesario estudiar su integrabilidad.

La integrabilidad la tenemos si consideramos la existencia de una función $Phi$ que satisfaga:

$ sum_(j = 1)^n underbrace(pdv( Phi , q_j ), C_(i j)) upright(d) q_j + underbrace(pdv( Phi , t ), C_i) upright(d) t = 0 $

Notar #sinnum[$  pdv( Phi , q_j ) = C_(i j) med & arrow.r.double med pdv( , q_k ) (pdv( Phi , q_j )) = pdv( C_(i j) , q_k )\
 & arrow.r.double pdv( Phi , q_k , q_j ) = pdv( C_(i j) , q_k ) $]

En general, se debe cumplir $ pdv( Phi , q_j , q_k ) = pdv( C_(i j) , q_k ) = pdv( C_(i k) , q_j )\
pdv( Phi , t , q_j ) = pdv( C_i , q_j ) = pdv( C_(i j) , t ) $ donde #sinnum[$  cases(reverse: #true, pdv( C_(i j) , q_k ) & = pdv( C_(i k) , q_j ), pdv( C_i , q_j ) & = pdv( C_(i j) , t )) upright("C. Integrabilidad") $]

Problema: Sea la ecuación de ligadura #sinnum[$  x_1 x_2^2 dot(x)_1 + x_1^2 x_2 dot(x)_2 + sin t = 0 $] Solución: Se puede escribir como: #sinnum[$  x_1 x_2^2 dv( x_1 , t ) + x_1^2 x_2 dv( x_2 , t ) + sin t = 0 $] Multiplicando por $upright(d) t$: #sinnum[$  x_1 x_2^2 upright(d) x_1 + x_1^2 x_2 upright(d) x_2 + sin t upright(d) t = 0 $] Sabemos que la forma diferencial es: #sinnum[$  sum_(j = 1)^n C_(i j) upright(d) q_j + C_i upright(d) t = 0 $] Como tenemos una ecuación de ligadura, $i = 1$ #sinnum[$  C_11 upright(d) q_1 + C_12 upright(d) q_2 + C_1 upright(d) t = 0 $] de donde #sinnum[$  C_11 = x_1 x_2^2\,quad C_12 = x_1^2 x_2\,quad C_1 = sin t\,quad q_1 = x_1\,quad q_2 = x_2 $] Aplicando las condiciones de Integrabilidad #sinnum[$  underbrace(pdv( C_11 , q_2 ), 2 x_1 x_2) & = underbrace(pdv( C_12 , q_1 ), 2 x_1 x_2)\
underbrace(pdv( C_1 , q_1 ), 0) & = underbrace(pdv( C_11 , t ), 0)\
underbrace(pdv( C_1 , q_2 ), 0) & = underbrace(pdv( C_12 , t ), 0) $] Entonces la ecuación de ligadura es holónoma.

== Coordenadas Generalizadas
<sec4>
Se denominan coordenadas generalizadas#footnote[El número de coordenadas generalizadas es el número de grados de libertad de un sistema.] a un conjunto cualquiera de parámetros ${ q_i\,med i = 1\,2\,dots.h.c\,N }$ que sirven para determinar de manera univoca la configuración de un sistema.

Sea $arrow(r)_v = x_v hat(i) + y_v hat(j) + z_v hat(k)$ la posición de la $v -$ésima partícula, las coordenadas de posición están dadas por $ x_v & = x_v\(q_1\,q_2\,dots.h.c\,q_n\,t\)= x_v\(q_i\,t\)\
y_v & = y_v\(q_1\,q_2\,dots.h.c\,q_n\,t\)= y_v\(q_i\,t\)\
z_v & = z_v\(q_1\,q_2\,dots.h.c\,q_n\,t\)= z_v\(q_i\,t\) $

En general: $ arrow(r)_v = arrow(r)_v\(q_1\,q_2\,dots.h.c\,q_n\,t\)arrow.r.double arrow(r)_i = arrow(r)_i\(q_j\,t\) $ con $i = 1\,2\,dots.h.c\,N$ y $j = 1\,2\,dots.h.c\,N$.

También se puede expresar como #sinnum[$  q_j = q_j\(arrow(r)_i\,t\)\,quad i\,j = 1\,2\,dots.h.c\,N . $]

=== Espacio de configuraciones
Es un espacio absracto constituido por cualquier conjunto de "$n$" coordenadas generalizadas "$q_i$".

Algunas magnitudes físicas en coordenadas generalizadas

+ #strong[Desplazamiento] $ upright(d) arrow(r) = sum_(j = 1)^N pdv( arrow(r)_i , q_j ) upright(d) q_j + pdv( arrow(r)_i , t_j ) upright(d) t_j\,med i\,j = 1\,2\,dots.h.c N . $

+ #strong[Velocidad] $ dot(arrow(r))_i = dv( , t ) arrow(r)_i & = sum_(j = 1)^N pdv( arrow(r)_i , q_j ) dv( q_j , t ) + pdv( arrow(r)_i , t ) dv( t , t )\
   & = sum_(j = 1)^N pdv( arrow(r)_i , q_j ) dot(q)_j + pdv( arrow(r)_i , t ) $

+ #strong[Aceleración] $ dot.double(arrow(r)) = dv( , t ) dot(arrow(r)) & = dv( , t ) [sum_(j = 1)^N pdv( arrow(r)_i , q_j ) dot(q)_j + pdv( arrow(r)_i , t )]\
   & = sum_(j = 1)^N dv( , t ) (pdv( arrow(r)_i , q_j ) dot(q)_j) + dv( , t ) (pdv( arrow(r)_i , t ))\
   & = sum_(j = 1)^N dv( , t ) (pdv( arrow(r)_i , q_j )) dot(q)_j + pdv( arrow(r)_i , dot(q)_j ) dot.double(q)_j + dv( , t ) (pdv( arrow(r)_i , t )) $ donde $ dv( , t ) (pdv( arrow(r)_i , q_j )) = sum_(k = 1)^N pdv( arrow(r)_i , q_k , q_j ) dot(q)_k med arrow.r.double med dv( , t ) (pdv( arrow(r)_i , t )) = sum_(k = 1)^N pdv( arrow(r)_i , q_k , t ) dot(q)_k $ Reemplazando $ dot.double(arrow(r)) = sum_(j\,k)^N pdv( arrow(r)_i , q_k , q_j ) dot(q)_k dot(q)_j + sum_(j = 1)^N (pdv( arrow(r)_i , q_j ) dot.double(q)_j + pdv( arrow(r)_i , q_j , t ) dot(q)_j) $

== Restricciones
<sec5>
- #strong[Sistemas holónomos] $ f\(arrow(r)_i\,t\)= 0 arrow.l.r f\(q_i\,t\)= 0 $

- #strong[Sistemas No-holónomos] $ f\(arrow(r)_i\,arrow(v)\,t\)= 0 arrow.l.r f\(q_i\,dot(q)_i\,t\)= 0 $

== Fuerza Generalizada
<sec6>
Partiendo de la definición de trabajo $ upright(d) W = arrow(F) dot.op upright(d) arrow(r) $

En forma general $ upright(d) W & = sum_(i = 1)^N arrow(F)_i dot.op upright(d) arrow(r)_i\
 & = sum_(i = 1)^N arrow(F)_i (sum_(j = 1)^N pdv( arrow(r)_i , q_j ) upright(d) q_j + pdv( arrow(r)_i , t ) upright(d) t)\
 & = sum_(j = 1)^N underbrace((sum_(i = 1)^N arrow(F)_i dot.op pdv( arrow(r)_i , q_j )), Q_j) upright(d) q_j + sum_(i = 1)^N arrow(F)_i dot.op pdv( arrow(r)_i , t ) upright(d) t $ entonces $ d W = sum_(j = 1)^N Q_j upright(d) q_j + sum_(i = 1)^N arrow(F)_i dot.op pdv( arrow(r)_i , t ) upright(d) t $ donde: $ Q_j = sum_(i = 1)^N arrow(F)_i dot.op pdv( arrow(r)_i , q_j )\,med j = 1\,2\,dots.h.c\,N $ se le denomina #strong[Fuerza generalizada]#footnote[$Q_j$ no tiene necesariamente dimensiones de Fuerza.].

Notar

- Si $q_j$ es longitud entonces $Q_j$ es #strong[Fuerza].

- Si $q_j$ es un angulo entonces $Q_j$ es #strong[Trabajo]\(Torque).

- Si $q_j$ es una superficie entonces $Q_j$ es una #strong[Tensión].

- Si $q_j$ es un volumen entonces $Q_j$ es una #strong[Presión].

Nota: Sin embargo $ Q_j dot.op upright(d) q_j = sum_(i = 1)^N arrow(F)_i dot.op pdv( arrow(r)_i , q_j ) upright(d) q_j $ $Q_j dot.op upright(d) q_j$ siempre tendra dimensiones de trabajo.

== Desplazamientos Virtuales
<sec7>
Mecánica independiente del tiempo.

- $delta arrow(r)$: Siempre es tangente a la superficie.

- $upright(d) arrow(r)$: No siempre es tangente a la superficie.

El trabajo virtual de fuerzas de vinculo es nulo.

=== Principio del Trabajo Virtual
- #strong[Caso 1:] Estático $ sum_i arrow(F)_i = 0 $ Sea $ arrow(F)_i = arrow(F)^(\(a\)) + arrow(f)_i $ donde $arrow(F)^(\(a\))$ es la fuerza externa aplicada y $arrow(f)_i$ es la fuerza de vinculo.

  Ejemplo: Pendulo Simple

  Vinculo ideal: Trabajo de las fuerzas de vinculo son nulas.

  Sean: $delta arrow(r)_1\,delta arrow(r)_2\,dots.h.c\,delta arrow(r)_n$ los desplazamientos virtuales.

  El trabajo de la fuerza de vinculo es nula:

  $ sum_(i = 1)^N arrow(f)_i dot.op delta arrow(r)_i = 0 $

  Por tanto para un sistema en equilibrio $ sum_i arrow(F)_i = 0 quad arrow.r.double quad sum_i arrow(F)_i dot.op delta arrow(r)_i = 0 $

  Pero: $ arrow(F)_i = arrow(F)_i^(\(a\)) + arrow(f)_i & = 0\
  sum_i (arrow(F)_i^(\(a\)) + arrow(f)_i) dot.op delta arrow(r)_i & = 0\
  sum_i arrow(F)_i^(\(a\)) dot.op delta arrow(r)_i + sum_i underbrace(arrow(f)_i, 0) dot.op delta arrow(r)_i & = 0\
  sum_i arrow(F)_i^(\(a\)) dot.op delta arrow(r)_i & = 0 $

- #strong[Caso 2:] Dinámico $ dot(arrow(p))_i = arrow(F)_i $

  Como: $arrow(F)_i = arrow(F)_i^(\(a\)) + arrow(f)_i$ $ dot(arrow(p))_i & = arrow(F)_i^(\(a\)) + arrow(f)_i\
  dot(arrow(p))_i - arrow(F)_i^(\(a\)) & = arrow(f)_i $

  Multiplicando por $delta arrow(r)_i$ $ sum_i (dot(arrow(p))_i - arrow(F)_i^(\(a\))) dot.op delta arrow(r)_i & = underbrace(arrow(f)_i dot.op delta arrow(r)_i, 0)\
  sum_i (dot(arrow(p))_i - arrow(F)_i^(\(a\))) dot.op delta arrow(r)_i & = 0 $ El cual se conoce como el #strong[Principio de D'Alembert].

Nota

+ $theta = c t e$ #sinnum[$  cases(reverse: #true, upright(d) arrow(r) & = pdv( arrow(r) , r ) upright(d) r + pdv( arrow(r) , theta ) upright(d) theta, delta arrow(r) & = pdv( arrow(r) , r ) delta r + pdv( arrow(r) , theta ) delta theta) upright("Coinciden") $]

+ Si $theta = f\(t\)$ entonces #sinnum[$  upright(d) theta & = pdv( f , t ) upright(d) t = omega\(t\)upright(d) t\
  delta theta & = pdv( arrow(r) , t ) delta t = 0 $] #sinnum[$  cases(reverse: #true, upright(d) arrow(r) & = pdv( arrow(r) , r ) upright(d) r + pdv( arrow(r) , theta ) omega\(t\)upright(d) t, delta arrow(r) & = pdv( arrow(r) , r ) upright(d) r) upright("No coinciden") $] En general: #sinnum[$  upright(d) arrow(r) & = sum_(j = 1)^n pdv( arrow(r)_i , q_j ) upright(d) q_j + pdv( arrow(r)_i , t ) upright(d) t\
  delta arrow(r) & = sum_(j = 1)^n pdv( arrow(r)_i , q_j ) upright(d) q_j $]

#strong[Problema: Maquina de Atwood] #sinnum[$  arrow(r)_1 = x_1 hat(x)\
arrow(r)_2 = x_2 hat(x) $] Se tiene el vínculo #sinnum[$  x_1 + x_2 = l arrow.r.double dot.double(x)_1 + dot.double(x)_2 = 0 $] entonces #sinnum[$  arrow(F)_1^(\(a\)) & = m_1 arrow(g) = m_1 g hat(x)\
arrow(F)_2^(\(a\)) & = m_2 arrow(g) = m_2 g hat(x) $] Notar que: #sinnum[$  delta x_1 + delta x_2 & = underbrace(delta l, 0)\
delta x_1 + delta x_2 & = 0 arrow.r.double delta x_1 = - delta x_2 $] Por lo tanto #sinnum[$  sum_(i = 1)^2 (arrow(p)_i - arrow(F)_i^(\(a\))) dot.op delta arrow(r)_i = 0 $] Desarrollando #sinnum[$ \(m_1 dot.double(arrow(r))_1 - m_1 g hat(x)\)dot.op delta x_1 hat(x) +\(m_2 dot.double(arrow(r))_2 - m_2 g hat(x)\)dot.op underbrace(delta x_2, - delta x_1) hat(x) = 0 $] Tenemos: #sinnum[$  dot.double(arrow(r))_1 = dot.double(x)_1 hat(x)\;dot.double(arrow(r))_2 = dot.double(x)_2 hat(x) = - dot.double(x_1) hat(x) $] Finalmente #sinnum[$ \(m_1 dot.double(x)_1 - m_1 g & + m_2 dot.double(x)_2 + m_2 g\)underbrace(delta x_1, eq.not 0) = 0\
\(m_1 & + m_2\)dot.double(x)_1 = m_1 - m_2\
 & enmarcado( dot.double(x)_1 = frac(m_1 - m_2, m_1 + m_2) ) $]

== Ecuaciones de Lagrange
<sec8>
Nota $  & * upright(d) arrow(r)_1 = sum_(j = 1)^n pdv( arrow(r)_i , q_j ) upright(d) q_j + pdv( arrow(r)_i , t ) upright(d) t\
 & * dot(arrow(r))_i = sum_(j = 1)^n pdv( arrow(r)_i , q_j ) dot(q)_j + pdv( arrow(r)_i , t )\
 & * dot.double(r)_i = sum_(j\,k = 1)^n pdv( arrow(r)_i , q_k ) q_j dot(q)_k dot(q)_j + sum_(j = 1)^n [pdv( arrow(r)_i , q_j ) dot.double(q)_j + pdv( arrow(r)_i , q_j ) t dot(q)_j]\
 & * Q_j = sum_(i = 1)^n arrow(F)_i dot.op pdv( arrow(r)_i , q_j ) arrow.r.double upright("F. Generalizada") $ $ text(fill: #red,  I m p o r t a n t e ) arrow.r.double enmarcado( pdv( dot(arrow(r))_i , dot(q)_k ) = pdv( arrow(r)_i , q_k ) , color: #red ) $

Partiendo del Principio de D'Alembert $ sum_(i = 1)^n\(m_i arrow(v)_i - arrow(F)_i^(\(a\))\)dot.op delta arrow(r)_i = 0 arrow.r.double sum m_i dot(arrow(v))_i delta arrow(r)_i = arrow(F)_i^(\(a\)) dot.op delta arrow(r)_i $ Pero $ delta arrow(r)_i = sum_k pdv( arrow(r)_i , q_k ) delta q_k $ Analizando $sum_i m_i dot(arrow(v))_i dot.op delta arrow(r)_i$ $ sum_i sum_k m_i dot(arrow(v))_i dot.op pdv( arrow(r)_i , q_k ) delta q_k & = sum_i sum_k arrow(F)_i^(\(a\)) pdv( arrow(r)_i , q_k ) delta q_k\
 & = sum_k Q_k delta q_k\,arrow(F)_i^(\(a\)) = arrow(F)_i $ Por tanto #sinnum[$  quad\(alpha\)sum_i sum_k m_i dot(arrow(v))_i pdv( arrow(r)_i , q_k ) delta q_k = sum_k Q_k delta q_k $] Analizando $ m_i dot(arrow(v))_i pdv( arrow(r)_i , q_k ) = dv( , t ) (m_i arrow(v)_i pdv( arrow(r)_i , q_k )) - m_i arrow(v)_i underbrace(dv( , t ) (pdv( arrow(r)_i , q_k )), pdv( arrow(v)_i , q_k )) $ recordemos que $pdv( arrow(r)_i , q_k ) = pdv( dot(arrow(r))_i , dot(q)_k )$. Si tenemos $arrow(r)_i = arrow(r)_i\(q_1\,dots.h.c\,q_n\,t\)$, entonces $ pdv( arrow(r)_i , t ) = arrow(v)_i = sum_i pdv( arrow(r)_i , q_k ) dot(q)_k + pdv( arrow(r)_i , t ) $ Notar $ dv( , t ) (pdv( arrow(r)_i , q_k )) & = sum_l pdv( , q_l ) (pdv( arrow(r)_i , q_k )) dot(q)_l + pdv( , t ) (pdv( arrow(r)_i , q_k ))\
 & = sum_l pdv( , q_k ) (pdv( arrow(r)_i , q_l )) dot(q)_l + pdv( , q_k ) (pdv( arrow(r)_i , t ))\
 & = pdv( , q_k ) (sum_l pdv( arrow(r)_i , q_l ) dot(q)_l + pdv( arrow(r)_i , t )) = pdv( arrow(v)_i , q_k ) $ entonces $ m_i dot(arrow(v))_i dot.op pdv( arrow(r)_i , q_k ) = dv( , t ) (m_i arrow(v)_i pdv( arrow(v)_i , dot(q)_k )) - m_i arrow(v)_i pdv( arrow(v)_i , q_k ) $ donde #sinnum[$  m_i arrow(v)_i pdv( arrow(v)_i , dot(q)_k ) = pdv( , dot(q)_k ) (m_i / 2 arrow(v)_i^2)\,quad m_i arrow(v)_i pdv( arrow(v)_i , q_k ) = pdv( , q_k ) (m_i / 2 arrow(v)_i^2) $]

En () $ sum_k sum_i [dv( , t ) pdv( , dot(q)_k ) (m_i / 2 v_i^2) - pdv( , q_k ) (m_i / 2 v_i^2)] delta q_k & = sum_k Q_k delta q_k\
sum_k [dv( , t ) pdv( , dot(q)_k ) (sum_i m_i / 2 v_i^2) - pdv( , q_k ) (sum_i m_i / 2 v_i^2) - Q_k] delta q_k & = 0 $ donde $ T = sum m_i / 2 v_i^2 = T\(q\,dot(q)\,t\) $ entonces $ therefore sum_k [dv( , t ) (pdv( T , dot(q)_k ) - pdv( T , q_k ) - Q_k)] delta q_k = 0 $

Como $delta q_k$ es arbitrario #sinnum[$  quad\(beta\)dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) = Q_k\,k = 1\,2\,dots.h.c\,n $]

Si existe un potencial conservativo $V = V\(arrow(r)_1\,dots.h.c\,arrow(r)_n\)$, entonces $ arrow(F)_i = - nabla_i V\(arrow(r)\) $

Entonces $ Q_k & = sum arrow(F)_i dot.op pdv( arrow(r)_i , q_k ) = sum_i (F_(i x) pdv( x_i , q_k ) + F_(i y) pdv( y_i , q_k ) + F_(i z) pdv( z_i , q_k ))\
 & = sum_i (- pdv( V , x_i ) pdv( x_i , q_k ) - pdv( V , y_i ) pdv( y_i , q_k ) - pdv( V , z_i ) pdv( z_i , q_k )) = - pdv( V , q_k ) $ En () $ dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) & = - pdv( V , q_k )\
dv( , t ) (pdv( T , dot(q)_k )) - pdv( , q_k )\(T - V\) & = 0 $ pero: $V = V\(q_k\)med arrow.r.double med pdv( V , dot(q)_k ) = 0$ $ dv( , t ) (pdv( T , dot(q)_k ) - 0) - pdv( , q_k )\(T - V\) & = 0\
dv( , t ) (pdv( T , dot(q)_k ) - pdv( V , dot(q)_k )) - pdv( , q_k )\(T - V\) & = 0\
dv( , t ) (pdv( \( T - V \) , dot(q)_k )) - pdv( , q_k )\(T - V\) & = 0 $ Definimos el término $T - V$ como el Lagrangiano $L$ $ L = T - V $ quedando así las ecuaciones de Lagrange $ enmarcado( dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) ) med upright("donde") quad L = L\(q\,dot(q)\,t\) $

Problema: Calcular la ecuación de movimiento del Pendulo

Tenemos #sinnum[$  T = 1 / 2 m\(dot(x)^2 + dot(y)^2\)\,quad V = - m g l cos theta $] entonces el Lagrangiano será #sinnum[$  L = T - V = 1 / 2 m\(dot(x)^2 + dot(y)^2\)- m g l cos theta $]

Pero #sinnum[$  x = l sin theta med arrow.r.double dot(x) = l cos theta dot(theta)\
y = - l cos theta med arrow.r.double dot(y) = l sin theta dot(theta) $] Reemplazando #sinnum[$  L & = 1 / 2\(l^2 cos^2 theta dot(theta)^2 + l^2 sin^2 theta dot(theta)^2\)- m g l cos theta\
L & = 1 / 2 m\(l^2 dot(theta)^2\)- m g l cos theta $] Usando Lagrange $q arrow.r theta$ #sinnum[$  dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = 0\
dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) = 0\
dv( , t )\(m l^2 dot(theta)\)+ m g l sin theta = 0\
m l dot.double(theta) + m g l sin theta = 0\
dot.double(theta) + g / l sin theta = 0 $]

=== Condiciones de validez de las Ecuaciones de Lagrange
+ Todos los vinculos deben ser holónomos $ f_l =\(arrow(r)_1\,dots.h.c\,arrow(r)_n\,t\)= 0\,quad l = 1\,dots.h.c\,p $

+ Los vinculos deben ser ideales $ sum_(i = 1)^n f_i dot.op delta arrow(r)_i = 0 $

+ Como los vinculos son holónomos podemos introducir coordenadas generalizadas $ q_1\,dots.h.c\,q_n quad & upright("donde") quad n = 3 N - p\
  arrow(r)_i = & arrow(r)_i\(q_1\,dots.h.c\,q_n\,t\) $

+ Las fuerzas aplicadas deben ser conservativas $ arrow(F)_i = - nabla_i V\,quad V = V\(arrow(r)_1\,dots.h.c\,arrow(r)_n\) $

Problema: Pendulo con soporte libre

La energia cinética será: #sinnum[$  T = M / 2 dot(x)^2 + m / 2\(dot(X)^2 + dot(Y)^2\) $] La energia potencial será: #sinnum[$  V = - m g Y $] #emph[Notar] #sinnum[$  X = x + l sin theta quad arrow.r.double quad dot(X) = dot(x) + l dot(theta) cos theta\
Y = l cos theta quad arrow.r.double dot(Y) = - l dot(theta) sin theta $] así, tenemos #sinnum[$  therefore\(dot(X)^2 + dot(Y)^2\)= dot(x)^2 + l^2 dot(theta)^2 + 2 l dot(x) dot(theta) cos theta $] Reemplazando #sinnum[$  T & = M / 2 dot(x)^2 + m / 2\(dot(x)^2 + l^2 dot(theta)^2 + 2 l dot(x) dot(theta) cos theta\)\
V & = - m g l cos theta $] El lagrangiano será(Se toma respecto a un sistema inercial): #sinnum[$  L = T - V = frac(\(m + M\), 2) dot(x)^2 + frac(m l^2 dot(theta)^2, 2) + m l dot(x) dot(theta) cos theta + m g l cos theta $] La ecuación de Lagrange será #sinnum[$  dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = 0\,quad k = 1\,dots.h.c\,n $] Se tienen dos coordenadas #sinnum[$  x arrow.r q_1\
theta arrow.r q_2 $] Entonces tendremos dos ecuaciones #sinnum[$  dv( , t ) (pdv( L , dot(x) )) - pdv( L , x ) = 0 quad\(i\)\
dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) = 0 quad\(i i\) $] De (i) #sinnum[$  dv( , t ) [\( m + M \) dot(x) + m l dot(theta) cos theta] & = 0\
\(m + M\)dot.double(x) + m l dot.double(theta) cos theta - m l dot(theta)^2 sin theta & = 0 $] De (ii) #sinnum[$  dv( , t )\[m l^2 dot(theta) + m l dot(x) cos theta\]-\[- m l dot(x) dot(theta) sin theta - m g l sin theta\] & = 0\
m l^2 dot.double(theta) + m l dot.double(x) cos theta + m g l sin theta & = 0 $] Si $x = 0 arrow.r dot.double(x) = 0$\(ignorando el cuerpo $M$) #sinnum[$  m l^2 dot.double(theta) + m g l sin theta = 0\
dot.double(theta) + g / l sin theta = 0 $]

Problema: Una pequeña esfera se desliga sin rozamiento en un alambre liso doblado en forma de cicloide cuya ecuación es: #sinnum[$  x & = a\(theta - sin theta\)\;quad 0 lt.eq theta lt.eq 2 pi\
y & = a\(1 + cos theta\) $]

+ Encontrar la función Lagrangiana.

+ Encontrar la ecuación de movimiento.

Su energia cinética es #sinnum[$  T & = 1 / 2 m\(dot(x)^2 + dot(y)^2\)\
 & = 1 / 2 a^2 {\[ \( 1 - cos theta \) dot(theta) \]^2 + \[ - dot(theta) sin theta \]^2}\
 & = m a^2\(1 - cos theta\)dot(theta)^2 $] Su energia potencial #sinnum[$  V = m g y = m g a\(1 + cos theta\) $]

+ Su lagrangiano #sinnum[$  L = T - V = m a^2\(1 - cos theta\)dot(theta)^2 - m g a\(1 + cos theta\) $]

+ Tenemos una coordenada generalizada $q_1 = theta$ #sinnum[$  dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) & = 0\
  dv( , t ) [2 m a^2 \( 1 - cos theta \) dot(theta)] -\[m a^2 sin theta dot(theta)^2 + m g a sin theta\] & = 0\
  dv( , t ) [\( 1 - cos theta \) dot(theta)] - 1 / 2 sin theta dot(theta)^2 - frac(g, 2 a) sin theta & = 0\
  \(1 - cos theta\)dot.double(theta) + 1 / 2 sin theta dot(theta)^2 - frac(g, 2 a) sin theta & = 0 $]

Problema: Resolver el problema del péndulo elástico de constante $k$

Se hace oscilar desde la posición inicial $r_0$ con velocidad inicial $dot(r)_0$, desplazamiento angular inicial $theta_0$ y velocidad angular inicial $dot(theta)_0$.

tenemos #sinnum[$  x = r sin theta quad arrow.r.double quad dot(x) = dot(r) sin theta + r dot(theta) cos theta\
y = - r cos theta quad arrow.r.double quad dot(y) = - dot(r) cos theta + r dot(theta) sin theta $] Entonces la energia cinética #sinnum[$  T = m / 2\(dot(x)^2 + dot(y)^2\)= m / 2\(dot(r)^2 + r^2 dot(theta)^2\) $] También la energia potencial #sinnum[$  V = m g y + 1 / 2 k Delta r^2 = - m g r cos theta + 1 / 2 k\(r - r_0\)^2 $] El Lagrangiano será #sinnum[$  L = T - V = m / 2\(dot(r)^2 + r^2 dot(theta)^2\)+ m g r cos theta - k / 2\(r - r_0\)^2 $] Tenemos dos coordenadas generalizadas #sinnum[$  q_1 = r\,quad q_2 = theta $] Aplicando la ecuación de Lagrange #sinnum[$  dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = 0 cases(delim: "{", dv( , t ) (pdv( L , dot(r) )) - pdv( L , r ) = 0, , dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) = 0) $]

Para $q_1 = r$ #sinnum[$  dv( , t ) (pdv( L , dot(r) )) - pdv( L , r ) = 0\
m dot.double(r) - m r dot(theta)^2 - m g cos theta + k\(r - r_0\)= 0 $]

Para $q_2 = theta$ #sinnum[$  dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) = 0\
m r^2 dot.double(r) + 2 m r dot(r) dot(theta) + m g r sin theta = 0 $]

Problema: Determinar las ecuaciones del Pendulo

Para un instante $t$ la posición de $m$ es #sinnum[$  x = x_0 + 1 / 2 a t^2 + l sin theta med arrow.r.double med dot(x) = a t + l dot(theta) cos theta\
y = - l cos theta med arrow.r.double med dot(y) = l dot(theta) sin theta $] Su energia cinética #sinnum[$  T = 1 / 2 m\(dot(x)^2 + dot(y)^2\)= m / 2\(a^2 t^2 + l^2 dot(theta)^2 cos^2 theta + 2 a t l dot(theta) cos theta\) $] Su energia potencial #sinnum[$  V = - m g l cos theta $] Su Lagrangiano #sinnum[$  L = T - V = 1 / 2 m\(a^2 t^2 + l^2 dot(theta)^2 cos^2 theta + 2 l a t cos theta dot(theta)\)+ m g l cos theta $] Tenemos una coordenada generalizada $q_1 arrow.r theta$ #sinnum[$  dv( , t ) (pdv( L , dot(theta) )) - pdv( L , theta ) = 0\
dv( theta , t , 2 ) + g / l sin theta + a / l cos theta = 0 $]

=== Potenciales Generalizados
Un potencial generalizado es una función $ U\(q_i\,dot(q)_i\,t\) $ tal que las fuerzas generalizadas se pueden escribir $ Q_k = - pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k )) $ pero por D'Alembert $ dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) = Q_k\,quad Q_k = sum_(i = 1)^n arrow(F)_i pdv( arrow(r)_i , q_k ) $

Si #sinnum[$  Q_k = - pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k )) $] entonces $ dv( , t ) (pdv( T , dot(q)_k )) - pdv( T , q_k ) & = - pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k ))\
dv( , t ) [pdv( , dot(q)_k ) \( T - U \)] - pdv( , q_k )\(T - U\) & = 0 $

Sea $ L = T - U $ entonces $ dv( , t ) [pdv( L , dot(q)_k )] - pdv( L , q_k ) = 0 $

Problema: Particula cargada en un campo electromagnético externo #sinnum[$  arrow(F) = e (arrow(E) + arrow(v) / c times arrow(B)) $] donde $arrow(E)$ y $arrow(B)$ obedecen a las ecuaciones de Maxwell #sinnum[$  underbrace(nabla dot.op arrow(B) = 0, arrow(B) = nabla times arrow(A))\,quad nabla times arrow(E) = - 1 / c pdv( arrow(B) , t ) $]

Así #sinnum[$  nabla times arrow(E) = - 1 / c pdv( , t )\(nabla times arrow(A)\)= - 1 / c nabla times (pdv( , t ) arrow(A)) $] si #sinnum[$  nabla times (arrow(E) + 1 / c pdv( arrow(A) , t )) = 0 $] el cual proviene del gradiente de un potencial escalar. Entonces #sinnum[$  arrow(E) + 1 / c pdv( arrow(A) , t ) = - nabla phi.alt $] Reemplazando nos queda #sinnum[$  arrow(F) = e [- nabla phi.alt - 1 / c pdv( arrow(A) , t ) + 1 / c arrow(v) times \( nabla times arrow(A) \)] $]

Sean $\(x\,y\,z\)$ coordenadas generalizadas, nuestro objetivo es demostrar que $arrow(F)$ admite un potencial generalizado. Sea #sinnum[$  phi.alt = phi.alt\(arrow(r)\,t\)\,quad arrow(r) =\(x\,y\,z\)\,quad arrow(A) = arrow(A)\(arrow(r)\,t\) $] su derivada total de $arrow(A)$ #sinnum[$  dv( arrow(A) , t ) & = pdv( arrow(A) , x ) dv( x , t ) + pdv( arrow(A) , y ) dv( y , t ) + pdv( arrow(A) , z ) dv( z , t ) + dv( arrow(A) , t )\
 & =\(arrow(v) dot.op nabla\)arrow(A) + dv( arrow(A) , t ) $]

Sabemos #sinnum[$  nabla = pdv( , x ) hat(i) + pdv( , y ) hat(j) + pdv( , z ) hat(k) $] definimos: #sinnum[$  nabla_v = pdv( , dot(x) ) hat(i) + pdv( , dot(y) ) hat(j) + pdv( , dot(z) ) hat(k) $]

Entonces #sinnum[$  arrow(F) = e [- nabla phi.alt - 1 / c pdv( arrow(A) , t ) + 1 / c arrow(v) times \( nabla times arrow(A) \)] $] el $arrow(A)$ se puede escribir #sinnum[$  arrow(A) = nabla_v\(arrow(v) dot.op arrow(A)\) $] donde $arrow(A)$ no depende de velocidades. Así #sinnum[$  arrow(F) = e [- nabla phi.alt + 1 / c dv( , t ) nabla_v \( arrow(v) dot.op arrow(A) \) + 1 / c \( arrow(v) dot.op nabla \) arrow(A) + 1 / c arrow(v) times \( nabla times arrow(A) \)] $]

Usando #sinnum[$  nabla\(arrow(a) dot.op arrow(b) =\(arrow(a) dot.op nabla\)arrow(b) +\(arrow(b) dot.op nabla\)arrow(a) + arrow(a) times\(nabla times arrow(b)\)+ arrow(b) times\(nabla times arrow(a)\) $] haciendo #sinnum[$  arrow(a) equiv arrow(v)\,quad arrow(b) equiv arrow(A)\,med nabla arrow.r upright("no actua sobre ") v $] entonces #sinnum[$  nabla\(arrow(v) dot.op arrow(A)\)=\(arrow(v) dot.op nabla\)arrow(A) + arrow(v) times\(nabla times arrow(A)\) $]

Así #sinnum[$  arrow(F) = e [- nabla phi.alt + 1 / c nabla \( arrow(v) dot.op arrow(A) \) - 1 / c dv( , t ) nabla_v \( arrow(v) dot.op arrow(A) \)] $] donde #sinnum[$  - nabla phi.alt + 1 / c nabla\(arrow(v) dot.op arrow(A)\)= - nabla (phi.alt - 1 / c arrow(v) dot.op arrow(A))\
1 / c dv( , t ) nabla_v\(arrow(v) dot.op arrow(A)\)= dv( , t ) nabla_v (phi.alt - 1 / c arrow(v) dot.op arrow(A)) $] notamos que $- nabla (phi.alt - 1 / c arrow(v) dot.op arrow(A))$ tiene la forma de #sinnum[$  Q_k = - pdv( u , q_k ) + dv( , t ) (pdv( u , dot(q)_k )) $] definiendo el potencial generalizado para una partícula intensa en un campo electromagnético #sinnum[$  u = e phi.alt - e / c arrow(v) dot.op arrow(A) $]

Resultando así #sinnum[$  arrow(F) = - nabla u - dv( , t )\(nabla_v arrow(v)\) $]

Así la lagrangiana de una partícula en un campo electromagnético externo es #sinnum[$  L = frac(m v^2, 2) - e phi.alt + e / c arrow(v) dot.op arrow(A) $]

=== Función de Disipación de Rayleigh
Partiendo de la fuerza generalizada $ Q_k = dv( , t ) (pdv( T , dot(q)_k )) - dv( T , q_k ) $

Si $ Q_k = - pdv( U , q_k ) + dv( , t ) (pdv( U , dot(q)_k )) + Q'_k\,quad U = U\(q\,dot(q)\,t\) $

Reemplazando en la primera ecuación $ dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) = Q'_k\,med upright("con") med L = T - U $

Suponiendo que las fuerzas disipativas sean de la forma $ F'_(i x) = - k_(i x) v_(i x)\,quad F'_(i y) = - k_(i y) v_(i y)\,quad F'_(i z) = - k_(i z) v_(i z) $

Sea la fuerza de Rayleigh $ cal(F) = 1 / 2 sum_(i = 1)^N (k_(i x) v_(i x)^2 + k_(i y) v_(i y)^2 + k_(i z) v_(i z)^2) $ tal que $ arrow(F)'_(i x) = - pdv( cal(F) , v_(i x) )\,quad arrow(F)'_(i y) = - pdv( cal(F) , v_(i y) )\,quad arrow(F)'_(i z) = - pdv( cal(F) , v_(i z) ) $ recordando que: #sinnum[$  Q'_k & = sum_(i = 1)^N arrow(F)'_i dot.op pdv( arrow(r)_i , q_k )\
 & = sum_(i = 1)^N arrow(F)'_i pdv( arrow(v)_i , dot(q)_k ) $]

En componentes $ Q'_k & = sum (F'_(i x) pdv( v_(i x) , q_k ) + F'_(i y) pdv( v_(i y) , q_k ) + F'_(i z) pdv( v_(i z) , dot(q)_k ))\
 & = sum (pdv( cal(F) , v_(i x) ) pdv( v_(i x) , q_k ) + pdv( cal(F) , v_(i y) ) pdv( v_(i y) , q_k ) + pdv( cal(F) , v_(i z) ) pdv( v_(i z) , dot(q)_k )) = - pdv( cal(F) , dot(q)_k ) $

Por tanto las ecuaciones de movimiento quedan $ dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) + pdv( cal(F) , dot(q)_k ) = 0 $ considerando

Ejemplo: Pendulo simple con resistencia al aire

Para un pendulo simple tenemos el Lagrangiano #sinnum[$  L = frac(m l^2, 2) dot(theta)^2 + m g l cos theta $] y también #sinnum[$  cal(F) = 1 / 2\(k_x v_x^2 + k_y v_y^2\)= k / 2 underbrace(\(v_x^2 + v_y^2\), l dot(theta)^2) $] considerando $k_x = k_y = k$, entonces tenemos #sinnum[$  cal(F) = frac(k l^2, 2) dot(theta)^2 $]

La ecuación del movimiento del péndulo viene dada por #sinnum[$  dv( , t ) (pdv( L , dot(q)_k )) - pdv( L , q_k ) + pdv( cal(F) , dot(q)_k ) = 0 $]

Desarrollando obtenemos #sinnum[$  dv( , t ) (pdv( , dot(theta) ) (frac(m l^2, 2) dot(theta)^2 + m g l cos theta)) & - pdv( , theta ) (frac(m l^2, 2) dot(theta)^2 + m g l cos theta) + pdv( , dot(theta) ) (frac(k l^2, 2) dot(theta)^2) = 0\
 & dv( , t )\(m l^2 dot(theta)\)+ m g l sin theta + k l^2 dot(theta) = 0\
 & m l^2 dot.double(theta) + k l^2 dot(theta) + m g l sin theta = 0\
 & enmarcado( dot.double(theta) + k / m dot(theta) + g / l sin theta = 0 ) $]

Problemas

1.- Hallar los extremales del funcional #sinnum[$  J = integral_(x_1)^(x_2)\(y' ""^2 + y^2 + 2 y e^x\)upright(d) x $]

Solución:

Sabemos: #sinnum[$  J = integral f\(y\,dot(y)\,x\)upright(d) x $] entonces #sinnum[$  f = y' ""^2 + y^2 + 2 y e^x $]

Los extremales de una funcional se obtienen de la ecuación #sinnum[$  pdv( f , y ) - dv( , x ) (pdv( f , y' )) = 0 $]

Se obtiene #sinnum[$  y + e^x - y^2 = 0\
dv( y , x , 2 ) + y = e^x $] Así #sinnum[$  y = c_1 e^x + c_2 e^(- x) + 1 / 2 x e^x $]

2.- Hallar el extremal de la funcional #sinnum[$  J = integral_1^2 frac(y' ""^2, 4 x) upright(d) x $] que satisfaga la condición $y\(1\)= 5$ y $y\(2\)= 11$. ¿La extremal encontrada es máxima o mínima?

Solución:

Tenemos que #sinnum[$  f = frac(y' ""^2, 4 x) $] usando Euler #sinnum[$  pdv( , y ) (pdv( y' ""^2 , 4 x )) - dv( , x ) (pdv( , y' ) (frac(y' ""^2, 4 x))) = 0 $] Así tenemos #sinnum[$  dv( , x ) (y' / x) = 0 med arrow.r med y' = c_1 x $] obtenemos #sinnum[$  y = c_1 x^2 + c_2 $]

Utilizando las condiciones, obtenemos #sinnum[$  y = 2 x^2 + 3 $]

#heading(level: 2, numbering: none)[Problemas]
1.- Indicar si la siguiente ecuación de ligadura es holónoma o no-holónoma. #sinnum[$  f\(x\,y\)= (3 x sin y + y^2 / x + 2) upright(d) x +\(x^2 cos y + 2 y\)upright(d) y = 0 $]

2.- Indicar si la siguiente ecuación de ligadura es holónoma o no-holónoma. #sinnum[$  f\(q_1\,q_2\,dot(q)_1\,dot(q)_2\)=\(3 q_1^2 + 2 q_2^2\)dot(q)_1 + 4 q_1 q_2 dot(q)_2 = 0 $]

3.- Haciendo uso del principio de D'Alembert determine la ecuación de un péndulo de masa $m$ y longitud $l$.

4.- Una escalera AB de longitud $l$ y masa $m$ tiene sus extremos apoyados sobre uuna pared vertical y sobre el piso, como se muestra en la gura. El pie de la escalera esta sujeta mediante una cuerda indeformable de peso pespreciable al punto $C$ de la pared. Haciendo uso del principio del trabajo virtual calcule la tensión de la cuerda.

5.- Una esferita de masa m esta ensartada en un alambre parabolico cuya ecuación es $y = 2 a x^2$ y gira con velocidad constante $w$ alrededor de su eje vertical de simetría. Usando el principio del trabajo virtual demuestr que el valor de $w$ para que la esferita este en la posicion de equilibrio en cualquier posición es $w = sqrt(2 a g)$.

6.- La figura muestra a una partícula de masa m moviendose en el interior de un cono invertido liso. Obtener para este sistema:

+ Las ligaduras presentes.

+ El número de grados de libertad y el número m+ínimo de coordenadas generalizadas necesarias para jar la conguración del sistema.

+ Las coordenadas generalizadas propias, asi como la expresion de las coordenas cartesianas en funcion de ellas ( las ecuaciones de transformación).

7.- Dos masas están conectadas através de una cuerda de longitud $L$. Una masa está colocada en una mesa donde puede moverse sin rozamiento y la otra cuelga de la cuerda que pasa por un agujero en la mesa y solo puede moverse verticalmente, como se indica en la figura.

+ Calcule el lagrangiano del sistema.

+ Determine las ecuaciones de movimiento del sistema.

8.- Una partícula de masa m se mueve por una trayectoria helicoidal dada por las ecuaciones $rho = a z$ y $phi = - b z$ en un campo gravitatorio. Hallar

+ La lagrangiana.

+ Las ecuaciones del movimiento.

9.- En un sistema dinámico con dos grados de libertad, la energía cinética es #sinnum[$  T = frac(dot(q)_1^2, 2\(a + b q_2\)) + 1 / 2 q_2^2 dot(q)_2^2 $] y la energía potencial es $V = c + q_2 d$, donde $a\,b\,c\,d$ son constantes. \ Demostrar que el valor de $q_2$ como función del tiempo está dado por una ecuación de la forma #sinnum[$ \(q_2 - k\)\(q_2 + 2 k\)^2 = h\(t - t_0\)^2 $] donde $h\,k\,t_0$ son constantes.

10.- Considere el sistema de la figura, donde la masa $m_1 = 20 k g$ está obligada a moverse verticalmente según el eje $y$, mientras que $m_2 = 1 k g$ está obligada a moverse según el eje $x$, ambas bajo la acción de dos resortes de constantes elásticas $k_1 = 4 N\/m$ y $k_2 = 16 N\/m$, además de la gravedad(considere la longitud en reposo de los muelles nula).

+ Calcule la lagrangiana del sistema.

+ Obtenga las ecuaciones del movimiento para las masas.

+ Obtenga la solución general de las mismas y la posición de equilibrio.

11.- Considere una partícula restringida a moverse sobre la supercie de una esfera de radio $R$ en un campo gravitacional constante. Escriba las ecuaciones de movimiento de la partícula.

12.- Demostrar que

+ $dv( , t ) (pdv( r_v , q_alpha )) = pdv( dot(r)_v , q_alpha )$.

+ Demostrar que si las ecuaciones de transformación son $r_alpha = r_alpha\(q_1\,dots.h.c\,q_n\)$, entonces la energía cinética puede escribirse como #sinnum[$  T = sum_(alpha\,beta = 1)^n a_(alpha beta) dot(q)_alpha dot(q)_beta $] donde $a_(alpha beta)$ son funciones de las $q_alpha$.

13.- Una partícula de masa $m$ en una plano horizontal está unida a un punto fijo $P$ por medio de una cuerda de longitud $l$. El plano rota con velocidad angular constante $w$ alrededor de un eje vertical que pasa por un punto $O$ del plano, donde $O P = a$.

+ Establecer la lagrangiana del sistema.

+ Escribir las ecuaciones del movimiento de la partícula.
