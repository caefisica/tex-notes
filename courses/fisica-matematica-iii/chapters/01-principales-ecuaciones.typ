#import "/lib/notes.typ": *

= Principales Ecuaciones de la Física Matemática
Las ecuaciones que con frecuencia se obtienen al resolver problemas de física son ecuaciones diferenciales en derivadas parciales de 2do orden, de la siguiente forma:

$ a_11 u_(x x) + 2 a_12 u_(x y) + a_22 u_(y y) + F\(x\,y\,u\,u_x\,u_y\)= 0 $

donde $a_11\,a_12\,a_22$ son funciones de $cases(delim: "{", x\,y & - med upright("ecuación lineal") ., x\,y\,u & - med upright("semi lineal") .)$ \ Considerando que $u = u\(x\,y\)$ es nuestra función incógnita y sus derivadas son: $ u_x = pdv( u , x )\,quad u_y = pdv( u , y )\,quad u_(x x) = pdv( u , x , 2 )\,quad u_(x y) = pdv( u , x , y )\,quad u_(y y) = pdv( u , y , 2 ) $ Según los valores que tomen $a_11\,a_12\,a_22$ las ecuaciones serán del tipo:

- #strong[Hiperbólico]

- #strong[Parabólico]

- #strong[Elíptico]

Los principales tipos de ecuaciones son:

+ Ecuación de onda $cases(delim: "{", - upright("Vibraciones mecánicas pequeñas."), - upright("En cuerdas, barras."), - upright("Gases, líquidos, etc."), - upright("Oscilaciones eléctricas."))$

+ Ecuación de calor $cases(delim: "{", - upright("Transmisión de calor."), - upright("Difusión y el movimiento de un fluido viscoso."))$

+ Ecuación de Helmholtz $cases(delim: "{", - upright("Describes las ondas armónicas."))$

+ Ecuaciones estacionarias $cases(delim: "{", - upright("Ecuación de Laplace."), - upright("Ecuación de Poisson."))$

En adelante consideraremos: $ C\(x\)gt.eq C_o = upright("cte") > 0\,K\(x\)gt.eq K_o = upright("cte") > 0\
rho\(x\)gt.eq rho_o = upright("cte") > 0 $

#heading(level: 2, numbering: none)[Ecuación de onda]
$ rho\(x\)pdv( u , t , 2 ) - div  (K \( x \) grad  u) + q\(x\,t\)u = F\(x\,t\) $<1eq4> Donde:

- $rho\(x\)$ es la densidad.

- $pdv( u , t , 2 )$ es la función incógnita.

- $K\(x\)$ son las propiedades elásticas.

- $q\(x\,t\)$ es la resistencia del medio.

- $F\(x\,t\)$ es la fuerza externa.

De modo que $x =\(x_1\,dots.h.c\,x_n\)in bb(R)^n$ y $rho\(x\)\,K\(x\)\,q\(x\,t\)$ y $F\(x\,t\)$ son funciones definidas. Para el caso unidimensional tenemos: $ rho\(x\)pdv( u , t , 2 ) - pdv( , x ) (K \( x \) pdv( u , x )) + q\(x\,t\)u = F\(x\,t\) $ Si $F\(x\,t\)= 0$, entonces #ref(<1eq4>) se denomina #strong[homogénea]. \ En $n$ dimensiones tenemos: $ div  K\(x\)grad  u = sum_(m = 1)^n pdv( , x_m ) (K \( x \) pdv( u , x_m )) $ Si $K = K_o = upright("cte")$: $ div  K_o grad  u = K_o sum_(m = 1)^n pdv( u , x_m , 2 ) = K_o nabla^2 u $ #sinnum[$  nabla^2 u = sum_(m = 1)^n pdv( u , x_m , 2 ) = pdv( u , x_1 , 2 ) + pdv( u , x_2 , 2 ) + dots.h.c + pdv( u , x_m , 2 ) $] El caso más sencillo es cuando $rho\(x\)= rho_o = upright("cte") > 0$, $K\(x\)= K_o = upright("cte") > 0$, $K_o / rho_o = a^2 = upright("cte") > 0$, $q = 0$. $ pdv( u , t , 2 ) - a^2 nabla^2 u = f\(x\,t\)\,quad x =\(x_1\,x_2\,dots.h.c\,x_n\)\
f\(x\,t\)= frac(F\(x\,t\), rho_o) $

#heading(level: 2, numbering: none)[Ecuación de conducción térmica]
$ C\(x\)rho\(x\)pdv( u , t ) - div \(K\(x\)grad  u\) = F\(x\,t\) $ Donde:

- $C\(x\)$ es el calor especifico.

