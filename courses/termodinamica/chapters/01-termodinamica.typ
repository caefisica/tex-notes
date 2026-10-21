#import "/lib/notes.typ": *

= Ecuaciones de Estado
Las ecuaciones de estado modelan el comportamiento de una sustancia y se pueden representar de la siguiente manera: $ f\(p\,V\,T\)= 0 $ donde:

- $p$ es la presión.

- $V$ es el volumen.

- $T$ es la temperatura.

== Ecuación de estado térmica
Partiendo de la ley de gas ideal: $ p = frac(n R T, V) $ la cual podemos expresar de la siguiente forma: $ p V = n R T $ la cual es conocida como #strong[ecuación de Clapeyron-Mendeleiev]. Donde: $ n = m / M = upright("masa de la sustancia") / upright("masa molar") $

== Ecuación de estado calórica
La ecuación de estado calórica se expresa de la siguiente forma: $ U = U_0 + C_v\(T - T_0\) $ esta ecuación se demostrará mas adelante.

- $U$ es la energía interna.

- $C_v$ es la capacidad calorífica a $V = c t e$.

#heading(level: 2, numbering: none)[Procesos Termodinámicos]
- Isotérmico ($T = c t e$).

- Isobárico ($p = c t e$).

- Isocórico ($V = c t e$).

- Politrópico ($C = c t e$).

- Adiabático $(C = frac(delta Q, d T) = 0)$.

== Proceso Isotérmico (T=cte)
#box(image("../figures/isotermico.png", width: 100.0%, alt: "image"))

Considerando la ec. de Clapeyron-Mendeleiev y que $T = c t e$, tenemos que $n R T = c_1$. #sinnum[$  p V = n R T = c_1 $] De modo que: $ p V = c_1 arrow.r p = c_1 / V = p\(V\) $ donde $c_1 = n R T$.

== Proceso Isobárico (p=cte)
#box(image("../figures/isobara.png", width: 100.0%, alt: "image"))

Partiendo de la ec. de Clapeyron-Mendeleiev, como $p = c t e$ entonces: #sinnum[$  p V = n R T arrow.r V = frac(n R T, p) $] donde $frac(n R, p) = c t e = c_2$, entonces: #sinnum[$  V = frac(n R T, p) = c_2 T = V = f\(T\) $]

== Proceso Isocórico
#box(image("../figures/isocora.png", width: 100.0%, alt: "image"))

Partiendo de la ec. de Clapeyron-Mendeleiev, como $V = c t e$ entonces: #sinnum[$  p V = n R T arrow.r p = frac(n R T, V) $] donde $frac(n R, V) = c t e = c_3$, entonces: #sinnum[$  p = frac(n R T, V) = c_3 T = f\(T\) $]

= Energía interna
Vamos a definir la función de estado llamada energía interna la cual va a depender de la temperatura y el volumen(para un sistema cerrado): $ U = U\(T\,V\) $ Para un sistema abierto la energía interna dependerá también de $N$ la cual significa el número de componentes del sistema: $ U = U\(T\,V\,N\) $ Calculamos la evolución energetica del sistema hallando la diferencial de $U$: $ d U & = (pdv( U , T ))_V d T + (pdv( U , V ))_T d V\
d U & = alpha\(T\)d T + beta\(V\)d V $ #strong[Observación:] $ enmarcado( integral d U = integral_(T_0)^T alpha\(T\)d T + integral_(V_0)^V beta\(V\)d V ) $

== Trabajo calorífico elemental
Tenemos que el trabajo calorifico puede ser expresado como: $ delta W & = sum_(i = 1)^ell A_i d a_i\
delta W & = A_1 d a_1 + dots.h.c + A_ell d a_ell $ donde:

- $a_i$ es la i-ésima coordenada generalizada.

- $A_u$ es la i-ésima fuerza generalizada.

- $ell$ son los grados de libertad

