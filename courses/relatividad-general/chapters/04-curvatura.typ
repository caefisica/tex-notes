#import "/lib/notes.typ": *

= Spacetime Curvature
== Geometria Riemanniana
<part4.1>
Sobre una manifold de Riemann $\(M\,g\)$, podemos introducir el concepto de curvatura de una manifold. En esta sección estudiaremos las bases de la geometria Riemanniana. La teoria de la Relatividad de Einstein ha sido construida en base a estos conceptos.

Hasta ahora las manifolds que hemos considerado están definidas con las nociones de derivadas e integrales. Necesitamos introducir una metrica para definir el concepto de longitud.

#definicion[

\(Métrica de Riemann)

]

. Una métrica de Riemann $g$ sobre una manifold suave $cal(M)$ es una forma bilineal $g : T_p cal(M) times T_p cal(M) arrow.r bb(R)$ para cualquier $p in cal(M)$ con las siguientes propiedades:

+ Simétrico: $g\(X_p\,Y_p\)= g\(Y_p\,X_p\)med forall med X_p\,Y_p in T_p cal(M)$.

+ Definido-positivo: $g\(X_p\,Y_p\)gt.eq 0 med forall med X_p in T_p cal(M)$.

+ No degenerado: $g\(X_p\,X_p\)= 0$ si y solo si $X_p = 0$.

Además, $g$ es suave en el sentido que para cualquier campo vectorial suave $X$ y $Y$ la función $x arrow.r g_p\(X_p\,Y_p\)$ es suave.

#proposicion[

\(Existencia de métricas de Riemann)

]

Toda manifold suave admite una métrica de Riemann.

Prueba: Sea ${\(U_alpha\,phi_alpha\)}$ covering charts de $cal(M)$. En cada dominio de coordenadas, existe una métrica $g_alpha$ dada por la métrica Euclideana $delta_(i j) upright(d) x^i upright(d) x^j$ en coordenadas locales. Ahora, sea ${ psi_alpha }$ una partición de unidad suave subordinada al cover ${ U_alpha }$ y definimos $ g = sum_alpha psi_alpha g_a $ gracias a la condición local de finitud para partición de unidades, existe solamente un número finito en un vecindario para cada punto. Así esta expresión define un campo tensorial suave. Es simétrico, así que solamente se necesita comprobar que sea definido positivo.

Si $x in T_p cal(M)$ es un vector no nulo, entonces $ g\(x\,x\)= sum_alpha psi_alpha\(p\)g_alpha\(x\,x\)\|_p $ esta suma no es negativa ya que $g\|_alpha\(x\,x\)> 0 med arrow.r med g_p\(x\,x\)> 0$.

En física, usamos como manifold pseudo-Riemannianas y usualmente no está definida positiva y el número de autovalores negativos es llamado signatura $ bb(R)^(1\,3) = mat(delim: "(", - 1, 0, 0, 0; 0, + 1, 0, 0; 0, 0, + 1, 0; 0, 0, 0, + 1) = mat(delim: "(", + 1, 0, 0, 0; 0, - 1, 0, 0; 0, 0, - 1, 0; 0, 0, 0, - 1) $

Para un mapa suave $f : cal(M) arrow.r cal(N)$, la métrica $g$ sobre una manifold $cal(N)$ puede ser pull-back a la métrica $f^(*) g$ sobre $cal(M)$ de tal manera que para $X_p\,Y_p in T_p cal(M)$ $ f^(*) g\(X_p\,Y_p\)= g\(f^(*) X_p\,f^(*) Y_p\) $

