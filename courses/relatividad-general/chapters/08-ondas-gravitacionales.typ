#import "/lib/notes.typ": *

= Gravitational Waves
== Gravedad Linealizada
<part8.1>
La expresión a primer orden sobre una métrica plana se escribe como: $ g_(mu nu) = eta_(mu nu) + h_(mu nu) quad upright("con") quad\|\|h_(mu nu)\|\|< < 1\, $ donde $h_(mu nu)$ es la perturbación sobre $eta_(mu nu)$, la inversa de $g_(mu nu)$, viene dada por:

$ g^(mu nu) & = eta^(mu nu) - h^(mu nu)\
g^(mu alpha) g_(mu beta) & =\(eta^(mu alpha) - h^(mu alpha)\)\(eta_(mu beta) + h_(mu beta)\)\
delta_beta^alpha & = delta_beta^alpha + eta^(mu alpha) h_(mu beta) - h^(mu alpha) eta_(mu beta) + cal(O)\(h^2\)\
eta^(mu alpha) h_(mu beta) & tilde.equiv h^(mu alpha) eta_(mu beta) $ vemos que $eta^(mu alpha)$ mapea las componentes covariantes de $h_(mu beta)$ en sus componentes contravariantes a primer orden en $h$ $ h_beta^alpha tilde.equiv h_beta^alpha = h_beta^alpha $ por lo que la métrica $eta_(mu nu)$ puede ser usada para subir los índices de la perturbación $h_(mu nu)$.

Los símbolos de Christoffel vienen dados por: $ Gamma_(beta gamma)^alpha = 1 / 2 eta^(alpha lambda)\(partial_beta h_(lambda gamma) + partial_gamma h_(beta lambda) - partial_lambda h_(beta gamma)\)\, $ y el tensor de Riemann a primer orden en $h$: $ R_(mu rho nu)^sigma & = partial_rho Gamma_(mu nu)^sigma - partial_nu Gamma_(mu rho)^sigma + underbrace(Gamma_(mu nu)^lambda Gamma_(rho lambda)^sigma - Gamma_(rho mu)^lambda Gamma_(nu lambda)^sigma, cal(O)\(h^2\))\
 & = 1 / 2 eta^(sigma lambda)\(partial_rho partial_mu h_(nu lambda) - partial_rho partial_lambda h_(mu nu) - partial_nu partial_mu h_(rho lambda) + partial_nu partial_lambda h_(mu rho)\) $ donde el tensor de Ricci y el escalar de Ricci: $ R_(mu nu) & = 1 / 2\(partial^lambda partial_mu h_(nu lambda) - square.stroked.tiny h_(mu nu) + partial^lambda partial_nu h_(mu lambda) - partial_mu partial_nu h_lambda^lambda\)\
R & = partial^mu partial^nu h_(mu nu) - square.stroked.tiny h_lambda^lambda $

Las ecuaciones de Einstein se reducen: $ 1 / 2 {partial^lambda partial_mu h_(nu lambda) + partial^lambda partial_nu h_(mu lambda) - square.stroked.tiny h_(mu nu) - partial_mu partial_nu h - \( partial^rho partial^sigma h_(rho sigma) + square.stroked.tiny h_lambda^lambda \) eta_(mu nu)} = 8 pi G T_(mu nu)\(arrow(x)\,t\) $ para uan fuente de energía dada por $T_(mu nu)$ que varía con $t$.

=== Simetría Gauge o de calibre
Bajo transformaciones infinitesimales $x^mu arrow.r x^mu + xi^mu$, la métrica $g_(mu nu)$ cambia por: $ delta g_(mu nu) & = nabla_mu xi_nu + nabla_nu xi_mu\
delta\(eta_(mu nu) + h_(mu nu)\) & =\(partial_mu xi_nu + partial_nu xi_mu - underbrace(Gamma_(mu nu)^alpha xi_alpha, cal(O)\(h xi\)) - underbrace(Gamma_(nu mu)^alpha xi_alpha, cal(O)\(h xi\))\)\
delta h_(mu nu) & = partial_mu xi_nu + partial_nu xi_mu $

Luego: $ h_(mu nu) med arrow.r med h_(mu nu) + partial_mu xi_nu + partial_nu xi_mu . $

