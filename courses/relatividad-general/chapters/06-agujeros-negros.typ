#import "/lib/notes.typ": *

= Black Holes
Una de las predicciones más importantes de la Relatividad General son los Agujeros negros(BH) los cuales son regiones del espacio-tiempo donde ni la luz puede escapar.#footnote[Nos referimos a observadores distantes.]

#figure([#block[
  #box(image("../figures/imgrg6.1.png", width: 89.0%))
  ]],
  caption: [
    Agujero negro en M87.
  ]
)

#heading(level: 3, numbering: none)[Características]
#strong[Escala:] Objetos masivos de orden de varias a millones de masas solares $3 - 10 M_dot.o$. (Estelares a supermasivos) \ #strong[Origen:] Colapso gravitacional de una estrella, cuando se supera el límite de Tolman-Oppenheimer-Volkoft. \ #strong[Matemática:] Satisfacen las ecuaciones de Einstein y son buenos ejemplos de espacio-tiempos curvados donde la escala de masa hace que $G M\/c^2 > > 1$. \ #strong[Características:] BH astrofísicos vienen caracterizados por su masa $M$, espin $J$ y carga $Q$.

== Agujero negro de Schwarzschild
<part6.1>
La métrica para un espacio-tiempo curvado por un objeto de masa $M$, estático y sin carga viene dado por: $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) t^2 + (1 - frac(2 G M, r))^(- 1) upright(d) r^2 + r^2\(upright(d) theta^2 + sin^2 theta upright(d) phi\) $

Este espacio-tiempo tiene las siguientes propiedades: \ #strong[Singularidad:] En $r = 0$ y en $r = 2 G M$. \ #strong[Curvatura:] $R = 0$ puesto que es solución a las ecuaciones de Einstein. \ #strong[Kretschmann scalar:] Dado por $R^(mu nu rho theta) R_(mu nu rho theta) = frac(48 G^2 M^2, r^6)$. \ #strong[Conos de luz:] "Cerrados" en $r = 2 G M$. \ #strong[Horizonte de eventos:] Se define como el punto de no retorno, y ocurre en el radio de Schwarzschild, la cual nos da una escala para considerar efectos gravitacionales $ R_xor = frac(2 G M_xor, c^2) approx 8.9 m m\,quad R_minus.o = frac(2 G M_minus.o, c^2) approx 3 k m . $

Distribuciones de masa con radio del orden del radio de Schwarzschild colapsan y forman agujeros negros.

El límite de masa para formar un agujero egro astrofísico viene dado por: $ M > 4 M_dot.o arrow.r med upright("Límite de Tolman-Oppenheimer-Volkoff") $

#figure(image("../figures/imgrg6.2.png", width: 100.0%),
  caption: [
    Conos de luz cerrándose para un observador distante.
  ]
)

Los conos de luz satisfacen: $ dv( t , r ) = plus.minus (1 - frac(2 G M, r))^(- 1)\;med dv( t , r ) arrow.r plus.minus oo $ sin embargo, en $r = 2 G M$, ningun invariante del tensor de curvatura es singular.

\(Solución: cambio de coordenadas)

Para demostrar que el espacio-tiempo de una distribución de masa $M$, estática y sin carga no es singular en $r = 2 G M$ usamos un cambio de coordenadas tal que, el push-forward de las funciones coordenadas $phi$ y $psi$ satisfaga: $ \(psi compose phi^(- 1)\)* pdv( , x^i )\|_(phi\(p\)) = pdv( tilde(x)^j , x^i )\(phi\(p\)\)pdv( , tilde(x)^j )\|_(psi\(p\)) $

Para resolver el problema de los conos de luz en la métrica de Schwarzschild usamos varios cambios de coordenadas.

=== Coordenadas Regge-Wheeler
Se introduce remapeando $r = 2 G M$ a infinito, usando el cambio de variables $ r^(*) = r + 2 G M ln (frac(r, 2 G M) - 1)\, $ donde $r^(*)$ se conoce como la coordenada tortuga de $r$, donde en $r arrow.r 2 G M$, $r^(*) arrow.r + oo$. Las coordenadas modifican los conos de luz manteniendolos constantes:

#figure([#block[
  #box(image("../figures/imgrg6.3.png", width: 100.0%))
  ]],
  caption: [
    Conos de luz en coordenadas tortuga.
  ]
)

$ dv( t , r ) = plus.minus (1 - frac(2 G M, r))^(- 1)\,quad dv( t , r^(*) ) = plus.minus 1\,quad t = plus.minus r^(*) + C $

En estas coordenadas escribimos la métrica $upright(d) s^2$ como: $ upright(d) s^2 = (1 - frac(2 G M, r))\(- upright(d) t^2 + upright(d) r^(*) zws^2\)+ r^2 upright(d) Omega $

Esta métrica no es singular en $r = 2 G M$, sin embargo estos puntos están en $r^(*) = plus.minus oo$ para ver que ocurre en la superficie $r = 2 G M$ usamos otro cambio de coordenadas.

=== Coordenadas de Eddington-Finkelstein
Podemos adaptar las coordenadas para las geodésicas nulas usando el siguiente cambio de coordenadas: $ v & = t + r^(*)\
u & = t - r^(*) $

Usando este cambio de variables podemos escribir la métrica como: $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) v^2 +\(upright(d) v upright(d) r + upright(d) r upright(d) v\)+ r^2 upright(d) Omega^2 $ vemos que $g_(v v) = 0$ para $r = 2 G M$, sin embargo el tensor métrico no es degenerado. $ det\(g\)= - r^4 sin^2 theta $

Notamos que de la definición de $r^(*)$ tenemos que: $ v = 2 r + 4 G M ln lr(|frac(r, 2 G M) - 1|) + C $ donde esta coordenada asume que la coordenada $r^(*)$ es válida en ambos lados del horizonte de eventos.

En esta coordenada $r^(*) in\(- oo\,+ oo\)$ fuera del horizonte y $r^(*) in\(- oo\,0\)$ dentro del horizonte y la singularidad $r = 0$ está en $r^(*) = 0$. Las geodésicas nulas $r^(+)$ fuera del horizonte satisfacen:

#sinnum[$  v & = 2 r + 4 G M ln lr(|frac(r, 2 G M) - 1|) + C quad\(r^(+)\)\
v & = C quad\(r^(-)\) $]

