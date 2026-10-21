#import "/lib/notes.typ": *

= Introduction to differential Geometry
== Espacios topológicos
<part1.1>
La noción de manifolds(Variedades diferenciables) es construida en base a los espacios topólogicos.

La noción de TOP. provee conjuntos abiertos y cercados que permiten definir conceptos como continuidad, conectividad y convergencia.

#definicion[

\(Topologia y espacios topológicos - TOP.) Sea $X$ un conjunto y $cal(T)$ una colección de subconjuntos de $X$ que satisfacen las siguientes propiedades

]

+ $nothing$ y $X$ estan en $cal(T)$

+ Para una subcolección ${ u_i in X med without med i in I }$, $union.big_i u_i in cal(T)$

+ Si $u_1\,u_2$ $in X$ entonces $u_1 inter u_2 in cal(T)$

Entonces $cal(T)$ es llamado topologia y $\(X\,Z\)$ es llamado espacio topologico.

#strong[Nota:] Usualmente denotamos $X$ como un espacio TOP. por brevedad. Un elemento de $cal(T)$ es llamado un conjunto abierto.

Sean $\(X\,cal(T)\)$ y $\(X'\,cal(T)'\)$ dos espacios TOP. dado un mapa $f : X arrow.r X'$, es llamado mapa continuo si y solo si $f^(- 1)\(V\)in cal(T)$ para $V in cal(T)'$.

Si $f$ es biyectivo(inyectivo, sobreyectivo) y ambas $f$ y $f^(- 1)$ ($f^(- 1) : X' arrow.r X$) entonces $f$ es llamado Homeomorfismo.

Sea $\(X\,cal(T)\)$ un espacio TOP., entonces un subconjunto de $V$ de $X$ cerrado si su complemento en $X$ es un conjunto abierto, i.e $X - V in cal(T)$.

De acuerdo con la definición $X$ y $nothing$ son cerrados. Con las siguientes propiedades

+ Para una colección ${ V_i med without med i in I }$ de conjuntos cerrados $inter_i V_i$ es también cerrado.

+ Para los conjuntos cerrados $V_1\,V_2$, $V_1 union V_2$ es cerrado.

Una familia ${ u_i }$ de conjuntos abiertos de $X$ es llamado un recubrimiento abierto de $X$ si $union.big_(i in I) u_i = X$.

#definicion[

Un espacio TOP. es compacto si cada recubrimiento de $X$ tiene un sub-recubrimiento finito, i.e. si $X = union.big_(i in I) u_i$, para una colección de conjuntos abiertos ${ u_i med without med i in I }$, entonces podemos encontrar finitamente muchos $u_(i k)\(k = 1\,dots.h.c\,n\)$ tal que $X = union.big_(k = 1)^n u_(i k)$

]

La compacidad es la notación de subconjuntos cerrados y acotados en el espacio euclideano $bb(R)^n$.

#definicion[

Un espacio TOP. $X$ es conexo si no puede, ser escrito como $X = X_1 union X_2$, donde $X_1$ y $X_2$ son subconjuntos abiertos y $X_1 inter X_2 = nothing$. De lo contrario $X$ es llamado disconexos.

]

#definicion[

Un espacio topologico es conexo por arcos o arco conexto(path-connected) si, por cada par de puntos $x$ y $x'$ en $X$, hay un camino en $X$ de $x$ a $x'$, hay una función continua $p :\[0\,1\]arrow.r X$ tal que $p\(0\)= x$ y $p\(1\)= x'$. \ Todo espacio conexto por arcos es conexo, pero lo contrario no es cierto(¿Algún ejemplo?)

]

#definicion[

Sea $\(X\,cal(T)\)$ un espacio TOP. y $tilde.op$ es una relación de equivalencia en $X$. Podemos definir una TOP. en el conjunto cociente $X\/tilde.op$ dado por $cal(T)' = { u\|u subset X\/tilde.op\,p^(- 1)\(u\)in cal(T) }$ donde $p : X arrow.r X\/tilde.op$ es una proyección. Entonces, ($X\/tilde.op\,cal(T)'\)$ es el espacio cociente de ($X\,cal(T)$).

]

Supongamos que $cal(T)$ da una topologia a $X$. $N$ es una vecindad de un punto $x in X$ si $N$ es un subconjunto de $X$ y $N$ contiene algún(al menos uno) conjuntos abierto $u_i$ al que pertenece $x$.

#definicion[

Un espacio TOP. se llama espacio de Hausdorff si por cada $X_1\,X_2 in cal(M)$ de distintos puntos de $X$, existe un vecindario $u_1$, y $u_2$ de $x_1$ y $x_2$ respectivamente, y son disjuntos. \ En términos generales, dos puntos se pueden "separar" en el espacio de Haussdorff. Puede sonar obvio, pero es posible encontrar ejemplos de espacios topológicos que no pueden "separar" dos puntos.

]

Recordatorio: Una función mapea elementos de su dominio a elementos en su codominio. Dada una función $f : X arrow.r Y$:

- La función es inyectiva(uno-a-uno) si cada elemento del codominio se asigna como máxima a un elemetno del dominio, o de manera equivalente, si elementos distintos del dominio se asignan a elementos distintos en el codominio. $ forall med x\,x' in X\,f\(x\)= f'\(x\)arrow.r.double x = x' $

  #block[
  #box(image("../figures/inyectiva.png", width: 34.0%, alt: "image"))

  ]

- La función es sobreyectiva, o sobre, si cada elemento del codominio está mapeado por al menos un elemento del dominio. Es decir, la imagen y el codominio de la función son iguales. $ forall med y in Y\,exists med x in X med upright("tal que") med y = f\(x\) $

  #block[
  #box(image("../figures/sobreyectiva.png", width: 38.0%, alt: "image"))

  ]

- La función es biyectiva(uno a uno y sobre) si cada elemento del codominio está mapeado por exactamente un elemento del dominio. Es decir, la función es tanto inyectiva como sobreyectiva. $ forall med y in Y\,exists ! med x in X med upright("tal que") med y = f\(x\) $

  #block[
  #box(image("../figures/biyectiva.png", width: 41.0%, alt: "image"))

  ]

== Manifolds
<part1.2>
#definicion[

\(Manifolds) Sea $cal(M)$ un espacio de Haussdorff, $cal(M)$ es llamado una manifold suave(diferenciable) n-dimensional si cumple con:

]

+ Sea $cal(M) = union_alpha u_alpha$ de un recubrimiento abierto.

+ Hay un mapa continuo e invertible $ phi_alpha : u_alpha arrow.r phi_alpha\(u_alpha\)subset.eq bb(R)^n $ donde $phi\(u_alpha\)$ es abierto en $bb(R)^n$.

+ Para todo $alpha\,beta$ tenemos $phi\(u_alpha inter u_beta\)$ es abierto en $bb(R)^n$ y las funciones de transición serán $ phi_alpha compose phi_beta^(- 1) : phi_beta\(u_alpha inter u_beta\)arrow.r phi_alpha\(u_alpha inter u_beta\) $ son suaves.

#block[
#box(image("../figures/imgrg1.png", width: 84.0%, alt: "image"))

]
$\(u_alpha\,phi_alpha\)$ es llamado un chart de coordenada y ${\(u_alpha\,u_alpha\)}_alpha$ es llamado un Atlas. Podemos escribir $ phi_alpha =\(x^1\,dots.h.c\,x^n\) $ donde cada $x^i : u_alpha arrow.r bb(R)$. Llamamos estos $x^i$ coordenadas locales.

Un punto importante de la definición de una manifold suave es lo siguiente. Si ($u_alpha\,phi_alpha$) y ($u_alpha\,phi_beta$) son charts en algún atlas, y $f : cal(M) arrow.r bb(R)$, entonces $f compose phi_alpha^(- 1)$ es suave en $phi_alpha\(p\)$ si y solo si $f compose phi_beta^(- 1)$ es suave en $phi_beta\(p\)$ para todo $p in u_alpha inter u_beta$.

#ejemplo[

Esfera n-dimensional

]

