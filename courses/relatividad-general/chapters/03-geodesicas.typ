#import "/lib/notes.typ": *

= Geodesics
En Relatividad General tenemos dos ideas clave:

+ La curvatura del espacio-tiempo le "dice" a la materia como moverse.

+ La materia dictamina como el espacio-tiempo debe curvarse.

== Acción de una partícula puntual
<part3.2>
La acción de una partícula puntual relativista está dada por: $ S = - m integral upright(d) tau $ donde $tau$ es el tiempo propio.

Check 1: En Minkowski tenemos: $ upright(d) tau & = sqrt(upright(d) t^2 - upright(d) arrow(x)^2)\
 & = upright(d) t sqrt(1 - (dv( x , t ))^2)\
 & = upright(d) t sqrt(1 - v^2) $

Y en nuestra acción, tenemos $ S & = - m integral upright(d) t sqrt(1 - v^2)\,quad v < < 1\
 & = integral upright(d) t (- m + 1 / 2 m v^2 + Phi) $

Check 2: Usando la métrica de campo débil $ d s^2 = -\(1 + 2 Phi\(x\)\)upright(d) t^2 +\(1 - 2 Phi\)upright(d) arrow(x)^2\,quad Phi < < 1\, $ tenemos: $ S & = - m integral upright(d) t sqrt(\(1 + 2 Phi\)-\(1 - 2 Phi\)V^2)\
S & tilde.op integral upright(d) tau (- m + 1 / 2 m V^2 + m Phi + dots.h.c Theta \( Phi^2 \)) $

== La ecuación geodésica
<part3.3>
Considere una curva $x^mu\(lambda\)$ en un espacio-tiempo general con métrica $g_(mu nu)\(t\,arrow(x)\)$:

#block[
#box(image("../figures/imgrg3.1.png", width: 83.0%, alt: "image"))

]
#definicion[

]

La geodésica es la curva preferida para la cual la acción es un extremo ($delta S = 0$): $ dv( x^mu , lambda , 2 ) + Gamma_(alpha beta)^mu dv( x^alpha , lambda ) dv( x^beta , lambda ) = 0 $ donde $Gamma_(alpha beta)^mu$ es el símbolo de Christoffel: $ Gamma_(alpha beta)^mu = 1 / 2 g^(mu lambda)\(partial_alpha g_(beta lambda) + partial_beta g_(alpha lambda) - partial_lambda g_(alpha beta)\) $ donde $partial_alpha$ es la derivada parcial respecto a las coordenadas contravariantes $x^alpha$: $ partial_alpha arrow.r pdv( , x^alpha ) $

Demostración: Para una métrica general $g_(mu nu)$, la acción $S\[x^mu\(lambda\)\]$, viene dada por: $ S\[x^mu\(lambda\)\]= - m integral upright(d) lambda sqrt(- g_(mu nu) dv( x^mu , lambda ) dv( x^nu , lambda )) $ considerando $x^mu med arrow.r med x^mu + delta x^mu$ tal que $delta S = S\[x^mu + delta x^mu\]- S\[x^mu\]$ tenemos que $delta S = 0$ para cualquier $delta x^mu$ sí: $ delta integral upright(d) tau & = 1 / 2 integral upright(d) lambda (- g_(mu nu) dv( x^mu , lambda ) dv( x^nu , lambda ))^(- 1\/2) [- delta g_(mu nu) dv( x^mu , lambda ) dv( x^nu , lambda ) - 2 g_(mu nu) dv( delta x^mu , lambda ) dv( x^nu , lambda )]\
delta S & = 1 / 2 integral upright(d) lambda {- partial_lambda g_(mu nu) dot(x)^mu dot(x)^nu delta x^lambda + 2 g_(mu nu) dot.double(x)^nu delta x^mu + partial_lambda g_(mu nu) dot(x)^lambda dot(x)^nu delta x^mu} $

