#import "/lib/notes.typ": *

= Introducción
La física estudia los componentes de la materia y sus interacciones, siendo estas las que explican las propiedades globales de la materia, así como los fenómenos que observamos en la naturaleza, intentando siempre dar forma matemática e interpretación a las leyes universales que rigen estos fenómenos. Por último aplicarlos en la solución de problemas y en proyectos preliminares de investigación.

Se verán los siguiente tópicos:

+ Estructura atómica

+ Física Estadística

+ Estructura molecular

+ Estado sólido

+ Estructura nuclear

+ Aplicaciones nuclear

+ Partículas elementales

+ Cosmología

== Física Clásica
=== Mecánica newtoniana
La materia se considera como un conjunto de partículas puntuales que se desplazan bajo la acción de las fuerzas de interacción mutua, segun las leyes de Newton. $ F = dot(p) = frac(d, d t) (m v) = frac(d m, d t) v + m frac(d v, d t) $ A la materia se le considera como un conjunto de partículas de masa definida y el movimiento de cada partícula libre está caracterizado por su energía $bold(E)$ y su impulso, $bold(p)$.

=== Mecánica analítica
La materia se considera como en la newtoniana, pero es una teoría más elaborada que intenta eliminar los problemas de las ligaduras, el utilizar las magnitudes vectoriales y la dificultad de transición hacia la mecánica cuántica (un problema que tiene la mecánica newtoniana).

Las tres formulaciones más importantes son:

+ #emph[Lagrangiana], cuyas ecuaciones básicas son las ecuaciones de Lagrange.

+ #emph[Variacional], cuya ecuación básica es el principio de Hamilton.

+ #emph[Hamiltoniana], cuyas ecuaciones básicas son conocidas como las ecuaciones de Hamilton.

=== Teoría electromagnética
Concierne a los fenómenos eléctricos y magnéticos que son descritos mejor en función de los campos eléctrico y magnética, $bold(E)$\($x$) y $bold(B)$\($x$).

Estos campos están relacionado con sus fuentes o causas, densidad de carga y densidad de corriente, mediante las ecuaciones de Maxwell.

En el espacio libre, los dos campos satisfacen la ecuación de ondas que en forma operacional es: $ [1 / c^2 frac(partial^2, partial^2 x) - nabla^2] mat(delim: "{", bold(E)\(x\); bold(B)\(x\)) = 0\, $ estos campos se propagan en el espacio como ondas con una velocidad constante, $c$.

Ahora estamos familiarizados con otras formas de estas ondas electromagnéticas, desde las ondas de muy baja frecuencia utilizadas en radar y radioastronomía, pasando por el dominio de la luz, hasta las radiaciones de muy alta frecuencia de los rayos $X$ y rayos $gamma$.

Gracias a la óptica geométrica, hay varias propiedades de la radiación para las que el concepto de onda no es esencial. No obstante, los fenómenos de interferencia y difracción son casos típicos donde la descripción ondulatoria es necesaria. La onda plana se expresa por: $ psi = exp\[- i\(omega t - bold(k) dot.op bold(x)\)\]\, $ donde $omega$ es la pulsación y $bold(k)$ es el vector de onda.

Dos características básicas de la onda, con $omega = 2 pi nu$ y $bold(k) = 2 pi\/lambda$. La primera expresa la periodicidad temporal y la segunda, la especial.

Como la velocidad del grupo es $c$, ambas están relacionadas por: $ omega = k c $ Estas dos disciplinas, mecánica y electromagnetismo, se acoplan mediante la #emph[ley de Lorentz], expresión la dinámica de una carga $e$ de velocidad $bold(v)$ en presencia de los campos $bold(E)$ y $bold(B)$. $ bold(F)\(x\)= e [bold(E) \( x \) + bold(v) times bold(B)] $ Este cuadro del universo con la materia constituida de partículas puntuales (protones y electrones), y la #emph[radiación] constituida de ondas, podría haber suministrado el marco de una descripción fundamental de todos los fenómenos físicos. No obstante, los conceptos clásicos se mostraron completamente insuficientes para describir el movimiento de los electrones y su interacción.

== Insuficiencia de los conceptos clásicos
=== Aspectos de partícula de la radiación e hipótesis
La primera indicación del fallo de los conceptos clásicos interviene en un fenómeno relativamente complicado, la radiación del #emph[cuerpo negro], un problema termodinámico de intercambio de energía entre la radiación y la materia.

Clásicamente se creía que este intercambio de energía era continuo, es decir, que un foco luminoso puede ceder a la materia cualquier cantidad de energía según la intensidad. Planck en 1900 demostró que la ecuación termodinámica, que interpretaba correctamente las experiencias incluía la hipótesis de que el intercambio era discreto. Planck postuló que la radiación de pulsación $omega$ solo puede intercambiar energía con la materia por cuantos de valor: $ ℏ omega = h nu\, $<eq1> donde además $ℏ = frac(h, 2 pi)$.