Vamos a considerar la esfera n-dimensional $ S^n = { x =\(x^0\,dots.h.c\,x^n\)in bb(R)^(n + 1) :\|x\|^2 = 1 } $ Definimos un recubrimiento abierto $cal(M) = S^n = union_i u_i$ $ u^(+) = S^n without { upright("polo sur") }\,med u^(-) = S^n without { upright("polo norte") } . $ donde el polo norte es $x^0 = 1$ y el polo sur es $x^0 = - 1$ y los mapas continuos $ phi^(+) & : u^(+) arrow.r bb(R)^n\;med\(x^0\,dots.h.c\,x^n\)arrow.r.double frac(1, 1 + x^0)\(x^1\,dots.h.c\,x^n\)\
phi^(-) & : u^(-) arrow.r bb(R)^n\;med\(x^0\,dots.h.c\,x^n\)arrow.r.double frac(1, 1 - x^0)\(x^1\,dots.h.c\,x^n\) $ Este mapeo es llamado la proyección estereográfica. Los mapas inversos son $ \(phi^plus.minus\)^(- 1) : bb(R)^n arrow.r u^plus.minus\;\(x^1\,dots.h.c\,x^n\)arrow.r.double frac(1, 1 +\|x\|^2)\(plus.minus\(1 -\|x\|^2\,2 x^1\,dots.h.c\,2 x^n\)\) $ Las funciones de transiciones están dadas por $ phi^(+) compose\(phi^(-)\)^(- 1)\(x\)= frac(x, \|x\|^2)\,med phi^(-) compose\(phi^(+)\)^(- 1)\(x\)= frac(x, \|x\|^2) . $

De hecho, la esfera m-dimensional es una manifold compacta.

#block[
#box(image("../figures/imgrg2.png", width: 82.0%, alt: "image"))

]
#definicion[

Sea $cal(M)$ una manifold n-dimensional, un subconjunto $cal(M)' subset cal(M)$ es llamado submanifold. Si satisface las siguientes propiedad: Para cada $p in cal(M)'$, existe una coordenada local ($u\;x^1\,dots.h.c\,x^n$) tal que:

]

$ cal(M)' inter u = { q in u\|x^(n' + 1)\(1\)= dots.h.c x^n\(q\)= 0 } $ De hecho, $cal(M)'$ es n'-dimensional ya que podemos tomar unas coordenadas locales $cal(M) inter\(u\;x^1\,dots.h.c\,x^n\)$ alrededor de $p in cal(M)'$. Aveces $cal(M)'$ es llamada submanifold de codimensión $n - n'$ en $cal(M)$.

#ejemplo[

]

$ S^n supset S^(n') = { x =\(x^0\,dots.h.c\,x^n\)in bb(R)^(n + 1) :\|x\|^2 = 1\,x^(n' + 1) = dots.h.c = x^n = 0 } $ es una submanifold de $S^n$.

#definicion[

Sea $cal(M)$ y $cal(N)$ manifold con $dim\(cal(M)\)= m$ y $dim\(cal(N)\)= n$, entonces tenemos un mapa $f : cal(M) arrow.r cal(N)$ es suave, si para un chart $\(u_alpha\,phi_alpha\)$ de $p in cal(M)$ y ($V_beta\,psi_beta$) de $f\(p\)in cal(N)$, un mapa

]

$ psi_beta compose f compose\(phi_alpha\)^(- 1) : phi_alpha\(u_alpha inter f^(- 1)\(V_beta\)\)arrow.r psi_beta\(V_beta\) $ #emph[es suave. Si, $f$ tiene una inversa suave(en el caso $m = n$), es llamado difeomorfismos.]

#block[
#box(image("../figures/imgrg3.png", width: 91.0%, alt: "image"))

]
#emph[Equivalentemente, $f$ es suave en $p$ si $psi compose f compose phi^(- 1)$ es suave en $phi\(p\)$ para cualquiera de los charts ($u\,phi$) y ($V\,psi$).]

#ejemplo[

]

Sea $cal(M)$ y $cal(N)$ manifolds suaves. Entonces, una proyección $cal(M) times cal(N) arrow.r cal(N)$ es un mapa suave.

#ejemplo[

]

Una rotación de $S'$ es un difeomorfismo

== Espacio tangente
<part1.3>
#definicion[

\(#strong[Vector tangente]). Un vector tangente $X_p$ en $p in cal(M)$ es un mapa $X_p : cal(C)^oo\(cal(M)\)arrow.r bb(R)$, el cual cumple

]

+ Linearidad: $X_p\(alpha f + beta g\)= alpha X_p\(f\)+ beta X_p\(g\)$ para $alpha\,beta in bb(R)$.

+ Regla de Leibniz: $X_p\(f g\)= f\(p\)X_p\(g\)+ X_p\(f\)g\(p\)$.

Un vector tangente $X_p$ se comporta como una derivada(orden 1) sobre $cal(C)^oo\(cal(M)\)$. Entonces, el conjunto de vectores tangentes en $p$ es un espacio vectorial $ \(X_p + Y_p\)\(f\)= X_p\(f\)+ Y_p\(f\)\,quad\(alpha X_p\)f = alpha\(X_p\(f\)\) $ este espacio vectorial es llamado espacio tangente $T_p cal(M)$ en $p in cal(M)$.

Hay otra forma de pensar en vectores tangentes. Vamos a considerar una curva, la cual es un mapa suave $gamma : I arrow.r cal(M)$ con $gamma\(0\)= p$ donde $I =\(- epsilon.alt\,epsilon.alt\)$ es un intervalo abierto no vacio.

Dos curvas $gamma_1\,gamma_2$ son tangentes en $p$ si: $ gamma_1\(0\)= p = gamma_2\(0\)\,quad dv( , t ) phi\(gamma_1\(t\)\)\|_(t = 0) = dv( , t ) phi\(gamma_2\(t\)\)\|_(t = 0) $

#block[
#box(image("../figures/imgrg4.png", width: 100.0%, alt: "image"))

]
Donde ($u\,phi$) es un chart alrededor de $p$. Podemos así escribir dos curvas tangentes $gamma_1 tilde.op gamma_2$, las cuales forman una clase de equivalencia. Para todo $f in cal(C)^oo\(cal(M)\)$, podemos tomar la derivada de $f$ a lo largo de $gamma$ $ X_p\(f\)= dv( , t )\|_(t = 0) f\(gamma\(t\)\) $

Es facil ver que $X_p$ satisface la definición de un vector tangente. Así, podemos definir el espacio tangente en $p$ $ T_p cal(M) = { gamma : I arrow.r cal(M) med\|med gamma\(0\)= p }\/tilde.op $

Dada unas coordenadas locales $phi =\(x^1\,dots.h.c\,x^n\)$, el vector tangente a lo largo de una curva $gamma$ puede ser escrito como $ X_p = sum_(i = 1)^n X_p^i pdv( , x^i )\|_p med upright("donde") med X_p^i = dv( , t ) X^i\(gamma\(t\)\)\|_(t = 0) $

Por lo tanto, $(pdv( , x ) \, dots.h.c \, pdv( , x^n ))$ puede ser considerado como una base de $T_p cal(M)$.

Supongamos que tenemos también coordenadas $y^1\,dots.h.c\,y^n$ cerca de $p$ dado por otro chart. Entonces, podemos escribir $ pdv( , y^i )\|_p = sum_(j = 1)^n pdv( x^j , y^i )\(p\)pdv( , x^j )\|_p\, $ donde $pdv( x^j , y^i )\(p\)$ es llamado el Jacobiano en $p$.

#definicion[

Un homomorfismo es una función $f : bb(R) arrow.r bb(S)$ la cual satisface las siguientes propiedades:

]

+ $f\(a + b\)= f\(a\)+ f\(b\)quad forall med a\,b in bb(R)$.

+ $f\(a b\)= f\(a\)f\(b\)quad forall med a\,b in bb(R)$.

+ $f\(1_(bb(R))\)= 1_(bb(S))$.

para todo conjunto $bb(R)$ y $bb(S)$.

#definicion[

Sea $f : cal(M)^m arrow.r cal(N)^n$ sea un mapa suave entre dos manifolds. Para $p in cal(M)$ y cada $v in T_p cal(M)$, podemos escoger una curva $gamma :\(- epsilon.alt\,epsilon.alt\)arrow.r cal(M)$ tal que $gamma\(0\)= p$ y $gamma'\(0\)= v$. \ \ El mapa tangente de $f$ en un punto $p$.

]

$ upright(d) f_p : T_p cal(M) arrow.r T_(f\(p\)) cal(N) $ #emph[es definido como] $ \(upright(d) f_p\)\(v\)= beta'\(0\) $ #emph[donde $beta = f compose gamma :\(- epsilon.alt\,epsilon.alt\)arrow.r cal(N)$.]

#proposicion[

]

Sea $cal(M)\,cal(N)$ y $cal(P)$ manifolds, sea $f : cal(M) arrow.r cal(N)$ y $g : cal(N) arrow.r cal(P)$ mapas suaves. Supongamos $q in cal(M)$, entonces $ upright(d)\(g compose f\)= upright(d) g_(f\(q\)) compose upright(d) f_q : T_p cal(M) arrow.r T_(g compose f\(q\)) cal(P) . $

#definicion[

\( Difeomorfismo). Sea $cal(M)$, $cal(N)$ dos manifolds suaves:

]

+ Un mapa $f : cal(M) arrow.r cal(N)$ es llamado difeomorfismo si $f$ es suave, biyectivo y su mapa inverso $f^(- 1)$ es también suave.