- $rho\(x\)$ es la densidad.

- $pdv( u , t )$ es la incógnita.

- $K\(x\)$ es el coeficiente de conducción.

- $F\(x\,t\)$ son las fuentes de calor.

De modo que $x =\(x_1\,dots.h.c\,x_n\)in bb(R)^n$ y $rho\(x\)\,K\(x\)\,C\(x\)$ y $F\(x\,t\)$ son funciones definidas. \ El caso mas sencillo es cuando $rho\(x\)= rho_o = upright("cte") > 0$, $K\(x\)= K_o = upright("cte") > 0$, $C\(x\)= C_o = upright("cte") > 0$, $frac(K_o, C_o rho_o) = a^2 = upright("cte") > 0$. $ pdv( u , t ) - a^2 nabla^2 u = f\(x\,t\)\,quad x =\(x_1\,x_2\,dots.h.c\,x_n\)\
pdv( u , t ) - a^2 pdv( u , x , 2 ) = f\(x\,t\)\,quad n = 1\
f\(x\,t\)= frac(F\(x\,t\), C_o rho_o) $

#heading(level: 2, numbering: none)[Ecuación Estacionaria]
$ u = u\(x\)\
div \(K\(x\)grad  u + q\(x\)u = F\(x\)\
x =\(x_1\,x_2\,dots.h.c\,x_n\) $ El caso mas sencillo es cuando $q\(x\)= 0$, $K\(x\)= K_o = upright("cte") > 0$. #sinnum[$  nabla^2 u = f\(x\)quad upright("(Ec. de Poisson)")\
f\(x\)= frac(F\(x\), K_o) $]

#heading(level: 2, numbering: none)[Ecuación de Helmholtz]
Si en: $ pdv( u , t , 2 ) - a^2 pdv( u , x , 2 ) = f\(x\,t\) $ la perturbación externa es periódica $ f\(x\,t\)= a^2 f\(x\)e^(i omega t) $ entonces, podemos buscar la solución de la forma: $ u\(x\,t\)= u\(x\)e^(i omega t) $ Al reemplazar se obtiene: $ nabla^2 u + K^2 u = - f\(x\)\,quad K^2 = omega^2 / a^2 $