#block[
#box(image("../figures/imgrg6.4.png", width: 34.0%, alt: "image"))

]
Entonces los conos de luz en estas coordenadas son: $ dv( v , r ) cases(delim: "{", 0 & \,r^(-), 2 (1 - frac(2 G M, r))^(- 1) & \,r^(+)) $

#figure([#block[
  #box(image("../figures/imgrg6.5.png", width: 100.0%))
  ]],
  caption: [
    Conos de luz en coordenadas Eddington-Finkelstein
  ]
)

Nótese que:

+ No existe singularidad en $r = 2 G M$.

+ $dv( v , r )$ cambia de signo en $r < 2 G M$.

+ Vemos que todas las geodésicas time-like para $r < 2$ están "atrapadas" dentro de $r = 2 G M$.

Para mostrar explícitamente que $r = 2 G M$ define un agujero negro usamos un diagrama de Finkelstein definiendo: $ v = t + r^(*) = t^(*) + r $ esto es $t^(*) = v - r$, usando la definición de $v$ tenemos que: $ t^(*) cases(delim: "{", - r + C & \,upright("para") med r^(-), r + 4 G M ln lr(|1 - frac(2 G M, r)|) + C & \,upright("para") med r^(+)) $

#figure([#block[
  #box(image("../figures/imgrg6.6.png", width: 100.0%))
  ]],
  caption: [
    Diagrama de Finkelstein para $t^(*) = v - r$ (A), y para $t^(*) = v + r$ (B).
  ]
)

Esta elección de coordenadas $t^(*) = v - r$ puede ser dada también para $t^(*) = v + r$, donde este caso corresponde a la inversiones temporal $t arrow.r - t$. Donde al escoger $ u = t - r^(*) $ la métrica nos queda: $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) u^2 - upright(d) u upright(d) r + r^2 upright(d) Omega^2 $

En estas coordenadas vemos que el pasado de los conos de luz consiguen "salir" del horizonte de eventos entonces se dice que estas coordenadas describen en agujero blanco, puesto que se trata de un agujero negro con "tiempo invertido".#footnote[Esto viene del hecho de que las ecuaciones de Einstein son invariantes bajo transformaciones de inversión de tiempo $t arrow.r - t$.]

A pesar de que definamos estas coordenadas, existen los siguientes problemas:

+ $v\(r\)$ diverge para $r arrow.r 2 G M$ con $r = sqrt(2 G M tau)$ $ v\(r\)= integral (1 - frac(2 G M, r))^(- 1) upright(d) tau $

+ La región con $v$ finito dentro del agujero negro es diferente de la región $u$ finito para $r < 2 G M$.

+ El horizonte del agujero negro para $v$ finito es distinto del caso $u$ finito a pesar de que describen el mismo objeto en la manifold.

Antes de mostrar como resolver estos problemas introduciremos las coordenadas de Rindler.

=== Coordenadas de Rindler
Para la métrica de Schwarzschild podemos aproximar la coordenada $r$ como: $ r = 2 G M + eta\,quad upright("con") med 0 lt.eq eta < < 2 G M\
g_(t t) = 1 - frac(2 G M, r) approx frac(eta, 2 G M) + cal(O)\(eta^2\)med upright("para") med eta < < 2 G M $ en este límite $ upright(d) s^2 = underbrace(- frac(eta, 2 G M) upright(d) t^2 + frac(2 G M, eta) upright(d) eta^2, text(fill: #red,  upright("espacio-tiempo de Rindler") )) + underbrace(\(2 G M\)^2 upright(d) Omega^2, text(fill: #red,  s^2 )) $

Cambiando variables $rho^2 = 8 pi G M eta$, el espacio-tiempo de Rindler nos queda: $ upright(d) s^2 = - (frac(rho, 4 G M)) upright(d) t^2 + upright(d) rho^2 $

En este espacio-tiempo un observador con $rho = c t e$ está acelerado $a^mu = u^nu nabla_nu u^mu eq.not 0$ donde $u^mu$ es la cuadri-velocidad $dv( x^mu , T )$, vemos que al introducir las coordenadas: $ T = rho sinh (frac(t, 4 G M))\,quad X = rho cosh (frac(t, 4 G M)) $ la métrica de Rindler satisface: $ upright(d) s^2 = - upright(d) T^2 + upright(d) X^2\,quad X in\(0\,oo\)\,quad - X < T < X $ reduciéndose a una métrica de Minkowski

#figure([#block[
  #box(image("../figures/imgrg6.7.png", width: 87.0%))
  ]],
  caption: [
    Espacio-tiempo cubierto por la métrica de Rindler.
  ]
)

Dado que para $t arrow.r plus.minus oo$ y $rho arrow.r 0$ vemos que el horizonte de eventos es una superficie nula.

Comentario: Vemos que en general, como ocurre con observadores acelerados no todos los cambios de variable cubren todo el espacio-tiempo. Para el caso del espacio-tiempo de Schwarzschild las coordenadas de Kruskal resuelven este problema.

== Campos escalares en la geometría de Schwarzschild
<part6.2>
La acción de un campo escalar libre sin masa viene dada por: $ S\[phi.alt\]= integral upright(d)^4 x sqrt(- g) g^(alpha beta) partial_alpha phi.alt partial_beta phi.alt $ usando las coordenadas tortuga escribimos $ S\[phi.alt\]= integral upright(d) t upright(d) r^(*) upright(d) Omega [- \( r partial_t phi.alt \)^2 + \( r partial_(r^(*)) phi.alt \)^2 - f \( r \) phi.alt square.stroked.tiny_(s^2) phi.alt] $ donde $f\(r\)= 1 - frac(2 G M, r)$, $upright(d) Omega = sin theta upright(d) theta upright(d) phi$ y $square.stroked.tiny_(s^2)$ es el laplaciano en la 2-esfera.

Usando la expansión en armónicos esféricos para el campo escalar $phi.alt$: $ phi.alt = 1 / r sum_(l\,m) psi_(l m)\(t\,r^(*)\)Y_(l m)\(theta\,phi\) $ usando las identidades: $ square.stroked.tiny_(s^2) Y_(l\,m) & = - l\(l + 1\)Y_(l m) & \(upright("Armónicos esféricos")\)\
r partial_(r^(*))\(psi_(l m)\/r\) & = partial_(r^(*)) psi_(l m) - r^(- 1) f\(r\)psi_(l m) & \(upright("Regla de la cadena")\) $