Donde hemos usado la propiedad: $delta g_(mu nu) = partial_lambda g_(mu nu) delta x^lambda$ $ delta S = integral upright(d) lambda {g_(mu nu) dot.double(x)^nu + 1 / 2 (partial_lambda g_(mu nu) + partial_nu g_(mu lambda) - partial_mu g_(nu lambda)) + dot(x)^nu dot(x)^lambda} delta x^mu = 0 $ escribiendo $Gamma_(nu lambda)^mu = 1 / 2 g^(mu rho) (partial_lambda g_(rho nu) + partial_nu g_(rho lambda) - partial_rho g_(nu lambda))$: $ delta S = integral upright(d) lambda g_(mu nu) (dot.double(x)^nu + Gamma_(rho lambda)^nu dot(x)^rho dot(x)^lambda) delta x^mu = 0 $ para variaciones arbitrarias $delta x^mu$\; $delta S = 0$: $ dv( x^nu , tau , 2 ) + Gamma_(rho lambda)^nu dv( x^rho , tau ) dv( x^lambda , tau ) = 0 $ obtenemos la ecuación geodésica.

Nota: Observe que la misma ecuación geodésica puede ser derivada del lagrangiano: $ L = - g_(mu nu) dv( x^mu , lambda ) dv( x^nu , lambda ) $<ec3.14>

== Cantidades conservadas
<part3.4>
Si $L$ no depende explicitamente de $lambda$ tal que $pdv( L , lambda ) = 0$, luego: $ dv( L , lambda ) & = pdv( L , lambda ) + dv( x^mu , lambda ) pdv( L , x^mu ) + dv( dot(x)^mu , lambda ) pdv( L , dot(x)^mu )\
dv( L , lambda ) & = dot(x)^mu dv( , lambda ) (pdv( L , dot(x)^mu )) + dv( dot(x)^mu , lambda ) pdv( L , dot(x)^mu )\
dv( L , lambda ) & = dv( , lambda ) (pdv( L , dot(x)^mu ) dot(x)^mu)\
0 & = dv( , lambda ) (L - pdv( L , dot(x)^mu ) dot(x)^mu) $ De la conservación de la energía, tenemos: $ H = L - pdv( L , dot(x)^mu ) dot(x)^mu quad arrow.r quad H = - g_(mu nu) dv( x^mu , lambda ) dv( x^nu , lambda ) $

Si $g_(mu nu)$ no depende de alguna coordenada, luego $partial_alpha g_(mu nu) = 0$ las ecuaciones de Euler-Lagrange: $ dv( , lambda ) (pdv( L , dot(x)^alpha )) - pdv( L , x^alpha ) & = 0\
dv( , lambda ) (- 2 g_(alpha nu) dv( x^nu , lambda )) & = - underbrace(partial_alpha g_(mu nu), 0) dv( x^mu , lambda ) dv( x^nu , lambda )\
dv( , lambda ) (- 2 g_(alpha nu) dv( x^nu , lambda )) & = 0 $

La cantidad $- 2 g_(alpha nu) dv( x^nu , lambda ) = C o n s t$ corresponde al momento conjugado a la coordenada $x^alpha$.

== El límite Newtoniano
<part3.5>
Condiciones:

+ Partículas moviendose lentamente.

+ El campo gravitacional es débil.

+ El campo es estático.

+ Para partículas $v < < 1$ la ecuación geodésica: $ dv( x^mu , tau , 2 ) + Gamma_00^mu (dv( t , tau ))^2 = 0 $

+ Implica que $g_(mu nu) = eta_(mu nu) + h_(mu nu)$\; $g^(mu nu) = eta^(mu nu) - h^(mu nu)$ donde $\|h_(mu nu)\|< < 1$. A primer orden en $h_(mu nu)$, tenemos: $ Gamma_00^mu = 1 / 2 g^(mu lambda)\(partial_0 g_(0 lambda) + partial_0 g_(0 lambda) - partial_lambda g_00\)= 1 / 2 eta^(mu j) partial_j h_00 $ Para $mu = 0$ la ecuación geodésica nos queda: $ dv( t , tau , 2 ) = 0 quad arrow.r quad dv( t , tau ) = c t e $ Para $mu = i$ se tiene que: $ dv( x^i , tau , 2 ) = 1 / 2 partial^i h_00 (dv( t , tau ))^2\, $ donde al transformar $tau arrow.r t$ y definiendo $h_00 = - 2 Phi$, se tiene que: $ dv( x^i , t , 2 ) = - partial^i Phi $ En coordenadas contravariantes $x^i : partial_i arrow.r arrow(nabla)$, a primer orden en $h$: $ dv( arrow(x) , t , 2 ) = - arrow(nabla) Phi $