Otra forma de expresarlo es: $ delta W = upright(bold(F)) dot.op d upright(bold(r)) = p d V $ Expresado en su forma integral: $ W = integral delta W = integral_(V_0)^V p d V $

#box(image("../figures/diagram-20230116.png", width: 58.0%, alt: "image"))

= Primera ley de la termodinámica
Conservación de la energía calorífica: $ Q = U_2 - U_1 + W\
delta Q = d U + delta W $ Si $delta W = p d V$, entonces: $ delta Q = d U + p d V $ la cual es la forma diferencial de la Primera ley de la termodinámica. $ delta Q = (pdv( U , T ))_V d T + [(pdv( U , V ))_T + p] d V $ donde por la #strong[Ley de Joule] se cumple para el gas ideal que: $ (pdv( U , V ))_T = 0 $

== Funciones termodinámicas
#strong[Función de proceso:] Dependen solo del camino recorrido. (Trabajo, calor,etc) $ V_(1 arrow.r 2) = integral_(1 arrow.r 2) d V $ #strong[Función de estado:] Dependen del estado inicial y final. (Entropia, Entalpia,etc) $ integral_(\(1 - 2\)) d mu = integral_1^2 d mu = mu_2 - mu_1 = mu_(\(2\)) - mu_(\(1\)) $

== Aplicación de la primera ley de la Termodinámica
Primera definición de las capacidades caloríficas:

$ C = frac(delta Q, d T) $ Si $V = c t e$: $ C_v =\[C\]_v $ Si $p = c t e$: $ C_p =\[C\]_p $

+ Para $C = C_v$, donde el volumen es constante y $d V = 0$: \ Si $U = U\(T\,V\)$: $ delta Q & = (pdv( U , T ))_V d T + (pdv( U , V ))_T d V + p d V\
  delta Q & = (pdv( U , T ))_V d T + [(pdv( U , V ))_T + p] d V $<ec30> Si $C = C_v$, donde el volumen es constante. Sabemos que la capacidad calorífica esta definida de forma general como: $ C = frac(d Q, d T) $<ec31> Y para el volumen constante reemplazamos #ref(<ec30>) en #ref(<ec31>): $ C_v & = [frac((pdv( U , T ))_V d T + [(pdv( U , V ))_T + p] d V, d T)]_V\
  C_v & = (pdv( U , T ))_V frac(d T, d T) + [(pdv( U , V ))_T + p] underbrace(frac(d V, d T), 0)\
  C_v & = (pdv( U , T ))_V frac(d T, d T) = (pdv( U , T ))_V $

+ Calcular $U$ si se tiene $C_v$ donde $d V = 0$: Si obtenemos la derivada total de la energía interna donde $U = U\(T\,V\)$, obtenemos: $ d U = (pdv( U , T ))_V d T + (pdv( U , V ))_T d V $ Como el volumen es constante, entonces $d V = 0$, quedándonos así: $ d U = (pdv( U , T ))_V d T $ Pero sabemos que la capacidad calorífica a volumen constante esta definida como: $ C_v = (pdv( U , T ))_V d T $ Reemplazamos e integramos: #sinnum[$  d U & = C_v d T\
  integral_(U_0)^U d U & = integral_(T_0)^T C_v d T\
  U - U_0 & = integral_(T_0)^T C_v d T\
  U & = U_0 + integral_(T_0)^T C_v d T $]

