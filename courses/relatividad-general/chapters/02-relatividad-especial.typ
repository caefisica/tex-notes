#import "/lib/notes.typ": *

= Special Relativity
== El problema de la Gravedad Newtoniana
<part2.1>
En mecánica clásica el potencial gravitacional de una distribución de materia $rho\(arrow(x)\,t\)$ viene dada por la ecuación de Poisson: $ nabla^2 Phi\(arrow(x)\,t\)= - 4 pi G rho\(arrow(x)\,t\)med arrow.r med Phi\(arrow(x)\,t\)= - G integral upright(d)^3 x' frac(rho\(arrow(x)\,t\), \|arrow(x) - arrow(x)'\|) $

Sin embargo $Phi\(arrow(x)\,t\)$ no puede cambiar instantaneamente por cambios en la distribución de materia $rho\(arrow(x)\,t\)$. En electromagnetismo tenemos un problema similar: $ nabla^2 Phi = - frac(rho\(arrow(x)\,t\), epsilon.alt_0) med arrow.r med Phi\(arrow(x)\,t\)= frac(1, 4 pi epsilon.alt_0) integral upright(d)^3 x' frac(rho\(arrow(x)\,t\), \|arrow(x) - arrow(x)'\|) $

la solución: Encontrar las ecuaciones covariantes que sean consistentes con diferentes observadores.

Hint: Ecuaciones de Maxwell $ partial_mu F^(mu nu) & = J^nu\
partial_mu zws^(*) F^(mu nu) & = 0 cases(delim: "{", A^mu & =\(phi.alt\,arrow(A)\), J^mu & =\(rho\,arrow(J)\), F_(mu nu) & = partial_mu A_nu - partial_nu A_mu) $ Donde $zws^(*) F_(mu nu)$ es el dual de $F_(mu nu)$.#footnote[$* f_(mu nu) = 1 / 2 epsilon.alt_(mu nu)^(lambda theta) F_(lambda theta)$.]

Estas ecuaciones son invariantes bajo transformaciones de Lorentz(y cambiando $partial_mu arrow.r nabla_mu$ son covariantes).

La Relatividad General plantea ecuaciones covariantes bajo difeomorfismos para la gravedad.

== Principio de Equivalencia
<part2.2>
Existen tres formas del principio de equivalencia en Relatividad General:

#definicion[

Principio de equivalencia débil(Galileano)

]

- La masa inercial es igual a la masa gravitacional.

- Un campo gravitacional uniforme es indistinguible de una aceleración uniforme.

- Un observador en caída libre no medira ningún campo gravitacional.

#block[
#box(image("../figures/imgrg2.1.png", width: 98.0%, alt: "image"))

]
#definicion[

Principio de equivalencia de Einstein(EEP.)

]

- Ningún experimento puede distinguir entre un campo gravitacional uniforme y una aceleración constante.

- Localmente, es posible encontrar un sistema de coordenadas inercial.

- En una región suficientemente pequeña las leyes de la naturaleza toman la misma forma que en un sistema de coordenadas no acelerado.

#block[
#box(image("../figures/imgrg2.2.png", width: 75.0%, alt: "image"))

]
#definicion[

Principio de equivalencia fuerte

]

- La dinámica interna de un sistema gravitacional no puede ser alterada por campos gravitacionales externos(Existen teorías que violan esto Brand-Dicke, HOND, etc.) más allá de las leyes de marea.

- Todas las leyes de la naturaleza son las mismas en un campo gravitacional uniforme y en el sistema de referencia acelerado equivalente.

- $G$ es una constante en el tiempo.

== Relatividad Especial
<part2.3>
#definicion[

Postulados de la Relatividad especial

]

+ Las leyes de la naturaleza son las mismas en todos los sistemas inerciales.

+ La velocidad de la luz es constante en todos los sistemas inerciales.

Para una manifold equipada con una métrica $g_(mu nu)$ tenemos que las distancias $upright(d) tau$ vienen dadas por: $ upright(d) tau^2 = - g_(mu nu) upright(d) x^mu upright(d) x^nu $

Como vimos anteriormente, localmente una manifold diferenciable con métrica $g_(mu nu)$ puede ser aproximada por: $ g_(mu nu) approx eta_(mu nu)\, $ para un vecindario con $epsilon.alt arrow.r 0$.