== Geodésicas en la métrica de Schwarzschild
<part3.6>
La métrica alrededor de un objeto de masa $M$ viene dada por: $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) t^2 + (1 - frac(2 G M, r))^(- 1) upright(d) r^2 + r^2\(upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2\) $ de donde podemos extraer las cantidades conservadas para este espacio-tiempo usando el lagrangiano en #ref(<ec3.14>) $ L = (1 - frac(2 G M, r)) dot(t)^2 - (1 - frac(2 G M, r))^(- 1) dot(r)^2 - r^2 upright(d) dot(theta)^2 - r^2 sin^2 theta upright(d) dot(phi.alt)^2 $

La ecuación de Euler-Lagrange $ dv( , lambda ) (pdv( L , dot(x)^mu )) - pdv( L , x^mu ) = 0\,med x^mu arrow.r cases(delim: "{", t, r, theta, phi.alt) $

Dado que el lagrangiano $L$ no depende explícitamente de $t$ y $phi.alt$, se sigue que: $ dv( , lambda ) (pdv( L , dot(t) )) & = 0 quad arrow.r quad E = 1 / 2 pdv( L , dot(t) ) = (1 - frac(2 G M, r)) dot(t) & \(upright("Energía")\)\
dv( , lambda ) (pdv( L , dot(phi.alt) )) & = 0 quad arrow.r quad L = - 1 / 2 pdv( L , dot(phi.alt) ) = r^2 sin^2 theta dot(phi.alt) & \(L_z\) $ Nótese que estas definiciones deben concordar con las de mecánica clásica.

La ecuación para $theta$ viene dada por: $ dv( , lambda )\(r^2 dot(theta)\)= r^2 sin theta cos theta dot(phi.alt)^2 quad arrow.r quad dot.double(theta) = frac(cos theta, sin^3 theta) L^2 / r^4 - 2 dot(r) / r dot(theta) $

Esta ecuación para $theta = pi\/2$\(plano ecuatorial) y $L = epsilon.alt$ constante se tiene que: $ epsilon.alt = (1 - frac(2 G M, r)) dot(t)^2 - (1 - frac(2 G M, r))^(- 1) dot(r)^2 - r^2 dot(phi.alt)^2 = cases(delim: "{", + 1 & upright("timelike"), 0 & upright("Null")) $ usando las cantidades conservadas: $ epsilon.alt = (1 - frac(2 G M, r))^(- 1) E^2 - (1 - frac(2 G M, r))^(- 1) dot(r)^2 - L^2 / r^2\, $ esto es: $ - E^2 + dot(r)^2 + (1 - frac(2 G M, r)) (L^2 / r^2 + epsilon.alt) = 0 $ esta ecuación puede ser escrita como: $ 1 / 2 dot(r)^2 + V\(r\)= epsilon.alt $ donde $epsilon.alt = E^2\/2$ y $V\(r\)$ es el potencial efectivo: $ V\(r\)= epsilon.alt c^2 / 2 + epsilon.alt frac(G M, r) + frac(L^2, 2 r^2) - frac(L^2 G M, c^2 r^3) $ donde $frac(G M, r)$ es potencial Newtoniano, $frac(L^2, 2 r^2)$ es el potencial centrífugo y $frac(L^2 G M, c^2 r^3)$ es la correción de la relatividad general.

== Orbitas Circulares
<part3.7>
Una partícula puede moverse en una orbita circular $r = r_c$ cuando $upright(d) V\/upright(d) r = 0$.