== Visión General
<part4.2>
== Derivada Covariante
<part4.3>
Consideremos $ partial_(lambda') T^(mu') = pdv( T^(mu') , x^(,_(lambda')) ) & = pdv( x^sigma , x^(lambda') ) pdv( , x^sigma ) (pdv( x^(mu') , x^nu ) T^nu \( x \))\
 & = pdv( x^sigma , x^(lambda') ) pdv( x^(mu') , x^nu ) partial_sigma T^nu + underbrace((pdv( x^sigma , x^(lambda') ) pdv( x^mu , x^sigma , x^nu )), upright("no tensorial")) T^nu $

Encontremos una nueva "derivada covariante", $nabla_lambda T^mu$, que transforma como un tensor: $ nabla_(lambda') T^(mu') = pdv( x^sigma , x^(lambda') ) pdv( x^(mu') , x^nu ) nabla_sigma T^nu $

Sea $V$ un vector tangente a lo largo de una curva $gamma$, la derivada covariante de un tensor a lo largo de una curva satisface:

+ Linealidad: $nabla_V\(T + S\)= nabla_V T + nabla_V S$.

+ Leibniz: $nabla_V\(T times.o S\)=\(nabla_V T\)times.o S + T times.o\(nabla_V S\)$.

+ Aditividad: $nabla_(f V + g W) T = f nabla_V T + g nabla_W S$.

+ Acción sobre escalares: $nabla_V\(f\)= V\(f\)$.

+ Acción sobre vectores: $nabla_beta e_alpha = Gamma_(beta alpha)^mu e_mu$, donde $nabla_beta equiv nabla_(e beta)$.#footnote[$Gamma_(beta alpha)^mu$ son llamados los coeficientes de conexión(o simbolos de Christoffel).]

Sea $T = T^mu e_mu$ y $V = V^nu e_nu$. La derivada covariante de $T$ es $ nabla_V T = nabla_V\(T^mu e_mu\) & = nabla_V\(T^mu\)+ T^mu\(nabla_V e_mu\)\
 & = V\(T^mu\)e_mu + T^mu nabla_(V^nu e_nu) e_mu\
 & = V^nu e_nu\(T^mu\)e_mu + T^mu V^nu nabla_(e_nu) e_mu\
 & = V^nu\(partial_nu T^mu\)e_mu + T^mu V^nu Gamma_(nu mu)^lambda e_lambda\
 & = V^nu\(partial_nu T^mu + Gamma_(nu beta)^mu T^beta\)e_mu $

Así las componentes resultantes de $\(1\,1\)$ tensor son $nabla_nu T^mu = partial_mu T^mu + text(fill: #red,  Gamma_(nu lambda)^mu T^lambda )$ donde hemos definido $\(nabla T\)_nu^mu := nabla_nu T^mu$.

Ahora, bajo una transformación de coordenadas, tenemos: $ nabla_(mu') T^(nu') & = partial_(mu') T^(nu') + Gamma_(mu' alpha')^(nu') T^(alpha')\
 & = pdv( x^mu , x^(mu') ) partial_mu (pdv( x^(nu') , x^nu ) T^nu) + Gamma_(mu' alpha')^(nu') pdv( x^(alpha') , x^alpha ) T^alpha\
 & = pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^nu ) partial_mu T^nu + pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^mu ) x^nu T^nu + Gamma_(mu' alpha')^(nu') pdv( x^(alpha') , x^alpha ) T^alpha\
 & = text(fill: #blue,  pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^nu ) nabla_mu T^nu ) text(fill: #red,  underbrace((pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^nu ) Gamma_(mu alpha)^nu - pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^mu ) x^alpha - Gamma_(mu' alpha')^(nu') pdv( x^(alpha') , x^alpha )), 0) T^alpha ) $ usando $partial_mu T^nu = partial_mu T^nu - Gamma_(mu alpha)^nu T^alpha$.

$nabla_mu T^mu$ es un tensor si: $ Gamma_(mu' alpha')^(nu') = text(fill: #blue,  pdv( x^mu , x^(mu') ) pdv( x^(nu') , x^nu ) pdv( x^alpha , x^(alpha') ) Gamma_(mu nu)^nu ) - text(fill: #red,  pdv( x^mu , x^(mu') ) pdv( x^alpha , x^(alpha') ) pdv( x^(nu') , x^mu ) x^alpha ) $

Por lo tanto $Gamma_(mu alpha)^nu$ no son las componentes de un $\(1\,2\)$ tensor.

=== Derivada covariante de un co-vector
Consideremos $f equiv w_nu T^nu$ ya que $nabla_mu f = partial_mu f$, tenemos $ nabla_mu\(w_nu T^nu\)= partial_mu\(w_nu T^nu\)=\(partial_mu w_nu\)T^nu + w_nu\(partial_mu T^nu\) $ o también $ nabla_mu\(w_nu T^nu\) & =\(nabla_mu w_nu\)T^nu + w_nu\(nabla_mu T^nu\)\
 & =\(nabla_mu w_nu\)T^nu + w_nu\(partial_mu T^nu + Gamma_(mu alpha)^nu T^alpha\) $

Comparando estas ecuaciones, obtenemos $ \(nabla_mu w_nu\)T^nu =\(partial_mu w_nu - Gamma_(mu nu)^alpha w_alpha\)T^nu $ tal que, $ nabla_mu w_nu = partial_mu w_nu - text(fill: #red,  Gamma_(mu nu)^alpha w_alpha ) $

Esto generaliza a tensores arbitrarios, por ejemplo $ nabla_mu T_(alpha beta)^gamma = partial_mu T_(alpha beta)^gamma + text(fill: #blue,  Gamma_(mu lambda)^gamma T_(alpha beta)^lambda ) - text(fill: #red,  Gamma_(mu alpha)^lambda T_(lambda beta)^gamma - Gamma_(mu beta)^lambda T_(alpha beta)^lambda ) $ hasta ahora no hemos usado el tensor métrico para definir $nabla$.

#definicion[

\(Conexión).

]

Sea $X$ y $Y$ campos vectoriales sobre $cal(M)$. El símbolo $nabla_alpha Y$ denota la derivada del campo vectorial $Y$ a lo largo del flujo del campo vectorial $X$. De hecho, $nabla$ es un mapa: $ nabla : & frak(X)\(cal(M)\)times frak(X)\(cal(M)\)arrow.r frak(X)\(cal(M)\)\
 & \(X\,Y\)arrow.r nabla_X Y $ el cual satisface las siguientes condiciones:

+ $nabla$ es linear en la primera variable y aditiva en la segunda: $ nabla_(f X + h Y) Z & = f nabla_X Z + h nabla_Y Z\
  nabla_X\(Y + Z\) & = nabla_X Y + nabla_X Z $ donde $f\,h in bb(C)^oo\(cal(M)\)$ son funciones y $X\,Y\,Z in frak(X)\(cal(M)\)$ son campos vectoriales.

+ $nabla$ obedece la regla de Leibniz en la segunda variable $ nabla_X\(f Y\)= X\(f\)Y + f nabla_X Y . $ El operador $nabla$ es llamado conexión.

Existe un número infinito de conexiones sobre una manifold $cal(M)$. Sin embargo, dada una métrica de Riemann $g$ en $cal(M)$, hay una elección natural para la conexión, el cual es llamada la conexión de Levi-Civita.

#definicion[

\(Conexión de Levi-Civita).

]

La conexión de Levi-Civita es la conexión única tal que:

+ Libre de Torsión: $T_(mu nu)^alpha equiv Gamma_(mu nu)^alpha - Gamma_(nu mu)^alpha = 0$.

+ Compatible ocn la métrica: $nabla_lambda g_(mu nu) = 0$.

Vamos a construir la conexión de Levi-Civita escribiendo $nabla_lambda g_(mu nu) = 0$ tres veces #sinnum[$  nabla_lambda g_(mu nu) & = partial_lambda g_(mu nu) - text(fill: #red,  Gamma_(lambda mu)^sigma g_(sigma nu) ) - text(fill: #blue,  Gamma_(lambda nu)^sigma g_(mu sigma) ) = 0 quad\(a\)\
nabla_mu g_(nu lambda) & = partial_mu g_(nu lambda) - text(fill: #maroon,  Gamma_(mu nu)^sigma g_(sigma lambda) ) - text(fill: #red,  Gamma_(mu lambda)^sigma g_(nu sigma) ) = 0 quad\(b\)\
nabla_nu g_(lambda mu) & = partial_nu g_(lambda mu) - text(fill: #blue,  Gamma_(nu lambda)^sigma g_(sigma mu) ) - text(fill: #maroon,  Gamma_(nu mu)^sigma g_(lambda sigma) ) = 0 quad\(c\) $] usando (a)-(b)-(c) dará: $ partial_lambda g_(mu nu) - partial_mu g_(nu lambda) - partial_nu g_(lambda mu) + text(fill: #maroon,  2 Gamma_(mu nu)^sigma g_(sigma lambda) ) = 0 med arrow.r med Gamma_(mu nu)^alpha = 1 / 2 g^(alpha lambda) (partial_mu g_(nu lambda) + partial_nu g_(lambda mu) - partial_lambda g_(mu nu)) $

Nota: De espacio-tiempo plano a curvos \ Ecuaciones relativistas deben ser construidas con derivadas covariantes, no derivadas parciales, así de Relatividad Especial a Relatividad General: $partial_mu arrow.r nabla_mu$.

Ejemplo: $ partial_nu F^(mu nu) = J^mu med & arrow.r med nabla_mu F^(mu nu) = J^mu\
partial_nu T^(mu nu) = 0 med & arrow.r med nabla_nu T^(mu nu) = 0 $

== Transporte paralelo y Geodesicas
<part4.4>
Dada una conexión $nabla$ sobre un bundle vectorial $E$, podemos definir direcciones horizontal en el espacio $Gamma\(E\)$ de secciones. Una sección $s in Gamma\(E\)$ es paralela a lo largo de un camino $gamma : I arrow.r cal(M)$: $ nabla_(dot(gamma)\(t\)) s = 0 quad upright("para") quad t in I $

En coordenadas locales, puede ser escrito como: $ dv( s_i , t ) + sum_(j = 1)^n s_j\(A_mu\)_i^j dv( x^mu , t ) = 0 $

Un teorema de ecuaciones diferenciales ordinarias, nos dice que dada unas condiciones iniciales $S\(t = 0\)in E_(gamma\(0\))$ podemos transportar paralelamente a lo largo de $gamma\(t\)$ así tenemos el mapa $ E_(gamma\(0\)) in.rev s\(t = 0\)med arrow.r med S\(t = 1\)in E_(gamma\(1\)) $

En particular, si consideramos una curva $p = gamma\(0\)= gamma\(1\)$, obtenemos un mapa $tau_gamma : E_p arrow.r E_p$. Para dos curvas dadas $gamma_1\,gamma_2$ podemos tener una multiplicación $tau_(gamma_1 compose gamma_2) = tau_(gamma_1) compose tau_(gamma_2)$ y la inversa es definida por $tau_(gamma^(- 1)) = tau_gamma^(- 1)$, tal que forme un grupo llamado grupo de homología.

En geometría euclideana, las lineas paralelas se mantienen paralelas ¿Cómo se generaliza esto a espacios curvos?

En espacio-tiempo plano, el transporte paralelo de un vector $v^mu$ a lo largo de una curva $x^mu\(lambda\)$ significa $ dv( v^mu , lambda ) = dv( x^mu , lambda ) partial_nu v^mu = 0 quad\(upright("espacio-tiempo plano")\) $

Así podemos generalizarlo a espacio-tiempo curvo, si $partial arrow.r nabla$: $ frac(D v^mu, D lambda) = dv( x^mu , lambda ) nabla_nu v^mu & = 0 quad\(upright("espacio-tiempo curvo")\)\
dv( v^mu , lambda ) + Gamma_(sigma nu)^mu dv( x^sigma , lambda ) v^nu & = 0 $ donde $Gamma_(sigma nu)^mu$ determina como las componentes de un vector cambian a lo largo de una curva.

Una geodésica es una curva a lo largo de la cual el vector tangente $dv( x^mu , lambda )$ se transporta en paralelo $ v^mu = dv( x^mu , lambda ) med arrow.r med v^mu nabla_nu v^mu = 0 med arrow.r med dv( x^mu , lambda , 2 ) + Gamma_(sigma lambda)^mu dv( x^sigma , lambda ) dv( x^nu , lambda ) = 0 $

La cual es igual a la ecuación de la geodésica si identificamos $Gamma_(sigma nu)^mu$ con las conexiones de Levi-Civita.

== Simetrías y vectores de Killing
<part4.5>
Un campo vectorial $X$ sobre una manifold Riemanniana ($cal(M)\,g$) es llamado campos vectoriales de Killing si su flujo se convierte $phi_1^(*) g = g$, osu derivada de la métrica $g$ se anula $ cal(L)_X g = 0 $ Si escribimos la métrica $upright(d) s^2 = g_(i j) upright(d) x^i upright(d) x^j$ y el campo vectorial de Killing $X = X^k partial_k$ en términos de una coordenada local $\(u\;x^1\,dots.h.c\,x^n\)$, la ecuación de campo de Killing puede ser escrita como $ X^k partial_k g_(i j) + g_(k j) partial_i X^k + g_(i k) partial_j X^k = 0 $

Usando una métrica $g$, tenemos un isomorfismo entre el campo vectorial y 1-forma $ hat(g) : frak(X)\(cal(M)\)tilde.equiv Omega^1\(cal(M)\) $ de manera que para los campos vectoriales $X\,Y in frak(X)\(cal(M)\)$ sobre $cal(M)$, $hat(g)\(X\)\(Y\)= g\(X\,Y\)$.

Usando el isomorfismo $T_p cal(M) tilde.equiv T_p^(*) cal(M)$, podemos introducir un producto interno sobre $T_p^(*) cal(M)$.

Consideremos $x^mu arrow.r tilde(x)^mu\(x\)$ como una transformación activa entre diferentes puntos en la manifold. Puntos vecinos estarán conectados por transformaciones infinitesimales $ x^mu arrow.r tilde(x)^mu\(x\) & = x^mu + delta x^mu\
 & = x^mu - v^mu $

#proposicion[

]

La métrica cambia como $delta g_(mu nu) = nabla_mu v_nu + nabla_nu v_mu$.

Proof: Recordemos que $ g_(mu nu)\(x\)arrow.r tilde(g)_(mu nu)\(tilde(x)\)= pdv( x^rho , tilde(x)^mu ) pdv( x^lambda , tilde(x)^nu ) g_(rho lambda)\(x\)\, $ donde $ pdv( tilde(x)^mu , x^rho ) = delta_rho^mu - partial_rho v^mu med arrow.r med pdv( x^rho , tilde(x)^mu ) = delta_mu^rho + partial_mu v^rho $

Así, obtenemos $ tilde(g)_(mu nu)\(tilde(x)\) & = (delta_mu^rho + partial_mu v^rho) (delta_nu^lambda + partial_nu v^lambda) g_(rho lambda)\(x\)\
 & = g_(mu nu)\(x\)+ partial_mu v^rho g_(rho nu)\(x\)+ partial_nu v^lambda g_(mu lambda)\(x\) $

Escribiendo $ g_(mu nu)\(x\)= g_(mu nu)\(tilde(x) + v\)= g_(mu nu)\(tilde(x)\)+ v^lambda partial_lambda g_(mu nu)\(x\)\, $ obtenemos: $ delta g_(mu nu) & = tilde(g)_(mu nu)\(tilde(x)\)- g_(mu nu)\(tilde(x)\)\
 & = v^lambda partial_lambda g_(mu nu) + partial_mu v^rho g_(rho nu) + partial_nu v^lambda g_(mu lambda)\
 & = v^lambda partial_lambda g_(mu nu) + partial_mu\(v^rho g_(rho nu)\)+ partial_nu\(v^lambda g_(mu lambda)\)- v^rho partial_mu g_(rho nu) - v^lambda partial_nu g_(mu lambda)\
 & = nabla_mu v_nu + nabla_nu v_mu + Gamma_(mu nu)^alpha v_alpha + Gamma_(nu mu)^alpha v_alpha - v^lambda\(partial_mu g_(nu lambda) + partial_nu g_(mu lambda) - partial_lambda g_(mu nu)\)\
 & = nabla_mu v_nu + nabla_nu v_mu . quad square.stroked.tiny $

Para una transformación de simetría, tenemos $delta g_(mu nu) = 0 med arrow.r med nabla_mu v_nu + nabla_nu v_mu = 0$ ( ecuación de Killing), donde $v^mu$ es un vector de Killing. Encontrar todos los vectores de Killing de una métrica $g_(mu nu)$ puede ser difícil, algunas propiedades son:

- Si $partial_alpha g_(mu nu) = 0$, entonces $partial_alpha$ es un vector de Killing.

- Si $K$ y $Z$ son vectores de Killing, entonces $alpha K + beta Z$ es un vector de Killing.

- Si $K$ y $Z$ son vectores de Killing, entonces $\[K\,Z\]$ es un vector de Killing.

#ejemplo[

]

Consideremos $bb(R) : upright(d) x^2 + upright(d) y^2 + upright(d) z^2$.

Tres vectores de Killing son $x = partial_x$, $y = partial_y$ y $z = partial_z$ con componentes: $ cases(reverse: #true, x^mu =\(1\,0\,0\), y^mu =\(0\,1\,0\), z^mu =\(0\,0\,1\)) arrow.l med upright("Translaciones a lo largo de ") x\,y\,z $ Cambiando a coordenadas polares: $ cases(delim: "{", x = r sin theta cos phi.alt, y = r sin theta sin phi.alt, z = r cos theta) $

Obtenemos $ upright(d) s^2 = upright(d) r^2 + r^2 upright(d) theta^2 + r^2 sin^2 theta upright(d) phi.alt^2 $ otro vector de Killing es $ R = partial_phi.alt = - y partial_x + x partial_y med arrow.r med R^mu =\(- y\,x\,0\) $

Permutando coordenadas, obtenemos $ cases(reverse: #true, R^mu =\(- y\,x\,0\), S^mu =\(z\,0\,- x\), T^mu =\(0\,- z\,y\)) arrow.l med upright("rotaciones alrededor de ") z\,y\,x $

Teorema de Noether:

#block[
Simetrías ~$arrow.r$ ~Cantidades conservadas.

]
#proposicion[

]

Consideremos una geodésica con vector tangente $P^mu = upright(d) x^mu\/upright(d) lambda$. Así $Q = K^mu P_mu$ es conservada a lo larga de la geodésica.

Proof: Consideremos la derivada direccional de $Q$: $ frac(D\(K^nu P_nu\), D lambda) & = P^mu nabla_mu\(K^nu P_nu\)= P^mu P^nu nabla_mu K_nu +\(P^mu nabla_mu P^nu\)K_nu\
 & = 1 / 2 P^mu P^nu\(nabla_mu K_nu + nabla_nu K_mu\)= 0 . quad square.stroked.tiny $

#ejemplo[

]