+ $f : cal(M) arrow.r cal(N)$ es llamado un difeomorfismo local en $p in cal(M)$ si existe un vecindario $U$ de $p$ de $V$ de $f\(p\)$ tal que $f : U arrow.r V$ es un difeomorfismo.

#definicion[

\( Rango). Sea $f : cal(M) arrow.r cal(N)$ un mapa suave. El rango de $f$ en el punto $p$ es definido como el rango del mapa tangente

]

$ upright(d) f_p : T_p cal(M) arrow.r T_(f\(p\)) cal(N) . $

#definicion[

\( Inmersión, submersión, embeddings y submanifolds). \ \ Sea $f : cal(M) arrow.r cal(N)$ un mapa suave y $upright(d) f_p : T_p cal(M) arrow.r T_(f\(p\)) cal(N)$ el mapa tangente

]

+ #emph[$f$ es llamada una Inmersión si $upright(d) f_p$ es inyectivo ($"rank"\(upright(d) f_p\)= dim cal(M)$) para todo $p in cal(M)$.]

+ #emph[$f$ es llamado una Submersión si $upright(d) f_p$ es sobreyectivo ($"rank"\(upright(d) f_p\)= dim cal(N)$) para todo $p in cal(M)$.]

+ #emph[$f$ es llamado un Embedding si $f$ es una inmersión y $phi : cal(M) arrow.r phi\(cal(M)\)$ es un homeomorfismo.]

+ #emph[Si $cal(M) subset cal(N)$ y el mapa de inclusión $i : cal(M) arrow.r cal(N)$ es un embedding, entonces $cal(M)$ es llamada una submanifold. de $cal(N)$.]

Nota:

+ Una inmersión no es necesariamente un mapa inyectivo, e.g $f : bb(R) arrow.r bb(S)^1\,med f\(theta\)= e^(i theta)$.

+ Una submersión no es necesariamente un mapa sobreyectivo, e.g $f : bb(R) arrow.r bb(R)\,med f\(x\)= arctan\(x\)$ y $f'\(x\)= frac(1, + x^2)$.

=== Bundle Tangentes
Vamos a considerar la colección de espacios tangente sobre cada punto $p$ sobre $cal(M)$ en una manifold $ T cal(M) = union.big_(p in cal(M)) T_p cal(M) = {\(p\,X_p\)\|_p in cal(M)\,X_p in T_p cal(M) } $

Existe entonces un mapa natural $pi : T cal(M) arrow.r cal(M)$ enviando $X_p in T_p cal(M)$ a $p$ para cada $p in cal(M)$ con $pi$ suave.

Podemos considerar $T cal(M)$ como una manifold de dimensión $2 dim cal(M)$ el cual es llamado el bundle tangente(fibrado tangente) de $cal(M)$. Sea $x^1\,dots.h.c\,x^n$ coordenadas sobre un chart($u\,phi$). Entonces, para cada $p in u$ y $X_p in T_p cal(M)$, hay $alpha^1\,dots.h.c\,alpha^n in bb(R)$, tal que: $ X_p = sum_(i = 1)^n alpha^i pdv( , x^i )\|_p $

Esto da una biyección $ tilde(phi) : & pi^(- 1)\(u\)arrow.r phi\(u\)times bb(R)\
 & X_p arrow.r\(x^1\(p\)\,dots.h.c\,x^n\(p\)\,alpha^1\,dots.h.c\,alpha^n\) $

Si $\(V\,psi\)$ es otro chart sobre $cal(M)$ con coordenadas $y^1\,dots.h.c\,y^n$ entonces $ pdv( , x^i )\|_p = sum_(j = 1)^n pdv( y^j , x^i )\(p\)pdv( , y^j )\|_p\, $ de manera que $tilde(psi) compose tilde(phi)^(- 1) : phi\(U inter V\)times bb(R)^n arrow.r psi\(U inter V\)times bb(R)^n$ dado por $ tilde(psi) compose tilde(psi)^(- 1)\(x^1\,dots.h.c\,x^n\,alpha^1\,dots.h.c\,alpha^n\)= (y^1 \, dots.h.c \, y^n \, sum_(i = 1)^n alpha^i pdv( y^1 , x^i ) \, dots.h.c \, sum_(i = 1)^n alpha^i pdv( y^n , x^i )) $ y es suave.

=== Campos Vectoriales
Un mapa suave $X : cal(M) arrow.r T cal(M)$ es llamada sección de $pi : T cal(M) arrow.r cal(M)$ si $pi X = i upright(d)_M$:

#block[
#box(image("../figures/imgrg5.png", width: 46.0%, alt: "image"))

]
ya que es una asignación suave $X : p arrow.r X\(p\)$, es llamado un campo vectorial.

#ejemplo[

]

Sea $bb(S)^n subset bb(R)^(n + 1)$ una n-esfera. Tenemos un campo vectorial $y = sum y^i pdv( , x^i )$ $ upright("donde") med y^i = cases(delim: "{", \(- x^1\,x^0\,- x^3\,x^2\,dots.h.c\,- x^(2 k + 1)\,x^(2 k)\)\,quad n = 2 k + 1, \(- x^1\,x^0\,- x^3\,x^2\,dots.h.c\,- x^(2 k + 1)\,x^(2 k)\,0\)quad n = 2 k + 2 .) $ Podemos escribir un conjunto de campos vectoriales como $frak(X)\(cal(M)\)= Gamma\(T cal(M)\)$. De hecho, un campo vectorial $X in frak(X)\(cal(M)\)$ es un mapa $cal(C)^oo\(cal(M)\)arrow.r cal(C)^oo\(cal(M)\)$, el cual satisface:

+ $X\(alpha f + beta g\)= alpha X\(f\)+ beta X\(g\)quad forall alpha\,beta in bb(R)$. \

+ $X\(f g\)= g X\(f\)+ f X\(g\)$.

#block[
#box(image("../figures/imgrg6.png", width: 100.0%, alt: "image"))

]
Sea $X\,Y in Gamma\(cal(M)\)$ y $f in C^oo\(cal(M)\)$. Entonces tenemos $X + Y$, $f X in Gamma\(cal(M)\)$. Por lo tanto, $Gamma\(cal(M)\)$ es un $C^oo\(cal(M)\)$ módulo.

Note que el producto de dos campos vectoriales $X\,Y in Gamma\(cal(M)\)$ no es un campo vectorial: $ X Y\(f g\) & = X (Y \( f g \)) = X (f Y \( g \) + g Y \( f \))\
 & = X\(f\)Y\(g\)+ f X Y\(g\)+ X\(g\)Y\(f\)+ g X Y\(f\) $

Sin embargo, $X Y - Y X$ es un capo vectorial denotado como $\[X\,Y\]$ es llamado el bracket de Lie. De hecho, $Gamma\(cal(M)\)$ con brackets de Lie satisface:

+ $\[dot.op\,dot.op\]$ es bilineal.

+ $\[dot.op\,dot.op\]$ es antisimetrico, i.e $\[X\,Y\]= -\[Y\,X\]$.

+ La identidad de Jacobi se cumple #sinnum[$  [X \, \[ Y \, Z \]] + [Y \, \[ Z \, X \]] + [Z \, \[ X \, Y \]] = 0 $]

=== Flujo
Una curva integral de un campo vectorial $X in Gamma\(cal(M)\)$ es un mapa suave $gamma : I arrow.r cal(M)$ tal que $I$ es un intervalo abierto en $bb(R)$ y $dot(gamma)\(t\)= X_gamma\(t\)$.

#ejemplo[

]

Un campo vectorial $X = alpha pdv( , x ) + beta pdv( , y )$ en $bb(R)^2$. Entonces la curva integral es una traslación $ gamma_t\(x\,y\)=\(x + t alpha\,y + t beta\). $

Supongamos que un campo vectorial puede ser escrito en terminos de unas coordenadas locales $\(x^1\,dots.h.c\,x^n\)$ sobre un vecindario abierto $u$ alrededor de $p in cal(M)$. $ X = sum_(i = 1)^n alpha^i pdv( , x^i ) $

Entonces $dot(gamma)\(t\)$ se puede expresar $dot(gamma)\(t\)= dv( x^i , t ) = alpha^i\(x^1\(t\)\,dots.h.c\,x^n\(t\)\)$.

Estas son simplemente ecuaciones diferenciales y $gamma\(t\)$ es una curva integral. Además, existe un teorema que establece que existe una única solución $gamma :\(- epsilon.alt\,epsilon.alt\)arrow.r cal(M)$ para un $epsilon.alt > 0$ suficientemente pequeño tal que $gamma\(0\)= p$.

#teorema[

\(Existencia de curvas integrales).

]