+ Partículas sin masa $\(epsilon.alt = 0\)$ $ V\(r\)= frac(L^2, 2 r^2) - frac(L^2 G M, r^3) med arrow.r med dv( V , r ) = - L^2 / r^3 + frac(3 L^2 G M, r^4) = 0 $ donde $r_c = 3 G M$ (Photon Sphere).

  Nota: No hay órbitas circulares para partículas en gravedad Newtoniana. La evolución depende de como $epsilon.alt$ se compara con $V_(m a x) = V\(r_c\)$:

  - Para $epsilon.alt < V_(m a x)$, la luz emitida en $r < r_c$ no puede escapar a infinito, mientras que para $r > > r_c$ la luz rebota en la barrera de potencial de momento angular regresando a infinito.

  - Para $epsilon.alt > V_(m a x)$, la energía es mayor que la barrera de potencial de momento angular. En este caso la luz emitida en $r < r_c$ puede escapar, mientras que para la luz emitida desde $r > > r_c$ pueden alcanzar $r = 0$.

+ Partículas con masa $\(epsilon.alt = 1\)$ $ V\(r\)= 1 / 2 - frac(G M, r) + frac(L^2, 2 r^2) - frac(L^2 G M, r^3) med arrow.r med dv( V , r ) = frac(G M, r^2) - L^2 / r^3 + frac(3 L^2 G M, r^4) = 0 $ entonces $ G M r_c^2 - L^2 r_c + 3 G M L^2 = 0\,quad r_c\(L\)_plus.minus = frac(L^2 plus.minus sqrt(L^4 - 12\(G M\)^2 L^2), 2 G M) $ Las soluciones dependen de $L^2$

  #block[
  #box(image("../figures/imgrg3.2.png", width: 74.0%, alt: "image"))

  ]
  - Para $L > sqrt(12) G M$ órbitas estables $r_(c\,+)$ inestables $r_(c\,-)$.

  - Para $L = sqrt(12) G M$ las dos soluciones se reducen a una órbita $r_c = 6 G M$.

  - Para $L < sqrt(12) G M$ no hay órbitas circulares estables.

== Precesión de la órbita de Mercurio
<part3.8>
La Relatividad General explica la precesión del perihelio del Mercurio.

#block[
#box(image("../figures/imgrg3.3.png", width: 53.0%, alt: "image"))

]
Para demostrar como $r$ es función de $phi.alt$, usamos: $ 1 / 2 (dv( r , lambda ))^2 + (1 / 2 - frac(G M, r) + frac(L^2, 2 r^2) - frac(L^2 G M, r^3)) = epsilon.alt $<ec3.38> usando la regla de cadena: $ (dv( r , lambda ))^2 = (dv( phi.alt , lambda ))^2 (dv( r , phi.alt ))^2 = L^2 / r^4 (dv( r , phi.alt ))^2 $ de donde la ecuación #ref(<ec3.38>) puede ser reescrita como: $ (dv( r , phi.alt ))^2 + r^4 / L^2 - frac(2 G M, L^2) r^3 + r^2 - 2 G M r = frac(2 epsilon.alt r^4, L^2) $ cambiando variables $u = frac(L^2, G M r)$, donde $u = 1$ para una órbita circular: $ (dv( u , phi.alt ))^2 + frac(L^2, \(G M\)^2) - 2 u + u^2 - frac(2\(G M\)^2 u^3, L^2) = frac(2 epsilon.alt L^2, \(G M\)^2) $

Derivando respecto a $phi.alt$: $ dv( u , phi.alt , 2 ) - 1 + u = frac(3\(G M\)^2 u^2, L^2) $

Que tiene la siguiente solución particular: $ u_1 = frac(3\(G M\)^2, L^2) [(1 + 1 / 2 e^2) + e phi.alt sin phi.alt - 1 / 6 e^2 cos \( 2 phi.alt \)] $