- Traslaciones de tiempo $K = partial_t$, $Q = K^mu P_mu = P_0$ (Energía).

- Traslaciones espaciales $K = partial_i$, $Q = K^mu P_mu = P_i$ (Momentum).

- Rotaciones $K = partial_phi.alt$, $Q = K^mu P_mu = P_phi.alt$ (Momento angular).

Sea $\(u\,{ x^i }\)$ coordenadas locales sobre $cal(M)$. Ya que $nabla_(pdv( , x^i )) pdv( , x^k )$ es un campo vectorial, puede ser expresado como una combinación lineal de los campos ordenados sobre $u$: $ nabla_(pdv( , x^i )) pdv( , x^k ) := Gamma_(j k)^i pdv( , x^i )\, $ donde $Gamma_(j k)^i$ son llamados los Simbolos de Christoffel. Si escribimos el campo vectorial $X = x^i pdv( , x^i )$, $Y = y^i pdv( , x^i )$ en términos de estas bases, entonces la derivada covariante es expresada como $ nabla_x Y = X^i (pdv( Y^k , x^i ) + Gamma_(i j)^alpha Y^j) pdv( , x^k ) $

Sea $gamma : I arrow.r cal(M)$ una curva sobre $cal(M)$ y definimos: $ J\(gamma\)= { upright("Campos vectoriales a lo largo de ") gamma } $