Sea $X in Gamma\(cal(M)\)$ y $p in cal(M)$. Entonces, existe un intervalo abierto $I subset.eq bb(R)$ con $0 in I$ y una curva integral $gamma : I arrow.r cal(M)$ para $X$ con $gamma\(0\)= p$. Además, si $tilde(gamma) : tilde(I) arrow.r cal(M)$ es otra curva integral para $X\,Y$ $tilde(gamma)\(0\)= p$, entonces $tilde(gamma) = gamma$ en $I inter tilde(I)$.

Si $gamma\(t\)$ es definido para cualquier $t in bb(R)$ sobre $cal(M)$, entonces $X$ es llamado completo. Si $cal(M)$ es una manifold suave y compacta, cualquier campo vectorial es completo. En esta situación, un mapa suave $ gamma : & bb(R) times cal(M) arrow.r cal(M)\;\
 & \(t\,p\)arrow.r gamma_t\(p\) $ es llamado flujo(o grupo de un parámetro de difeomorfismo) generado por un vector $X$ el cual satisface $ gamma_(t + s)\(p\)= gamma_t\(gamma_s\(p\)\)= dv( gamma_t\(p\), t ) = X_(gamma_t\(p\)) $

== Formas Diferenciales
<part1.4>
=== Bundles Cotangentes
Dado un espacio vectorial $V$ en $bb(R)$, podemos tomar su campo dual $ V^(*) = { w : V arrow.r bb(R) med\|med w\(alpha_1 X_1 + alpha_2 X_2\)= alpha_1 w\(X_1\)+ alpha_2 w\(X_2\)med upright("para") med X_i in V med upright("y") med alpha_i in bb(R) } $

El espacio dual $V^(*)$ es también un espacio vectorial $beta_1 w_1 + beta_2 w_2 in V^(*)$ para $w_1\,w_2 in V^(*)$ y $beta_1\,beta_2 in bb(R)$. El espacio vectorial dual $T_p^(*) cal(M)$ del espacio tangente $T_p cal(M)$ es llamado el espacio cotangente.

De hecho, dado $f in C^oo\(cal(M)\)$, podemos definir su diferencial $upright(d) f_p$ en $p$: $ upright(d) f_p : & T_p cal(M) arrow.r bb(R)\,\
 & X_p arrow.r X_p\(f\). $

Para unas coordenadas locales $\(u\,phi =\(x^1\,dots.h.c\,x^n\)\)$, hemos visto que $(pdv( , x ) \|_p \, dots.h.c \, pdv( , x^n ) \|_p)$ es una base de $T_p cal(M)$.

Por otra parte, podemos tomar $(upright(d) x^1 \|_p \, dots.h.c \, upright(d) x^n \|_p)$ como una base de $T_p^(*) cal(M)$, tal que: $ upright(d) x^j\|_p (pdv( , x^i ) \|_p) = delta_i^j . $

Por lo tanto, en esta base, podemos escribir $upright(d) f_p = sum_(i = 1)^n pdv( f\(p\), x^i ) upright(d) x^i\|_p$.

Al igual que el bundle tangente, podemos considerar una colección de espacios cotangentes: $ T^(*) cal(M) = union.big_(p in cal(M)) T_p^(*) cal(M) $

La cual posee estructura de una manifold. Llamamos $T^(*) cal(M)$ el bundle cotangente de $cal(M)$. Además, la sección del espacio cotangente es llamado 1-forma, y denotamos el conjunto de 1-forma por $Omega^1\(cal(M)\)= Gamma\(T^(*) cal(M)\)$.

#divider()

0.5

Bundle tangente

#sinnum[$  T M = union.big_p T_p cal(M) $]

#sinnum[$  pi & : T cal(M) arrow.r cal(M)\
pi^(- 1) & : cal(M) arrow.r T cal(M) $]

#sinnum[$  pi^(- 1) : Gamma\(T cal(M)\)= frak(X)\(cal(M)\) $]

#sinnum[$  frak(X)\(cal(M)\): & upright("Espacio donde viven")\
 & upright("los vectores")\
 & arrow.r X in frak(X)\(cal(M)\) $] Sea $X^1\,dots.h.c\,X^n$ coordenadas sobre un chart $\(u\,phi\)$. Entonces, para cada $p in u$ y $X in frak(X)\(cal(M)\)$ hay $alpha^1\,dots.h.c\,alpha^n in bb(R)$ tal que: #sinnum[$  X_p = sum_(i = 1)^n alpha^i pdv( , x^i )\|_p $]

0.5

Bundle cotangente

#sinnum[$  T^(*) cal(M) = union.big_p T_p^(*) cal(M) $]

#sinnum[$  pi^(*) & : T^(*) cal(M) arrow.r cal(M)\
pi^(*^(- 1)) & : cal(M) arrow.r T^(*) cal(M) $]

#sinnum[$  pi^(*^(- 1)) : Gamma\(T^(*) cal(M)\)= Omega^1\(cal(M)\) $]

#sinnum[$  Omega^1\(cal(M)\): & upright("Espacio donde viven")\
 & upright("las 1-formas")\
 & arrow.r w in Omega^1\(cal(M)\) $] Sea $X^1\,dots.h.c\,X^n$ coordenadas sobre un chart $\(u\,phi\)$. Entonces, para cada $p in u$ y $w in Omega^1\(cal(M)\)$, hay $beta^1\,dots.h.c\,beta^n in bb(R)$ tal que: #sinnum[$  w_p = sum_(i = 1)^n beta_1 upright(d) x^i\|_p $]

Tal que: #sinnum[$  med w : & X arrow.r bb(R)\
 & X arrow.r w\(X\)in bb(R) $] y localmente $upright(d) x^j\|_p (pdv( , x^i ) \|_p) = delta_i^j$.

#ejemplo[

]

Si $f$ es una función suave sobre $cal(M)$, entonces $upright(d) f in Omega^1\(cal(M)\)$, el cual podemos emparejar con $forall X in frak(X)\(cal(M)\): upright(d) f\(X\)= X\(f\)in bb(R)$.

=== Push-forward y Pull-back
Sea $f : cal(M) arrow.r cal(N)$ un mapa suave entre las manifolds $cal(M)$ y $cal(N)$, $f$ induce un push-forward de vectores tangentes $ f_(*) : T_p cal(M) arrow.r T_(f\(p\)) cal(N) $

El cual es definido por $f_(*)\(X_p\)\(g\)= X_p\(g compose f\)$ para $g in C^oo\(cal(M)\)$. $f_(*)$ es denotada por $upright(d) f_p$ en la literatura.

#block[
#box(image("../figures/imgrg7.png", width: 100.0%, alt: "image"))

]
Por otra parte, $f$ induce un pull-back del espacio tangente $f^(*) : T_(f\(p\))^(*) cal(N) arrow.r T_p^(*) cal(M)$ el cual es definido por $ chevron.l f^(*)\(w_(f\(p\))\,X_p\)chevron.r = chevron.l w_(f\(p\))\,f_(*)\(X_p\)chevron.r $ para $w_(f\(p\)) in T_(f\(p\)) cal(N)$ donde $chevron.l dot.op\,dot.op chevron.r$ es un emparejamiento entre el espacio tangente y espacio cotangente.

Si $f_(*) : T_p cal(M) arrow.r T_(f\(p\)) cal(N)$ es suryectivo, i.e $"rank"\(f_(*)\)= dim cal(N)$, entonces $f$ es regular en el punto $p in cal(M)$. De lo contrario, $p in cal(M)$ es llamado un punto crítico de $f$ y $f\(p\)in cal(N)$ es llamado el valor crítico de $f$.

#ejemplo[

]

Sea $f : bb(S) arrow.r bb(R)$ sea un mapa definido por $f\(x^1\,dots.h.c\,x^n\)= x^n$ donde $bb(S)^n = {\(x^0\,dots.h.c\,x^n\)in bb(R)^(n + 1) med\|med\|x\|= 1 }$. Entonces, el polo norte y polo sur $x^n = plus.minus 1$ son puntos críticos de $f$ y un punto genérico es regular.

#definicion[

Si $f_(*)$ es regular para $forall p in cal(M)$, $f$ es llamado una submersión. Para $q in f\(cal(M)\)$, $f^(- 1)\(q\)$ es una submanifold de codimensión $dim\(cal(N)\)$ en $cal(N)$.

]

#ejemplo[

]

La proyección $f : cal(M) times cal(N) arrow.r cal(M)$ es una submersión.

=== Cambio de coordenadas
Supongamos que $\(U\,phi\)$ y $\(V\,psi\)$ son dos chart suaves sobre $cal(M)$, y $p in U inter V$. Vamos a denotar una función coordenada $phi$ por $\(x^i\)$ y para $psi$ por $\(tilde(x)^i\)$.

Cualquier vector tangente en $p$ puede ser representado con respecto a cualquiera de las bases $(pdv( , x^i ) \|_p)$ o $(pdv( , tilde(x)^i ) \|_p)$. ¿Cómo pueden estar relacionadas estas representaciones?