Entonces, en analogía con el electromagnetismo, se puede imponer un gauge para fijar las componentes de $h_(mu nu)$.

Usando el gauge de de Donder: $ g^(mu nu) Gamma_(mu nu)^sigma & = 0\
eta^(mu nu) {1 / 2 eta^(sigma rho) \( partial_mu h_(rho nu) + partial_nu h_(rho mu) - partial_rho h_(mu nu) \)} & = 0\
partial^nu h_nu^sigma + partial^mu h_mu^sigma - partial^sigma h_lambda^lambda & = 0\
partial^nu h_(nu sigma) - 1 / 2 partial_sigma h & = 0 $

Las ecuaciones de Einstein en este gauge se reducen a: $ square.stroked.tiny h_(mu nu) - 1 / 2 square.stroked.tiny h eta_(mu nu) = - 16 pi G T_(mu nu)\, $ definiendo $ macron(h)_(mu nu) & = h_(mu nu) - 1 / 2 h eta_(mu nu)\
square.stroked.tiny macron(h)_(mu nu) & = - 16 pi G T_(mu nu) $

Reduciendose a una ecuación de onda.

=== Límite Newtoniano
En este límite $h_(mu nu)\(arrow(x)\,t\)= h\(arrow(x)\)$: $ square.stroked.tiny macron(h)_(mu nu) & = - 16 pi G T_(mu nu)\
arrow(nabla) macron(h)_(mu nu) & = - 16 pi G T_(mu nu) $

Escogiendo: $macron(h)_00 = - 4 Phi\(arrow(x)\)$ y $macron(h)_(0 i) = h_(i j) = 0$ $ - 4 arrow(nabla)^2 Phi\(arrow(x)\) & = - 16 pi G rho\
arrow(nabla)^2 Phi\(arrow(x)\) & = 4 pi G rho $ que es la ecuación de Poisson.

El elemento de línea en este límite: $ upright(d) s^2 = -\(1 + 2 Phi\(arrow(x)\)\)upright(d) t^2 +\(1 - 2 Phi\(arrow(x)\)\)upright(d) arrow(x)^2 $ coincide con el caso de gravedad Newtoniana.

== Soluciones a la ecuación de onda
<part8.2>
Para la ecuación en el vacío: $ square.stroked.tiny macron(h)_(mu nu) = 0 $ tiene soluciones: $ macron(h)_(mu nu) = Re\(A_(mu nu) e^(i k_mu x^mu)\) $ de donde $k_mu$ debe ser un vector nulo que cumple con: $ k_mu k^mu = 0 $ donde $k^mu =\(omega\,arrow(k)\)$ con $omega$ como la frecuencia de las ondas gravitacionales $ omega = plus.minus\|arrow(k)\|quad upright("y") quad dv( omega ,\|arrow(k)\|) = 1\, $ por lo que las ondas gravitacionales viajan a la velocidad de la luz.

La matriz $H_(mu nu)$, define la amplitud de la onda gravitacional con 10 componentes reducibles a 2 componentes independientes que definen la polarización de las ondas gravitacionales.

En el gauge de de Donder, la condición $partial^mu macron(h)_(mu nu) = 0$ implica que: $ k^mu A_(mu nu) = 0\, $ definiendo la polarización como transversal a la dirección de propagación, estas ecuaciones definen 4 vínculos sobre $A_(mu nu)$. Sin embargo $A_(mu nu)$ satisface $ macron(h)_(mu nu) med arrow.r med macron(h)_(mu nu) + partial_mu xi_nu + partial_nu xi_mu\, $ para $partial^mu h_(mu nu) = 0$, $xi_mu$ satisface: $ square.stroked.tiny xi_mu = 0\,med xi_mu = x_mu e^(i tilde(k)_mu x^mu) $ entonces para $macron(h)_(mu nu) = A_(mu nu) e^(i k_mu x^mu)$ en el plano transverso: $ A_(mu nu) med arrow.r med A_(mu nu) + i\(tilde(k)_mu x_nu + tilde(k)_nu x_mu - tilde(k)^sigma x_sigma eta_(mu nu)\)\, $ por lo que podemos escoger $A_(0 mu) = 0$ y $A_mu^mu = 0$ como soluciones que dejan $A_(mu nu)$ invariante, entonces estas condiciones definen el gauge transverso y sin traza.

