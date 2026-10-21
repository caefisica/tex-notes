#import "/lib/notes.typ": *

= Introducción
== Integrales indefinidas
En este apartado se ven los primeros conceptos del Cálculo integral, como vendrían a ser el concepto en si mismo de integral, a su vez se ven tanto las integrales inmediatas como los métodos de integración.

#heading(level: 3, numbering: none)[Concepto de Integral]
- El concepto matemático que se le suele atribuir a la definición de integral es el siguiente: Una integral se trata de una #emph[generalización de la suma de infinitos sumandos extremadamente pequeños].

- Y si lo vemos desde un punto de vista geométrico se suele mencionar a la integral como el área bajo la curva de una función $f\(x\)$ que esta acotada en el intervalo $\[a\,b\]$.

$ integral_a^b f\(x\)d x = upright("Área bajo la curva") $

#heading(level: 3, numbering: none)[Integrales Inmediatas]
Las integrales inmediatas o directas están referidas a aquellas integrales las cuales no se necesitan emplear ningún método de integración para poder obtener su resultado.

#heading(level: 3, numbering: none)[Métodos de Integración]
Se entiende por métodos de integración a aquellas técnicas para obtener la antiderivada o integral indefinida de una función, de la cual ya mencionamos la integración directa y también se encuentran los métodos de cambio de variable, integración por partes, desarrollo en fracciones parciales e integración por sustitución trigonométrica.

- Ejemplo de integración por cambio de variable:

  + Teniendo la integral #sinnum[$  integral e^x / sqrt(1 - e^(2 x)) d x $]

  + Haciendo el cambio de variable: #sinnum[$  u = e^x quad arrow.r quad d u = e^x d x $]

  + Reemplazando en la integral #sinnum[$  integral e^x / sqrt(1 - e^(2 x)) d x = integral frac(d u, sqrt(1 - u^2)) $]

  + De este modo nos queda una integral inmediata: #sinnum[$  integral frac(d u, sqrt(1 - u^2)) = arcsin u + C $]

  + Volviendo a reemplazar $u = e^x$, nos queda: #sinnum[$  integral e^x / sqrt(1 - e^(2 x)) d x = arcsin e^x + C $]

- Ejemplo de integración por partes:

  + Teniendo la integral: #sinnum[$  integral x^2 ln^2 x d x $] Recordando el método de integración por partes: #sinnum[$  integral u d v = u v - integral v d u $]

  + Haciendo que: #sinnum[$  u & = ln^2 x quad arrow.r quad d u = 2 frac(ln x, x) d x\
    d v & = x^2 d x quad arrow.r quad v = x^3 / 3 $]

  + Reemplazando utilizando el método de integración por partes: #sinnum[$  integral x^2 ln^2 x d x & = ln^2 x (x^3 / 3) - integral x^3 / 3 2 frac(ln x, x) d x\
    integral x^2 ln^2 x d x & = x^3 / 3 ln^2 x - 2 / 3 integral x^2 ln x d x $]

  + Volviendo a aplicar integración por partes a la otra integral: #sinnum[$  u & = ln x quad arrow.r quad d u = 1 / x d x\
    d v & = x^2 d x quad arrow.r quad v = x^3 / 3 $]

  + Por lo que la integral nos queda: #sinnum[$  integral x^2 ln x d x & = x^3 / 3 ln x - integral x^3 / 3 1 / x d x\
    integral x^2 ln x d x & = x^3 / 3 ln x - x^3 / 9 + K $]

  + Reemplazando en la primera integral nos queda: #sinnum[$  integral x^2 ln x d x = x^3 / 3 ln^2 x - 2 / 3 [frac(x^3 ln x, 3) - x^3 / 9] + C $]

- Ejemplo de integración por fracciones parciales:

  + Teniendo la integral: #sinnum[$  integral frac(x + 4, x^4 - 9 x^2) d x $]

  + Si factorizamos el denominador de nuestra integral #sinnum[$  x^4 - 9 x^2 = x^2\(x - 3\)\(x + 3\) $]

  + Por el método de fracciones parciales nos queda: #sinnum[$  integral frac(x + 4, x^4 - 9 x^2) d x = integral (frac(A, x - 3) + frac(B, x + 3) + C_1 / x + C_2 / x^2) d x $]

  + Por el método de Heaviside: #sinnum[$  A & = lim_(x arrow.r 3) frac(x + 4, x^2\(x + 3\)) = 7 / 54\
    B & = lim_(x arrow.r - 3) frac(x + 4, x^2\(x - 3\)) = - 1 / 54\
    C_1 & = lim_(x arrow.r 0) frac(1, \(2 - 1\)!) frac(d, d x) [x^2 frac(\(x + 4\), x^2\(x - 3\)\(x + 3\))] = - 1 / 9\
    C_2 & = lim_(x arrow.r 0) frac(1, \(2 - 2\)!) frac(d, d x) [frac(\(x + 4\), \(x + 3\)\(x - 3\))] = - 4 / 9 $]

  + Reemplazando en la integral: #sinnum[$  integral frac(x + 4, x^4 - 9 x^2) d x & = integral (frac(7, 54\(x - 3\)) - frac(1, 54\(x + 3\)) - frac(1, 9 x) - frac(4, 9 x^2)) d x\
    integral frac(x + 4, x^4 - 9 x^2) d x & = 7 / 54 ln\|x + 3\|- 1 / 9 ln\|x\|- 4 / 9 (- 1 / x) + C $]