Encontramos la ecuación de movimiento: $ \(partial_t^2 - partial_(r^(*))^2\)psi_(l m) + V_e\(r^(*)\)psi_(l m) = 0 $ donde $V_e$ es el potencial para el campo escalar $phi.alt$: $ V_e\(r^(*)\)= (1 - frac(2 M, r)) (frac(l\(l + 1\), r^2) + frac(2 m, r^3)) $

Notamos que para $phi.alt = e^(- i omega t) psi\(r^(*)\)$, obtenemos: $ - partial_(r^(*))^2 psi_(l m) + V_e\(r^(*)\)psi_(l m) = omega^2 psi_(l m) $ que nos da una ecuación de tipo Schrödinger. Esta ecuación junto con su equivalente para vectores y tensores se conoce como las ecuaciones de Regge-Wheeler-Zerilli.

#figure(image("../figures/imgrg6.8.png", width: 100.0%),
  caption: [
    Potencial de Regge-Wheeler para un campo escalar en la métrica de Schwarzschild.
  ]
)

=== Coordenadas de Kruskal
La idea en estas coordenadas es usar las coordenadas nulas $v\,u$ para la métrica de Schwarzschild $ upright(d) s^2 & = (1 - frac(2 G M, r))\(- upright(d) t^2 + upright(d) r^(*) zws^2\)+ r^2 upright(d) Omega^2\
 & = - (1 - frac(2 G M, r)) upright(d) u upright(d) v + r^2 upright(d) Omega^2 $ donde $u = t - r^(*)$ y $v = t + r^(*)$ y $r^2$ es una función de $u - v$. Se define el sistema de coordenadas de Kruskal usando los siguientes cambios de variable $ u = - exp [frac(- u, 4 G M)]\,quad v = exp [frac(v, 4 G M)] $

vemos que, el exterior del agujero negro corresponde a $u < 0$ y $v > 0$ del horizonte: $ u v & = exp [frac(r^(*), 2 G M)]\
u\/v & = - exp [- frac(t, 2 G M)] $

Por lo tanto la métrica: $ upright(d) s^2 = - frac(32\(G M\)^3, r) e^(- r\/2 G M) upright(d) u upright(d) v + r^2 upright(d) Omega^2 $

Notamos:

+ La métrica de Schwarzschild es cubierta por la región con $u < 0$ y $v > 0$.

+ Las coordenadas $u$ y $v$ son coordenadas nulas para $partial_u$ y $partial_v$.

+ Se puede llevar a un sistema de coordenadas donde una coordenada es de tipo time-like y la otra space-like: $ T & = 1 / 2\(v + u\)= (frac(r, 2 G M) - 1)^(1\/2) e^(r\/4 G M) sinh (frac(t, 4 G M))\
  X & = 1 / 2\(v - u\)= (frac(r, 2 G M) - 1)^(1\/2) e^(r\/4 G M) cosh (frac(t, 4 G M)) $ usando esta forma nos queda: $ upright(d) s^2 = frac(32\(G M\)^3, r) e^(- r\/2 G M)\(- upright(d) T^2 + upright(d) X^2\)+ r^2 upright(d) Omega^2 $ con $r$ siendo una función implícita dada por la condición: $ T^2 - X^2 = (1 - frac(r, 2 G M)) exp [frac(r, 2 G M)] $

+ Las geodésicas nulas satisfacen: $ T = plus.minus X + C $

+ El horizonte de eventos($r = 2 G M$) se encuentra en la hipersuperficie: $ T = plus.minus X $

+ El horizonte de eventos es una superficie nula en estas coordenadas.

+ El espacio-tiempo es similar al de Rindler puesto que: $ T / X = tanh (frac(t, 4 G M)) $ para $t arrow.r plus.minus oo$, $r arrow.r 2 G M$.

=== Diagrama de Kruskal
#figure(image("../figures/imgrg6.9.png", width: 94.0%),
  caption: [
    Diagrama de Kruskal para el agujero negro de Schwarzschild.
  ]
)

En este diagrama tenemos:

+ $r = 2 G M$ es decir $T = plus.minus X$, entonces $u v = 0$.

+ La superficie $T = X$ es el horizonte del agujero negro.

+ La superficie $T = - X$ es el horizonte del agujero blanco.

+ La región I es el espacio-tiempo fuera del agujero negro con $T in\[2 G M\,+ oo\)$.

+ La región II es el espacio-tiempo dentro del agujero negro(Contiene la singularidad $r = 0$) (está siempre en el futuro).

+ La región III es el espacio-tiempo dentro del agujero blanco(Contiene la singularidad $r = 0$) (está siempre en el pasado).

+ La región IV es otra copia del espacio-tiempo fuera del agujero negro causalmente desconectada de la región I. Donde tenemos: $ u & = + exp [frac(u, 4 G M)]\
  v & = - exp [- frac(v, 4 G M)] $ esta región tiene $u > 0$ y $v < 0$.

+ El vector de Killing cambia de signo al cruzar el horizonte $ K = pdv( , t ) = frac(1, 4 G M) (v pdv( , v ) - u pdv( , u )) $ la norma en las coordenadas de Kruskal viene dada por: $ g_(mu nu) K^mu K^nu = - (1 - frac(2 G M, r)) $ para $r > 2 G M$, $K^2 < 0$\(time-like) (espacio-tiempo estacionario). \ para $r < 2 G M$, $K^2 > 0$\(space-like) (espacio-tiempo no estacionario).

+ Existe un agujero de gusano que "conecta" la región I y IV pero con distancias space-like(no se puede cruzar). Esto también se llama puente de Einstein-Rosen.

== Diagramas de Penrose
<part6.3>
Son representaciones compactas de espacios-tiempo.

=== Minkowski(2D)
El espacio-tiempo de Minkowski se puede representar de forma conformal, introduciendo las coordenadas nulas: $ u = t - x\,quad v = t + x\,quad x in\(- oo\,+ oo\) $

La métrica se reduce a: $ upright(d) s^2 = - upright(d) u upright(d) v quad u\,v in\(- oo\,+ oo\) $ para mapear esta métrica a un espacio finito usamos: $ u & = tan macron(u) quad macron(u)\,macron(v) in\(- pi\/2\,pi\/2\)\
v & = tan macron(v) $ en estas coordenadas tenemos: $ upright(d) s^2 = - frac(1, cos^2 macron(u) cos^2 macron(v)) upright(d) macron(u) upright(d) macron(v) $ y notamos que los conos de luz se mantienen y $cos^2 macron(u) cos^2 macron(v)$ es un factor conformal para Minkowski tenemos:

