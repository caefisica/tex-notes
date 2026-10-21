#import "/lib/notes.typ": *

= Cosmology
== Espacios máximalmente simétricos
<part7.1>
Sí en una manifold $cal(M)$ de dimensión $N$, existen $N\(N + 1\)\/2$ vectores de Killing y el tensor de Riemann satisface: $ R_(alpha beta gamma delta) = frac(R, N\(N - 1\))\(g_(alpha gamma) g_(beta delta) - g_(alpha delta) g_(beta gamma)\) $

Demostración:

Usando la identidad $ nabla_sigma nabla_mu nabla_nu xi_rho - nabla_mu nabla_sigma nabla_nu xi_rho = - R_(rho mu sigma)^lambda nabla_nu xi_lambda - R_(nu mu sigma)^lambda nabla_lambda xi_rho $<ec7.2>

Un vector de Killing $xi_mu$ se puede escribir como $ nabla_mu nabla_nu xi_rho = - R_(mu nu rho)^lambda xi_lambda $ tomando la derivada covariante de esta expresión $ nabla_sigma nabla_mu nabla_nu xi_rho = - nabla_sigma R_(mu nu rho)^lambda xi_lambda - R_(mu rho rho)^lambda nabla_sigma xi_lambda $ también $\(mu arrow.r sigma$, $sigma arrow.r mu$) (Nótese que $nabla^3 xi prop xi + nabla xi$) $ nabla_mu nabla_sigma nabla_nu xi_rho = - nabla_mu R_(sigma nu rho)^lambda xi_lambda - R_(sigma nu rho)^lambda nabla_mu xi_lambda $

Usando esto en #ref(<ec7.2>) escribimos en función de $R$: $ nabla_sigma nabla_mu nabla_nu xi_rho - nabla_mu nabla_sigma nabla_nu xi_rho & = - R_(rho mu sigma)^lambda nabla_nu xi_lambda - R_(nu mu sigma)^lambda nabla_lambda xi_rho\
\(- nabla_sigma R_(mu nu rho)^lambda xi_lambda - R_(mu nu rho)^lambda nabla_sigma xi_lambda\)-\(- nabla_mu R_(sigma nu rho)^lambda xi_lambda - R_(sigma nu rho)^lambda nabla_mu xi_lambda\) & = - R_(rho mu sigma)^lambda nabla_nu xi_lambda - R_(nu mu sigma)^lambda nabla_lambda xi_lambda $

Reagrupando los términos: $ \(R_(mu nu rho)^lambda delta_sigma^k - R_(sigma nu rho)^lambda delta_mu^k - R_(rho mu sigma)^lambda delta_nu^k + R_(nu mu sigma)^lambda delta_rho^k\)nabla_k xi_lambda =\(nabla_mu R_(sigma nu rho)^lambda - nabla_sigma R_(mu nu rho)^lambda\)xi_lambda $ escogiendo un $xi_lambda = 0$ con $nabla_k xi_lambda eq.not 0$ (condición de Isotropía) y sí $nabla_k xi_lambda = 0$ y $xi_lambda eq.not 0$ (condición de homogeneidad) $ \(R_(mu nu rho)^lambda delta_sigma^k - R_(sigma nu rho)^lambda delta_mu^k - R_(rho mu sigma)^lambda delta_nu^k + R_(nu mu sigma)^lambda delta_rho^k\)= 0 $<ec7.8> y $ nabla_mu R_(sigma nu rho)^lambda - nabla_sigma R_(mu nu rho)^lambda = 0 $ escribiendo #ref(<ec7.8>) como $k arrow.r lambda$ y $lambda arrow.r k$, ya que $nabla_k xi_lambda$ es antisimétrica en la ecuación de Killing $ R_(mu nu rho)^lambda delta_sigma^k - R_(sigma nu rho)^lambda delta_mu^k - R_(rho mu sigma)^lambda delta_nu^k + R_(nu mu sigma)^lambda delta_rho^k = R_(mu nu rho)^k delta_sigma^lambda - R_(sigma nu rho)^k delta_mu^lambda + R_(rho mu sigma)^k delta_nu^lambda + R_(nu mu sigma)^k delta_rho^lambda $ contrayendo $k$ y $sigma$ en esta ecuación $ R_(mu nu rho)^lambda underbrace(delta_sigma^sigma, N) - R_(sigma nu rho)^lambda delta_mu^sigma - R_(rho mu sigma)^lambda delta_nu^sigma + R_(nu mu sigma)^lambda delta_rho^sigma = R_(mu nu rho)^sigma delta_sigma^lambda - underbrace(R_(sigma nu rho)^sigma, 0) delta_mu^lambda - R_(rho mu sigma)^sigma delta_nu^lambda + R_(nu mu sigma)^sigma delta_rho^lambda $ usando la identidad de Bianchi y las propiedades del tensor de Riemann: $ \(N - 1\)R_(k mu nu rho) = - R_(rho mu) g_(k nu) + R_(nu mu) g_(k rho) $<ec7.12> vemos que como $k$ y $mu$ hacen antisimétrica esta ecuación entonces podemos escribir $R$ en función de $g$ $ - R_(rho mu) g_(k nu) + R_(nu mu) g_(k rho) = R_(rho k) g_(mu nu) - R_(nu k) g_(mu rho) $