Esta métrica $eta_(mu nu)$\(llamada de Minkowski para signatura pseudoriemanniana) permite definir el tiempo $upright(d) tau$. Usando el primer postulado para dos observadores en $x^mu$ y $x^(mu')$ el elemento de línea $upright(d) tau^2$ viene dado por: $ upright(d) tau^2 = - upright(d) t^2 + upright(d) arrow(x)^2 = - upright(d) t^(' 2) + upright(d) arrow(x)^(' 2) $ Las transformaciones más generales que dejan invariante $upright(d) tau$, vienen dadas por el grupo $O\(1\,3\)$.

== Transformaciones de Lorentz
<part2.4>
Como vimos anteriormente, en general, $upright(d) tau^2$ es invariante bajo $O\(1\,3\)$, el grupo de Lorentz#footnote[En general el grupo de Lorentz puede ser homogeneo si solo se incluye $Lambda_nu^mu$ al transformar $x^mu$ o inhomogeneo $x^mu arrow.r x^(' mu) = Lambda_nu^mu x^nu + a^mu$, esto se conoce como grupo de Poincare.], donde podemos derivar las transformaciones de Lorentz $Lambda_nu^mu$. Para las coordenadas $x^mu$ tenemos que: $ x^mu arrow.r x^(' mu) = Lambda_nu^mu x^nu $

Esta transformación preserva la norma de $x^mu$ en la manifold con métrica $eta_(mu nu)$ con $eta_(mu nu) = "diag"\(- 1\,1\,1\,1\)$, esto es: $ Lambda_rho^mu eta^(rho theta)\(Lambda^(- 1)\)_theta^nu = eta^(mu nu) $

Las transformaciones $Lambda_rho^mu$ mas generales que se pueden escribir para la ecuación anterior vienen dadas por la matriz: $ Lambda_nu^mu = mat(delim: "(", gamma, - gamma beta_x, - gamma beta_y, - gamma beta_z; - gamma beta_x, 1 +\(gamma - 1\)hat(beta)_x^2, \(gamma - 1\)hat(beta)_y hat(beta)_x, \(gamma - 1\)hat(beta)_z hat(beta)_x; - gamma beta_y, \(gamma - 1\)hat(beta)_x hat(beta)_y, 1 +\(gamma - 1\)hat(beta)_y^2, \(gamma - 1\)hat(beta)_z hat(beta)_y; - gamma beta_z, \(gamma - 1\)hat(beta)_x hat(beta)_z, \(gamma - 1\)hat(beta)_y hat(beta)_z, 1 +\(gamma - 1\)hat(beta)_z) $ donde $hat(beta)_i = beta_i\/beta$, $i =\(x\,y\,z\)$.

De donde la condición $Lambda eta eta^(- 1) = eta$, se tiene que $ \(Lambda_0^0\)^2 = 1 + sum_(i = 1)^3\(Lambda_0^i\)^2 gt.eq 1 $ y $\(det Lambda\)^2 = 1$, de donde se sigue que las transformaciones de Lorentz puede dividirse en cuatro componentes:

#block[
#figure(
  table(
    columns: 4,
    align: (center,center,center,center,),
    table.header([Nombre], [$det Lambda$], [$Lambda_0^0$], [Notación],),
    table.hline(),
    [Propia Ortocróna], [$+ 1$], [$> 0$], [$L_(+)^arrow.t$],
    [Propia Asincróna], [$+ 1$], [$< 0$], [$L_(-)^arrow.t$],
    [Impropia Ortocróna], [$- 1$], [$> 0$], [$L_(+)^arrow.b$],
    [Impropia Asincróna], [$- 1$], [$< 0$], [$L_(-)^arrow.b$],
  )
  , kind: table
  )

]
Donde bajo paridad $bb(P)\(arrow(x) arrow.r - arrow(x)\)$ e inversión temporal $\(t arrow.r - t\)$ podemos mapear una transformación de Lorentz propia Ortocróna(que preserva la dirección del tiempo):

#block[
#box(image("../figures/imgrg2.3.png", width: 66.0%, alt: "image"))

]
#teorema[

]

Toda transformación del grupo de Lorentz restringido $L_(+)^arrow.t$ puede escribirse como una rotación propia y un boost.

Prueba: Escribiendo $delta Lambda_nu^mu$ en función de sus generadores tenemos que $ S Lambda_nu^mu = - i 1 / 2 theta^(alpha beta)\(M_(alpha beta)\)_nu^mu $ donde $\(M_(alpha beta)\)_nu^mu = i\(delta_alpha^mu g_(beta nu) - delta_beta^mu g_(alpha nu)\)$, tenemos que $t^(alpha beta)$ es un tensor antisimétrico con $6$ componentes independientes($3$ angulos de Euler + $3$ parámetros de boost). Escribiendo $M_(mu nu)$ en sus componentes es fácil ver que #sinnum[$  M_(i j) & = epsilon.alt_(i j k) J_K med arrow.r med\(3 med upright("componentes")\)\
M_(0 i) & = K_i arrow.r med\(3 med upright("componentes")\) $]