Podemos escribir los mapas de transición $psi compose phi^(- 1)\(x\)= (tilde(x)^i \( x \) \, dots.h.c \, tilde(x)^n \( x \))$ mediante el push-forward por $psi compose phi^(- 1)$ podemos escribir $ \(psi compose phi^(- 1)\)* pdv( , x^i )\|_(phi\(p\)) = pdv( tilde(x)^j , x^i )\(phi\(p\)\)pdv( , tilde(x)^j )\|_(psi\(p\)) $

Entonces, obtenemos $ pdv( , x^i )\|_p & =\(phi^(- 1)\)* pdv( , x^i )\|_(phi\(p\)) =\(psi^(- 1)\)*\(psi compose phi^(- 1)\)* pdv( , x^i )\|_(phi\(p\)) =\(psi^(- 1)\)* pdv( tilde(x)^j , x^i )\(phi\(p\)\)pdv( , tilde(x)^j )\|_(psi\(p\))\
 & = pdv( tilde(x)^j , x^i )\(phi\(p\)\)\(psi^(- 1)\)* pdv( , tilde(x)^j )\|_(phi\(p\)) = pdv( tilde(x)^j , x^i )\(phi\(p\)\)pdv( , tilde(x)^j )\|_p\, $ donde $phi\(p\)$ es la representación de coordenadas de $p$ en $x^i$-coordenadas. Aplicando lo anterior a las componentes de un vector $x = x^i pdv( , x^i )\|_p = tilde(x)^j pdv( , tilde(x)^j )\|_p$, encontramos que las componentes transforman(mediante la regla de cadena) $ tilde(X)^j = pdv( tilde(X)^j , x^i )\(phi\(p\)\)X^i . $

Una manifold suave $cal(M)$ es orientable si y solo si existe un atlas ${\(u_alpha\,phi_alpha\)}$ de $cal(M)$ tal que el determinante del Jacobiano es positivo en cualquier $U_alpha inter U_beta$.

=== Formas diferenciales
Es natural considerar un álgebra generada por la base de $T_p^(*) cal(M)$ sobre $bb(R)$ que satisface $ upright(d) x^i and upright(d) x^j = - upright(d) x^j and upright(d) x^i $ donde $and$ es llamado el producto Wedge, puede ser entendido como una multiplicación de esta álgebra, y llamamos $and$ el álgebra exterior. Para una manifold n-dimensional, tenemos una descomposición de sumas directas $ and^(*) T_p^(*) cal(M) = xor.big_(k = 0)^n and^k T_p^(*) cal(M) . $

Un elemento $w in and^(*) T_p^(*) cal(M)$ define un mapa k-linear alternante $T_p cal(M) times dots.h.c times T_p cal(M) arrow.r bb(R)$ con $ w\(X_(sigma\(1\)) dots.h.c X_(sigma\(k\))\)= "sign"\(sigma\)w\(X_1\,dots.h.c\,X_k\)\,quad\(X_i in V\) $

Para $sigma in cal(S)_k$. Además, para un elemento $w = w_1 and w_2 and dots.h.c and w_k$, definimos: $ w_1 and w_2 and dots.h.c and w_k\(X_1\,X_2\,dots.h.c\,X_k\)= frac(1, k !) det\(w_a\(X_b\)\) $

Generalmente, si $w$ es una k-forma y $eta$ es una 1-forma $ \(w and eta\)\(X_1\,dots.h.c\,X_(k + 1)\)= frac(1, \(k + l\)!) sum_(sigma in cal(S)_(k + 1)) "sign"\(sigma\)w\(X_(sigma\(1\))\,dots.h.c\,X_(sigma\(alpha\))\)eta\(X_(sigma\(k + 1\))\,dots.h.c\,X_(sigma\(k + l\))\) $

Podemos considerar una familia de espacios vectoriales sobre la manifold $cal(M)$. $and^k T^(*) cal(M) = union.big_p and^k T_p^(*) cal(M)$ la cual satisface la definición 7 de una manifold. Dado dos coordenadas locales $\(u\,x^1\,dots.h.c\,x^n\)$ y $\(v\,y^1\,dots.h.c\,y^n\)$, la transformación es dada por $ upright(d) x^(i 1) and dots.h.c and upright(d) x^(i k) = sum_(j_1 < dots.h.c < j_k) pdv( D\(x^(i 1)\,dots.h.c\,x^(i k)\), D\(y^(j 1)\,dots.h.c\,y^(j k)\)) upright(d) y^(j 1) and dots.h.c and upright(d) y^(j k) $ donde $frac(D\(dots.h.c\), D\(dots.h.c\))$ denota el Jacobiano. Además, escribimos el conjunto de todas las secciones como $ Omega^k\(cal(M)\)= Gamma\(and^(*) T^(*) cal(M)\). $

En particular, tenemos $Omega^0\(cal(M)\)= C^oo\(cal(M)\)$. Un elemento de $Omega^k\(cal(M)\)$ es conocido como una k-forma diferencial. Como resultado, una k-forma puede ser expresado como $ w & = sum_(i_1 < dots.h.c < i_k) f_(i_1 dots.h.c i_alpha)\(x^1\,dots.h.c\,x^n\)upright(d) x^(i_1) and dots.h.c and upright(d) x^(i_alpha) $

En la intercepción de dos charts locales $\(u\;x^1\,dots.h.c\,x^n\)$ y $\(v\;y^1\,dots.h.c\,y^n\)$, y $f\,g$ están relacionadas por el Jacobiano. Poniendo todos los $p$ juntos, un elemento $w in Omega^k\(cal(M)\)$ define un mapa alternante k-lineal $ w : frak(X)\(cal(M)\)times dots.h.c times frak(X)\(cal(M)\)arrow.r C^oo\(cal(M)\). $

Además, existe un mapa lineal único llamado la derivada exterior $upright(d) : Omega^k\(cal(M)\)arrow.r Omega^(k + 1)\(cal(M)\)$ tal que:

+ En $Omega^0\(cal(M)\)$, esto fue ya definido, i.e $upright(d) f = X\(f\)$ para todo $X in frak(X)\(cal(M)\)$.

+ Tenemos $upright(d) compose upright(d) = 0 : Omega^k\(cal(M)\)arrow.r Omega^(k + 2)\(cal(M)\)$.

+ Satisface la regla de Leibniz $upright(d)\(w and eta\)= upright(d) w and eta +\(- 1\)^k w and upright(d) eta$.

Para $w in Omega^k\(cal(M)\)$, la derivada exterior puede ser definida como $ \(upright(d) w\)\(X_1\,dots.h.c\,X_(k + 1)\) & = frac(1, k + 1) {sum_(i = 1)^(k + 1) \( - 1 \)^(i + 1) X_i (w \( X_1 \, dots.h.c \, hat(X)_i \, dots.h.c \, X_(k + 1) \))\
 & quad + sum_(i < j) \( - 1 \)^(i + j) w (\[ X_i \, X_j \] \, X_1 \, dots.h.c \, hat(X)_i \, dots.h.c \, hat(X)_j \, dots.h.c \, X_(k + 1))} $ donde $forall X_1\,dots.h.c\,X_(k + 1) in frak(X)\(cal(M)\)$ y $and$ significa omitido.

En términos de coordenadas locales $x^1\,dots.h.c\,x^n$, podemos definir las derivadas exteriores como $ upright(d) (sum_(i_1 < dots.h.c < i_k) w_(i_1\,dots.h.c\,i_k) upright(d) x^(i_1) and dots.h.c and upright(d) x^(i k)) = sum upright(d) w_(i_1\,dots.h.c\,i_k) and upright(d) x^(i_1) and dots.h.c and upright(d) x^(i k) $

Sea $f : cal(M) arrow.r cal(N)$ un mapa entre manifolds suaves $cal(M)$ y $cal(N)$. Esto induce un homomorfismo de álgebra $ f^(*) : Omega^bullet\(cal(N)\)arrow.r Omega^bullet\(cal(M)\) $

El pull-back de formas diferenciales asociado a $f$ puede ser definido como $ \(f^(*) w\)\(X_1\,dots.h.c\,X_k\)= w (f_(*) \( X_1 \) \, dots.h.c \, f_(*) \( X_k \)) . $

Para $omega in Omega^k\(cal(N)\)$ y $X_1\,dots.h.c\,X_n in frak(X)\(cal(M)\)$. Note que el pull-back $f^(*)$ tiene las siguientes propiedades:

+ $f^(*) : Omega^k\(cal(N)\)arrow.r Omega^k\(cal(M)\)$ es un mapa linear.

+ $f^(*)\(omega and eta\)= f^(*) omega and f^(*) eta$.

+ Si $g : cal(N) arrow.r cal(L)$ es un mapa entre dos manifolds $cal(N)$ y $cal(L)$, entonces $\(g compose f\)^(*) = f^(*) compose g^(*)$.

