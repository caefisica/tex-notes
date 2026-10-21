#import "/lib/notes.typ": *

= The Einstein Equation
La primera suposición de Einstein fue $ R_(mu nu) = k T_(mu nu)\, $ esto no funciona ya que no cumple la identidad de Bianchi. Si usamos la identidad de Bianchi $ 0 & = g^(lambda sigma) g^(mu rho)\(nabla_lambda R_(mu nu rho sigma) + nabla_nu R_(lambda mu rho sigma) + nabla_mu R_(nu lambda rho sigma)\)\
 & = nabla^sigma R_(nu sigma) - nabla_nu R + nabla^rho R_(nu rho) $

Así que $ nabla^mu R_(mu nu) = 1 / 2 nabla_nu R $<ec5.3>

entonces $nabla^mu R_(mu nu) eq.not 0$ lo cual seria inconsistente con $nabla^mu T_(mu nu) = 0$, sin embargo, #ref(<ec5.3>) implica $ 0 = nabla^mu (R_(mu nu) - 1 / 2 g_(mu nu) R) = nabla^mu G_(mu nu) $ donde $G_(mu nu)$ es el tensor de Einstein.

Entonces una suposición mejorada es $ G_(mu nu) = k T_(mu nu) $<ec5.5>

== Límite Newtoniano
<part5.1>
Ahora vamos a mostrar que la suposición de #ref(<ec5.5>) tiene el límite Newtoniano correcto.

La traza de la ecuación de Einstein es $ R = - k T $

La ecuación de Einstein es $ R_(mu nu) = k (T_(mu nu) - 1 / 2 g_(mu nu) T) $

En el límite Newtoniano, tenemos $ T_00 = rho quad upright("y") quad T = g^00 T_00 approx - T_00 = - rho $

Entonces, obtenemos $R_00 = 1 / 2 k rho$. Para $g_(mu nu) = eta_(mu nu) + h_(mu nu)$ tenemos $ R_00 = R_(0 i 0)^i & = partial_i Gamma_00^i - partial_0 Gamma_(i 0)^i + Gamma_(j lambda)^i Gamma_00^lambda - Gamma_(0 lambda)^i Gamma_(j 0)^lambda\
 & = partial_i Gamma_00^i . $

El símbolo de Christoffel relevante $ Gamma_00^i & = 1 / 2 g^(i lambda)\(partial_0 g_(0 lambda) + partial_0 g_(0 lambda) - partial_lambda g_00\)\
 & = - 1 / 2 delta^(i j) partial_j h_00 . $ por lo tanto tenemos $ R_00 = - 1 / 2 nabla^2 h_00 med arrow.r med nabla^2 h_00 = - k rho\, $ recordando que $h_00 = - 2 Phi$\(la ecuación de la geodésica o principio de equivalencia).

Así podemos reproducir la ecuación de Poisson si $ k = 8 pi G med arrow.r med nabla^2 Phi = 4 pi G rho quad\(upright("Ley de Gauss para la gravedad")\) $ las orbitas de partículas en caída libre satisfacen $ arrow(a) = arrow(g) = - nabla phi.alt\(arrow(x)\,t\) $

Proof: Tenemos que $ integral.cont_(partial cal(M)) g dot.op upright(d) A = - 4 pi G rho $

Asumiendo que $g\(r\)= g\(r\)e_r$ (campo radial) $ g\(r\)integral.cont_Sigma arrow(e)_r dot.op upright(d) A & = - 4 pi G M med\(upright("Asumiendo que ") Sigma = s^2\)\
g\(r\)\(4 pi r^2\) & = - 4 pi G M med arrow.r med g\(r\)= - G M e_r / r^2 $

Asumiendo $g\(r\)= - frac(G M, r^2) arrow(e)_r$ $ g\(r\)= - G integral rho\(q\)frac(\(r - q\), \|r - q\|^3) upright(d)^3 q $ usando el teorema $nabla dot.op (frac(r, \|r^3\|)) = 4 pi delta\(r\)$ de ambos lados $  & nabla dot.op g = - 4 pi G integral p\(q\)delta\(r - q\)upright(d)^3 q\
 & quad arrow.r nabla dot.op g\(r\)= - 4 pi G rho\(r\). quad square.stroked.tiny $

== La ecuación de Einstein
<part5.2>
La forma final de la ecuación de Einstein es $ G_(mu nu) = 8 pi G T_(mu nu) $

Esta ecuación describe un gran rango de fenómenos desde orbitas planetarias hasta la expansión del universo y agujeros negros.

- 10 ecuaciones, 4 constantes $\(nabla^mu G_(mu nu) = 0\)= 6$ ecuaciones independientes.

- Ecuaciones no lineares de $g_(mu nu)$: soluciones no se superponen.