Si definimos $J_K = 1 / 2 epsilon.alt_(k l m) M^(l m)$, podemos probar que usando el algebra de Lie de $S O\(3\,1\)$ tenemos que $J_K$ son los generadores de $S O\(3\)$. $ \[M_(mu nu)\,M_(rho theta)\] & = i g_(nu rho) M_(mu theta) - i g_(mu rho) M_(nu theta) - i g_(nu theta) M_(mu rho) + i g_(mu theta) M_(nu rho)\
 & = i epsilon.alt_(k l m) J_m\,quad k\,l\,m = 1\,2\,3 $

Donde $K_i$ son los generadores de Boost#footnote[Es posible mostrar que usando generadores de Boost $K_i$ es posible obtener una rotación: $\[K_l\,K_m\]= - i epsilon.alt_(l m n) J_n$.], por lo tanto las transformaciones de Lorentz $L_(+)^arrow.t$ pueden escribirse como: $ Lambda_(+)^arrow.t = e^(\(- i theta_i J_i + w_i K_i\)) $ por ejemplo un boost en la dirección $x$, nos lleva a la transformación: $ t' & = t cosh w - x sinh w\
x' & = - t sinh w + x cosh w $ si $w = tanh^(- 1)\(v\)$ recuperamos: $ t' & = gamma\(t - v x\)\
x' & = gamma\(x - v t\) $ con $gamma = 1 / sqrt(1 - v^2)$.

Esto trae consecuencias como la dilatación del tiempo, la contracción de la longitud, etc.

== Diagramas de Espacio-tiempo
<part2.5>
Se utilizan para representar una porción del espacio de Minkowski representando puntos del espacio-tiempo con longitud negativa (space-like), nula (null) y positiva (time-like).

#definicion[

Tiempo propio.

]

Mide el tiempo transcurrido por un observador que se mueve en una trayectoria recta(Minkowski) entre los eventos. Debido a que las partículas siguen trayectorias de tipo space-like se define $ tau = - eta_(mu nu) Delta x^mu Delta x^nu $

#block[
#box(image("../figures/imgrg2.4.png", width: 49.0%, alt: "image"))

]
#ejemplo[

Paradoja de los gemelos.

]

Alice, Bob en este ejemplo tenemos dos observadores en dos trayectorias diferentes, el tiempo propio que cada uno medira es distinto.

#block[
#box(image("../figures/imgrg2.5.png", width: 70.0%, alt: "image"))

]
$ Delta tau_(A B' C)^(upright("Bob")) = sqrt(1 - v^2) Delta tau < Delta tau^(upright("Alice")) $ Nótese que esto es posible puesto que la geometría del problema no es euclídeana.

Propiedades de los diagramas de espacio-tiempo

+ Debido al segundo postulado de la relatividad especial, ninguna trayectoria física puede ser time-like.

+ Los diagramas de espacio-tiempo esbozan eventos que están causalmente conectados

+ Como consecuencia de que $C$ es constante entre sistemas de referencia, los angulos relativos entre ejes de coordenadas cambian con la velocidad.

#block[
#box(image("../figures/imgrg2.6.png", width: 30.0%, alt: "image")) #box(image("../figures/imgrg2.7.png", width: 30.0%, alt: "image")) #box(image("../figures/imgrg2.8.png", width: 30.0%, alt: "image"))

]
=== Cuadrivectores
Se define como una cantidad que transforma como $ V^alpha arrow.r V^(alpha') = Lambda_beta^(alpha') V^beta\,quad alpha = 1\,2\,3\,4 $ con el sistema de coordenadas que transforma como: $ x^alpha arrow.r x^(alpha') = Lambda_beta^(alpha') x^beta $ al vector $V^alpha$ se le denomina cuadrivector contravariante para distinguirlo del cuadrivector covariante que bajo transformaciones de Lorentz viene dado por: $ U_alpha arrow.r U_(alpha') = Lambda_(alpha')^beta U_beta $