+ Conmmuta con derivada exterior $upright(d) f^(*) = f^(*) upright(d)$.

#definicion[

\(Co-Vector)

]

. Un Covector es un mapa linear desde un espacio vectorial a $bb(R)$. $ omega : bb(V) arrow.r bb(R)\,quad omega\(V\)in bb(R) $ el co-vector $omega$ es definido en el espacio vectorial dual $bb(V)^(*)$.

Ahora, veremos que el espacio dual al espacio tangente $T_p\(cal(M)\)$, el cual llamamos $T_p^(*)\(cal(M)\)$.

Sea $f : cal(M) arrow.r bb(R)$ una función suave, definimos un co-vector $upright(d) f$ por: $ upright(d) f\(V\):= V\(f\)quad upright("con") quad V in T_p\(cal(M)\). $

Si $V = partial_mu$\(bases coordenadas de un vector) y $f = x^mu$\(funciones coordenadas) $ upright(d) x^mu\(partial_nu\):= partial_nu\(x^mu\)= pdv( x^mu , x^nu ) = delta_nu^mu $

Identificamos $upright(d) x^mu$ como el espacio dual de bases coordenadas $partial_mu$. Así el dual de las bases coordenadas generales satisface: $ e^(\(mu\))\(e_(\(nu\))\)= delta_nu^mu $

Cualquier vector dual puede ser escrito como $ omega = omega_mu e^(\(mu\)) arrow.r med omega\(e_(\(mu\))\) & = omega_nu e^(\(nu\))\(e_(\(mu\))\)= omega\(e_(\(mu\)) V^mu\)\
 & = omega_mu V^mu . $

#definicion[

\(Tensor)

]

. Un tensor de rango $\(m\,n\)$ es un mapa multilinear $ T : text(fill: #red,  underbrace(T_p^(*)\(cal(M)\)times dots.h.c times T_p^(*)\(cal(M)\), m med v e c e s) ) times text(fill: #blue,  overbrace(T_p\(cal(M)\)times dots.h.c times T_p\(cal(M)\), n med v e c e s) ) arrow.r bb(R) $

Es decir, dado un m-covector y un n-vector, un tensor de tipo $\(m\,n\)$ produce un número real, $T\(omega_1\,dots.h.c\,omega_m\,V_1\,dots.h.c\,V_n\)$.

Actuando sobre una base de covectores devuelve las componentes de un tensor $ T_(nu_1 dots.h.c nu_n)^(mu_1 dots.h.c mu_m) = T\(e^(\(mu_1\))\,dots.h.c\,e^(\(mu_m\))\,e_(\(V_1\))\,dots.h.c\,e_(\(V_n\))\). $

Bajo transformación de coordenadas $x^mu arrow.r x^(' mu)$, así las componentes de un tensor transforman $ T_(nu'_1 dots.h.c nu'_n)^(mu'_1 dots.h.c mu'_m) = pdv( x^(mu'_1) , x^(mu_1) ) dots.h.c pdv( x^(mu'_m) , x^(mu_m) ) pdv( x^(nu_1) , x^(nu'_1) ) dots.h.c pdv( x^(nu_n) , x^(nu'_n) ) T_(nu_1 dots.h.c nu_n)^(mu_1 dots.h.c mu_m) $

=== El tensor métrico
Para definir una distancia sobre una manifold plana o curva, necesitamos generalizar la noción de producto interno entre 2 vectores.

#definicion[

]

Un producto interno mapea un par de vectores a un número. En un punto $p$ escribimos este mapa $ g : T_p\(cal(M)\)times T_p\(cal(M)\)arrow.r bb(R) . $ Requiriendo:

+ $g$ es simétrico $g\(V\,U\)= g\(U\,V\)$ $forall U\,V in T cal(M)$.

+ $g$ no es degenerado: Si $g\(U\,V\)\|_p = 0$ para todo $U_p in T_p cal(M)$ entonces $V_p = 0$.

En base coordenada, tenemos $g = g_(mu nu) upright(d) x^mu times.o upright(d) x^nu$

+ Simétrico: $g_(mu nu) = g_(nu mu)$.

+ No degenerado: $det\(g_(mu nu)\)eq.not 0$

Esto nos permite definir la métrica inversa $g^(mu nu)$ ya que $g^(mu nu) g_(nu sigma) = delta_sigma^mu$.

#proposicion[

\(La métrica como una mapa dual)

]

. Una métrica provee un mapa entre vectores y covectores $ V^mu arrow.r V_mu = g_(mu nu) V^nu\
omega_mu arrow.r omega^mu = g^(mu nu) omega_nu $

#definicion[

\(Distancia sobre una manifold)

]

. La longitud de una curva viene dado por $ d\(p\,q\)= integral_0^1 upright(d) lambda sqrt(\|g\(V\,V\)\|) $ donde $V$ es un vector tangente y $ g\(V\,V\)> 0 & med arrow.r med upright("spacelike")\
g\(V\,V\)= 0 & med arrow.r med upright("null")\
g\(V\,V\)< 0 & med arrow.r med upright("timelike") $

Partículas masivas viajan en trayectorias timelike, en este caso, el tiempo propio es de $upright(d) tau^2 = - g_(mu nu) upright(d) x^mu upright(d) x^nu > 0$. Integrando a lo largo de una curva nos da: $ tau = integral_0^1 upright(d) lambda sqrt(- g_(mu nu) dv( x^mu , lambda ) dv( x^mu , lambda )) . $

Introduzcamos algunas operaciones formas diferenciales. PAra $X in frak(X)\(cal(M)\)$ un mapa lineal $ i\(cal(M)\): Omega^k\(cal(M)\)arrow.r Omega^(k - 1)\(cal(M)\) $ es definido por $ \(i\(X\)omega\)\(X_1\,dots.h.c\,X_(k - 1)\)= k omega\(X\,X_1\,dots.h.c\,X_(k - 1)\) $

Para $omega in Omega^k\(cal(M)\)$, $\(X_1\,dots.h.c\,X_(k - 1)\)in frak(X)\(cal(M)\)$. Note que si $k = 0$, podemos definir $i\(X\)= 0$. Así llamamos $i\(X\)omega$ el producto interior de $omega$ por $X$. Por definición, $i\(X\)$ es obviamente lineal con respecto a funciones.

#proposicion[

]

Las formas diferenciales producen un álgebra, ya que pueden sumarse, multiplicarse y escalarse por constantes y estas operaciones satisfacen los axiomas de un álgebra.

#definicion[

\(Derivada de Lie)

]

. Para $X\,Y in frak(X)\(cal(M)\)$ y $p in cal(M)$, sea $phi :\(- epsilon.alt\,epsilon.alt\)times U arrow.r cal(M)$ un flujo local de $X$ en un vecindario $U$ de $p$ y definimos la derivada de Lie $L_x Y$ de $Y$ con respecto a $X$ en $p$ como el vector $ \(L_x Y\)_p & = lim_(t arrow.r 0) frac(phi_(- t *)\(Y_(phi_(+)\(p\))\)- Y_p, t) = lim_(t arrow.r 0) frac(\(phi_(- t *) Y\)_p - Y_p, t)\
 & = dv( , t )\|_(t = 0)\(phi_(- t *) Y\)_p $ En esta definición el límite es tomado en el espacio vectorial finito dimensional $T_p cal(M)$. Para que la derivada exista, es suficiente que ${ phi_(- t *) Y }$ sea una familia de campos vectoriales suaves sobre $cal(M)$. Así, la derivada de Lie es un campo vectorial.

#teorema[

\(Lie Bracket)

]

. Si $X$ y $Y$ son campos vectoriales $C^oo$ sobre una manifold $cal(M)$, entonces la derivada de Lie $L_x Y$ coincide con el bracket $\[X\,Y\]$.

#definicion[

La derivada de Lie de una forma diferencial

]

. Para $X$ un espacio vectorial suave y $omega$ una k-forma suave sobre una manifold $cal(M)$, la derivada de Lie $L_x omega$ en $p in cal(M)$ es $ \(L_x omega\)_p = lim_(t arrow.r 0) frac(phi_t^(*)\(omega_(phi_(*)\(p\))\)- omega_p, t) = lim_(t arrow.r 0) frac(\(phi_t^(*) omega\)_p - omega_p, t) = dv( , t )\(phi_t^(*) omega\)_p $

#proposicion[

]

Si $f$ es una función $C^oo$ y $X$ un campo vectorial $C^oo$ sobre $cal(M)$, entonces $L_x f = X f$.