+ Calcular $C = C_p$ donde la presión es constante y $d p = 0$: \ Si $U = U\(T\,V\)$: $ delta Q & = (pdv( U , T ))_V d T + (pdv( U , V ))_T d V + p d V\
  delta Q & = (pdv( U , T ))_V d T + [(pdv( U , V ))_T + p] d V $<ec36> Si $C_p$ esta definido como: $ C_p = [frac(delta Q, d T)]_p $<ec37> Reemplazamos #ref(<ec36>) en #ref(<ec37>): $ C_p & = [frac((pdv( U , T ))_V d T + [(pdv( U , V ))_T + p] d V, d T)]_p\
  C_p & = [(pdv( U , T ))_V + [(pdv( U , V ))_T + p] frac(d V, d T)]_p $ Si $C_v = (pdv( U , T ))_V$: $ C_p & = C_v [[(pdv( U , V ))_T + p] frac(d V, d T)]_p $<ec40> Si consideramos al volumen como una función que depende de $T$ y $p$: $ V = V\(T\,p\) $ hallamos su diferencial total: $ d V = (pdv( V , T ))_p + (pdv( V , p ))_T d p $ en el caso cuando la presión es constante queda: $ d V = (pdv( V , T ))_p $<ec43> Reemplazamos #ref(<ec40>) en #ref(<ec43>): $ C_p = C_v + [[(pdv( U , V ))_T + p] frac(partial V, d T)]_p $

== Primera ley para un sistema abierto
Para un sistema abierto monocomponente la primera ley se expresa como: $ delta Q = d U + p d V - d epsilon $ donde $d epsilon = mu d N$\(sistema monocomponente)#footnote[$mu$ es conocido como el potencial quimico.], $d epsilon approx d N$. \ De forma general tenemos: $ delta Q = d U + p d V - sum_(i = 1)^n mu_i d N_i $

= Segunda ley de la termodinámica
== Entropía
Conocemos una nueva función de estado llamada entropía denotada por $S$ la cual es la encargada de caracterizar el nivel de organización de las componentes del sistema(orden o desorden). $ underbrace(d S, e f e c t o) tilde.op underbrace(delta Q, c a u s a)\
delta Q = lambda d S $ donde $lambda = lambda\(underbrace(a_1\,a_2\,dots.h.c\,a_n, p a r acute(a) m e t r o s)\,T\)$ y $lambda$ es conocido también como #emph[multiplicador de Lagrange]. $ lambda = lambda\(a_1\,a_2\,dots.h.c\,a_n\,T\)= lambda\(T\) $ de modo que tenemos de forma diferencial:

$ delta Q = T d S $

O también: $ d S = frac(delta Q, T) $ Si integramos: $ integral_(\(1\))^(\(1\)) d S & = integral.cont frac(delta Q, T)\
0 & = integral.cont frac(delta Q, T) $ Esta integral se conoce como #emph[Integral de Clausius].

#block[
#box(image("../figures/ciclo-irrev.png", width: 40.0%, alt: "image"))

]
= Ecuación Fundamental de la termodinámica
Teniendo la primera ley de la termodinamica: $ delta Q = d U + p d V $ y la segunda ley de la termodinamica: $ delta Q = T d S $ Podemos unificar ambas en una sola ecuación: $ T d S = d U + p d V $ la cual llamaremos como #strong[Ecuación fundamental de la Termodinámica]\(EFT).

== Expresión analítica para entropía con gas ideal
Recordando la ecuación de Clapeyron Mendeleiev: $ P V = n R T $ Si: $ d S = frac(delta Q, T) = frac(d U + p d V, T) $<ec58> Si despejamos $p$ de la ecuación de Clapeyron Mendeleiev: $ p = frac(n R T, V) $<ec59> Hallamos el diferencial de la energia interna definida como $U = U\(T\,V\)$: $ d U & = (pdv( U , T ))_V d T + underbrace((pdv( U , V ))_T, l e y med d e med j o u l e) d V\
d U & = C_v d T +\(0\)d V\
d U & = C_v d T $<ec62> Reemplazando en #ref(<ec58>): $ d S & = frac(d U + p d V, T)\
d S & = frac(C v d T + p d V, T)\
d S & = C_v frac(d T, T) + p / T d V $ Reemplazando la ecuación #ref(<ec59>) e integrando nos queda: $ d S & = C_v frac(d T, T) + n R frac(d V, V)\
integral_(S_0)^S d S & = integral_(T_0)^T C_v frac(d T, T) + integral_(V_0)^V n R frac(d V, V)\
S - S_0 & = C_v ln (T / T_0) + n R ln (V / V_0)\
S & = S_0 + C_v ln (T / T_0) + n R ln (V / V_0) $