Entonces, dada la conexión $nabla$, podemos definir la derivada covariante a lo largo de $gamma$, el cual es un mapa $ frac(upright(D), upright(d) t) : J\(gamma\)arrow.r J\(gamma\)med upright("tal que:") $

+ $frac(upright(D)\(x + y\), upright(d) t) = frac(upright(D) x, upright(d) t) + frac(upright(D) y, upright(d) t)$.

+ $frac(upright(D)\(f x\), upright(d) t) = dv( f , t ) x + f frac(upright(D) x, upright(d) t) med forall med f in C^oo\(I\)$.

+ Si $x in J\(gamma\)$ es inducido por un campo vectorial $tilde(x) (tilde(x) \|_(gamma\(t\)) = x \( t \) med forall med t in I)$ entonces, $frac(upright(D) x, upright(d) t)\|_(t = 0) = nabla_(dot(gamma)\(0\)) tilde(x)$.

En términos de coordenadas locales, podemos escribirlo como: $ frac(upright(D) x, upright(d) t) = (dv( x^k , t ) + Gamma_(i j)^k dv( x^i , t ) x^j) pdv( , x^k )\, $ donde $gamma\(t\)=\(x^1\(t\)\,dots.h.c\,x^n\(t\)\)$.

Dado un camino $gamma\(t\)$\(no necesariamente una geodésica), un campo vectorial $X$ es llamado campo vectorial paralelo a lo largo de $gamma$ si: $ frac(upright(D) X, upright(d) t) = 0 . $