#emph[Proof]: Fijemos un punto $p$ en $cal(M)$ y sea $phi_(*) : U arrow.r cal(M)$ un flujo local $x$, entonces $ \(L_x f\)_p & = dv( , t )\|_t\(phi_t^(*) f\)_p\(upright("definición de ") L_x f\)\
 & = dv( , t )\|_(t = 0)\(f compose phi_t\)\(p\)med\(upright("definición de ") phi_t^(*) f\)\
 & = X_p f $ ya que $phi_(*)\(p\)$ es una curva a través de $p$ con vel vector inicial $X_p$.

#teorema[

\(Propiedades de la derivada de Lie.)

]

Asuma $X$ es un campo vectorial $C^oo$ sobre una manifold $cal(M)$.

+ La derivada de Lie $L_x : Omega^(*)\(cal(M)\)arrow.r Omega^(*)\(cal(M)\)$ es una derivación i.e. es un mapa $bb(R)$-lineal y si $omega in Omega^k\(cal(M)\)$ y $t in Omega^l\(cal(M)\)$ entonces: $ L_x\(omega and t\)=\(L_x omega\)and t + omega and\(L_x t\) $

+ La derivada de Lie $L_x$ conmuta con la derivada exterior.

+ Sigue la formula de homotopía de Cartan $L_x = upright(d) L_x + C_x upright(d)$.

+ Sigue la formula del producto, para $omega in Omega^k\(cal(M)\)$ y $y_1\,dots.h.c\,y_k in frak(X)\(cal(M)\)$, $ L_x\(omega\(y_1\,dots.h.c\,y_k\)\)=\(L_x omega\)\(y_1\,dots.h.c\,y_k\)+ sum_(i = 1)^k omega\(y_1\,dots.h.c\,L_x y_i\,dots.h.c\,y_k\) $

#teorema[

\(Formula global para la derivada de Lie)

]

. Para una k-forma suave $omega$ y espacios vectoriales suaves $x\,y_1\,dots.h.c\,y_k$ sobre una manifold $cal(M)$. $ \(L_x omega\)\(y_1\,dots.h.c\,y_n\)= X\(omega\(y_1\,dots.h.c\,y_k\)\)- sum_(i = 1)^v\(y_1\,dots.h.c\,\[x\,y_i\]\,dots.h.c\,y_k\). $

=== Integrales de formas diferenciales
Sea $cal(M)$ una manifold orientable suave $n$ dimensional y $omega in Omega^n\(cal(M)\)$. Podremos definir la integral de $omega$ sobre $cal(M)$. PAra esto necesitamos definir una unidad de partición.

#definicion[

]

Un recubrimiento ${ U_alpha }_(alpha in A)$ de $cal(M)$ es llamado localmente finita si para todos los puntos $p in cal(M)$, existe un vecindario $u_p partial_p$ tal que intersecta solo un número finito de elemenots de recubrimiento, es decir, $u_p inter u_alpha eq.not nothing$ solo para un número finito de $alpha in A$. Otro recubrimiento ${ V_beta }_(beta in B)$ es llamado refinamiento de ${ U_alpha }_(alpha in A)$ cuando para $forall beta lt.eq B$ existe $alpha in A$ tal que $V_beta subset.eq U_alpha$.

#teorema[

]

Sea ${ U_alpha }_(alpha in A)$ un recubrimiento abierto de $cal(M)$. Existe un refinamiento ${ V_alpha }$ de ${ U_alpha }_(alpha in A)$ el cual es localmente finito.

#definicion[

\(Partición de unidad)

]

. Sea ${ U_alpha }$ un recubrimiento abierto localmente finito de manifold $cal(M)$. Una partición de unidad asociada a ${ U_alpha }$ es una colección $X_alpha in C^oo\(cal(M)\,bb(R)\)$ tal que:

+ $0 lt.eq X_alpha lt.eq 1$.

+ $"Supp"\(X_alpha\)subset.eq u_alpha$.

+ $sum_alpha X_alpha = 1$.

Si usamos coordenadas locales $\(x^1\,dots.h.c\,x^n\)$ sobre un chart $u_alpha$, podemos escribir: $ X_alpha omega = f_alpha\(x\)x^1 and dots.h.c and x^n . $

Entonces, podemos definir su integral $ integral_(cal(M)) X_alpha omega = integral dots.h.c integral f_alpha\(x\)x^1 dots.h.c x^n . $

Entonces, podemos definir $ integral_(cal(M)) omega = sum_alpha integral_(cal(M)) X_alpha omega $

Podemos mostrar que esto es independiente de la elección de un recubrimiento abierto localmente finito ${ U_alpha }$ y una partición de unidad sobre ${ u_alpha }$.

#teorema[

Teorema de Stokes

]

. Sea $cal(M)$ una manifold orientada con boundary de dimension $n$. Entonces si $omega in Omega^(n - 1)\(cal(M)\)$ tiene soporte compacto, entonces $ integral_(cal(M)) upright(d) omega = integral_(partial cal(M)) omega . $

#strong[Proof:]

+ $cal(M) = bb(H)^n$. Supongamos que $"supp"\(omega\)subset A =\[- R\,R\]times dots.h.c times\[- R\,R\]times\[0\,R\]$ y que $omega = sum_(i = 1)^n f_i upright(d) hat(x)^i$, es fácil ver que $upright(d) omega = sum_(i = 1)^n\(- 1\)^(i - 1) pdv( f_i , x^i ) upright(d) x$.

  Además, si $1 lt.eq i lt.eq n - 1$, tenemos $integral_(bb(H)^n) pdv( f_i , x^i ) upright(d) x = integral_0^R integral_(- R)^R dots.h.c (integral_(- R)^R pdv( f_i , x^i ) upright(d) x^i) upright(d) hat(x)^i$, entonces $ integral_(bb(H)^n) upright(d) omega & =\(- 1\)^(n - 1) integral_(- R)^R dots.h.c integral_(- R)^R (integral_0^R pdv( f_n , x^n ) upright(d) x^n)\(upright(d) x^1 dots.h.c upright(d) x^(n - 1)\)\
   & =\(- 1\)^n integral_(- R)^R dots.h.c integral_(- R)^R f_n\(x^1\,dots.h.c\,x^(n - 1)\,0\)upright(d) x^1 dots.h.c upright(d) x^(n - 1) $ por otra parte $ integral_(partial bb(H)^n) omega & = sum_i integral_(A inter partial bb(H)^n) f_n\(x^1\,dots.h.c\,x^(n - 1)\,0\)upright(d) hat(x)^i\
   & =\(- 1\)^n integral_(- R)^R dots.h.c integral_(- R)^R f_n\(x^1\,dots.h.c\,x^(n - 1)\,0\)upright(d) x^1 and dots.h.c and upright(d) x^(n - 1)\
   & =\(- 1\)^n integral_(- R)^R dots.h.c integral_(- R)^R f_n\(x^1\,dots.h.c x^(n - 1)\,0\)upright(d) x^1 dots.h.c upright(d) x^(n - 1)\
   & = integral_(cal(M)) upright(d) omega . $

+ $cal(M) = bb(R)^n$. En este caso, usando un arreglo similar. Sabemos que ambos lados son cero.

+ Supongamos que $cal(M)$ es una manifold(suave) arbitaria con borde y $"supp"\(omega\)$ está contenido en un solo chart $\(U\,phi\)$. Asumimos $phi$ tiene orientación positiva, entonces $ integral_(cal(M)) upright(d) omega = integral_(bb(H)^n)\(phi^(- 1)\)^(*) upright(d) omega = integral_(bb(H)^n) upright(d)\(\(phi^(- 1)\)^(*) omega\)= integral_(partial bb(H)^n)\(phi^(- 1)\)^(*) omega = integral_(partial cal(M)) omega . $

+ Para el caso general, asumimos que $"supp"\(cal(N)\)$ está cubierto por un número finito de charts uniformes y positivos ${ U_i }$. Escogemos una partición de unidad suave subordinada a ${ U_i }$, entonces: $ integral_(partial cal(M)) omega & = sum_i integral_(partial cal(M)) psi_i omega = sum_i integral_(cal(M)) upright(d)\(psi_i omega\)= sum_i integral_(cal(M)) upright(d) psi_i and omega + psi_i upright(d) omega\
   & = integral_(cal(M)) upright(d) (sum_i psi_i) and omega + integral_(cal(M)) (sum_i psi_i) upright(d) omega\,med upright("ya que") med sum_i psi_i = 1\
   & = integral_(cal(M)) upright(d) omega . $

#teorema[

Teorema de Green

]

. $ upright("Integral de superficie sobre un")\
upright("región plana") med D med upright("limitada por") med partial D & = upright("Integral de linea alrededor")\
upright("de una curva cerrada") med partial D\
integral_D (pdv( Q , x ) - pdv( P , y )) upright(d) x upright(d) y & = integral.cont_(partial D) P upright(d) x + Q upright(d) y $

#block[
#box(image("../figures/imgrggreen.png", width: 100.0%, alt: "image"))

]
#teorema[