Donde $Lambda_(alpha')^beta$ es la transformación inversa de Lorentz tal que: $ Lambda_(alpha')^beta Lambda_gamma^(alpha') = delta_gamma^beta cases(delim: "{", + 1\, & quad beta = gamma, 0\, & quad beta eq.not gamma) $

Se sigue que el producto de un vector contravariante con un covariante es invariante de Lorentz $ U_(alpha') V^(alpha') & = Lambda_(alpha')^beta U_beta Lambda_gamma^(alpha') V^gamma = (Lambda_(alpha')^beta Lambda_gamma^(alpha')) U_beta V^gamma\
(Lambda_(alpha')^beta Lambda_gamma^(alpha')) U_beta V^gamma & = delta_gamma^beta U_beta V^gamma = U_beta V^beta $

Nótese que el producto anterior puede ser escrito como $ U_beta V^beta = (eta_(beta gamma) U^gamma) (eta^(beta theta) V_beta) $ permitiendo asignarle un vector contravariante a cada vector covariante y viceversa. $ V_alpha & = eta_(alpha beta) V^beta\,med forall V^beta quad\(upright("Index lowering")\)\,\
U^alpha & = eta^(alpha beta) U_gamma\,med forall U_gamma quad med\(upright("Index rising")\) $

Adicionalmente, el operador gradiente, bajo Lorentz, transforma usando la regla de la cadena $ partial_alpha = pdv( , x^(alpha') ) = pdv( x^beta , x^(alpha') ) pdv( , x^beta ) $

Si invertimos la transformación de $x'$ usando $Lambda^(- 1)$, esto es $ x^gamma = Lambda_alpha^gamma x^alpha $ la derivada $partial_alpha$ transforma como: $ partial_alpha = Lambda_alpha^beta partial_beta quad upright("donde") quad partial_alpha = pdv( , x^alpha ) $

Siguiendo estas reglas es facil ver que operadores como divergencia $arrow(nabla) dot.op$ y D'Alambertiano $square.stroked.tiny$ son invariantes.

De forma analoga, un tensor transforma de forma analoga a los vectores o covectores, para un tensor de tipo $\(m\,n\)$ transformara con $m$ transformaciones de Lorentz para cada índice y $n$ transformaciones inversas por cada dual base usado en el tensor. $ T_(nu'_1 nu'_2 dots.h.c nu'_n)^(mu'_1 mu'_2 dots.h.c mu'_m) = overbrace((Lambda_(mu_1)^(mu'_1) Lambda_(mu_2)^(mu'_2) dots.h.c Lambda_(mu_m)^(mu'_m)), m med upright("veces")) underbrace((Lambda_(nu'_1)^(nu_1) Lambda_(nu'_2)^(nu_2) dots.h.c Lambda_(nu'_n)^(nu_n)), n med upright("veces")) T_(nu_1 nu_2 dots.h.c nu_n)^(mu_1 mu_2 dots.h.c mu_m) $

Sin embargo, para un tensor como el de Levi-civita $ epsilon.alt^(alpha beta gamma delta) = cases(delim: "{", + 1 & quad upright("Permutaciones pares"), - 1 & quad upright("Permutaciones impares"), 0 & quad alpha = beta = gamma = delta) $ Se tiene que: $ epsilon.alt^(alpha' beta' gamma' delta') = frac(1, det Lambda) Lambda_alpha^(alpha') Lambda_beta^(beta') Lambda_gamma^(gamma') Lambda_delta^(delta') epsilon.alt^(alpha beta gamma delta) $ para transformaciones propias de Lorentz $det Lambda = + 1$.

== Cinemática y dinámica relativista
<part2.6>
#definicion[

Cuadrivelocidad:

]

Se define como el vector tangente a la línea de mundo de la partícula: $ U^mu = dv( x^mu , lambda ) $ donde $lambda$ parametriza la línea de mundo de la partícula, escogiendo el tiempo propio vemos que la cuadrivelocidad esta normalizada $ upright(d) tau^2 = - eta_(mu nu) upright(d) x^mu upright(d) x^nu\,quad eta_(mu nu) U^mu U^nu = - 1 $ nótese que para trayectorias nulas $upright(d) tau = 0$, por lo tanto no es posible usarlo como parámetro.

#definicion[

Cuadrimomentum:

]

