#import "/lib/notes.typ": *

= Fundamentos de Relatividad
== Antecedentes Históricos
<sec:antecedentes>
== Relatividad de Galileo
<sec:galileo>
A finales del siglo XIX, la mecánica clásica era una teoría cuyas ecuaciones de movimiento eran invariantes a las llamadas transformaciones de Galileo. Estas incluyen rotaciones en el espacio 3-dimensional y "boosts". Primero repasemos sobre los axiomas de Newton:

+ Existe un marco (sistema) inercial de referencia en el que el movimiento en el cual no se involucran fuerzas externas de una partícula se describe mediante una velocidad constante, $ arrow(v) = upright(bold(v)) = upright(c t e) $

+ En marcos inerciales, el movimiento de una partícula bajo la influencia de una fuerza se describe mediante la ecuación de movimiento, $ m upright(bold(a)) = sum_i upright(bold(F))_i = dot(upright(bold(p)))\,med upright(d o n d e) med upright(bold(p)) = m upright(bold(v)) $

+ Para cada fuerza con la que una partícula (1) actúa sobre otra partícula (2) existe una fuerza de reacción igual y opuesta con la que la partícula (2) actúa sobre la partícula (1): $ upright(bold(F))_(\(1\)arrow.r\(2\)) = - upright(bold(F))_(\(2\)arrow.r\(1\)) $

Consideremos dos observadores $S$ y $S'$ en movimiento relativo tal como se muestra en la figura #ref(<fig:fig1>). Supongamos que ambos sistemas son inerciales, es decir que satisfacen el primer axioma de Newton.

#figure(image("../figures/re1.png", width: 70.0%),
  caption: [
    Dos sistemas de referencia ($S$ y $S'$) en movimiento relativo y un objeto (disco verde) en reposo en relación a $S$.
  ]
)
<fig:fig1>

Nos colocaremos en una posición tal que para nosotros $S$ este en reposo y $S$ se mueva hacia la derecha con una rapidez $V$ que es constante. Ahora supongamos que hacia una distancia $x$ y hacia la derecha del origen de $S$ hay un cierto objeto (en este caso un disco verde) en reposo con respecto a $S$. La posición del objeto en relación a $S'$ es $x'$. Y nos damos cuenta que la relación entre $x$ y $x'$ será: $ x' = x - V t $ donde $t$ es el tiempo.

Una suposición subyacente a la construcción de la mecánica Newtoniana es que el tiempo transcurre igual para todos los observadores. Entonces esta transformación de coordenadas puede generalizarse a: $ upright(bold(r))'\(t'\) & = upright(bold(r))\(t\)- upright(bold(V)) t\
t' & = t $

Estas leyes de transformación constituyen las llamadas transformaciones de Galileo. Y notamos que la mecánica clásica es invariante bajo estas transformaciones.

Como el tiempo es el mismo para ambos sistemas de referencia, podemos derivar la posición con respecto al tiempo y obtener: $ upright(bold(v))' = upright(bold(v)) - upright(bold(V)) $ donde $upright(bold(v))$ y $upright(bold(v))'$ son las velocidades del objeto medidas en $S$ y $S'$ respectivamente.

Derivando nuevamente y considerando que $upright(bold(V))$ es constante, obtenemos: $ upright(bold(a))' = upright(bold(a)) $ donde $upright(bold(a))$ y $upright(bold(a))'$ son las aceleraciones medidas en $S$ y $S'$ respectivamente.

Como la fuerza es proporcional a la aceleración, vemos que las fuerzas son invariantes bajo las transformaciones de Galileo.

== Postulados de la Relatividad
<sec:postulados>
Albert Einstein, propuso lo que vendria a ser la Teoría de la Relatividad Especial. Su enfoque se basaba en dos postulados:

+ Las leyes de la física deben ser las mismas en todos los sistemas de referencia inerciales.

+ La luz se propaga a la misma velocidad $c$ en todos los sistemas de referencia inerciales, sin importar el estado de movimiento del emisor.