Tenemos que: $ u & = 1 + e cos phi.alt + alpha e phi.alt sin phi.alt med arrow.r med alpha = frac(3\(G M\)^2, L^2) < < 1\
u & tilde.eq 1 + e cos [\( 1 - alpha \) phi.alt] $

Durante cada orbita, el perihelio cambia $Delta phi.alt$ dado por: $ Delta phi.alt = 2 pi alpha = 6 pi frac(\(G M\)^2, L^2) $ para una orbita elíptica $L^2 tilde.eq G M\(1 - e^2\)a$ $ Delta phi.alt = frac(6 pi G M, c^2\(1 - e^2\)a) $

Para Mercurio, los parámetros relevantes: $ G M_0 = 1.48 times 10^3 upright("m")\,quad a = 5.79 times 10^10 upright("m")\,quad e = 0.2056\
Delta phi.alt_(m e r c u r i o) = 5.01 times 10^(- 7) r a d\/o r b i t a = 0.103''\/o r b i t a $ Usando $T = 88$ días y $Delta phi.alt_(m e r c u r i o) = 43.0''\/s i g l o$, la precesión observada restando los efectos gravitacionales de los demás planetas es $ Delta phi.alt_(m e r c u r i o) - 532''\/s i g l o approx 43''\/s i g l o $

== Bending of Light
<part3.9>
La primera evidencia experimental de la validez para GR provino de la desviación de la luz de las estrellas de fondo por el sol.

Para Schwarzschild tenemos la ecuación radial: $ 1 / 2 dot(r)^2 + frac(L^2, 2 r^2) (1 - frac(2 G M, r)) = E^2 / 2 $

#block[
#box(image("../figures/imgrg3.4.png", width: 100.0%, alt: "image"))

]
Cambiando variables $u = 1\/r$ obtenemos la siguiente ecuación diferencial no homogénea $ dv( u , phi.alt , 2 ) + u = 3 G M u^2 $ entonces $ u = 1 / b sin phi.alt + frac(G M, 2 b^2)\(3 + 4 cos phi.alt + cos\(2 phi.alt\)\) $

Para $phi.alt_oo$ la luz escapa $r = oo$ ($u = 0$) asumiendo que la desviación es pequeña $ phi.alt_oo approx - frac(4 G M, b c^2) quad upright("para el sol") quad b approx R_dot.o $ y también el observado por Eddington en 1919 $ phi.alt_oo approx 8.6 times 10^(- 5) r a d tilde.eq 18'' $