- Ejemplo de integración por sustitución Trigonométrica

  + Teniendo la integral: #sinnum[$  integral sqrt(x^2 - 8) / x^4 d x $]

  + Realizando los cambios: #sinnum[$  x = sqrt(8) sec theta quad arrow.r quad d x = sqrt(8) tan theta sec theta d theta $]

  + Reemplazando en la integral nos queda: #sinnum[$  integral frac(x^2 - 8, x^4) d x & = integral frac(sqrt(8 sec^2 theta - 8), 64 sec^4 theta) sqrt(8) tan theta sec theta d theta\
    integral frac(x^2 - 8, x^4) d x & = 1 / 8 integral frac(tan^2 theta, sec^3 theta) d theta\
    integral frac(x^2 - 8, x^4) d x & = 1 / 8 integral cos theta sin^2 theta d theta $]

  + Haciendo el cambio: #sinnum[$  u = sin theta quad arrow.r quad d u = cos theta d theta $]

  + Reemplazando en la integral: #sinnum[$  1 / 8 integral cos theta sin^2 theta d theta & = 1 / 8 integral u^2 d u\
    1 / 8 integral cos theta sin^2 theta d theta & = u^3 / 24 + C\
    1 / 8 integral cos theta sin^2 theta d theta & = frac(sin^3 theta, 24) + C $]

  + Recordando nuestro cambio inicial: #sinnum[$  x = sqrt(8) sec theta quad arrow.r quad sec theta = x / sqrt(8) $]

  + Por lo que tenemos: #sinnum[$  sin theta = sqrt(x^2 - 8) / x $]

  + Entonces nuestra integral nos queda: #sinnum[$  integral sqrt(x^2 - 8) / x^4 d x = 1 / 24 (sqrt(x^2 - 8) / x)^3 + C $]

== Integrales definidas
En el apartado anterior habíamos mencionado la definición de integral, la cual esta relacionada con el área que se encuentra debajo de una curva de una función $f\(x\)$, y si esta función esta acotada en un intervalo $\[a\,b\]$ entonces esta área esta denotada por una integral definida y la cual puede ser representada por una sumatoria denominada #strong[Suma de Riemann]: $ integral_a^b f\(x\)= lim_(n arrow.r oo) sum_(i = 1)^n Delta x dot.op f\(x_i\) $ donde: $Delta x = frac(b - a, n)$ y $x_i = a + Delta x dot.op i$ \ Para la resolución de las integrales definidas existen ciertos teoremas los cuales son muy importantes a la hora de tratar con las integrales.

- #strong[Primer Teorema Fundamental del Cálculo]: Este primer teorema nos expresa que tanto la derivación como la integración son operaciones inversas, es decir que si una función acotada es integrable esto también significa que la derivada de su integral será la misma función: $ F\(x\)= integral_a^x f\(t\)d t $ donde $dv( F\(x\), x ) = f\(x\)$, para todo $x in\[a\,b\]$.

- #strong[Segundo Teorema Fundamental del Cálculo]: Este teorema nos indica una propiedad que tienen las funciones continuas con la cual se pueden calcular las integrales definidas a partir de las antiderivadas de nuestra función, esto se expresa de la forma: \ Sea $f\(x\)$ una función integrable en el intervalo $\[a\,b\]$ y sea $dv( F\(x\), x ) = f\(x\)$, entonces: $ integral_a^b f\(x\)d x = F\(b\)- F\(a\) $

Los métodos de integración vistos en la integral indefinida también se aplican para las integrales definidas.

== Aplicaciones de las integrales definidas
Las integrales tienen diversas aplicaciones tanto en el ámbito de las ciencias como en la ingeniería, siendo unos cuantos ejemplos:

- Cálculo de Áreas y Volúmenes

- Cálculo de la longitud del arco de una curva

- Cálculo del centro de gravedad de una región plana

== Integración Numérica
La integración numérica esta conformada por algoritmos para calcular el valor aproximado de una integral definida y estos son utilizados cuando no se puede hallar la antiderivada de la función que esta dentro de la integral, hay distintos métodos para calcular estas integrales siendo los mas conocidos:

- Método del Trapecio

- Método de Simpson

- Método de Romberg

== Integrales impropias
Las integrales impropias son aquellas integrales definidas donde los limites de la integral cubren un área que no esta acotada. La integral impropia se puede denotar dependiendo de los limites de la integral:

- #strong[Primer caso:] La integral impropia $f$ de $a$ hasta $+ oo$ se denota y define como: $ integral_a^(+ oo) f\(x\)d x = lim_(t arrow.r + oo) integral_a^t f\(x\)d x $

- #strong[Segundo caso:] La integral impropia de $f$ de $- oo$ hasta $b$ se denota y define como: $ integral_(- oo)^b f\(x\)d x = lim_(t arrow.r - oo) integral_t^b f\(x\)d x $

- #strong[Tercer caso:] La integral impropia de $f$ de $- oo$ hasta $+ oo$ se denota y define como: #sinnum[$  integral_(- oo)^(+ oo) f\(x\)d x & = integral_(- oo)^b f\(x\)d x + integral_b^(+ oo) f\(x\)d x\
  integral_(- oo)^(+ oo) f\(x\)d x & = lim_(t arrow.r - oo) integral_t^b f\(x\)d x + lim_(t arrow.r + oo) integral_a^t f\(x\)d x $] Y en cada caso se va a estudiar la convergencia de la integral, la integral impropia será convergente cuando los limites existan y será divergente si el limite no existe o es infinito.