Contrayendo índices: $ N R_(mu nu) = R g_(mu nu) $ luego colocando esto nuevamente en la ecuación #ref(<ec7.12>): $ \(N - 1\)R_(k mu nu rho) = - R / N g_(rho mu) g_(k nu) + R / N g_(mu nu) g_(k rho) $ de donde obtenemos la expresión para el tensor de Riemann para un espacio homogéneo e isotrópico: $ R_(k mu nu rho) = frac(R, N\(N - 1\))\(g_(mu nu) g_(k rho) - g_(rho mu) g_(k nu)\) $

Un ejemplo de estos espacio-tiempo es la métrica de FLRW(Friedmann, Lemaître, Robertson, Walker.)

== Métrica FLRW
<part7.2>
Se define como un espacio-tiempo homogéneo e isotrópico: $ upright(d) s^2 = upright(d) t^2 - a^2\(t\)y_(i j) upright(d) x^i upright(d) x^j $ con $ y_(i j) = delta_(i j) + frac(K x_i x_j, 1 - k\(x_k x^k\)) $ donde $k$ parametriza la curvatura de la sub-manifold de métrica $y_(i j)$, donde se tiene que: $ cases(reverse: #true, k = 0, k = + 1, k = - 1) upright("Euclideo")\
upright("Esférico")\
upright("Hiperbólico") $

En coordenadas polares esta métrica se escribe como: $ upright(d) s^2 = upright(d) t^2 - a^2\(t\)[frac(upright(d) r^2, 1 - k r^2) + delta_k^2 \( x \) upright(d) Omega^2] $

Nótese que $a arrow.r lambda a$, $r arrow.r r\/lambda$ y $k arrow.r lambda^2 k$ dejan invariante la métrica. Esta libertad de escala permite fijar $a\(0\)= 1$#footnote[$a\(0\)$ es el factor de escala en $t = 0$ es decir hoy.], donde $a$ es adimensional y se define como factor de escala y $r$ y $sqrt(k)$ tienen dimensiones de longitud y longitud inversa respectivamente.

Definimos: $ delta_k\(x\)= cases(delim: "{", sinh\(x\) & \,upright("sí") med k = - 1, x & \,upright("sí") med k = 0, sin\(x\) & \,upright("sí") med k = + 1) $ y $ x = integral frac(upright(d) r, sqrt(1 - k r^2)) $

=== Geodésicas en FLRW
Sus símbolos de Christoffel: $ Gamma_(i j)^0 & = a dot(a) y_(i j)\,quad Gamma_(0 j)^i = dot(a) / a delta_j^i\,quad Gamma_00^mu = 0\
Gamma_(0 mu)^0 & = 0\,quad Gamma_(j k)^i = 1 / 2 y^(i ell) [partial_j g_(k ell) + partial_k y_(j ell) - partial_ell y_(j k)] $ con $dot(a) = dv( a , t )$.

En la métrica de FLRW, el vector cuadri-momento $P^mu$ satisface, a lo largo de una geodésica $x^mu\(lambda\)$: $ dv( U^mu , lambda ) + Gamma_(rho nu)^mu U^rho U^nu = 0\,quad U = dv( x^mu\(lambda\), lambda ) $ usando la regla de la cadena podemos extraer: $ dv( U , lambda ) = dv( U , x^mu ) dv( x^mu , lambda ) = dv( U , x^mu ) U^mu $

La ecuación geodésica: $ U_mu dv( U^mu , lambda ) + Gamma_(rho nu)^mu U^rho U^nu = 0 $

En general: $P^mu = m U^mu$, la ecuación geodésica es $ P_lambda dv( P^mu , x^lambda ) + Gamma_(rho nu)^mu P^rho P^nu = 0 $<ec7.27> de donde para una partícula #strong[sin masa] $P_mu P^mu = 0$ y $ E upright(d) E = p upright(d) p quad upright("con") quad P^mu =\(E\,p\) $

De la componente $mu = 0$ de la ecuación #ref(<ec7.27>) se tiene que: $ E dv( E , t ) = - dot(a) / a p^2 quad arrow.r quad dot(p) / p = - dot(a) / a $ con $dot(p)\,dot(a)\,dot(x)$ se refiere a las derivadas totales respecto a $t$.

Integrando tenemos $ p = E = C / a\,med C = c t e $

Para partículas masivas: $ p = frac(m v, sqrt(1 - v^2)) = C / a $ donde $v$ es la velocidad peculiar relativa al marco de referencia comovil, se define a partir de la velocidad física: $ arrow(v)_(f i s i c a) & = dv( arrow(s) , t ) = dv( , t ) (a \( t \) arrow(x))\
arrow(v)_(f i s i c a) & = H arrow(s) + a\(t\)arrow(v)\,med H = dot(a) / a $ $H$ se define como el "flujo de Hubble" y es decir: $ arrow(v)_(f i s i c a) = underbrace(arrow(v), upright("Hubble flow")) + underbrace(arrow(v)_(p e c u l i a r), upright("velocidad propia")) $

Se define la velocidad comovil a la velocidad del flujo de Hubble.

=== Redshift
Dado que para la luz $P prop a^(- 1)$, la longitud de onda $lambda$ cambia con el facto de escala. $ lambda_0 = frac(a\(t_0\), a\(t_1\)) lambda_1\,quad lambda_0 > lambda_1 $

Podemos definir $Z$ como el desplazamiento al rojo de la longitud de onda como: $ Z & = frac(lambda_0 - lambda_1, lambda_1) = frac(a\(t_0\), a\(t_1\)) - 1\
1 + Z & = frac(1, a\(t\))\,quad a\(t_0\)= 1 $ donde $Z > 1$ para partículas en el pasado del cono de luz $\(a\(t\)< a\(0\)\)$.

=== Ley de Hubble
Al expandir el factor de escala $a\(t\)$, $H\(t\)$ parametriza la expansión $ a\(t\)= a\(t_0\)[1 + \( t - t_0 \) H_0 + dots.h.c] quad upright("con") med H_0 = frac(dot(a)\|_(t = 0), a\|_(t = 0)) $ entonces $ Z approx H_0 d quad upright("donde") quad t - t_0 tilde.op d $ con $H$ como la constante de Hubble en $t = 0$\(hoy) y se parametriza como: $ H_0 = 100 h k m s^(- 1) M p c^(- 1) $

=== Diagramas de espacio-tiempo
La métrica de FLRW puede ser reescrita de forma conformal, definiendo el tiempo conforme $tau$ $ upright(d) s^2 = a^2\(t\)[upright(d) tau^2 + frac(upright(d) r^2, 1 - k r^2) + S \( x \)^2 upright(d) Omega^2] $ donde $upright(d) tau = frac(upright(d) t, a\(t\))$.

Esto se traduce en que los diagramas de espacio-tiempo son de la forma:

=== Distancias
==== Distancia métrica
==== Distancia de luminosidad
==== Distancia angular
== Ecuaciones de Friedmann
<part7.3>
== Contenido de energía
<part7.4>
== Modelo $Lambda$CDM
<part7.5>
#heading(level: 2, numbering: none)[Problemas 7]
+ #strong[Curvatura en FRW]

  + Encuentre las ecuaciones de campo de Einstein (paso a paso) a partir de la acción de Einstein-Hilbert.

    En cosmología, la métrica de Friedmann-Robertson-Walker (FRW) en coordenadas comóviles $\(t\,r\,theta\,phi.alt\)$ viene dada por: $ upright(d) s^2 = - c^2 upright(d) t^2 + a\(t\)^2 [frac(upright(d) r^2, 1 - k r^2) + r^2 \( upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2 \)]\, $ donde $c$ es la velocidad de la luz, $a\(t\)$ es el factor de escala y $k$ es la constante de curvatura $\(k = 0\,plus.minus 1\)$, realice las siguientes tareas:

  + Calcule los símbolos de Christoffel no nulos para la métrica de FRW.

  + Utilizando los símbolos de Christoffel calculados previamente, encuentre los componentes no nulos del tensor de Riemann $R_(sigma mu nu)^rho$.

  + A partir del tensor de Riemann, calcule los componentes del tensor de Ricci $R_(mu nu)$ y el escalar de Ricci $R$.

  + Escribe las ecuaciones de Einstein usando estas cantidades.

+ #strong[Universo en aceleración]

  Considere métricas FRW planos $\(k = 0\)$ con materia sin presión $\(P_m = 0\)$ y una constante cosmológica no nula $Lambda eq.not 0$, es decir, con $Omega_(m\,0) + Omega_(Lambda\,0) = 1$.

  + Demuestre que la solución normalizada ($a_0 equiv 1$) para $Omega_(m\,0) eq.not 0$ se puede escribir como: $ a\(t\)= (frac(Omega_(m\,0), 1 - Omega_(m\,0)))^(1\/3) (sinh [3 / 2 H_0 \( 1 - Omega_(m\,0) \)^(1\/2) t])^(2\/3)\, $ verifique que $a\(t\)$ tiene los límites esperados en tiempos tempranos, $H_0 t < < 1$, y en tiempos tardíos, $H_0 t > > 1$. Por lo tanto, muestre que la edad del universo $t_0$ en estos modelos es: $ t_0 = 2 / 3 H_0^(- 1)\(1 - Omega_(m\,0)\)^(- 1\/2) sinh^(- 1) [\( 1 \/ Omega_(m\,0) - 1 \)^(1\/2)] $ y dibuje aproximadamente esto como una función de $Omega_(m\,0)$.

  + Demuestre que la densidad de energía del universo pasa a estar dominada por el término de la constante cosmológico en el siguiente corrimiento al rojo $ 1 + z_Lambda = (frac(1 - Omega_(m\,0), Omega_(m\,0)))^(1\/3) $ pero que comienza a acelerarse antes en $1 + z_a = 2^(1\/3)\(1 + z_Lambda\)$.

+ #strong[Tensor energía-momento]

  La expresión relativista general para el tensor de energía-momento en términos de las funciones de distribución está dada por: $ T_nu^mu\(arrow(x)\,t\)\|_(upright("especie ") i) = g_i integral frac(upright(d) P_1 upright(d) P_2 upright(d) P_3, \(2 pi\)^3)\(- det\[g_(alpha beta)\]\)^(- 1\/2) frac(P^mu P_nu, P^0) f_i\(arrow(x)\,arrow(p)\,t\) $ donde $P^mu = dv( x^mu , lambda )$, $g_i$ es el número de estados de espín para la especie $i$, y $det\[g_(mu nu)\]$ es el determinante de la matriz 4 -- D $g_(mu nu)$. Elimina los momentos comóviles $P_mu$ a favor de la magnitud del momento propio definido como $ p^2 equiv g^(i j) P_i P_j $ y el vector de dirección $hat(p)$. Observe que mientras los momentos comóviles $P_i$ permanecen constantes a medida que el universo se expande, $p$ disminuye como $a^(- 1)$. Demuestre que la componente $T_0^0\(arrow(x)\,t\)$ coincide con la expresión para la densidad de energía: $ rho_i = g_i integral frac(upright(d)^3 p, \(2 pi\)^3) f_i\(arrow(x)\,arrow(p)\)E\(p\). $ Utiliza el hecho de que $P^2 equiv g_(mu nu) P^mu P^nu = - m^2$ para una partícula de masa $m$.

+ #strong[Temperatura de desacople de los neutrinos]

  Para este cálculo, también tendrás que calcular la densidad numérica de fotones; ambas pueden expresarse en términos de funciones zeta de Riemann (Ver #emph[Dodelson, Modern Cosmology]).

  + Demuestre que la densidad numérica de una generación de neutrinos y antineutrinos en el universo actual es: $ n_nu = 3 / 11 n_gamma = 112 med upright("cm")^(- 3) . $ Para esto utilice las definiciones de $n$ con las distribuciones de probabilidad apropiadas dependiendo del spin de las partículas involucradas.

  + Encuentre una relación entre la temperatura de los neutrinos en el desacople, muestre que los neutrinos tienen temperatura dada por: $ T_nu = (4 / 11)^(1\/3) T_gamma . $

  + Calcule la época de igualdad entre materia y radiación $a_(e q)$ en el caso de que los tres neutrinos sean sin masa.

  + Determine la época de igualdad entre materia y radiación que dos neutrinos son sin masa, pero el tercero tiene una masa de $m = 0.1 med upright("eV")$. ¿Cuál es $a_(e q)$ en este caso?

+ #strong[Integrando las ecuaciones de Boltzmann]

  Considere partículas masivas y antipartículas con masa $m$ y densidades numéricas $n\(m\,t\)$ y $macron(n)\(m\,t\)$. Si interactúan con una sección eficaz $sigma$ a una velocidad $v$ determine:

  + Explique por qué la evolución de $n\(m\,t\)$ está descrita por $ pdv( n , t ) = - 3 dot(a) / a n - n macron(b) chevron.l sigma v chevron.r + P\(t\)\, $ e identifica el significado físico de cada uno de los términos que aparecen en esta ecuación.

  + Considerando la evolución de las antipartículas, muestra que $ \(n - macron(n)\)a^3 = upright("const") . $

  + Suponiendo simetría inicial entre partículas y antipartículas, muestra que $ 1 / a^3 dv(\(n a^3\), t ) = - chevron.l sigma v chevron.r [n^2 - n_(e q)^2]\, $ donde $n_(e q)$ denota la densidad numérica de equilibrio.

  + Defina $Y equiv n\/T^3$ y $x equiv m\/T$, y muestra que podemos escribir la ecuación diferencial: $ dv( Y , x ) = - lambda / x^2 [Y^2 - Y_(e q)^2]\, $ donde $lambda equiv m^3 chevron.l sigma v chevron.r\/H\(T = m\)$. Si $lambda$ es constante, muestra que en tiempos tardíos $Y$ se acerca a un valor dado por $ Y_oo = x_f / lambda\, $ donde $x_f$ es el tiempo de freeze-out.

  + Resuelva numéricamente la ecuación diferencial para $Y$ considerando los casos donde $lambda = 10^10$ (materia oscura) y $lambda = 10^20$ (materia bariónica) y realize un plot en escala log-log como función de $X$ para cada caso y determine el valor numérico de $Y_oo$ integrando la ecuación diferencial para valores de $X$ muy grandes. ¿Cuál es la densidad de energía reliquia en cada caso?