Las soluciones para $macron(h)_(mu nu)$ en este gauge en la dirección $hat(z)$ se escriben como: $ macron(h)_(mu nu)^Pi\(t\,z\)= mat(delim: "(", 0, 0, 0, 0; 0, text(fill: #red,  h_(+) ), text(fill: #blue,  h_times ), 0; 0, text(fill: #blue,  h_times ), text(fill: #red,  - h_(+) ), 0; 0, 0, 0, 0) cos\[omega\(t - z\)\] $ escrito en términos del elemento de línea $upright(d) s^2$ $ upright(d) s^2 & = - upright(d) t^2 + upright(d) z^2 + [1 + h + cos \( omega t - omega z \)] upright(d) x^2 + [1 + h + cos \( omega \( t - z \) \)] upright(d) y^2\
 & quad + 2 h_x cos\(omega\(t - z\)\)upright(d) x upright(d) y $

En general, podemos introducir el proyector $Lambda_(i j k l)$ de la forma $ Lambda_(i j k l)\(hat(n)\)= P_(i k) P_(j l) - 1 / 2 P_(i j) P_(k l) $ donde $P_(i l)$ viene dado por: $ P_(i l) = delta_(i l) - n_i n_l $

Este proyector permite encontrar $macron(h)_(i j)^Pi$ en el gauge Transverso sin traza dado una solución de onda plana $h_(mu nu)$ en el gauge de de Donder: $ h_(i j)^Pi = Lambda_(i j k l) h_(k l) $

$Lambda_(i j k l)$ satisface las siguientes propiedades:

+ $Lambda_(i j k l) Lambda_(k l m n) = Lambda_(i j m n)$.

+ $n^i Lambda_(i j k l) = 0$\; $n^j Lambda_(i j k l) = 0$.

+ $Lambda_(i i k l) = 0$\; $Lambda_(i j k k) = 0$.

Para estudiar el efecto de una onda gravitacional sobre varias parrticulas usamos la ecuación de la desviación geodésica: $ frac(upright(D)^2 B^mu, upright(D) tau^2) = - R_(nu rho sigma)^mu U^nu U^sigma B^rho quad upright("con") quad frac(upright(D), upright(D) tau) = T^alpha nabla_alpha $ donde $B^mu$ es el vector de separación entre geodésicas vecinas. A primer orden en $h$, podemos aproximar la $U^mu$ como $ U^mu tilde.equiv\(1\,0\,0\,0\) $ y el tiempo propio: $ upright(d) tau approx upright(d) t quad arrow.r quad dv( B^mu , t , 2 ) = - R_(0 rho 0)^mu B^rho $ luego usando la condición $h_(mu 0) = 0$, las componentes no nulas del tensor de Riemann vienen dadas por: $ R_(0 rho 0)^mu = - 1 / 2 partial_0^2 h_rho^mu $

La ecuación de la desviación geodésicas para $B^mu$ satisface a primer orden en $h_(mu nu)$ $ dv( B^mu , t , 2 ) = 1 / 2 dv( h_rho^mu , t , 2 ) B_rho $ en el plano $z = 0$ y para $h_(mu rho) = A_(mu rho)^(+) e^(i omega t)$ $ dv( B^1 , t , 2 ) & = - omega^2 / 2 h_(+) e^(i omega t) B^1\
dv( B^2 , t , 2 ) & = + omega^2 / 2 h_(+) e^(i omega t) B^2 $

Que tiene soluciones para $A_(+) < < 1$\(primer orden en $h$) donde hemos usado la forma matricial de $h_(mu nu)$, despues de fijar calibre. Estas ecuaciones tienen las siguientes soluciones: $ B^1\(t\) & = B^1\(0\)(1 + 1 / 2 h_(+) e^(i omega t) + cal(O) \( h^2 \))\
B^2\(t\) & = B^2\(0\)(1 + 1 / 2 h_(+) e^(i omega t) + cal(O) \( h^2 \)) $

Para $t = 0$ sí las geodésicas con separación $B^mu$ satisfacen sí en $t = 0$ corresponde a un círculo: $ \(B^1\(0\)\)^2 +\(B^2\(0\)\)^2 = R^2\, $ entonces como $B^1$ y $B^2$ son separables en la ecuación de la desviación geodésica, el modo $h_(+)$ corresponde a oscilaciones en estas geodésicas de la forma:

#figure([#box(image("../figures/imgrg8.1.png", width: 80.0%, alt: "image")) <fig8.1>

  ],
  caption: [
    Oscilación para $h_x$ al pasar una onda gravitacional. (Sean Carroll)
  ]
)
<fig8.1>