Formula de Stokes

]

.

$ upright("El rotacional del flujo a tráves")\
upright("de la superficie cerrada") & = upright("La integral de un campo vectorial")\
upright("sobre una curva cerrada") med partial cal(M)\
integral.double_(cal(M)) (pdv( B , x ) - pdv( A , y )) upright(d) x upright(d) y + integral.double_(cal(M)) (pdv( C , y ) - pdv( B , z )) upright(d) y upright(d) z\
+ integral.double_(cal(M)) (pdv( A , z ) - pdv( C , x )) upright(d) z upright(d) x & = integral_(partial cal(M)) A upright(d) x + B upright(d) y + C upright(d) z $

#block[
#box(image("../figures/imgrgstokes.png", width: 100.0%, alt: "image"))

]
#teorema[

Teorema de la Divergencia

]

.

$ upright("Integral del flujo")\
upright("local en el interior") & = upright("Flujo total hacia afuera a")\
upright("través de una superficie") med S\
integral.triple_(cal(M)) (pdv( P , x ) + pdv( Q , y ) + pdv( R , z )) upright(d) x upright(d) y upright(d) z & = integral.double_S P upright(d) y upright(d) z + Q upright(d) z upright(d) x + R upright(d) x upright(d) y $

#block[
#box(image("../figures/imgrgdivergence.png", width: 100.0%, alt: "image"))

]
#teorema[

]

Si $cal(M)$ es una manifold compacta y orientada sin bordes, entonces para cualquier $omega in Omega^(n - 1)\(cal(M)\)$, entonces $ integral_(cal(M)) upright(d) omega = 0 . $

#teorema[

]

Si $cal(M)$ es una variedad compacta orientada en borde, entonces para cualquier $omega in Omega^(n - 1)\(cal(M)\)$ con $upright(d) omega = 0$, se tiene $ integral_(partial cal(M)) omega = 0 . $

#heading(level: 2, numbering: none)[Problemas 1]
+ #strong[Manifolds] \ En este problema consideraremos varias manifolds utilizando las definiciones usadas en clase:

  + Considere $bb(R)^n$ en sí mismo como un espacio topológico y construya explícitamente un atlas que muestre que este espacio es una manifold. #emph[Hint:] Una chart es suficiente para la demostración(puede usarse varias charts).

  + Sean $cal(M)\,cal(N)$ dos manifolds suaves y sean los atlas ${ U_alpha\,phi.alt_alpha } { V_beta\,psi_beta }$ para $cal(M)$ y $cal(N)$ respectivamente. Muestre que el mapa $f : cal(M) arrow.r cal(N)$ es suave, si para cada $alpha$ y $beta$ el mapa $psi_beta compose f compose psi_alpha^(- 1)$ es suave en su dominio de definición.

  + Muestre que la condición difeomorfismo define una relación de equivalencia para manifolds suaves.

+ #strong[Cálculos en Manifolds]

  + Considera $bb(R)^3$ como un manifold con métrica eucilidiana plana y coordenadas $x\,y\,z$. Introduciremos coordenadas esféricas $r\,theta\,phi.alt$, que están relacionadas con $x\,y\,z$ mediante $ x = r sin theta cos phi.alt\,quad y = r sin theta sin phi.alt\,quad z = r cos theta . $ Demuestra que la métrica euclidiana plana en coordenadas esféricas tiene la forma $ upright(d) s^2 = upright(d) r^2 + r^2 upright(d) theta^2 + r^2 sin^2 theta upright(d) phi.alt^2 $

  + Una partícula se mueve a lo largo de una curva parametrizada dada por $ x\(lambda\)= cos lambda\,quad y\(lambda\)= sin lambda\,quad z\(lambda\)= lambda $

    - Expresa la trayectoria de la curva en coordenadas polares esféricas $r\,theta\,phi.alt$.

    - Cálcula los componentes del vector tangente a la curva tanto en los sistemas de coordenadas cartesianas y en polares esféricas.

+ #strong[Lie Bracket] \ Considera dos campos $X$ e $Y$, y el conmutador de los vectores, $\[X\,Y\]$, que actúa sobre las funciones $f$ como $ \[X\,Y\]equiv X\(Y\(f\)\)- Y\(X\(f\)\) $

  + Demuestra que el producto de los dos campos vectoriales, $X Y$, no es un nuevo campo vectorial porque no satisface la regla de Leibniz, y que el conmutador $\[X\,Y\]$ es un nuevo vector dado que sí satisface la regla.

  + Demuestra que los componentes del Lie Bracket en una base de coordenadas están dados por $ \[X\,Y\]^mu = X^lambda partial_lambda Y^mu - Y^lambda partial_lambda X^mu\, $ y que se cumple que $\[Y\,X\]^mu = -\[X\,Y\]^mu$.

  + Demuestra explícitamente que $\[X\,Y\]^mu$ transforma como un vector bajo transformaciones de coordenadas.

  + Confirma que el corchete de Lie obedece la identidad de Jacobi $ \[X\,\[Y\,Z\]\]+\[Y\,\[Z\,X\]\]+\[Z\,\[X\,Y\]\]= 0 $

+ #strong[Métrica] \ Considera un manifold $cal(M)$ que es 2D, con coordenadas polares ($r\,theta$). El tensor métrico $g$ en $cal(M)$ está dado por: $ g = g_(i j) upright(d) x^i times.o upright(d) x^j = upright(d) r times.o upright(d) r + r^2 upright(d) theta times.o upright(d) theta $ donde $g_(i j)$ es una matriz que representa los componentes del tensor métrico.

  + Verifica las propiedades del tensor métrico $g$:

    - $g$ es un campo tensorial suave de tipo ($0\,2$) en $cal(M)$.

    - $g$ es simétrico. Para cada punto $p$ en el manifold y para cada par de vectores tangentes $u$ y $v$ en $T_p cal(M)$, demuestra que $g_p\(u\,v\)= g_p\(v\,u\)$.

    - $g$ es no degenerado: Para cada punto $p$ en la variedad y para cada vector tangente $u$ en $T_p cal(M)$, si $g_p\(u\,v\)= 0$ para cada $v$ en $T_p cal(M)$, entonces $u = 0$. Sugerencia: Considera los vectores tangentes $v = partial_r$ y $v = partial_theta$.

+ #strong[Pullback y Métrica inducida] \ Considere una manifold $cal(M)$ equipada con una métrica $g$ y una segunda manifold $cal(N)$. Sí además tenemos un mapa diferenciable de la forma $phi.alt : cal(N) arrow.r cal(M)$ podemos usar este mapa para "jalar" la métrica $g$ hacia $cal(N)$. Esto resulta en lo que es llamado de métrica inducida sobre $cal(N)$, la cual se denota como $phi.alt^(*) g$. Con $g$ expandido en coordenadas locales ${ y^mu }$ sobre $cal(N)$ la métrica inducida se lee como: $ phi.alt^(*) g = [g_(alpha beta) (pdv( phi.alt^alpha , y^mu )) (pdv( phi.alt^beta , y^nu ))] upright(d) y^mu times.o upright(d) y^nu . $ Usando estas definiciones considere

  + Para una dos esfera $S^2$ embebida en $bb(R)^3$, se tiene que: $ S^2 = { R\(cos phi.alt sin theta\,sin phi.alt sin theta\,cos theta\)med\|med phi.alt in\[0\,2 pi chevron.r\,theta in\[0\,pi chevron.r\,R > 0 } . $ Utilice el mapa de inclusión siguiente para el embedding: $ S^2 & arrow.r.double bb(R)^3\
    \(theta\,phi.alt\) & arrow.r.double R\(cos phi.alt sin theta\,sin phi.alt sin theta\,cos theta\) $ para calcular la métrica inducida sobre $S^2$.

  + En cosmología tendrá importancia el llamado espacio de DeSitter. Este espacio es, fácilmente reconocible por su embedding, como un corte de un espacio de Minkowski 4-dimensional $bb(R)^(1\,4)$ con coordenadas $u\,w\,x\,y\,z$ con $u$ siendo la coordenada temporal dada por la ecuación del hiperboloide: $ - u^2 + w^2 + x^2 + y^2 + z^2 = alpha^2\,quad alpha in bb(R) . $ Sobre el espacio DeSitter introducimos las coordenadas $t\,chi\,theta\,phi.alt$ y son inducidas en $bb(R)^(1\,4)$ por: $ u & = alpha sinh\(t\/alpha\)\,\
    w & = alpha cosh\(t\/alpha\)cos chi\,\
    x & = alpha cosh\(t\/alpha\)sin chi cos theta\,\
    y & = alpha cosh\(t\/alpha\)sin chi sin theta cos phi.alt\,\
    z & = alpha cosh\(t\/alpha\)sin chi sin theta sin phi.alt . $ Calcule la métrica inducida sobre el espacio deSitter.