== Energía interna para un sistema cerrado
De la ecuación fundamental de la termodinámica: $ T d S = d U + p d V $ Despejamos $U$: $ d U = T d S - p d V $<ec71> Si $U = U\(S\,V\)$, hallamos su diferencial total: $ d U = (pdv( U , S ))_V d S + (pdv( U , V ))_S d V $<ec72> Igualamos tanto la ecuación #ref(<ec71>) y la ecuación #ref(<ec72>): $ T d S - p d V = (pdv( U , S ))_V d S + (pdv( U , V ))_S d V $ Si comparamos términos notamos que: $ cases(delim: "{", T = (pdv( U , S ))_V, , p = - (pdv( U , V ))_S) $

== Energía libre de Helmholtz para un sistema cerrado
Si tenemos una función $F$ denominada energía libre de Helmholtz la cual depende de la temperatura y el volumen: $ F = F\(T\,V\) $ Hallamos la diferencial total para conocer la evolución energética del sistema: $ d F = (pdv( F , T ))_V d T + (pdv( F , V ))_T d V $<ec76> de la EFT: $ T d S = d U + p d V $<ec77> Aplicando una herramienta matematica: $ d\[S T\] & = S d T + T d S\
T d S & = d\[S T\]- S d T $ Reemplazando en #ref(<ec77>): $ d\[S T\]- S d T & = d U + p d V\
d\[U - T S\] & = - S d T - p d V $ donde $U - T S = F$, de modo que: $ d F = - S d T - p d V $<ec82> Igualamos las ecuaciones #ref(<ec76>) y #ref(<ec82>): $ (pdv( F , T ))_V d T + (pdv( F , V ))_T d V = - S d T - p d V $ Comparando términos obtenemos que: $ cases(delim: "{", S = - (pdv( F , T ))_V, , p = - (pdv( F , V ))_T) $

== Entalpía para un sistema cerrado
Definimos una función energética $H$ denominada entalpía que depende de las variables $S$ y $p$: $ H = H\(S\,p\) $ Hallamos la evolución energética del sistema: $ d H = (pdv( H , S ))_p d S + (pdv( H , p ))_S d P $<ec86> Recordamos la EFT: $ T d S = d U + p d V $<ec87> Se puede comprobar que: $ p d V = d\[p V\]- V d p $<ec88> Si reemplazamos #ref(<ec88>) en #ref(<ec87>): $ T d S & = d U + d\[p V\]- V d p\
T d S + V d p & = d\[U + p V\]\
d\[U + p V\] & = T d S + V d p $ donde $H = U + p V$, de modo que: $ d H = T d S + V d p $<ec92> Comparamos las ecuaciones #ref(<ec92>) y #ref(<ec86>): $ (pdv( H , S ))_p d S + (pdv( H , p ))_S d P = T d S + V d p $ De modo que: $ cases(delim: "{", T = (pdv( H , S ))_p, , V = (pdv( H , p ))_S) $

== Energía de Gibbs para un sistema cerrado
Definimos una función energética $G$ denominada energía de Gibbs la cual depende de las variables $p$ y $T$: $ G = G\(p\,T\) $ Hallamos la evolución energética del sistema: $ d G = (pdv( G , p ))_T d p + (pdv( G , T ))_p d T $<ec96> La EFT: $ T d S = d U + p d V $<ec97> Si: $ T d S & = d\[T S\]- S d T\
p d V & = d\[P V\]- V d p $ Reemplazando en #ref(<ec97>): $ d\[T S\]- S d T & = d U + d\[P V\]- V d p\
V d p - S d T & = d\[U + p V - T S\]\
d\[U + p V - T S\] & = V d p - S d t $ donde $G = U + p V - T S$, de modo que: $ d G = V d p - S d t $<ec103> Comparamos #ref(<ec96>) y #ref(<ec103>): $ (pdv( G , p ))_T d p + (pdv( G , T ))_p d T = V d p - S d t $ De modo que: $ cases(delim: "{", V = (pdv( G , p ))_T, , S = - (pdv( G , T ))_p) $