Se define en función de $U^mu$: $ P^mu = m U^mu $ las componentes de $U^mu$ vienen dadas por $ U^mu = (dv( t , tau ) \, dv( arrow(x) , tau )) =\(gamma\,gamma arrow(v)\) $ luego $P^mu$: $ P^mu =\(m gamma\,gamma m arrow(v)\) $ vemos que la componente $P^0$ es igual a la energía de la partícula. ($c = 1$) $ E & = m gamma quad upright("con") quad gamma = 1 / sqrt(1 - beta^2)\
arrow(P) & = m gamma arrow(v) $ En el límite de $V arrow.r 0$, las expresiones se reducen a las definiciones de energía y momento lineal clásicos $ E & = m + 1 / 2 m v^2 + Theta\(v^3\)\
arrow(P) & = m arrow(v) + Theta\(arrow(v)^3\) $

#definicion[

Fuerza Relativista:

]

De la definición de $P^mu$ podemos encontrar la fuerza relativista: $ f^mu = dv( P^mu , tau ) = m dv( x^mu , tau , 2 ) $

#ejemplo[

]

La fuerza de Lorentz en electromagnetismo $ f^mu = q U^lambda F_lambda^mu $

#heading(level: 2, numbering: none)[Problemas 2]
+ #strong[Derivada de Lie]

  + Utiliza la regla de Leibniz para derivar la fórmula para la derivada de Lie de una 1-forma $omega$, válida en cualquier base de coordenadas: $ \(cal(L)_X omega\)_mu = X^nu partial_nu omega_mu + omega_nu partial_mu X^nu . $ Sugerencia: Considera $\(cal(L)_X omega\)\(Y\)$ para un campo vectorial $Y$.

  + Muestra que la derivada de Lie de un tensor $\(0\,2\)$, $g$ es: $ \(cal(L)_X g\)_(mu nu) = X^rho partial_rho g_(mu nu) + g_(mu rho) partial_nu X^rho + g_(rho nu) partial_mu X^rho . $

+ #strong[Formas]

  + Sea $omega$ una p-forma y $eta$ una q-forma. Demuestra que la derivada exterior satisface las propiedades

    - $upright(d)\(upright(d) omega\)= 0$.

    - $upright(d)\(omega and eta\)=\(upright(d) omega\)and eta +\(- 1\)^p omega and upright(d) eta$.

    - $upright(d)\(phi^(*) omega\)= phi^(*)\(upright(d) omega\)$ donde $phi : M arrow.r N$ para manifolds $M$ y $N$.

+ #strong[Transformaciones de Coordenadas Infinitesimales] \ Un campo vectorial se puede ver como una transformación de coordenadas infinitesimal. Considera la familia de transformaciones de coordenadas $ x^mu arrow.r y^mu = y^mu\(x^mu\,sigma\) $ donde $sigma$ es un parámetro continuo que controlará cuán infinitesimal es la transformación. Tomaremos $y^mu\(x^mu\,sigma = 0\)= x^mu$, y definimos $ v^mu equiv pdv( y^mu , sigma ) $

  En el límite de $sigma$ pequeño, entonces tenemos $ y^mu = x^mu + sigma v^mu + dots.h.c $ y decimos que el vector $v^mu$ genera esta transformación infinitesimal de coordenadas.

  + Demuestra que $v^mu$ se transforma como un vector.

  + Considera el espacio plano tridimensional en coordenadas cartesianas $x^i$, $i = 1\,2\,3$. Muestra que los vectores $ R = partial_1\,med T = partial_2\,med S = partial_3 $ generan traslaciones infinitesimales en las direcciones $x^1\,x^2$ y $x^3$, respectivamente. Sugerencia: La respuesta aquí es directa.

  + En el espacio tridimensional, considera los tres vectores $ v = x^3 partial_3 - x^3 partial_2\,med omega = x^3 partial_1 - x^1 partial_3\,med q = x^1 partial_2 - x^2 partial_1 $

    Muestra que estos vectores generan rotaciones infinitesimales alrededor de los ejes $x^1\,x^2$ y $x^3$, respectivamente. Sugerencia: Escribe primero una rotación a lo largo de un eje, digamos $x^1$, por un ángulo $alpha$. Luego expande esta expresión para ángulos pequeños: esto define una rotación infinitesimal.