#figure(image("../figures/imgrg6.10.png", width: 64.0%),
  caption: [
    Diagrama de Penrose para el espacio-tiempo de Minkowski en 2D.
  ]
)

En este diagrama tenemos:

- $i^plus.minus$: Geodésicas tipo time-like que comienzan en $i^(-)$ con $macron(u)\,macron(v) =\(- pi\/2\,- pi\/2\)$ y terminan en $macron(u)\,macron(v) =\(pi\/2\,pi\/2\)$. Estos puntos son el infinito de las geodésicas tipo time-like $i^(-)$ (pasado) y $i^(+)$ (futuro).

- $i^0$: Todas las geodésicas tipo space-like comienzan y terminan en este punto y son el infinito, $i^0$ puede ser $macron(u)\,macron(v) =\(- pi\/2\,pi\/2\)$ para $+ oo$ y $macron(u)\,macron(v) =\(pi\/2\,- pi\/2\)$ para $- oo$.

- $cal(J)^plus.minus$: Todas las geodésicas nulas comienzan con $cal(J)^(-)$ ($macron(u)\,macron(v) = - pi\/2\,- pi\/2$) y terminan con $cal(J)^(+)$ ($macron(u)\,macron(v) = pi\/2\,pi\/2$). $cal(J)^(-)$ es el pasado de las geodésicas nulas y $cal(J)^(+)$ es el futuro de las geodésicas nulas.

=== Minkowski en 4D
En $3 + 1$ tenemos: $ upright(d) s^2 = - upright(d) t^2 + upright(d) r^2 + r^2 upright(d) Omega^2 $ en coordenadas nulas tenemos: $ u = t - r #h(2em) v = t + r $ la métrica se escribe en estas coordenadas como: $ upright(d) s^2 = - upright(d) u upright(d) v + 1 / 4\(u - v\)upright(d) Omega^2 $ el cual al usar el mismo mapeo para $1 + 1$ dimensiones: $ upright(d) s^2 = underbrace(frac(1, 4 cos^2 macron(u) cos^2 macron(v)), upright("factor conformal")) underbrace(\(- 4 upright(d) macron(u) upright(d) macron(v) + sin^2\(macron(u) - macron(v)\)upright(d) Omega^2\), upright(d) s' zws^2) $ analizamos $upright(d) s' zws^2$ al ser equivalente a $upright(d) s^2 = 0$ en este caso como $r > 0$ (en el caso anterior $X$ no tenia por que serlo) $ v - u = 2 r med arrow.r med v > 0 med upright("tal que") med r > 0 $

Esto limita los valores de $macron(u)$ y $macron(v)$ $ - pi / 2 lt.eq macron(u) lt.eq macron(v) lt.eq pi / 2 $

#figure([#box(image("../figures/imgrg6.11.png", width: 65.0%))
  En $r = 0$, los rayos de luz son reflejados hacia el futuro de las geodésicas nulas $cal(J)^(+)$. \ Esto pasa por constricción (es decir $r gt.eq 0$).

  ],
  caption: [
    Diagrama de Penrose para Minkowski en $3 + 1$.
  ]
)

==== Schwarzschild
Para este caso usemos las coordenadas de Kruskal $ upright(d) s^2 = - frac(32\(G M\)^3, r) e^(- r\/2 G M) upright(d) u upright(d) v + r^2 upright(d) Omega^2 $

Definamos la transformación $ u = tan macron(u)\,quad v = tan macron(v)\,quad macron(u)\,macron(v) in\(- pi\/2\,pi\/2\) $ la métrica se transforma en: $ upright(d) s^2 = frac(1, cos^2 macron(u) cos^2 macron(v)) [- frac(32\(G M\)^3, r) e^(- r\/2 G M) upright(d) macron(u) upright(d) macron(v) + r^2 cos^2 macron(u) cos^2 macron(v) upright(d) Omega^2] $ la singularidad en $r = 0$, $u v = 1$ está dada en: $ tan macron(u) tan macron(v) & = 1\
cos\(macron(u) + macron(v)\) & = 0\,quad macron(u) + macron(v) = plus.minus pi / 2 $

#figure(image("../figures/imgrg6.12.png", width: 99.0%),
  caption: [
    Diagrama de Penrose para el agujero negro de Schwarzschild.
  ]
)

== Agujeros negros cargados
<part6.4>
Esta solución de agujero negro viene dada por la acción: $ S = integral upright(d)^4 x sqrt(- g) (frac(1, 16 pi G) R - 1 / 4 F_(mu nu) F^(mu nu)) $ donde $F_(mu nu) = nabla_mu A_nu - nabla_nu A_mu$ vemos que: $ delta S_(A_mu) med & arrow.r med nabla_mu F^(mu nu) = 0\
delta S_(g_(mu nu)) med & arrow.r med R_(mu nu) - 1 / 2 g_(mu nu) R = 8 pi G T_(mu nu)^(\(A\)) $ donde $ T_(mu nu)^(\(A\)) = F_mu^rho F_(nu rho) - 1 / 4 F_(alpha beta) F^(alpha beta) g_(mu nu) $ es el tensor de energía-momento para $A^mu$.

Si escogemos $ A = - frac(Q_e, 4 pi r) upright(d) t - frac(Q_m, 4 pi) cos theta upright(d) phi.alt $ donde $Q_e$ y $Q_m$ son las cargas eléctricas y magnéticas respectivamente. Encontramos una solución al sistema de ecuaciones $delta S_A = 0$, $delta S_g = 0$ de la forma: $ upright(d) s^2 = - Delta\(r\)upright(d) t^2 + Delta^(- 1)\(r\)upright(d) r^2 + r^2 upright(d) Omega^2 $ donde $Delta\(r\)$ viene dada por: $ Delta\(r\)= 1 - frac(2 G M, r) + Q^2 / r^2\,quad Q^2 = frac(G, 2 pi)\(Q_e^2 + Q_m^2\) $ definiendo $ r^plus.minus = G M plus.minus\(G^2 M^2 - Q^2\)^(1\/2) $ entonces tendremos $ Delta\(r\)= 1 / r^2\(r - r^(+)\)\(r - r^(-)\) $

Notamos que existen dos horizontes $r^(+)$ y $r^(-)$, dependiendo de los valores de carga $Q$ tenemos:

- $Q = 0$: $r^(-) = 0$, $r^(+) = 2 G M$ el horizonte de eventos coincide con la singularidad. El horizonte $r^(+)$ corresponde con el horizonte de Schwarzschild.