= Segunda Ley de la termodinámica para un sistema abierto monocomponente
Recordando la primera ley: $ delta Q = d U + p d V - mu d N $ Recordando la segunda ley: $ delta Q = T d S $ Si igualamos ambas leyes, obtenemos la ecuación fundamental de la Termodinamica(EFT): $ T d S = d U + p d V - mu d N $

== Energía interna para un sistema abierto monocomponente
Despejamos $U$ de la EFT: $ d U = T d S - p d V + mu d N $ donde $U = U\(S\,V\,N\)$, lo diferenciamos: $ d U = (pdv( U , S ))_(V\,N) d S + (pdv( U , V ))_(S\,N) d V + (pdv( U , N ))_(S\,V) d N $ Comparamos ambas ecuaciones y obtenemos: $ T d S - p d V + mu d N = (pdv( U , S ))_(V\,N) d S + (pdv( U , V ))_(S\,N) d V + (pdv( U , N ))_(S\,V) d N $ de modo que: $ cases(delim: "{", T = (pdv( U , S ))_(V\,N), , p = - (pdv( U , V ))_(S\,N), , mu = (pdv( U , N ))_(S\,V)) $

== Energía libre de Helmholtz para un sistema abierto monocomponente
Si tenemos el potencial de Helmholtz definido por: $ F = F\(T\,V\,N\) $ Utilizando la EFT: $ T d S = d U + p d V - mu d N $ Si: #sinnum[$  T d S = d\(T S\)- S d T $] Reemplazamos y obtenemos: $ d U & = d\(T S\)- S d T - p d V + mu d N\
d\(U - T S\) & = - S d T - p d V + mu d N $ De modo que $F = U - T S$, si diferenciamos $F$, obtenemos: $ d F = (pdv( F , T ))_(V\,N) d T + (pdv( F , V ))_(T\,N) d V + (pdv( F , N ))_(T\,V) d N $ De modo que si comparamos ambas ecuaciones: $ (pdv( F , T ))_(V\,N) d T + (pdv( F , V ))_(T\,N) d V + (pdv( F , N ))_(T\,V) d N = - S d T - p d V + mu d N $ $ cases(delim: "{", S = - (pdv( F , T ))_(V\,N), , p = - (pdv( F , V ))_(T\,N), , mu = (pdv( F , N ))_(T\,V)) $

== Entalpia para un sistema abierto monocomponente
Si tenemos la entalpia definida por: $ H = H\(S\,p\,N\) $ Utilizando la EFT: $ T d S = d U + p d V - mu d N $ Si: $ p d V = d\(p V\)- V d p $ Reemplazamos y obtenemos: $ d U & = T d S - d\(p V\)+ V d p + mu d N\
d\(U + p V\) & = T d S + V d p + mu d N $ De modo que $H = U + p V$, si diferenciamos $H$, obtenemos: $ d H = (pdv( H , S ))_(p\,N) d S + (pdv( H , p ))_(S\,N) d p + (pdv( H , N ))_(S\,p) d N $ Comparamos ambas ecuaciones: $ (pdv( H , S ))_(p\,N) d S + (pdv( H , p ))_(S\,N) d p + (pdv( H , N ))_(S\,p) d N = T d S + V d p + mu d N $ $ cases(delim: "{", T = (pdv( H , S ))_(p\,N), , V = (pdv( H , p ))_(S\,N), , mu = (pdv( H , N ))_(S\,p)) $