+ #strong[Diagramas de Espacio-Tiempo] \ Considera un espacio-tiempo bidimensional(temporal+espacial) con $c = 1$, la velocidad de la luz.

  + Dibuje un diagrama de espacio-tiempo $\(x\,t\)$, presente y dé una brave explicación de los siguientes objetos

    - Un evento.

    - Un rayo de luz.

    - La línea de mundo de un objeto que viaja con velocidad $v < 1$.

    - La línea de mundo de un objeto que viaja con velocidad $v > 1$.

    - La línea de tiempo de un objeto acelerado.

  + Dibuje un diagrama de espacio-tiempo $\(x\,t\)$ de un observador $cal(O)$ en reposo. En este diagrama de espacio-tiempo, dibuje la línea de mundo de un observador $cal(O)'$ que viaja con velocidad $v$ medida en el sistema de referencia en reposo de $cal(O)$. ¿Cuáles son los ejes de coordenadas del diagrama de espacio-tiempo de $cal(O)'$? \ Sugerencia: ¿Cual es su eje de tiempo? ¿Cómo se construye entonces el eje espacial?

  + La paradoja de los gemelos es un problema clásico en la teoria de la relatividad especial que ilustra como el tiempo se dilata para un observador en movimiento respecto a otro en reposo. Imagina dos gemelos, Alice y Bob. Alice se embarca en un viaje espacial, mientras que Bob se queda en la Tierra. El viaje de Alice la lleva a una estrella a 4 años luz de distancia de la Tierra a una velocidad constante de $0.8 c$, donde $c$ es la velocidad de la luz. Después de llegar a la estrella, Alice regresa inmediatamente a la tierra a la misma velocidad.

  + Dibuja un diagrama espacio-tiempo para ilustrar el viaje de Alice y Bob en el marco de referencia de Bob(la tierra) y un diagrama para ilustrar el viaje de Alice y Bob en el marco de referencia de Alice(la nave espacial). Marca los eventos clave en el diagrama, como la partida y llegada de Alice, y los puntos de inflexión en la línea de universo de Alice. Explica cómo el diagrama de Alice ayuda a resolver la aparente paradoja.

  + Utiliza la transformación de Lorentz para calcular el tiempo que experimenta Alice durante su viaje de ida y vuelta a la estrella, y calcula el tiempo que experimenta Bob durante el viaje completo de Alice, desde su partida hasta su regreso.

+ #strong[El Grupo de Lorentz] \ Considera el espacio de Minkowski $bb(R)^(1\,3)$ de cuatro dimensiones $bb(R)^4$ equipado con la métrica de Minkowski $eta$. Esta es una forma bilineal simétrica no degenerada $eta : bb(R)^4 times bb(R)^4 arrow.r bb(R)$ definida por $ eta\(e_mu\,e_nu\)equiv eta_(mu nu) = cases(delim: "{", - 1 & quad upright("para") med mu = nu = 0, + 1 & quad upright("para") med mu = nu = 1\,2\,3) $ para la base ortonormal estándar ${ e_0\,e_1\,e_2\,e_3 }$ en $bb(R)^4$. Linealidad implica que $ eta\(x\,y\)= x^T dot.op eta dot.op y quad upright("para") med x\,y in bb(R)^(1\,3) $ donde $eta$ es una matriz con entradas $eta_(mu nu)$. Para $x\,y in bb(R)^(1\,3)$ escribimos $x dot.op y = eta\(x\,y\)$ y $x^2 = x dot.op x$. En relatividad especial, las transformaciones de Lorentz, $Lambda$, que relacionan dos marcos inerciales preservan la distancia en el espacio-tiempo: $ \(x - y\)^2 =\(Lambda\(x - y\)\)^2 med upright("para todos") med x\,y in bb(R)^(1\,3) . $<ecproblema> Esto lleva ala definicion del grupo de Lorentz $ O\(1\,3\)= { Lambda in G L\(4\,bb(R)\)\|Lambda^T eta Lambda = eta } $

  + Muestre que $Lambda in O\(1\,3\)$ efectivamente cumple la ecuación #ref(<ecproblema>).

  + Muestre que $O\(1\,3\)$ efectivamente es un grupo.

  + Muestre que $Lambda^T eta Lambda = eta$ escrita en componentes se lee $eta_(rho sigma) Lambda_mu^rho Lambda_nu^sigma = eta_(mu nu)$.

  + Muestre que $\|Lambda_0^0\|gt.eq 1$ y que $\|det Lambda\|= 1$. Con esto argumente que el grupo de Lorentz consta de cuatro ramas(que no están conectadas de forma continua entre sí.) Sugerencia: Usa $det\(1 + epsilon.alt lambda\)= 1 + epsilon.alt "tr" lambda + cal(O)\(epsilon.alt^2\)$.

  + Muestre que el subconjunto $S O^(+)\(1\,3\)= { Lambda in O\(1\,3\)\|det Lambda = 1\,Lambda_0^0 gt.eq 1 }$ forma un subgrupo de $O\(1\,3\)$ llamado el grupo de Lorentz ortocrono propio.