- $\|Q\|> G M$: No existe horizonte de eventos. La singularidad $r = 0$ se llama singularidad desnuda. Estas singularidades no son físicas. La falta de singularidades de este tipo se llama principio de censura cósmica (en agujeros negros que rotan esta condición lleva a un límite en el momento angular del agujero negro).

  #figure(image("../figures/imgrg6.13.png", width: 100.0%),
    caption: [
      Diagrama de Penrose para $\|Q\|> G M$.
    ]
  )

- $\|Q\|< G M$: En este caso tenemos dos horizontes $r^(+)$ y $r^(-)$, siendo ambas superficies nulas. La singularidad pasa a ser time-like, por lo tanto es posible evitarla.

#figure(image("../figures/imgrg6.14.png", width: 82.0%),
  caption: [
    Diagrama conformal para un agujero negro cargado.
  ]
)

Nótese que:

Para $r > 0$, $r$ es space-like y en $r^(-) < r < r^(+)$ cambia a time-like por lo que $r arrow.r r^(-)$. Luego en $r < r_(-)$ es de nuevo space-like y por lo tanto es posible evitar la singularidad.

$\|Q\|= G M$: Este caso se conoce como agujero negro extremal, la métrica se traduce en: $ upright(d) s^2 = - (1 - frac(G M, r))^2 upright(d) t^2 + (1 - frac(G M, r))^(- 2) upright(d) r^2 + r^2 upright(d) Omega^2 $ para $r = G M + eta$ (cerca del horizonte) con $eta < < G M$ es posible derivar: $ upright(d) s^2 = underbrace(frac(- eta, \(G M\)^2) upright(d) t^2 + frac(\(G M\)^2, eta^2) upright(d) eta^2, text(fill: #red,  A d S_2 )) + underbrace(\(G M\)^2 upright(d) Omega^2, text(fill: #red,  s^2 )) $

Esta métrica se conoce como métrica de Robinson-Berlotti $A d S_2 med t i m e s S^2$ y tiene geometría anti-DeSitter.

Para este agujero negro existen infinitas regiones extremas.

#figure(image("../figures/imgrg6.15.png", width: 68.0%),
  caption: [
    Diagrama conformal para el agujero negro cargado extremal.
  ]
)

== Agujeros negros rotantes
<part6.5>
El agujero negro de Kerr viene dado por la métrica: $ upright(d) s^2 & = - (1 - frac(2 G M r, rho^2)) upright(d) t^2 - frac(2 G M a r sin^2 theta, rho^2)\(upright(d) t upright(d) phi.alt + upright(d) phi.alt upright(d) t\)+ rho^2 / Delta upright(d) r^2\
 & + rho^2 upright(d) theta^2 + frac(sin^2 theta, rho^2) [\( r^2 + a^2 \)^2 - a^2 Delta sin^2 theta] upright(d) phi.alt^2 $ donde $ Delta\(r\) & = r^2 - 2 G M r + a^2\
rho^2\(r\,theta\) & = r^2 + a^2 cos^2 theta $

Donde $a$ es el momento angular por unidad de masa $M$. Donde $M$ (la masa del agujero negro) es la Masa de Komar y $J$ el momento angular de Komar definidos como $ M_K = frac(1, 4 pi G) integral_(partial Sigma) upright(d)^2 x sqrt(g^(\(2\))) eta_mu sigma_nu nabla^mu K^nu $ donde $g^(\(2\))$ es la métrica de la 2-esfera en infinito $K^mu$ es el vector de Killing, $eta_mu$ y $sigma_mu$ son vectores normalizados a 1. $ eta_mu eta^mu = - 1\,quad sigma^mu sigma_mu = + 1 $

El momento angular está definido como: $ J_(K o m a r) = - frac(1, 8 pi G) integral_(partial Sigma) upright(d)^2 x sqrt(g^(\(2\))) eta_mu sigma_nu nabla^mu K_(\(r o t\))^nu $

Las coordenadas $\(t\,r\,theta\,phi.alt\)$ se conocen como coordenadas Boyer-Lindquist. Como en el caso del agujero negro cargado tenemos:

+ $a > G M$: Singularidad desnuda.

+ $a = G M$: Agujero negro extremal.

+ $a < G M$: Agujero negro en rotación, en este caso existen dos horizontes de eventos dados por: $ r^plus.minus = G M plus.minus sqrt(G^2 M^2 - a^2) $ dado que la solución del agujero negro es estacionaria más no estática. El horizonte de eventos no coincide con el horizonte de Killing: $ K_mu K^mu = - 1 / rho^2\(Delta - a^2 sin^2 theta\) $

  La superficie con $K_mu K^mu = 0$ se llama superficie estacionaria límite y viene dada por: $ \(r - G M\)^2 = G^2 M^2 - a^2 cos^2 theta $ y $r^(+)$ satisface $ \(r_(+) - G M\)^2 = G M^2 - a^2 $ La región entre estas dos superficies se llama ergosfera en esta región las partículas pueden tener energía negativa $ E = - K_mu p^mu < 0 #h(2em) upright("(Energía total conservada)") $ En estos agujeros negros la singularidad satisface: $  & R_(mu nu rho sigma) R^(mu nu rho sigma) prop frac(1, r^2 + a^2 cos^2 theta)\
  r^2 + & a^2 cos^2 theta = 0 med arrow.r med underbrace(r = 0 med upright("y") med theta = pi / 2, upright("Anillo")) $

  #figure(image("../figures/imgrg6.16.png", width: 85.0%),
    caption: [
      Agujero negro de Kerr horizontes y ergosfera.
    ]
  )

== Agujeros negros reales
<part6.6>
Estelares: Son generados por el colapso gravitacional de una estrella con $M gt.eq 4 M_dot.o$.

#figure(image("../figures/imgrg6.17.png", width: 97.0%),
  caption: [
    Diagrama de Penrose para el colapso gravitacional de una estrella.
  ]
)

Nótese que la métrica adentro de la estrella corresponde a una solución diferente a la solución a las ecuaciones de Einstein en el vacío y que el colapso puede no ser homogéneo.

#figure(image("../figures/imgrg6.18.png", width: 100.0%),
  caption: [
    Colapso gravitacional con simetría esférica.
  ]
)

En el gráfico anterior se describe el colapso de la materia y la formación de la singularidad.

En el colapso gravitacional con simetría esférica se asume:

+ $M_(+)^4$: Es null-completa no singular.

+ Las geodésicas en $M_(+)^4$ se pueden extender hacia el futuro usando un parámetro afín $lambda arrow.r + oo$.