== Energia de Gibbs para un sistema abierto monocomponente
Si tenemos el potencial de Gibbs definido por: $ G = G\(T\,p\,N\) $ Utilizando la EFT: $ T d S = d U + p d V - mu d N $ Si: $ T d S & = d\(T S\)- S d T\
p d V & = d\(P V\)- V d p $ Reemplazando y tenemos: $ d U & = d\(T S\)- S d T - d\(P V\)+ V d p + mu d N\
d\(U - T S + P V\) & = - S d T + V d p + mu d N $ de modo que $G = U - T S + P V$, si diferenciamos $G$, obtenemos: $ d G = (pdv( G , T ))_(p\,N) d T + (pdv( G , p ))_(T\,N) d p + (pdv( G , N ))_(T\,p) d N $ Comparamos ambas ecuaciones: $ (pdv( G , T ))_(p\,N) d T + (pdv( G , p ))_(T\,N) d p + (pdv( G , N ))_(T\,p) d N = - S d T + V d p + mu d N $ $ cases(delim: "{", S = - (pdv( G , T ))_(p\,N), , V = (pdv( G , p ))_(T\,N), , p = (pdv( G , N ))_(T\,p)) $

= Relaciones Termodinámicas de Maxwell
== Energía interna
En relación a la energia interna: $ U = U\(V\,S\) $ Sus propiedades energéticas: $ T & = (pdv( U , S ))_V\
p & = - (pdv( U , V ))_S $ Si derivamos $T$ con respecto al volumen a entropía constante: $ [pdv( T , V )]_S & = {pdv( , V ) [(pdv( U , S ))_V]}_S\
(pdv( T , V ))_S & = (pdv( U , S , V )) $<ec141> Derivamos $p$ con respecto a la entropía a volumen constante: $ [- pdv( p , S )]_V & = {pdv( , S ) [(pdv( U , V ))_S]}_V\
(- pdv( p , S ))_V & = (pdv( U , V , S )) $<ec143> Comparamos las ecuaciones #ref(<ec141>) y #ref(<ec143>): $ (pdv( T , V ))_S = (- pdv( p , S ))_V $ La cual se conoce como #strong[primera relación de Maxwell].

== Energía libre de Helmholtz
En relación a la energía libre de Helmholtz: $ F = F\(V\,T\) $ Sus propiedades energéticas: $ - S & = (pdv( F , T ))_V\
- p & = (pdv( F , V ))_T $ Derivamos $S$ con respecto al volumen a temperatura constante: $ [- pdv( S , V )]_T & = {pdv( , V ) [(pdv( F , T ))_V]}_T\
(- pdv( S , V ))_T & = (pdv( F , T , V )) $<ec149> Derivamos $p$ con respecto a la temperatura a volumen constante: $ [- pdv( p , T )]_V & = {pdv( , T ) [(pdv( F , V ))_T]}_V\
(- pdv( p , T ))_V & = (pdv( F , V , T )) $<ec151> Comparamos las ecuaciones #ref(<ec149>) y #ref(<ec151>): $ (- pdv( S , V ))_T = (- pdv( p , T ))_V $ La cual se conoce como #strong[segunda relación de Maxwell].

== Entalpía
En relación a la Entalpía: $ H = H\(S\,p\) $ Sus propiedades energéticas: $ T & = (pdv( H , S ))_p\
V & = (pdv( H , p ))_S $ Derivamos $T$ con respecto a la presión cuando la entropía es constante: $ [pdv( T , p )]_S & = {pdv( , p ) [(pdv( H , S ))_p]}_S\
(pdv( T , p ))_S & = (pdv( H , S , p )) $<ec157> Derivamos $V$ con respecto a la entropía a presión constante: $ [pdv( V , S )]_p & = {pdv( , S ) [(pdv( H , p ))_S]}_p\
(pdv( V , S ))_p & = (pdv( H , p , S )) $<ec159> Comparamos las ecuaciones #ref(<ec157>) y #ref(<ec159>): $ (pdv( T , p ))_S = (pdv( V , S ))_p $ La cual se conoce como #strong[tercera relación de Maxwell].