Los símbolos de Christoffel $Gamma_(i j)^k$, el camino $gamma$, y las derivadas $dv( x^i , t )$ son conocidos. Entonces, en un sistema de $n$ ecuaciones diferenciales lineales de primer orden en términos de coordenadas locales: $ dv( x^k , t ) + Gamma_(i j)^k x^j dv( x^i , t ) = 0 quad upright("para") med k = 1\,dots.h.c\,n . $

Ya que esto es un conjunto de ecuaciones diferenciales, existe así una única solución $x\(t\)$ dada las condiciones iniciales $x\(0\)in T_(gamma\(0\)) cal(M)$. El vector $x\(t\)$ es obtenido de $x\(0\)$ por transporte paralelo a lo largo de la curva $gamma$:

Consideremos un paralelogramo infinitesimal \

#block[
#box(image("../figures/imgrg4.2.png", width: 61.0%, alt: "image"))

]
#block[
#box(image("../figures/imgrg4.3.png", width: 75.0%, alt: "image"))

]
El cambio del vector a lo largo de un lado $delta x^rho$ es: $ delta V^mu & = dv( V^mu , lambda ) delta lambda = - Gamma_(nu rho)^mu V^nu dv( x^rho , lambda ) delta lambda quad upright("usando") quad frac(upright(D) V^mu, upright(D) lambda) = dv( V^mu , lambda ) + Gamma_(nu rho)^mu V^nu dv( x^rho , lambda ) delta lambda = 0\
 & = - Gamma_(nu rho)^mu V^nu delta x^rho . $