Adicionalmente, como en electromagnetismo, es posible definir polarización circular derecha o izquierda usando $ h_R & = 1 / sqrt(2)\(h_(+) + i h_x\)\
h_L & = 1 / sqrt(2)\(h_(+) - i h_x\) $

== Producción de Ondas Gravitacionales
<part8.3>
Para estudiar la producción de ondas gravitacionales consideramos la ecuación no-homogénea de $h_(mu nu)$ $ square.stroked.tiny macron(h)_(mu nu) = - 16 pi G T_(mu nu) $ donde $macron(h)_(mu nu)$ es definido como: $ macron(h)_(mu nu) = h_(mu nu) - 1 / 2 eta_(mu nu) h $

Para una fuente de materia moviéndose a velocidades no-relativistas, la solución a la ecuación para $macron(h)_(mu nu)$ viene dada por: $ macron(h)_(mu nu)\(t\,arrow(x)\)= 4 G integral_Sigma upright(d)^3 y frac(T_(mu nu)\(t_r\,y\), \|x - y\|)\, $ donde $Sigma$ es la región donde $T_(mu nu)$ está definido, $t_r$ es el tiempo retardado al encontrar la función de Green para el problema homogéneo y se define como: $ t_r = t -\|arrow(x) - arrow(y)\| $

#figure([#box(image("../figures/imgrg8.2.png", width: 70.0%, alt: "image")) <fig8.2>

  ],
  caption: [
    Geometría para el cono de luz en el pasado de $P$. (Michele Maggiore)
  ]
)
<fig8.2>

La función de Green para el problema homogéneo viene dada por $ G\(x - y\)= - frac(1, 4 pi) frac(1, \|x - y\|) delta\(t_(r +) - t\) $

La cantidad $\|x - y\|$ se puede expandir $ \|x - y\| & = r - frac(x dot.op y, r) quad upright("con") quad r =\|x\|> > d\
frac(1, \|x - y\|) & = 1 / r + frac(x dot.op y, r^3) + cal(O) (d^2 / r) $ donde $d$ es la distancia a la fuente. $ T_(mu nu)\(t_r\,y\)= T_(mu nu)\(t - r\,y\)+ dv( , t ) T_(mu nu)\(t - r\,y\)frac(x dot.op y, r) $ donde esta expansión es válida si $dot(T)_(mu nu) < < T_(mu nu)$ a primer orden se tiene $ macron(h)_(mu nu)\(t\,x\)= frac(4 G, r) integral_Sigma upright(d^3) y T_(mu nu)\(t - r\,y\)+ cal(O) ((d / r)^2) $

Donde las componentes espaciales de $h_(mu nu)$ vienen dadas por: $ macron(h)_(i j)\(t\,x\)approx frac(4 G, r) integral_Sigma upright(d)^3 y T_(i j)\(t - r\,y\) $

Escribiendo $T_(i j)$ en términos de derivadas: $ T_(i j) & = T_(i k) delta_j^k + partial^k T_(i k) y_j - partial^k T_(i k) y_j\
 & = T_(i k) partial^k y_j + partial^k T_(i k) y_j - partial^k T_(i k) y_j\
 & = partial^k\(T_(i k) y_j\)- partial^k T_(i k) y_j $