== Energía de Gibbs
En relación a la energía de Gibbs: $ G = G\(p\,T\) $ Sus propiedades energéticas: $ - S & = (pdv( G , T ))_p\
V & = (pdv( G , p ))_T $ Derivamos $S$ con respecto a la presión a temperatura constante: $ [- pdv( S , p )]_T & = {pdv( , p ) [(pdv( G , T ))_p]}_T\
(- pdv( S , p ))_T & = (pdv( G , T , p )) $<ec165> Derivamos $V$ con respecto a la temperatura a presión constante: $ [pdv( V , T )]_p & = {pdv( , T ) [(pdv( G , p ))_T]}_p\
(pdv( V , T ))_p & = (pdv( G , p , T )) $<ec167> Si comparamos las ecuaciones #ref(<ec165>) y #ref(<ec167>): $ (- pdv( S , p ))_T = (pdv( V , T ))_p $

= Tercera ley de la termodinámica
En esta parte nos hacemos la siguiente pregunta:

#block[
#strong[¿Qué valor toma la entropía de un sistema y como se puede medir?]

]
Una forma de medir la entropía de un sistema es midiendo su capacidad calorífica.

== Capacidad calorifica a presión constante
Si la medición de $C_p$: $ C_p = (pdv( Q , T ))_p = T (pdv( S , T ))_p $ De modo que: $ (pdv( S , T ))_p = C_p / T\
partial S = C_p / T partial T $ Integrando obtenemos: $ integral_(T_0)^T d S & = integral_(T_0)^T C_p / T d T\
S\(T\) & = S\(T_0\)+ integral_(T_0)^T C_p / T d T $<ec172> De modo que obtenemos una forma de medir la entropía en función a la temperatura. \ La ecuación #ref(<ec172>) en mecánica estadística puede expresarse de la siguiente forma: $ S - S_0 = K_B ln Omega $

== Postulación de Nernst
Si consideramos la entalpía y la energía de Gibbs:

#block[
El cambio de la entalpía $Delta H$ y el cambio en la función de Gibbs $Delta G$ se relacionan como: $ G = H - T S med arrow.r med Delta G = Delta H - T Delta S $ $ upright("Si") med T arrow.r 0\,upright("entonces") med Delta G arrow.r Delta H $

]
Nernst postulo que: $ Delta S arrow.r 0 med upright("cuando") med T arrow.r 0 $ esto se puede escribir como:

- #strong[Nernst enunciado tercera ley:] Cerca al cero absoluto, todas las reacciones en un sistema con equilibrio interno hace que la entropía no varié. $ (pdv( U , S ))_(V\,N) = 0 $

En 1911 Planck agrego:

- #strong[Planck enunciado tercera ley:] La entropía de todos los sistemas en equilibrio interno es la misma en el cero absoluto y puede tomar el valor de 0. $ lim_(T arrow.r 0) S\(T\)= 0 $

En 1937 Simon agrego:

- #strong[Simon enunciado tercera ley:] La contribución a la entropía de un sistema por cada aspecto del sistema que esta en equilibrio termodinámico interno tiende a cero cuando $T arrow.r 0$.

== Consecuencias de la tercera ley
- La capacidad calorífica tiende a cero cuando $T arrow.r 0$: $ C = T (pdv( S , T )) = (pdv( S , ln T )) arrow.r 0 $ como $T arrow.r 0$ entonces $ln T arrow.r oo$ y $S arrow.r 0$.

- La expansión térmica se detiene, como $S arrow.r 0$ y $T arrow.r 0$, tenemos por ejemplo que: $ (pdv( S , p ))_T arrow.r 0 $ Utilizando la relación de Maxwell: $ 1 / V (pdv( V , T ))_p arrow.r 0 $

- Imposibilidad de alcanzar el cero absoluto:

  #block[
  Es imposible enfriar a $T = 0$ en un número infinito de pasos.

  ]
  Si la tercera ley no se cumpliera seria posible proceder con el caso 1 y enfriar todo y llegar al cero absoluto. Sin embargo debido a al tercera ley la situación es como en el caso 2 y se deduce que es imposible llegar al cero absoluto debido a que se requiere un numero infinito de pasos.