El transporte paralelo a lo largo de dos caminos da: $ text(fill: #blue,  delta V_(\(1\))^mu ) & = - Gamma_(nu rho)^mu\(x\)V^nu\(x\)A^rho - Gamma_(nu rho)^mu\(x + A\)V^nu\(x + A\)B^rho\,\
text(fill: #red,  delta V_(\(2\))^mu ) & = - Gamma_(nu rho)^mu\(x\)V^nu\(x\)B^rho - Gamma_(nu rho)^mu\(x + B\)V^nu\(x + B\)A^rho . $

La diferencia es $ delta V^mu & = delta V_(\(1\))^mu - delta V_(\(2\))^mu\
 & = partial_sigma (Gamma_(nu rho)^mu V^nu) B^sigma A^rho - partial_sigma\(Gamma_(nu rho)^mu V^nu\)A^sigma B^rho + dots.h.c\
 & = (partial_sigma Gamma_(nu rho)^mu V^nu + Gamma_(nu rho)^mu partial_sigma V^nu - partial_rho Gamma_(nu sigma)^mu V^nu - Gamma_(nu sigma)^mu partial_rho V^nu) A^rho B^sigma $

Usando $partial_sigma V^nu = - Gamma_(sigma lambda)^nu V^lambda$ tenemos: $ delta V^mu = R_(nu rho sigma)^mu A^rho B^sigma V^nu $

Donde definimos el tensor de Riemann como: $ R_(nu rho sigma)^mu = partial_rho Gamma_(nu sigma)^mu - partial_sigma Gamma_(nu rho)^mu + Gamma_(rho lambda)^mu Gamma_(nu sigma)^lambda - Gamma_(sigma lambda)^mu Gamma_(nu rho)^lambda . $

Por otra parte, consideremos: $ \[nabla_mu\,nabla_nu\]V^rho & = nabla_mu nabla_nu V^rho - nabla_nu nabla_mu V^rho\
 & = partial_mu\(nabla_nu V^rho\)- Gamma_(mu nu)^lambda nabla_lambda V^rho + Gamma_(mu sigma)^rho nabla_nu V^sigma -\(mu arrow.l.r nu\)\
 & = partial_mu partial_nu V^rho +\(partial_mu Gamma_(nu sigma)^rho\)V^sigma + Gamma_(nu sigma)^rho partial_mu V^sigma - Gamma_(mu nu)^lambda partial_lambda V^rho - Gamma_(mu nu)^lambda Gamma_(lambda sigma)^rho V^sigma\
 & quad + Gamma_(mu sigma)^rho partial_nu V^sigma + Gamma_(mu sigma)^rho Gamma_(nu lambda)^sigma V^lambda -\(mu arrow.l.r nu\)\
 & =\(partial_mu Gamma_(nu sigma)^rho - partial_nu Gamma_(mu sigma)^rho + Gamma_(mu lambda)^rho Gamma_(nu sigma)^lambda - gamma_(nu lambda)^rho Gamma_(mu sigma)^lambda\)V^sigma - 2 Gamma_(mu nu)^lambda nabla_lambda V^rho $

Así, encontramos que: $ \[nabla_mu\,nabla_nu\]V^rho = R_(sigma mu nu)^rho V^sigma - T_(mu nu)^lambda nabla_lambda V^rho $ para las conexiones de Levi-Civita, tenemos: $ \[nabla_mu\,nabla_nu\]V^rho = R_(sigma mu nu)^rho V^sigma $ que se conoce como la identidad de Ricci.

#definicion[

]

El tensor de torsión es un mapa de dos campos vectoriales a un tercer campo vectorial $ T\(x\,y\)= nabla_x y - nabla_y x -\[x\,y\]. $

#definicion[

]