+ Toda geodésica time-like nace con una superficie de Cauchy $C_3$.#footnote[Superficie de Cauchy: Es una submanifold con $t = c o n s t a n t e$. Es usada para dar condiciones iniciales a las ecuaciones de Einstein.]

+ Se cumple la condición $G_(mu nu) t^mu t^nu gt.eq 0$ para $t^mu$ tipo tiempo (condición de Energía no negativa).

+ Existe una superficie causalmente desconectada $T^2$.

La inconsistencia de estas condiciones y la necesidad de una singularidad fue demostrada por Roger Penrose en 1965 al mostrar que $C_3$ debe ser una superficie de Cauchy no compacta.

Límite de Chandrasekhar: En evolución estelar una estrella con masa suficientemente grande colapsará a una estrella de neutrones, sí la presión gravitacional supera la presión de degeneración de los electrones el límite para la formación de estos objetos es: $ M approx 1.4 M_dot.o $

== Teoremas para agujeros negros
<part6.7>
En esta sección revisaremos algunos teoremas y condiciones involucrando agujeros negros:

=== Condiciones de energía para un espacio-tiempo
$ T^(mu nu) =\(rho + p\)u^mu u^nu + p g^(mu nu) $

#strong[Condición de energía débil:] $T_(mu nu) t^mu t^nu gt.eq 0$ para cualquier vector time-like $t^mu$. fluido perfecto $rho gt.eq 0$ y $rho + p gt.eq 0$

#strong[Condición de energía nula:] $T_(mu nu) t^mu t^nu gt.eq 0$ para cualquier vector nulo $t_mu t^nu = 0$. fluido perfecto: $rho + p gt.eq 0$.

#strong[Condición de energía fuerte:] $(T_(mu nu) - 1 / 2 g_(mu nu) T_alpha^alpha) t^mu t^nu gt.eq 0$ para cualquier vector time-like $t^mu$. fluido perfecto $rho + p gt.eq 0$ y $rho + 3 p gt.eq 0$.

#strong[Condición de energía nula dominante:] $T_(mu nu) t^mu t^nu gt.eq 0$, para vectores $t^mu$ con $t^mu t_mu = 0$, además $T_(mu nu) t^nu$ no puede ser un vector tipo space-like esta condición permite escribir $p = - rho$.

#strong[Condición de energía dominante:] $T_(mu nu) t^mu t^nu gt.eq 0$ con $t^mu$ como un vector tipo time-like y además $T_(mu nu) t^nu$ es un vector que no puede ser tipo space-like de esta definición se puede extraer $rho gt.eq\|p\|$ en un fluido perfecto.

=== Teorema de la singularidad de Penrose
#teorema[

]

Sea $\(cal(M)\,g\)$ una manifold globalmente hiperbólica con una superficie de Cauchy no compacta. Asumiendo las ecuaciones de Einstein y la condición de energía nula y que $cal(M)$ contiene una superficie causalmente desconectada $T$ sea $theta_0 < 0$ el valor máximo de $theta$ sobre $T$ en dos conjuntos de geodésicas nulas ortogonales a $T$. Luego, al menos una de esas geodésicas no es extendible para $lambda arrow.r + oo$ con parámetro afín $lambda lt.eq 2\/theta_0$.

=== Teorema de no pelo
#teorema[

]

Soluciones estacionarias y asintóticamente planas que son singulares fuera del horizonte de eventos están completamente caracterizados por la masa, carga eléctrica, carga magnética y el momento angular.

=== Teorema de la singularidad
#teorema[

]

Sea $cal(M)$ una manifold con métrica genérica $g_(mu nu)$ que satisface las ecuaciones de Einstein. Sí existe alguna superficie causalmente desconectada en $cal(M)$, debe entonces ser una curva cerrada tipo time-like o una singularidad.

=== Teorema de la censura cósmica
#teorema[

]

Singularidades desnudas no pueden formarse en colapso gravitacional de un espacio-tiempo genérico asintóticamente plano que obedezca la condición de energía dominante.

=== Teorema del área de Hawking
#teorema[

]

Asumiendo la condición de energía débil y el principio de censura cósmica, el área de un horizonte de eventos futuro en un espacio-tiempo asintóticamente plano no decrece.

== Procesos en agujeros negros
<part6.8>
=== Horizonte de Killing
Se define como la superficie $Sigma$ donde $K^mu K_mu = 0$. Un horizonte se puede relacionar con el horizonte de Killing sí:

+ El espacio-tiempo es asintóticamente plano y estacionario el horizonte de eventos es también eun horizonte de Killing (es decir métrica de Schwarzschild).

+ Sí e espacio-tiempo es estático $xi^mu$ será el vector de Killing $xi^mu =\(partial_t\)^mu$ representando las traslaciones temporales en el infinito.

+ Sí el espacio-tiempo es estacionario pero no estático, el vector de Killing será una combinación lineal entre $\(partial_t\)^mu$ y $\(partial_phi.alt\)^mu$. $ xi^mu =\(partial_t\)^mu + Omega_H\(partial_phi.alt\)^mu med upright("con") med Omega_H = c t e $

=== Proceso de Penrose
Para un agujero negro de Kerr podemos calcular la energía y el momento angular de una partícula en una geodésica $ E & = -\(partial_t\)_mu p^mu = m (1 - frac(2 G M, p^2)) dv( t , tau ) + frac(2 m G M a r, rho^2) sin^2 theta dv( phi.alt , tau )\
L & = -\(partial_phi.alt\)_mu p^mu = - frac(2 m G M a r, rho^2) sin^2 theta dv( t , tau ) + frac(m\(r^2 + a^2\)^2 - m Delta a^2 sin^2 theta, p^2) sin^2 theta dv( phi.alt , tau ) $ donde $E$ y $L$ son la energía y el momento angular por unidad de masa. Nótese que la definición de $E$ es compatible con la condición de energía positiva con el signo previamente escogido.

Dado que, el vector de Killing es tipo space-like en la métrica de Kerr cuando estamos dentro de la ergosfera del agujero negro. Como las partículas deben acelerar para salir de esta región.

Un decaimiento de una partícula en esta región llevaria a un aumento en la energía de uno de los subproductos del decaimiento así $ p^mu & = p_1^mu + p_2^mu\
E & = E_1 + E_2 $

#figure(image("../figures/imgrg6.19.png", width: 93.0%),
  caption: [
  ]
)