Esta hipótesis significa que la radiación, en su interacción con la materia, se comporta como un haz de partículas (fotones) que puede ser emitido o absorbido por la materia. La energía en este caso está dado por: $ E = h nu\, $ donde además $h = 6\,62608 times 10^(- 34) J dot.op s$, también conocida como la #emph[constante de Planck].

Como estos fotones se desplazan a la velocidad de la luz, según la teoría de la relatividad restringida su masa debe ser nula, $ E = m c^2\, $ reemplazando con la ecuación #ref(<eq1>), la masa en movimiento es: $ m = frac(h nu, c^2) $ y su momento lineal: $ p = m c = frac(h nu, c) . $ También observamos que: $ E^2 & underbrace(E_0^2) & \(p c\)^2\
 & underbrace(m_0 c^2) & \(p c\)^2\
 & 0 & \(p c\)^2\
 $ Concluimos que $E = p c$, donde $p = frac(h v, c) = ℏ omega / c = ℏ k$.

Podemos condensar nuestras conclusiones del siguiente modo: $ E = ℏ omega\
bold(p) = ℏ bold(k) $ Estas ecuaciones son importantes pues muestran la relación entre los parámetros corpusculares ($E\,bold(p)$) del fotón y los parámetros ($w\,bold(k)$) de la onda correspondiente.

#figure(image("../figures/1.png", width: 38.0%),
  caption: [
    Diagrama esquemático de un cuerpo negro
  ]
)
<fig:cuerpo_negro>

== Conceptos importantes
=== Ley del desplazamiento de Wien
Otto Fritz Franz Wien (1864-1928) logró demostrar que la longitud de onda $lambda_(m acute(a) x)$, en la cual la densidad de flujo por intervalo unitario de longitud de onda que emerge del cuerpo negro es un máximo. Varía como: $ T lambda_(m acute(a) x) = 2\,8978 times 10^(- 3) m K $

=== Ley de Stefan-Boltzmann
La densidad de flujo radiante total o existencia es definida por: $ M = sigma T^4\, $ donde representa la constante de Stefan-Boltzmann: $ sigma = 5\,67 times 10^(- 8) frac(W, m^2 K^4) $

=== Distribución de Planck
La densidad de energía en el rango entre $lambda$ y $lambda + d lambda$ es dado por: $ upright("d") E = rho dot.op upright("d") lambda\, $<eq3> donde: $ rho = frac(8 pi h c, lambda^5) (frac(1, e^(h c\/lambda k T) - 1)) $ Esta expresión ajusta la curva experimental muy bien para toda longitud de onda y el valor de $h$ puede ser obtenido variando su valor hasta un mejor ajuste. $ e^(h c\/lambda k T) - 1 & = [1 + frac(h c, lambda K T) + dots.h.c] - 1\
 & approx frac(h c, lambda K T) $ Para longitudes de onda corta, $h c\/lambda k T$ es grande y $exp\(h c\/lambda k T\)arrow.r oo$\; por lo tanto: $ rho arrow.r 0 upright(", cuando ") cases(delim: "{", lambda arrow.r 0, nu arrow.r oo) $

==== Ley de Rayleigh-Jeans
Partiendo de la ecuación #ref(<eq3>): $ E & = integral_0^oo rho upright(" d") lambda\
 & = a T^4\, $ donde $a = frac(4 sigma, c)$ y $sigma = frac(2 pi^5 k^4, 15 c^2 h^3)$.

Un ejemplo del aspecto corpuscular de la radiación es:

=== Efecto fotoeléctrico
Propuesto por A. Einstein en 1905. Si un haz monocromático de pulsación $omega$ incide sobre la superficie de un metal puede este emitir electrones. Si $ℏ omega$ es inferior a un cierto límite $W$, llamado #emph[trabajo de extracción], que depende del tipo de metal, no hay emisión para un amplio intervalo de intensidades de haz. Si $ℏ omega > W$, los electrones son emitidos con una energía cinética $T$ tal que: $ ℏ omega = W + T $ El efecto fotoeléctrico es una confirmación muy especial de la hipótesis de Planck, puesto que depende directamente del mecanismo de intercambio de energía, entre radiación y electrones, sin que intervengan otros efectos físicos. $ E & = T_(m acute(a) x) + W_0\
h nu & = T_(m acute(a) x) + h nu_0\
h & = T_(m acute(a) x) / (nu - nu_0)\
T_(m acute(a) x) & = h nu - h nu_0 $ Además, $T_(m acute(a) x) = e V$, donde $e$ es la carga y $v$ es el potencial. El voltaje será entonces: $ v = frac(h\(nu - nu_0\), e) $