- La ley de Curie se desmorona. \ La ley establece que la susceptibilidad $cal(X)$ es proporcional a $1\/T$: $ cal(X) prop 1 / T $ por lo tanto $cal(X) arrow.r oo$ cuando $T arrow.r 0$. Sin embargo la tercera ley implica que: $ (pdv( S , B ))_T arrow.r 0 $ Por lo tanto: $ (pdv( S , B ))_T = (pdv( m , T ))_B = frac(V B, mu_0) (pdv( cal(X) , T ))_B $ debe tender a cero $(pdv( cal(X) , T )) arrow.r 0$. Lo cual esta en desacuerdo con la ley de Curie.

= Condiciones de Equilibrio de dos fases de un sistema termodinámico monocomponente
Planteamiento:

#block[
#box(image("../figures/diagram-20221024.png", width: 62.0%, alt: "image"))

]
Se tiene un sistema formado por dos subsistemas cerrados y aislados que se encuentran en fase liquida y la otra en forma de vapor. \ #strong[¿Que ocurre en la interfase?]

\ Hallamos la entropía del sistema: $ S = S_ell + S_v = c t e $ Si lo diferenciamos, obtenemos: $ d S = d\(S_ell + S_v\)= d S_ell + d S_v = 0 $ Se observa que los \"dos subsistemas\" tienen que cumplir la Ecuación fundamental de la termodinámica para un sistema abierto monocomponente: $ T d S = d U + p d V - mu d N\
d S = frac(d U + p d V - mu d N, T) $

- Para la fase liquida: $ d S_ell = frac(d U_ell + p_ell d V_ell - mu_ell d N_ell, T_ell) $

- Para la fase de vapor: $ d S_v = frac(d U_v + p_v d V_v - mu_v d N_v, T_v) $

Reemplazamos en: $ d S_ell + d S_v = 0\
frac(d U_ell + p_ell d V_ell - mu_ell d N_ell, T_ell) + frac(d U_v + p_v d V_v - mu_v d N_v, T_v) = 0 $

== Condiciones del sistema
- #strong[Energía interna del sistema] \ Si notamos que la energía interna del sistema cumple la siguiente relación: $ U = U_ell + U_v = c t e $ Si diferenciamos esta relación, obtenemos: $ d U_ell + d U_v & = 0\
  d U_v & = - d U_ell $

- #strong[Volumen del sistema] \ El volumen del sistema cumple la siguiente relación: $ V = V_ell + V_v = c t e $ Si diferenciamos esta relación, obtenemos: $ d V_ell + d V_v = 0\
  d V_v = - d V_ell $

- #strong[Numero de componentes del sistema] \ El numero de componentes total del sistema cumple la siguiente relación: $ N = N_ell + N_v = c t e $ Si diferenciamos esta relación, obtenemos: $ d N_ell + d N_v & = 0\
  d N_v & = - d N_ell $

Reemplazando obtenemos: $ (frac(d U_ell, T_ell) + frac(d U_ell, T_v)) + (frac(p_ell d V_ell, T_ell) + frac(p_v d V_ell, T_v)) - (frac(mu_ell d N_ell, T_ell) - frac(mu_v d N_ell, T_v)) = 0\
[1 / T_ell - 1 / T_v] d U_ell + [p_ell / T_ell - p_v / T_v] d V_ell - [mu_ell / T_ell - mu_v / T_v] d N_ell = 0 $ Se observa que $d U_ell eq.not 0$, $d V_ell eq.not 0$ y $d N_ell eq.not 0$. De modo que los términos entre paréntesis se igualan a cero:

== Condiciones de equilibrio
- #strong[Condición de equilibrio térmico] $ [1 / T_ell - 1 / T_v] = 0\
  T_ell = T_v $

- #strong[Condición de equilibrio mecánico] $ [p_ell / T_ell - p_v / T_v] & = 0\
  p_ell & = p_v $

- #strong[Condición de equilibrio químico] $ [mu_ell / T_ell - mu_v / T_v] = 0\
  mu_ell = mu_v $