Sí la partículas 1 permanece en la ergosfera $E_1$ puede ser negativa y $E_2$ $ E_2 = E +\|E_1\|> E $

Sí la partícula 1 cae en el agujero negro y la partícula 2 escapa a infinito resultando en una perdida de energía para el agujero negro. La extracción de energía de este tipo se llama Proceso de Penrose.

Se puede mostrar que el agujero negro resultante tendrá un momento angular ligeramente diferente: $ delta J < frac(delta M, Omega_H) = frac(2 M\(M^2 + sqrt(M^4 - J^2)\), J) delta M med upright("y") med Omega_M = (dv( phi.alt , t ))\(r_(+)\) $

Existiendo un límite para la cantidad de masa que se puede extraer con este proceso $ M^2 = M_(i r r)^2 + frac(J^2, 4 M_(i r r)^2) gt.eq M_(i r r)^2 $

Donde $M_(i r r)$, es la masa irreducible del agujero negro. $ M_(i r r) = sqrt(1 / 2 (M^2 + sqrt(M^4 - J^2))) $

Se puede mostrar que usando la definición de area $A$ $ A = integral sqrt(\|y\|) upright(d) t upright(d) phi.alt $ donde $y$ es la métrica con: $upright(d) t = 0\,upright(d) r = 0$ y $r = r_(+)$ y para la solución de Kerr: $ y_(i j) upright(d) x^i upright(d) x^j =\(r_(+)^2 + a^2 cos^2 theta\)upright(d) t^2 + [frac(\(r_(+)^2 + a^2\)^2 sin^2 theta, r_(+)^2 + a^2 cos^2 theta)] upright(d) phi.alt^2 $

El área en $r_(+)$ está dada por: $ A = 4 pi\(r_(+)^2 + a^2\) $ con $r_(+)$ como el horizonte externo, usando $ M_(i r r)^2 = frac(A, 16 pi G) $ y variando $delta M_(i r r)$ y $delta A$ se puede obtener: $ delta A = frac(8 pi G a\(delta M - Omega_H delta J\), Omega_H sqrt(G^2 M^2 - a^2)) $

Donde introduciendo la cantidad $kappa$ o gravedad superficial $ kappa = frac(\(G^2 M^2 - a^2\)^(1\/2), 2 G M\(G M + sqrt(G^2 M^2 - a^2)\)) $

Podemos escribir, donde $delta A > 0$ vemos que $ delta M = frac(kappa, 8 pi G) delta A + Omega_M delta J $ ecuación que puede ser mapeada a la 1ra ley de la termodinámica usando $ upright(d) E = T upright(d) S - p upright(d) V $ con $E arrow.r M\,S arrow.r A\/4 pi G$ y $T arrow.r kappa\/2 pi$.

Donde, para $T = kappa\/2 pi$ podemos interpretar $A\/4 pi G$ como la entropia del agujero negro(Hawking).

También es posible escribir la segunda ley de la termodinámica de forma generalizada(Bekenstein): $ delta (S + frac(A, 4 G)) gt.eq 0 $

=== La ecuación de Landau-Raychaudhuri
Determina la evolución de la expansión $theta$ de una congruencia de tipo time-like. Es decir, mide el cambio fraccional de un volumen de materia medido por un observador comovil. Para un vector tipo time-like $x^mu$, la congruencia de geodésicas en el punto $p$ evoluciona como: $ dv( theta , lambda ) = - theta^2 / 2 - hat(sigma)^(mu nu) hat(sigma)_(mu nu) + w^(mu nu) w_(mu nu) - R_(mu nu) u^mu u^nu $ donde $sigma_(mu nu)$ y $w^(mu nu)$ son el cizallamiento(shear) y la vorticidad(vorticity) respectivamente, definidos como: $ sigma = hat(B)_mu^mu\,quad hat(sigma)_(mu nu) = hat(B)_(\(mu nu\)) - 1 / 2 p_(mu nu) sigma\,quad w_(mu nu) = hat(B)_(\(mu nu\)) $

Nótese que $p_(mu nu)$ es un proyector de la forma: $ p_mu^nu = delta_mu^nu + N^nu u_mu + u^nu N_mu $ donde $B_(mu nu) = nabla_mu u_nu$ y $u_mu$ es un vector tangente $u^2 = plus.minus 1$. Esta definición se usa para demostrar el teorema de Penrose para una hipersuperficie nula con $dv( theta , lambda ) lt.eq - 1 / 2 theta^2$.

#heading(level: 2, numbering: none)[Problemas 4]
+ #strong[Resolviendo las Ecuaciones de Einstein con Constante Cosmológica] Considere las ecuaciones de Einstein en el vacío, pero con una constante cosmológica positiva $Lambda > 0$ $ G_(mu nu) + Lambda g_(mu nu) = 0 . $<ec6.106>

  + Muestre que las soluciones a la Eq. #ref(<ec6.106>) también satisfacen $R_(mu nu) = Lambda g_(mu nu)$.

  + Suponga un ansatz para una métrica estática, esféricamente simétrica, y que en coordenadas $\(t\,r\,theta\,phi.alt\)$ se reducen a las coordenadas de Schwarzschild en el límite $Lambda = 0$, de la forma $ g_(mu nu) upright(d) x^mu upright(d) x^nu = - A\(r\)upright(d) t^2 + B\(r\)upright(d) r^2 + r^2 [upright(d) theta^2 + sin^2 \( theta \) upright(d) phi.alt^2]\, $ donde $A\(r\)$ y $B\(r\)$ son funciones desconocidas que solo dependen de $r$. Con este ansatz, calcule las componentes del tensor de Ricci y determine las ecuaciones diferenciales que se deben resolver para $A\(r\)$ y $B\(r\)$.

  + Muestre que una condición que deben satisfacer ambas funciones es: $A\(r\)B\(r\)= 1 .$

  + Integrando las ecuaciones diferenciales que aparecen en el resto de las componentes del tensor de Ricci, encuentre la solución general para ambas funciones. Determine las constantes de integración comparando con el límite $Lambda = 0$, y escriba la forma final de la métrica.

+ #strong[Preámbulo: Agujeros Negros] Hacer un resumen detallado de cada capítulo del 4 al 9 del libro "#emph[Black Holes: The Key to Understanding the Universe]" de Brian Cox y Jeff Forshaw. (Mínimo 900 palabras por capítulo, usar únicamente LaTeXpara esto).