== Modelos Mecánicos
+ #strong[Oscilaciones longitudinales pequeñas en una barra delgada] \ Se tiene una barra delgada. La cual es lo suficientemente delgada, su sección transversal no cambia su forma en el proceso de movimiento y se mantiene transversal al eje $cal(O)_x$.

  \ Se tiene una barra delgada sujeta rígidamente en el extremo $cal(O)$ y elásticamente en el extremo $ell$. \ En $t = 0$ sobre la barra actúan fuerzas con densidad volumétrica $F\(x\,t\)hat(e)_x$. Hallar la ecuación de las oscilaciones. \ #strong[Solución:] \

  - $x =$ coordenada inicial en $t = 0$.

  - $xi\(x\,t\)=$ coordenada de la sección $X$ en $t > 0$.

  \ El movimiento de la barra se determina por: $ u\(x\,t\)= xi\(x\,t\)- X\,quad\(t gt.eq 0\) $ El elemento $Delta x$ se encuentra en equilibrio estático, aplicamos la #strong[ley de Hooke]. $ frac(Delta xi - Delta x, Delta x) = frac(T\(x + Delta x\,t\), E S) = frac(Delta xi, Delta x) - 1 $ Para $Delta x arrow.r 0$: $ T\(x\,t\)= E\(x\)S\(x\)(pdv( xi , x ) - 1) arrow.r med T\(x\,t\)= E\(x\)S\(x\)u_x\(x\,t\) $ La condición de oscilación pequeña implica: $ \|Delta xi - Delta x\|lt.double Delta x $ O, en forma diferencial $\|u_x\|lt.double 1$. \ Si $Delta x$ se mueve, entonces según la $2^(d a)$ ley de Newton: $ Delta x rho\(x\)S\(x\)u_(t t) = T\(x + Delta x\,t\)- T\(x\,t\)+ F S Delta xi $ Dado que $T\(x + Delta x\,t\)- T\(x\,t\)= T_x Delta x$, $xi_x = 1 + u_x approx 1$. \ Entonces, para $Delta x arrow.r 0$ se tiene: $ rho\(x\)S\(x\)u_(t t) = pdv( T\(x\,t\), x ) + F\(x\,t\)S\(x\)\
  rho\(x\)S\(x\)u_(t t) = pdv( , x ) (E \( x \) S \( x \) pdv( u , x )) + F\(x\,t\)S\(x\) $ Si la barra es homogénea $\(rho\,E\,S\)$, la ecuación de las oscilaciones es: \ $ u_(t t) = a^2 u_(x x) + f $ $ a^2 = E / S\,quad f = F / P $

  $ T\(x\,t\)= E\(x\)S\(x\)u_x\(x\,t\) $ $ rho\(x\)S\(x\)u_(t t) = T\(x + Delta x\,t\)- T\(x\,t\)+ F S Delta xi $

  \

  #heading(level: 3, numbering: none)[Planteamiento del Problema]
  En $x = 0$, tenemos que $u\(0\,t\)= 0$

  \ Para cuando $x = ell$, tenemos: $ E S u_x\(ell - Delta x\,t\)- K u\(ell\,t\)+ F S Delta xi = rho S Delta x u_(t t) $ Para $Delta x arrow.r 0$, tenemos: $ u_x\(ell\,t\)+ h u\(ell\,t\)= 0\,med h = frac(K, E\(ell S\(ell\)) $ Si seguimos con las condiciones iniciales: #sinnum[$  u\(x\,0\)= 0\,med u_t\(x\,0\)= 0 $] Por lo tanto el problema planteado es: #sinnum[$  cases(delim: "{", rho S u_(t t) = pdv( , x ) (E S pdv( u , x )) + E S\;med 0 < x < ell\,med t > 0, , u\(0\,t\)= 0\,med u_x\(ell\,t\)+ h u\(ell\,t\)= 0, , u\(x\,0\)= u_t\(x\,0\)= 0) $]

== Modelos Térmicos
+ En la región $cal(D)$ se encuentra una sustancia, con capacidad calorífica $C\(M\)$, densidad $rho\(M\)$ y coeficiente de conducción térmica $K\(M\)$. \ Sea $u\(M\,t\)$ la temperatura en el punto $M$ y en el instante $t$.

  \ Escribamos la ecuación de variación de la energía interna: $ Q & = integral_(Delta V) C\(M\)rho\(M\)[u \( M \, t + Delta t \) - u \( M \, t \)] Delta V\
   & = integral_(Delta V) C\(M\)rho\(M\)[integral_t^(t + Delta t) u_t \( M \, t \) d t] d V\
   & = integral_t^(t + Delta t) C\(M\)rho\(M\)u_t\(M\,t\)d V $ El flujo de calor se rige por la Ley de Fourier: $ arrow(phi.alt)\(M\,t\)= - K\(M\)nabla u\(M\,t\) $ Entonces: $ Q_1 & = integral_t^(t + Delta t) d t integral_sigma arrow(phi.alt)\(M\,t\)dot.op arrow(upright(bold(r))) d S\
   & = integral_t^(t + Delta t) d t integral_(Delta V) div  arrow(phi.alt)\(M\,t\) d V\
   & = - integral_t^(t + Delta t) d t integral_(Delta V) div  K\(M\)nabla u\(M\,t\) d V $ Si en $Delta V$ hay fuentes o sumideros: $ Q_2 = integral_t^(t + Delta t) d t integral_(Delta V) F\(M\,t\)d V $ donde $F\(M\,t\)$ es la potencia especifica de la fuente de calor. \ Finalmente: $ Q & = Q_2 - Q_1\
  integral_t^(t + Delta t) d t integral_(d V) C\(M\)rho\(M\)u_t\(M\,t\)d V & = integral_t^(t + Delta t) d t integral_(Delta V) F\(M\,t\)d V + integral_t^(t + Delta t) d t integral_(Delta V)\(div  K\(M\)nabla u\(M\,t\)\)d V $ $ integral_t^(t + Delta t) d t integral_(d V) [C \( M \) rho \( M \) u_t \( M \, t \) - F \( M \, t \) - \( div  K\(M\)nabla u\(M\,t\) \)] d V = 0 $ Usamos el teorema del valor medio: $ integral_t^(t + Delta t) d t integral_(d V) [C \( M \) rho \( M \) u_t \( M \, t \) - F \( M \, t \) - div  \[K\(M\)nabla u\(M\,t\)\]] d V =\
  = [C \( M^(*) \) rho \( M^(*) \) u_t \( M^(*) \, t^(*) \) - F \( M^(*) \, t^(*) \) - div  \[K\(M^(*)\)nabla u\(M^(*)\,t^(*)\)\]] Delta t Delta V = 0 $ donde $M^(*) in nabla V$, $t^(*) in\(t\,t + Delta t\)$ #sinnum[$  upright("Sí") & Delta V arrow.r 0 med arrow.r med M^(*) arrow.r M\
  upright("Y") & Delta t arrow.r 0 med arrow.r med t^(*) arrow.r t $] $ C\(M\)rho\(M\)u_t\(M\,t\)- F\(M\,t\)- div \[K\(M\)grad  U\(M\,t\)\] $ Si $C = c t e\,rho = c t e\,K = c t e$, entonces: $ u_t & = frac(K, C rho) nabla^2 u + frac(F\(M\,t\), C rho)\
  u_t & = a^2 nabla^2 u + f\(M\,t\) $ donde $frac(K, C rho) = a^2$, $frac(F\(M\,t\), C rho) = f\(M\,t\)$.

  #heading(level: 3, numbering: none)[Observaciones]
  + La ecuación de conducción térmica es valida para cualquier $M in Delta V$, en cualquier instante de tiempo.

  + Si la distribución de temperatura es estacionaria, es decir $u = u\(M\)\,f = f\(M\)$, se obtiene la ecuación de Poisson: #sinnum[$  nabla^2 u = - frac(f\(M\), a^2) $]

  + Si $f = 0$, entonces $nabla^2 u = 0$.

  #heading(level: 3, numbering: none)[Condiciones Iniciales]
  La temperatura estará definida en cada punto de la región $cal(D)$ en el momento inicial $t = 0$: $ u\|_(t = 0) = phi\(M\) $

  #heading(level: 3, numbering: none)[Condiciones de Frontera]
  - Condición de $1^(upright("er"))$ genero o condición de Dirichlet: $ u\|_s = mu\(P\,t\) $ Nos da el valor de la temperatura en cada punto $P$ de la frontera, para cada instante de tiempo.

  - Condición de $2^(upright("do"))$ genero o condición de Neumann: $ pdv( u , n )\|_s = cal(V)\(P\,t\)\
    (- K pdv( u , n ))\|_s = - K cal(V)\(P\,t\) $ donde $phi.alt_n\|_s = - K cal(V)\(P\,t\)$, y de este modo se conoce el flujo de calor a través de la frontera.

  - Condición de frontera de $3^(upright("er"))$ genero o condición de Robin: $ (pdv( u , n ) + h \( P \) u)\|_s = eta\(P\,t\) $

    Según la ley de Newton #sinnum[$  phi.alt_0 = alpha\(u - u_0\) $] donde $alpha$ es el coeficiente de intercambio termodinámico. El flujo $phi.alt_0$ debe ser igual a $phi.alt_n\|_s$ #sinnum[$  - K pdv( u , n )\|_s = alpha\(u - u_0\)\
    (pdv( u , n ) + alpha / K u)\|_s = alpha / K u_0 $]

    \ donde $h\(P\)= frac(alpha\(P\), K)$ y $eta\(rho\,t\)= frac(alpha\(P\), K) u_0\(P\,t\)$

  #heading(level: 3, numbering: none)[Observaciones]
  + Si $alpha arrow.r 0$ se obtiene $pdv( u , n )\|_s = 0$, la condición homogénea de Neumann, que implica que no hay intercambio térmico.

  + Si $alpha arrow.r oo$ se obtiene $u\|_s = u_0$, la condición de Dirichlet y fisicamente significa que se tiene un contacto ideal.

  + El coeficiente $h\(P\)= alpha / K$ es no negativo.

  El problema será: #sinnum[$  cases(delim: "{", C\(M\)rho\(M\)u_t\(M\,t\)- F\(M\,t\)- div \[K\(M\)grad  u\(M\,t\)\] = 0, , u\|_t = phi_0\,M subset cal(D), , upright("y la condición de frontera correspondiente ")\(a\,b\,c\)) $]

== Modelos de Electrodinámica
+ Se tiene una linea de conducción eléctrica, caracterizada por:

  - $R$ - Resistencia por unidad de longitud.

  - $L$ - Inductancia por unidad de longitud.

  - $C$ - Capacidad eléctrica (respecto a tierra).

  - $G$ - Coeficiente de perdida (cantidad de carga que fluye hacia la tierra debido a la diferencia de potenciales entre la línea de conducción y la tierra).

  \ Tipos de líneas

  - #strong[Cable], donde se cumple que $L = G = 0$.

  - #strong[Lineas sin perdida], donde se cumple que $R = G = 0$.

  - #strong[Lineas sin distorsión], donde se cumple que $R C = L G$. Las ondas se propagan a lo largo de la linea sin cambiar su forma.

  Plantear el problema para el potencial y la corriente en una linea $\(0 < x < ell\)$ sin distorsión si en $x = 0$, en el instante $t = 0$ se conecta una f.e.m $E\(t\)$ y el extremo $x = ell$ está conectado a tierra.