- La curvatura proviene de $T_(mu nu)$: Energía y momentum.

== Acción de Einstein-Hilbert
<part5.3>
Alternativamente, la ecuación de Einstein se deriva de una acción. La acción para la gravedad es la Acción de Einstein-Hilbert $ S = integral upright(d)^4 x sqrt(- g) R $ donde $g = det\(g_(mu nu)\)$. Note que:

+ $upright(d)^4 x med arrow.r med upright(d)^4 x' = det (pdv( x^(mu') , x^mu )) upright(d)^4 x$.

+ $det g_(mu nu) med arrow.r med det g_(mu' nu') = det (pdv( x^mu , x^(mu') ) pdv( x^nu , x^(nu') ) g_(mu nu)) = [det (pdv( x^mu , x^(mu') ))]^2 det g_(mu nu)$.

Así que $upright(d)^4 x sqrt(- g)$ es invariante bajo una transformación de coordenadas.

#ejemplo[

]

En coordenadas cartesianas, $sqrt(- g) upright(d)^4 x = upright(d) t upright(d) x upright(d) y upright(d) z$, mientras que en coordenadas polares tenemos $sqrt(- g) upright(d)^4 x = r^2 sin\(theta\)upright(d) t upright(d) theta upright(d) phi.alt$. Escribimos $R = g^(mu nu) R_(mu nu)$ y variando $S$ con respecto a la métrica(inverso) tenemos $ delta S = integral upright(d)^4 x [text(fill: #red,  \( delta sqrt(- g) \) g^(mu nu) R_(mu nu) ) + text(fill: #blue,  sqrt(- g) delta g^(mu nu) R_(mu nu) ) + text(fill: #maroon,  sqrt(- g) g^(mu nu) delta R_(mu nu) )] $

- Para el término $text(fill: #maroon,  sqrt(- g) g^(mu nu) delta R_(mu nu) )$: Es una derivada total: $ g^(mu nu) delta R_(mu nu) = nabla_mu x^mu\,med upright("con") med x^mu equiv g^(rho nu) delta Gamma_(rho nu)^mu - g^(mu nu) delta Gamma_(nu rho)^rho $ y podemos descartarlo.

- Para el término $text(fill: #red, \(delta sqrt(- g)\)g^(mu nu) R_(mu nu) )$: Cualquier matriz diagonalizable $M$ obedece $ ln\(det\(M\)\)= "tr"\(ln\(M\)\)med arrow.r med frac(1, det\(M\)) delta\(det M\)= "tr"\(M^(- 1) delta M\) $ Aplicando esto a la métrica, tenemos $ delta g & = g\(g^(mu nu) delta g_(mu nu)\)\
   & = - g\(g_(mu nu) delta g^(mu nu)\) $ hemos usado $delta\(g_(mu nu) g^(mu nu)\)= delta\(g_mu^mu\)= 0$. Por lo tanto, encontramos $ delta sqrt(- g) = - frac(1, 2 sqrt(- g)) delta g = frac(g, 2 sqrt(- g)) g_(mu nu) delta g^(mu nu) = - 1 / 2 sqrt(- g) g_(mu nu) delta g^(mu nu) $

- Sustituyendo esto dentro de $delta S$, encontramos $ delta S = integral upright(d)^4 x sqrt(- g) (text(fill: #blue,  R_(mu nu) - 1 / 2 g_(mu nu) R )) delta g^(mu nu) $ $delta S = 0$ implica la ecuación de Einstein en el vacío: $ R_(mu nu) - 1 / 2 g_(mu nu) R_(mu nu) = 0 $

=== Incluyendo materia
Para obtener la ecuación de Einstein sin vacío, agregamos una acción para la materia: $ S = frac(1, 2 k) integral upright(d)^4 x sqrt(- g) R + text(fill: #red,  S_M ) . $

Variando esta acción con respecto a la métrica da: $ delta S = 1 / 2 integral upright(d)^4 x sqrt(- g) (1 / k G_(mu nu) - T_(mu nu)) delta g^(mu nu) $<ec5.28> donde hemos definido el tensor de energía-momento $ T_(mu nu) equiv - 2 / sqrt(- g) frac(delta S_M, g^(mu nu)) $

$delta S = 0$ entonces implica $ G_(mu nu) = k T_(mu nu) $ donde $k = 8 pi G$ está fijado por el límite de Newton (como antes).

Recuerde que $x^mu arrow.r x^mu - v^mu$ implica $delta g_(mu nu) = nabla_mu v_nu + nabla_nu v_mu$, sustituyendo esto en #ref(<ec5.28>) tenemos $ delta S & = integral upright(d)^4 x sqrt(- g) (1 / k G_(mu nu) - T_(mu nu)) nabla^mu v^nu\
 & = - integral upright(d)^4 x sqrt(- g) (1 / k nabla^mu G_(mu nu) - nabla^mu T_(mu nu)) v^nu $ ya que $nabla^mu G_(mu nu) = 0$ (Bianchi), obtenemos $delta S = 0$ (invariancia bajo difeomorfismo) $ nabla^mu T_(mu nu) = 0 med arrow.l med upright("Se conserva covariantemente") $

Recordemos que $ T_(mu nu) =\(T_00 & T_(0 j)\
T_(i 0) & T_(i j)\)=\(upright("densidad de energía") & upright("densidad de momento")\
upright("flujo de energía") & upright("tensor de estrés")\) $

#ejemplo[

]

- Campos escalares: $ S & = integral upright(d)^4 x sqrt(- g) (- 1 / 2 g^(mu nu) nabla_mu phi.alt nabla_nu phi.alt - 1 / 2 m^2 phi.alt^2)\,\
  T_(mu nu) & = nabla_mu phi.alt nabla_nu phi.alt - 1 / 2 g_(mu nu)\(nabla^rho phi.alt nabla_rho phi.alt + m^2 phi.alt^2\). $

- Campo electromagnético: $ S & = - 1 / 4 integral upright(d)^4 x sqrt(- g) g^(mu sigma) g^(nu tau) F_(sigma tau) F_(mu nu)\,\
  T_(mu nu) & = g^(rho sigma) F_(mu rho) F_(nu sigma) - 1 / 4 g_(mu nu) F^(rho sigma) F_(rho sigma) . $

- Fluido perfecto: $ T_(mu nu) =\(rho + P\)U_mu U_nu + P g_(mu nu) arrow.r_()^(U^mu =\(1\,0\,0\,0\)) med T_nu^mu = mat(delim: "(", - rho, 0, 0, 0; 0, P, 0, 0; 0, 0, P, 0; 0, 0, 0, P) $

== La constante cosmológica
<part5.4>
Ya que $nabla^mu g_(mu nu) = 0$, podemos agregar $text(fill: #red,  Lambda g_(mu nu) )$ a $G_(mu nu)$ sin afectar $nabla^mu T_(mu nu) = 0$. La ecuación de Einstein es $ G_(mu nu) + text(fill: #red,  Lambda g_(mu nu) ) = 8 pi G T_(mu nu) $ la cual viene de la siguiente acción: $ S = frac(1, 16 pi G) integral upright(d)^4 x sqrt(- g)\(R - text(fill: #red,  2 Lambda )\)+ S_M $

== Soluciones en el vacío
<part5.5>
En general, las ecuaciones de Einstein son muy difíciles de resolver. Sin embargo, existen algunas soluciones exactas con una gran cantidad de simetría. Primero consideramos la ecuación de Einstein del vacío con una constante cosmológica.

Sea $T_(mu nu) = 0$, entonces $ R_(mu nu) - 1 / 2 g_(mu nu) R = - Lambda g_(mu nu)\, $ tomando la traza, obtenemos $R = 4 Lambda$ por lo tanto, $R_(mu nu) = Lambda g_(mu nu)$.

=== Soluciones de Schwarzschild
Comencemos con $Lambda = 0 med arrow.r med R_(mu nu) = 0$. La solución trivial es el espacio de Minkowski: $ upright(d) s^2 = - upright(d) t^2 + upright(d) x^2 $

Una solución interesante es la solución de Schwarzschild $ upright(d) s^2 = - (1 - frac(2 G M, r)) upright(d) t^2 + (1 - frac(2 G M, r))^(- 1) upright(d) r^2 + r^2\(upright(d) theta^2 + sin^2 theta upright(d) phi.alt^2\) $

Vamos a derivarlo, comenzamos con el teorema de Birkhoff

#teorema[

\(Birkhoff)

]

Cualquier solución esféricamente simétrica de las ecuaciones de campo en el vacío debe ser estática.

El ansatz más general para un elemento de línea estático, esféricamente simétrico es $ upright(d) s^2 = - e^(2 alpha\(r\)) upright(d) t^2 + e^(2 beta\(r\)) upright(d) r^2 + e^(2 gamma\(r\)) r^2 upright(d) Omega^2 . $

Definiendo $ macron(r) = e^(gamma\(r\)) r med arrow.r upright(d) macron(r) = (1 + r dv( gamma , r )) e^gamma upright(d) r\, $ obtenemos: $ upright(d) s^2 = - e^(2 alpha\(r\)) upright(d) t^2 + (1 + r dv( gamma , r ))^(- 2) e^(2 beta\(r\)- 2 gamma\(r\)) upright(d) macron(r)^2 + macron(r)^2 upright(d) Omega^2 . $

Reetiquetando

== Espacio de DeSitter
<part5.6>
== Espacio de Anti-DeSitter
<part5.7>