+ #strong[Diagrama de Carter-Penrose] Consideremos el espacio de Minkowski de cuatro dimensiones en coordenadas polares, $ upright(d) s^2 = - upright(d) t^2 + upright(d) r^2 + r^2 upright(d) Omega_2^2\,med upright(d) Omega_2^2 = upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2 . $

  + Demuestra que el cambio de coordenadas $ \(r + t\)= tan (frac(R + T, 2)) quad upright("y") quad\(r - t\)= tan (frac(R - T, 2)) $ da como resultado la métrica, $ upright(d) s^2 = f\(T\,R\)\(- upright(d) T^2 + upright(d) R^2 + sin^2\(R\)upright(d) Omega_2^2\) $ y determina la función $f\(T\,R\)$.

  + Indica los rangos de coordenadas para el tiempo $T$ y la coordenada radial $R$ en los cuales el espacio de Minkowski está completamente cubierto una vez en las nuevas coordenadas.

  + Dibuje el diagrama de Carter-Penrose e identifica $i^plus.minus\,i^0\,cal(J)^plus.minus$.

  + Proporciona la parametrización de las siguientes geodésicas que pasan por el origen $R = 0$:

    + Rayos de luz.

    + Dos geodésicas distintas de tipo tiempo.

    + Dos geodésicas distintas de tipo espacio. Dibuja las geodésicas cualitativamente en el diagrama de Penrose.

+ #strong[Resolviendo la singularidad de Schwarzschild] En la solución de Schwarzschild una singularidad aparece al acercarse al radio de Schwarzschild, siendo este un efecto de coordenadas, en este ejercicio encontraremos las coordenadas en las que esta singularidad desaparece.

  + Muestre que la métrica de Schwarzschild presenta una singularidad en $r = 2 G M$. $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) t^2 + (1 - frac(2 G M, r))^(- 1) upright(d) r^2 + r^2 upright(d) Omega^2 . $

  + Muestra que se pueden usar las llamadas "coordenadas de tortuga" definidas como: $ r^(*) = r + 2 G M ln (frac(r, 2 G M) - 1) $ para llevar la métrica de Schwarzschild a la forma: $ upright(d) s^2 = (1 - frac(2 G M, r))\(- upright(d) t^2 + upright(d) r^(*) zws^2\)+ r^2 upright(d) Omega^2 $

  + Luego muestre que las coordenadas de Eddington-Finkelstein, combinando $r^(*)$ y $t$, escritas como: $ tilde(u) = t + r^(*)\,quad tilde(v) = t - r^(*) . $ estas coordenadas reescriben la métrica como: $ upright(d) s^2 = 1 / 2 (1 - frac(2 G M, r))\(upright(d) tilde(u) upright(d) tilde(v) + upright(d) tilde(v) upright(d) tilde(u)\)+ r^2 upright(d) Omega^2 $

  + Finalmente para regularizar la métrica, introducimos las coordenadas de Kruskal-Szekeres donde: $ u' & = e^(tilde(u)\/4 G M)\,\
    v' & = e^(- tilde(v)\/4 G M) . $

    $ u' & = (frac(r, 2 G M) - 1)^(1\/2) e^(\(r + t\)\/4 G M)\,\
    v' & = (frac(r, 2 G M) - 1)^(1\/2) e^(\(r - t\)\/4 G M) . $

  + Muestre que en términos de estas últimas nuevas coordenadas, la métrica se convierte en: $ upright(d) s^2 = - frac(16 G^3 M^3, r) e^(- r\/2 G M)\(upright(d) u' upright(d) v' + upright(d) v' upright(d) u'\)+ r^2 upright(d) Omega^2 $

+ #strong[Agujero Negro Reissner-Nordström] En la presencia de un campo electromagnético, una partícula de carga $e$ y masa $m$ obedece la versión relativista de la segunda ley de Newton, $f^mu = m a^mu$, o explícitamente: $ dv( x^mu , tau , 2 ) + Gamma_(rho sigma)^mu dv( x^rho , tau ) dv( x^sigma , tau ) = e / m F_nu^mu dv( x^nu , tau ) $ donde $F_(mu nu)$ son las componentes del tensor de Maxwell, que se pueden escribir en términos del 4-potencial como $F_(mu nu) = partial_mu A_nu - partial_nu A_mu$. Imagine que dicha partícula se mueve a través de un espacio-tiempo de Reissner-Nordström, descrito por la métrica $ g_(mu nu) upright(d) x^mu upright(d) x^nu = - (1 - r_s / r + r_Q^2 / r^2) upright(d) t^2 + (1 - r_s / r + r_Q^2 / r^2)^(- 1) upright(d) r^2 + r^2 [upright(d) theta^2 + sin^2 \( theta \) upright(d) phi.alt^2]\, $ donde $r_s = 2 G M$ y $r_Q^2 = Q^2 G$. Considere unidades en donde $c = 4 pi epsilon.alt_0 = 1$.

  + Muestre que la energía de la partícula, dada por $ E = m (1 - frac(2 G M, r) + frac(Q^2 G, r^2)) dv( t , tau ) + frac(e Q, r)\, $ es una cantidad conservada.

  + ¿Podrá un proceso tipo Penrose realizar trabajo para un agujero negro cargado? ¿Cuál es el cambio en la masa del agujero negro, $delta M$, para el proceso física máximo?

+ #strong[Agujero Negro BTZ]

  + Considere la siguiente métrica de un espacio-tiempo tridimensional $\(2 + 1\)$: $ g_(mu nu) upright(d) x^mu upright(d) x^nu = - f\(r\)upright(d) t^2 + frac(1, f\(r\)) upright(d) r^2 + r^2 (upright(d) phi.alt - frac(r_(+) r_(-), ell r^2) upright(d) t)^2\,med f\(r\)= frac(\(r^2 - r_(+)^2\)\(r^2 - r_(-)^2\), ell^2 r^2) $

    + Para una partícula de prueba en esta geometría, escriba explícitamente las dos cantidades conservadas asociadas a las simetrías que tiene esa métrica.

    + Muestre que si $r_(+) r_(-) eq.not 0$, entonces el agujero negro está rotando.

    + Suponga que existe un observador que se mantiene a una distancia coordenada radial fija $r = R$. Muestre que es imposible debajo de cierto radio mantenerse a un ángulo fijo, es decir, los observadores están forzados a rotar juntos con el agujero negro.

    + Considere que dos observadores se mantengan a una distancia radial y ángulos fijos. Uno envía una señal electromagnética al otro. Con esta información, calcule el redshift gravitacional.