#heading(level: 2, numbering: none)[Problemas 3]
+ #strong[Derivada Covariante]

  + Sea $ T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) upright(d) x^(i_1) times.o dots.h.c times.o upright(d) x^(i_r) times.o pdv( , x^(j_1) ) times.o dots.h.c times.o pdv( , x^(j_s) ) . $ Entonces, $nabla T$ puede ser escrito localmente por $ nabla T = W_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) upright(d) x^i times.o upright(d) x^(i_1) times.o dots.h.c times.o upright(d) x^(i_r) times.o pdv( , x^(j_1) ) times.o dots.h.c times.o pdv( , x^(j_s) ) . $ Demostrar que $ W_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) = pdv( T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) , x^i ) + sum_(m = 1)^s Gamma_(i q)^(j m) T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_(m - 1) q j_m dots.h.c j_s) - sum_(ell = 1)^r Gamma_(i i l)^p T_(i_1 dots.h.c i_ell)^(j_1 dots.h.c j_s) $

  + Si escribimos $g = g_(i j) upright(d) x^i times.o upright(d) x^j$, la métrica inducida sobre $T^(*) M$ es denotada por $g^(- 1) = g^(i j) pdv( , x^i ) times.o pdv( , x^j )$ donde $\(g^(i j)\)$ es la matriz inversa de $\(g_(i j)\)$. Entonces, existe una métrica inducida sobre $T^(*) M times.o T^(*) M$ y la denotamos por $g$. Es decir, si $S = S_(i j) upright(d) x^i times.o upright(d) x^j$ y $T = T_(k l) upright(d) x^k times.o upright(d) x^ell$, entonces su producto interno es definido como $ chevron.l S\,T chevron.r_g = g\(S\,T\)= S_(i j) T_(k ell) g (upright(d) x^i times.o upright(d) x^j \, upright(d) x^k times.o upright(d) x^ell) = g^(i k) g^(j ell) S_(i j) T_(k ell) . $ Para cualquier tensor $T in G a m m a\(M\,T^(*) M times.o T^(*) M\)$, el operador #emph[traza] es definido como $ "tr"_g T := g^(i j) T_(i j) $ Para cualquier $S\,T in G a m m a\(M\,T^(*) M times.o T^(*) M\)$ y $X in Gamma\(M\,T M\)$, demostrar que $ X\(g\(S\,T\)\)= g\(nabla_X S\,T\)+ g\(S\,nabla_X T\). $ En particular, si $S = g$, demostrar que $ X\("tr"_g T\)= chevron.l g\,nabla_X T chevron.r_g . $ Localmente es $ nabla_(pdv( , x^i ))\("tr"_g T\)= nabla_(pdv( , x^i )) (g^(k ell) T_(k ell)) = g^(k ell)\(nabla_i T_(k ell)\) $

  + Sea $upright(d) v o l = sqrt(det\(g_(m n)\)) upright(d) x^1 dots.h.c upright(d) x^n$ la forma de volumen. Demuestre que $ pdv( sqrt(det\(g_(m n)\)) , x^j ) = sqrt(det\(g_(m n)\)) / 2 g^(p q) pdv( g_(p q) , x^j )\,quad pdv( log det\(g_(m n)\), x^j ) = g^(p q) pdv( g_(p q) , x^j ) $ es decir el elemento de volumen $upright(d) v o l$ satisface: $ pdv( , x^j ) upright(d) v o l = 1 / 2 pdv( log det\(g_(m n)\), x^j ) upright(d) v o l = 1 / 2 g^(p q) pdv( g_(p q) , x^j ) upright(d) v o l . $

+ #strong[Tensor de Riemann]

  + Demostrar la expresión del tensor de Riemann en términos de los símbolos de Christoffel usando los dos métodos dados en clase.

  + Demostrar las 5 propiedades de simetría del tensor de curvatura de Riemann.

  + Demostrar que $ R_(i j k ell) = 1 / 2 (pdv( g_(j l) , x^i , x^k ) + pdv( g_(i k) , x^j ) x^ell - pdv( g_(i ell) , x^j ) x^k - pdv( g_(i k) , x^i ) x^ell) + g_(p q) (Gamma_(i k)^p Gamma_(j ell)^q - Gamma_(i ell)^p Gamma_(j k)^q) $

  + Demostrar que se cumple la siguiente identidad de Ricci para $ T = T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) upright(d) x^(i_1) times.o dots.h.c times.o upright(d) x^(i_r) times.o pdv( , x^(j_1) ) times.o dots.h.c times.o pdv( , x^(j_s) )\, $ $ nabla_k nabla_ell T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) - nabla_ell nabla_k T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_s) = sum_(m = 1)^s R_(k ell p)^(j m) T_(i_1 dots.h.c i_r)^(j_1 dots.h.c j_(m - 1) p j_(m + 1) dots.h.c j_s) - sum_(t = 1)^r R_(k ell i_t)^q T_(i_1 dots.h.c i_(t - 1) q i_(t + 1) dots.h.c i_r)^(j_1 dots.h.c j_s) . $

+ #strong[Cálculos en Coordenadas Locales] Sea $M$ una manifold suave de dimensión $n$. Dada una métrica Riemanniana $g$ en $M$ la cual es dada en coordenadas locales $\(x^1\,dots.h.c\,x^n\)$ por $ g = sum_(i\,j = 1)^n g_(i j) upright(d) x^i times.o upright(d) x^j quad upright("con") quad g_(i j) = delta_(i j) + frac(x_i x_j, K^2 - sum_(i = 1)^n\(x^i\)^2)\, $ donde $K^2 - sum_(i = 1)^n\(x^i\)^2 > 0$. Calcule $Gamma_i^k j$, $R_(i j k ell)$, $R_(i j)$ y la curvatura escalar $R$ de $\(M\,g\)$. Nótese que $R_(i j) = g^(k ell) R_(k i j ell)$ y $S = g^(i j) R_(i j)$, $K$ es una constante.