El tensor de Riemann es un mapa de tres campos vectoriales a un cuarto campo vectorial $ R\(x\,y\)z = nabla_x nabla_y z - nabla_y nabla_x z - nabla_(\(x\,y\)) z . $

== Curvatura de Riemann
<part4.6>
Podemos considerar hacer un transporte paralelo sobre $S^n$ a lo largo del camino cerrado en contra de las agujas del reloj.

Podemos ver que luego de transportar paralelamente un vector a traves de un camino cerrado, obtenemos un vector diferente al inicial. La curvatura de Riemann es definida para medir esta diferencia.

El cual está parametrizado como $\(t\,s\)arrow.r gamma\(t\,s\)$. Entonces, la diferencia de dos vectores es dada por el tensor de Riemann $ frac(upright(D), upright(d) t) frac(upright(D), upright(d) s) X - frac(upright(D), upright(d) s) frac(upright(D), upright(d) t) X = R (dv( gamma , t ) \, dv( gamma , s )) X . $

#block[
#box(image("../figures/imgrg4.4.png", width: 62.0%, alt: "image"))

]
Sea $\(cal(M)\,g\)$ una manifold de Riemann y $nabla$ la conexión de Levi-Civita. La correspondiente curvatura es llamada el tensor de curvatura de Riemann, y asuimos que la curvatura es siempre el tensor de curvatura de Riemann, si introducimos la siguiente notación: $ R\(x\,y\,z\,w\) & := g\(R\(x\,y\)z\,w\)\
R\(partial_x\,partial_ell\,partial_j\,partial_i\) & := R_(i j k ell) := R_(j k ell)^s g_(s i)\, $ entonces, el tensor de curvatura de Riemann satisface las siguientes propiedades:

+ $R\(x\,y\,z\,w\)= - R\(y\,x\,z\,w\)$.

+ $R\(x\,y\,z\,w\)= - R\(x\,y\,w\,z\)$.

+ $R\(x\,y\,z\,w\)= R\(z\,w\,x\,y\)$.

+ $R\(x\,y\)z + R\(y\,z\)x + R\(z\,x\)y = 0$ (Primera identidad de Bianchi).

+ $nabla_w R\(x\,y\)z + nabla_x R\(y\,w\)z + nabla_y R\(w\,x\)z = 0$ (Segunda identidad de Bianchi).

En términos de coordenadas locales, las propiedades anteriores se pueden reescribir como

+ $R_(text(fill: #red,  mu nu ) rho sigma) = - R_(text(fill: #red,  nu mu ) rho sigma)$.

+ $R_(mu nu text(fill: #blue,  rho sigma )) = - R_(mu nu text(fill: #blue,  sigma rho ))$.

+ $R_(text(fill: #red,  mu nu ) text(fill: #blue,  rho sigma )) = R_(text(fill: #blue,  rho sigma ) text(fill: #red,  mu nu ))$.

+ $R_(mu text(fill: #maroon,  nu rho sigma )) + R_(mu text(fill: #maroon,  rho sigma nu )) + R_(mu text(fill: #maroon,  sigma nu rho )) = 0$.

+ $nabla_lambda R_(mu nu rho sigma) + nabla_nu R_(lambda mu rho sigma) + nabla_mu R_(nu lambda rho sigma) = 0$.

#strong[Simetrías del tensor de Riemann:] Solo 20 de las $4^4 = 256$ componentes de $R_(nu rho sigma)^mu$ son independientes. Muchas de las componentes de $R_(mu nu rho sigma) = g_(mu lambda) R_(nu rho sigma)^lambda$ son relacionados por simetrías.

Contrayendo el primer y último índice de un tensor de curvatura de Riemann da el tensor de curvatura de Ricci. $ upright(R i c)\(g\)= R_(i j) upright(d) x^j times.o upright(d) x^i := R_(i j s)^s = R_(k i j ell) g^(k ell) $

Si existe una constante $Lambda$ tal que $R_(i j) = Lambda g_(i j)$, entonces $\(cal(M)\,g\)$ es llamada una manifold de Einstein. Contrayendo los índices de nuevo, obtenemos el escalar de curvatura $ R := R_(i j) g^(i j) . $

#definicion[

]

La única contracción del tensor de Riemann es el tensor de Riemann $ R_(mu nu) = R_(mu nu lambda)^lambda = partial_lambda Gamma_(mu nu)^lambda - partial_nu Gamma_(mu lambda)^lambda + Gamma_(lambda rho)^lambda Gamma_(mu nu)^rho - Gamma_(mu lambda)^rho Gamma_(nu rho)^lambda . $

#definicion[

]

La traza del tensor de Ricci es el escalar de Ricci $ R = R_mu^mu = g^(mu nu) R_(mu nu) . $