== Energía Radiada
<part8.4>
== Flujo de energía
<part8.5>
#heading(level: 2, numbering: none)[Problemas 8]
+ #strong[Parámetros en Inflación]

  Derive algunas identidades útiles que involucran los parámetros de desaceleración durante la inflación en tiempo conforme $tau$.

  + Demuestra que $ dv( , tau ) (frac(1, a H)) = epsilon.alt - 1 . $

  + Muestre que el factor de Hubble satisface: $ 4 pi G\(dot(phi.alt)\)^2 = epsilon.alt H^2 . $

  + Utilizando las definiciones de $epsilon.alt$ y $delta$, demuestra que: $ dv( epsilon.alt , t ) = - 2 a H epsilon.alt\(epsilon.alt + delta\). $

  + Expresa los parámetros de desaceleración $epsilon.alt$ y $eta$ en términos del potencial $V$ y sus derivadas con respecto a $phi.alt$. Demuestra que: $ epsilon.alt = frac(1, 16 pi G) (V' / V)^2 $ y $ delta = - epsilon.alt + frac(1, 8 pi G) V'' / V $ donde las primas denotan derivadas con respecto a $phi.alt$ para el potencial $V$.

+ #strong[Usando el campo de Higgs como inflación]

  En este problema vamos a estudiar si el campo de Higgs puede ser usado para inflación:

  + Sea el potencial del bosón de Higgs $ V\(phi.alt\)= lambda\(phi.alt^2 - v^2\)^2\, $ donde $v = 246$ GeV. Dibuja el potencial e indica las regiones donde podría ocurrir la inflación de lento decaimiento (#emph[slow-roll]). Calcula los parámetros de lento decaimiento $epsilon.alt_V equiv 1 / 2 M_(p l)^2\(V'\/V\)^2$ y $eta_V equiv M_(p l)^2\(V''\/V\)$.

  + Considere la región $0 < phi.alt < v$. Dibuje $epsilon.alt_V\(phi.alt\)$ y $eta_V\(phi.alt\)$ entre $phi.alt = 0$ y $phi.alt = v$. ¿Existe una región en la cual ambas condiciones de lento decaimiento pueden cumplirse simultáneamente?

  + Ahora, observe el régimen $phi.alt > > v$. Demuestra que $epsilon.alt_V\(phi.alt\)$ y $eta_V\(phi.alt\)$ se vuelven independientes de $v$. ¿Para qué valores de campo ocurre la inflación? Determina los valores de campo al final de la inflación $\(phi.alt_E\)$ y $N_star.op tilde.op 60$ e-dobles antes $\(phi.alt_star.op\)$. \[Puedes asumir que $phi.alt_star.op > > phi.alt_E$\.\]

  + Calcule la amplitud del espectro de potencia de las fluctuaciones escalares en $phi.alt_star.op$. Expresa tu respuesta en términos de $N_star.op$ y la masa del bosón de Higgs $m_H$.

  + Estima el valor de $m_H$ requerida para igualar la amplitud escalar observada $Delta_s^2 = 2 times 10^(- 9)$. Compara esto con la masa anunciada del bosón de Higgs, $m_H = 125$ GeV.

+ #strong[Ondas Gravitacionales en el vacío]

  Para realizar una descripción perturbativa de la gravedad, considere un sistema de coordenadas $\(U\,x\)$ del espacio-tiempo $M$, en el cual la métrica $g$ toma la forma $g_(mu nu)\(x\)upright(d) x^mu upright(d) x^nu$ con: $ g_(mu nu) = eta_(mu nu) + h_(mu nu)\, $ donde $eta$ denota la métrica plana de Minkowski. Y limitemos nuestro interés en un sistema de coordenadas donde el régimen de gravedad débil se traduce en $\|\|h_(mu nu)\|\|< < 1$.

  + Muestre que: $ g^(mu nu) = eta^(mu nu) - h^(mu nu) . $

  + Muestre a continuación que los símbolos de Christoffel se leen: $ Gamma_(mu nu)^rho = 1 / 2 eta^(rho lambda)\(partial_mu h_(nu lambda) + partial_nu h_(lambda mu) - partial_lambda h_(mu nu)\). $

  + Muestre luego que, en el orden en el que estamos trabajando, $ R_(mu nu) = 1 / 2\(partial_sigma partial_nu h_mu^sigma + partial_sigma partial_mu h_nu^sigma - partial_mu partial_nu h - square.stroked.tiny h_(mu nu)\)\, $ con $h = eta^(mu nu) h_(mu nu) = h_mu^mu$ y $square.stroked.tiny$ siendo el D'Alambertiano del espacio plano, $square.stroked.tiny = - partial_t^2 + partial_x^2 + partial_y^2 + partial_z^2$.

  + Demuestre que esto se puede convertir en $ R_(mu nu) = 1 / 2\(partial_mu partial^lambda macron(h)_(lambda nu) + partial_nu partial^lambda macron(h)_(lambda mu) - square.stroked.tiny h_(mu nu)\)\, $ con $macron(h)_(mu nu) = h_(mu nu) - 1 / 2 h eta_(mu nu)$, siendo la perturbación inversa de traza.

  El siguiente paso es lidiar con la libertad de calibre correspondiente a las transformaciones de coordenadas. Suponga que hacemos una buena transformación de coordenadas, tal que $ x^mu med arrow.r med y^mu\(x\)= x^mu + epsilon.alt^mu\(x\)\, $ con $\|\|epsilon.alt^mu\|\|< < 1$ y $\|\|partial_sigma epsilon.alt^mu\|\|< < 1$:

  + Comience con la transformación de la métrica $g$ y demuestre que $ g_(mu nu)\(y\)= eta_(mu nu) + h_(mu nu)\(y\)- partial_mu epsilon.alt_nu\(y\)- partial_nu epsilon.alt_mu\(y\) $

  + Ahora podemos volver a la parte (d) y notar que si: $ partial^mu macron(h)_(mu nu) = 0 $ hay una notable simplificación en el tensor de Ricci. Fijar el calibre es equivalente a encontrar una transformación de coordenadas específica $epsilon.alt^mu$. Muestre que para una perturbación dada de la métrica $h$, haciendo una transformación de coordenadas por $epsilon.alt$ con: $ square.stroked.tiny epsilon.alt^nu = partial_mu macron(h)^(mu nu)\, $ se reduce al calibre de Lorenz.

  + Una vez en el calibre de Lorenz, demuestre que la ecuación linearizada de Einstein se lee: $ square.stroked.tiny macron(h)_(mu nu) = - 16 pi G T_(mu nu) . $ En este punto, podemos especializarnos en el caso de la solución de vacío; es decir, no nos preocupamos por cómo se ha originado una onda gravitacional, sino que nos gustaría saber cómo se propagaría una onda existente.

  + Verifique que la onda plana $ macron(h)_(mu nu)\(x\)= a_(mu nu) exp (i \( k^lambda x_lambda + phi.alt \))\, $ con $k$ constante, $a$ simétrica constante y fase constante $phi.alt$, es de hecho una solución a la ecuación linealizada de Einstein al vacío, si $k$ es similar a la luz.

+ #strong[Radiación cuadrupolar en órbitas circulares]

  En este problema, consideramos un sistema binario con masas $m_1$ y $m_2$, y asumimos que la coordenada relativa realiza un movimiento circular. Por el momento, asumimos que el movimiento orbital está dado y que descuidamos cualquier retroacción (#emph[backreaction]) en el movimiento debido a la emisión de ondas gravitacionales. Dadas las ecuaciones paramétricas de la órbita en el plano $\(x\,y\)$: $ x_0\(t\) & = R cos (omega_s t + pi / 2)\,\
  y_0\(t\) & = R sin (omega_s t + pi / 2)\,\
  z_0\(t\) & = 0 . $ Encuentre:

  + Las componentes del tensor segundo momento de masa $M^(i j)$.

  + Encuentre las amplitudes de polarización de las ondas gravitacionales $h_times$, $h_(+)$.

+ #strong[Momento angular de las ondas gravitacionales]

  Comenzando por la acción Einstein-Hilbert obtenga para una perturbación de la métrica $g_(mu nu) = eta_(mu nu) + h_(mu nu)$: $ S_E = - frac(c^3, 64 pi G) integral upright(d)^4 x [partial_mu h_(alpha beta) partial^mu h^(alpha beta) - partial_mu h partial^mu h + 2 partial_mu h^(mu nu) partial_nu h - 2 partial_mu h^(mu nu) partial_rho h_nu^rho] . $ Extraiga la expresión siguiente usando los grados de libertad físicos: $ cal(L) = - frac(c^4, 64 pi G) partial_mu h_(i j)^(upright(T T)) partial^mu h_(i j)^(upright(T T)) . $ Usando el teorema de Noether derive la expresión para el momento angular de una onda gravitacional: $ J^i = frac(c^2, 32 pi G) integral upright(d)^3 x [- epsilon.alt^(i k l) h_(a b)^(upright(T T)) x^k partial^l h_(a b)^(upright(T T)) + 2 epsilon.alt^(i k l) h_(a k)^(upright(T T)) dot(h)_(a l)^(upright(T T))] . $