+ #strong[Geodésicas sobre] $S^2$ \ El tensor métrico sobre una 2-esfera de radio $R$ es $ upright(d) s^2 = R^2\(upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2\). $

  + Determine todos los símbolos de Christoffel.

  + Demuestre que las ecuaciones geodésicas concuerdan con las ecuaciones de Euler-Lagrange del Lagrangiano $ cal(L) = 1 / 2\(dot(theta)^2 + sin^2 theta dot(phi.alt)^2\). $

  + Demuestre que el círculo máximo (longitud) $\(theta\(tau\)\,phi.alt\(tau\)\)=\(tau\,phi.alt_0\)$ satisface la ecuación de las geodésicas.

+ #strong[Vectores de Killing] \ Considere una transformación infinitesimal $x^mu arrow.r x^mu + xi^mu$. Demuestre que si el generador de la transformación $xi^mu$ satisface la ecuación (donde el punto y coma denota la derivada covariante): $ xi^(mu\;nu) + xi^(nu\;mu) = 0\, $ entonces la métrica es invariante bajo la transformación infinitesimal previamente definida. Esta ecuación se llama ecuación de Killing y sus soluciones se llaman vectores de Killing.

  + Argumente por qué la existencia de vectores de Killing en un espacio-tiempo implica la presencia de simetría (Hint: considere cómo podrías definir sistemas de coordenadas adecuados donde esto se manifieste).

  + Sea $bold(g) = g_(mu nu) upright(d) x^mu times.o upright(d) x^nu$ un tensor métrico, con componentes en la base coordenada $upright(d) x^mu$ dadas por $g_(mu nu)$. Suponga que todas las componentes $g_(mu nu)$ son independientes de una de las coordenadas, por ejemplo $g_(mu nu\,kappa) = 0$, para algún $kappa in\[0\,3\]$. Muestre que $xi^mu partial_mu := partial_kappa$ es un vector de Killing.

  + Considere la métrica de Minkowski en coordenadas cartesianas, $ g_(mu nu) upright(d) x^mu upright(d) x^nu = - upright(d) t^2 + upright(d) x^2 + upright(d) y^2 + upright(d) z^2 . $ Sea $f_(mu nu) := xi_(mu\;nu) = xi_(mu\,nu)$ un tensor. Pruebe que este tensor es antisimétrico, es decir $f_(mu nu) = - f_(nu mu)$ y además satisface $f_(mu nu\,sigma) = - f_(sigma mu\,nu)$. Usando permutaciones cíclicas de los índices, muestre que $f_(mu nu\,sigma) = 0$ y, por lo tanto, que $f_(mu nu)$ es constante. A partir de esta observación, muestre que los vectores de Killing son de la forma $xi_mu = f_(mu nu) x^nu + b_mu$, con $f_(mu nu)$ y $b_mu$ constantes. Con esto, ¿Cuántos vectores de Killing independientes se pueden construir?, (sin encontrar explícitamente estos vectores) ¿Puedes identificar las simetrías asociadas a cada uno de ellos?

  + Considere la métrica de Schwarzschild, $ g_(mu nu) upright(d) x^mu upright(d) x^nu = - (1 - frac(2 M, r)) upright(d) t^2 + (1 - frac(2 M, r))^(- 1) upright(d) r^2 + r^2\(upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2\)\, $ donde $M$ es la masa del objeto central (en unidades donde $G = c = 1$). ¿Puedes identificar solamente por inspección, al menos dos vectores de Killing? Una vez que los encuentres, determine las componentes covariantes $\(xi_mu\)$ y contravariantes $\(xi^mu\)$, calcule sus normas y explique brevemente a qué simetrías están asociados.
