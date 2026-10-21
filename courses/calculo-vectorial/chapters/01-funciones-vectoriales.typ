#import "/lib/notes.typ": *

= Vectores en R$""^n$
En este apartado se detallan sobre los vectores, un concepto fundamental para el estudio del cálculo de funciones de varias variables. \ #strong[Definición:] Los vectores son objetos matemáticos que tienen módulo, dirección y sentido. Se puede representar gráficamente a cualquier vector mediante una flecha.

#figure(image("../figures/img1.png", width: 77.0%),
  caption: [
    Componentes de un vector
  ]
)
<fig:my_label>

Un vector en $bb(R)^3$ es una terna ordenada de números reales, y se denota de la siguiente forma: $ arrow(u) =\(x\,y\,z\) $ Y de manera general para un vector en $bb(R)^n$ primero se define el espacio vectorial $bb(R)^n$ el cual se denota como el conjunto de las n-tuplas ordenadas de números reales, así $bb(R)^n :\(x_1\,x_2\,x_3\,dots.h.c\,x_n\)$ donde $x_i in bb(R)$, $1 lt.eq i lt.eq n$. Los elementos de $bb(R)^n$ también se suelen denominar vectores de orden $n$.

- #strong[Ejemplo de Vector en $bb(R)^n :$] $ arrow(u) =\(u_1\,u_2\,u_3\,dots.h.c\,u_n\) $

== Norma de un Vector
La norma o #emph[longitud] de un vector $arrow(u) =\(u_1\,u_2\,dots.h.c\,u_n\)$, esta definida como: $ \|arrow(u)\|= sqrt(u_1^2 + u_2^2 + dots.h.c u_n^2) $

== Distancia entre dos puntos
Sean $arrow(u) =\(u_1\,u_2\,dots.h.c\,u_n\)$ y $arrow(v) =\(v_1\,v_2\,dots.h.c\,v_n\)$ en $bb(R)^n$, se define el producto punto o escalar como: $ arrow(u) dot.op arrow(v) = u_1 v_1 + u_2 v_2 + dots.h.c + u_n v_n = sum_(i = 1)^n u_i v_i $

== Producto Cruz o Vectorial
Teniendo los vectores $arrow(u) =\(u_1\,u_2\,dots.h.c\,u_n\)$ y $arrow(v) =\(v_1\,v_2\,dots.h.c\,v_n\)$ se define el producto vectorial de dos vectores en $bb(R)^3$ como: $ arrow(u) times arrow(v) = mat(delim: "|", hat(i), hat(j), hat(k); u_1, u_2, u_3; v_1, v_2, v_3) $

= Funciones vectoriales de una variable real
Aquí nos referimos a aquellas funciones vectoriales las cuales tienen su dominio en un subconjunto de $bb(R)$ y un contradominio en un espacio vectorial $bb(R)^n$. \ De este modo una función vectorial $f$ asocia a cada elemento $t$ de un conjunto $bb(D)$ de números reales, un único vector $f\(t\)$. #sinnum[$  f : bb(D) & subset.eq bb(R) arrow.r bb(R)^n\
t & arrow.r f\(t\)\
f\(t\)=\[x_1\(t\) & \,x_2\(t\)\,dots.h\,x_n\(t\)\]in bb(R)^n $]

= Dominio de una función vectorial
El dominio de una función vectorial $f\(t\)$ esta referido a aquellos valores permitidos por $t$. \ Si $f\(t\)$ esta definida en términos de las funciones de las componentes y no esta especificada explícitamente el dominio, entonces se entiende que el dominio es la intersección de los dominios naturales de las funciones de las componentes, por lo que este recibe el nombre de dominio natural de $f\(t\)$: $ f\(t\)=\(x_1\(t\)\,x_2\(t\)\,dots.h\,x_n\(t\)\)in bb(R)^n $ Entonces su dominio es: $ D o m\(f\)= inter.big_(i = 1)^n D o m\(x_i\(t\)\) $

= Limite y continuidad de una función vectorial
El límite de una función vectorial $f$ se define tomando los límites de sus funciones componentes: Si $f\(t\)=\(x_1\(t\)\,x_2\(t\)\,dots.h\,x_n\(t\)$, entonces $ lim_(t arrow.r a) = (lim_(t arrow.r a) x_1 \( t \) \, lim_(t arrow.r a) x_2 \( t \) \, dots.h \, lim_(t arrow.r a) x_n \( t \)) $ Siempre y cuando los límites de las funciones componentes existan. \ También se tiene que una función vectorial $f$ será continua si se cumple que: $ lim_(t arrow.r a) f\(t\)= f\(a\) $

= Funciones vectoriales y curvas en el espacio
Existe una estrecha relación entre las funciones vectoriales continuas y las curvas en el espacio. Supongase que $x_1$, $x_2$ y $x_3$ son funciones continuas con valores reales en un intervalo #emph[I]. Entonces el conjunto $bb(C)$ de todos los puntos $\(x\,y\,z\)$ en el espacio, donde: $ x = x_1\(t\)\,#h(2em) y = x_2\(t\)\,#h(2em) z = x_3\(t\) $ Las ecuaciones anteriores se llaman #strong[ecuaciones paramétricas] de $bb(C)$ y $t$ se llama #strong[parámetro]. Si consideramos ahora la función vectorial: $ upright(bold(r))\(t\)= chevron.l x_1\(t\)\,x_2\(t\)\,x_3\(t\)chevron.r $ Entonces $upright(bold(r))\(t\)$ es el vector de posición del punto $P\(x_1\(t\)\,x_2\(t\)\,x_3\(t\)\)$ en $bb(C)$. Así, toda función vectorial continua $upright(bold(r))$ define una curva en el espacio $bb(C)$ trazada por la punta del vector en movimiento $upright(bold(r))\(t\)$.

= Derivadas e integrales de funciones vectoriales
== Derivadas
La derivada $upright(bold(r))'$ de una función vectorial $upright(bold(r))$ se define casi de la misma manera que las funciones con valores reales: $ frac(d upright(bold(r)), d t) = upright(bold(r))'\(t\)= lim_(h arrow.r 0) frac(upright(bold(r))\(t + h\)- upright(bold(r))\(t\), h) $ De aqui se tiene que cuando $h arrow.r 0$, parece que este vector se aproxima a un vector que está en la recta tangente. Por esta razón, el vector $upright(bold(r))'\(t\)$ se llama vector tangente a la curva definida por $upright(bold(r))$ en el punto $P$, siempre y cuando $upright(bold(r))'\(t\)$ exista y $upright(bold(r))'\(t\)eq.not 0$. La recta tangente a $bb(C)$ en $P$ se define como la recta que pasa por $P$ paralela al vector tangente $upright(bold(r))'\(t\)$. Mencionando el vector tangente unitario, el cual es: $ upright(bold(T))\(t\)= frac(upright(bold(r))'\(t\), \|upright(bold(r))'\(t\)\|) $ #strong[Teorema:] Si $upright(bold(r))\(t\)= chevron.l x_1\(t\)\,x_2\(t\)\,x_3\(t\)chevron.r = x_1\(t\)hat(i) + x_2\(t\)hat(j) + x_3\(t\)hat(k)$, donde $x_1$,$x_2$ y $x_3$ son funciones derivables, entonces: $ upright(bold(r))' = chevron.l x'_1\(t\)\,x'_2\(t\)\,x'_3\(t\)chevron.r = x'_1\(t\)hat(i) + x'_2\(t\)hat(j) + x'_3\(t\)hat(k) $

== Integrales
La integral definida de una función vectorial continua $upright(bold(r))\(t\)$ puede definirse casi de igual forma que las funciones con valores salvo que la integral es un vector. Y se puede expresar la integral de $upright(bold(r))$ en términos de las integrales de sus funciones componentes $x_1$,$x_2$ y $x_3$ como sigue: $ integral_a^b upright(bold(r))\(t\)d t & = lim_(n arrow.r oo) sum_(i = 1)^n upright(bold(r))\(t_i^(*)\)Delta t\
integral_a^b upright(bold(r))\(t\)d t & = lim_(n arrow.r oo) [(sum_(i = 1)^n x_1 \( t_i^(*) \) Delta t) hat(i) + (sum_(i = 1)^n x_2 \( t_i^(*) \) Delta t) hat(j) + (sum_(i = 1)^n x_3 \( t_i^(*) \) Delta t) hat(k)] $ Quedando así: $ integral_a^b upright(bold(r))\(t\)d t = (integral_a^b x_1 \( t \) d t) hat(i) + (integral_a^b x_2 \( t \) d t) hat(j) + (integral_a^b x_3 \( t \) d t) hat(k) $ Extendiendo el teorema fundamental del cálculo a las funciones vectoriales continuas como sigue: $ integral_a^b upright(bold(r))\(t\)d t = upright(bold(R))\(t\)\]\_a^b = upright(bold(R))\(b\)- upright(bold(R))\(a\) $ donde $upright(bold(R))$ es una antiderivada de $upright(bold(r))$, es decir $upright(bold(R))'\(t\)= upright(bold(r))\(t\)$.

= Longitud de arco y curvatura
== Longitud de arco
Supóngase que la curva tiene la ecuación vectorial #sinnum[$  upright(bold(r))\(t\)= chevron.l x_1\(t\)\,x_2\(t\)\,x_3\(t\)chevron.r $] donde $a lt.eq t lt.eq b$ o de igual manera las ecuaciones paramétricas $x = x_1\(t\)$, $y = x_2\(t\)$ y $z = x_3\(t\)$, donde $x'_1$,$x'_2$ y $x'_3$ son continuas. Si la curva es recorrida exactamente una vez cuando $t$ se incrementa de $a$ a $b$, es posible demostrar que su longitud es: $ L & = integral_a^b sqrt(\[x'_1\]^2 +\[x'_2\]^2 +\[x'_3\]^2) d t\
L & = integral_a^b sqrt((frac(d x, d t))^2 + (frac(d y, d t))^2 + (frac(d z, d t))^2) d t $ De forma más compacta: $ L = integral_a^b\|upright(bold(r))'\(t\)\|d t $

== Curvatura
La curvatura de $bb(C)$ en un punto dado es una medida de lo rápido que la curva cambia de dirección en ese punto. Más específicamente se define como la magnitud de la razón de cambio del vector tangente unitario con respecto a la longitud de arco. \ #strong[Definición:] La curvatura de una curva es: $ kappa = lr(|frac(d upright(bold(T)), d s)|) = frac(\|upright(bold(T))'\(t\)\|, upright(bold(r))'\(t\)\|) $

#strong[Teorema:] La curvatura de la curva dada por la función vectorial $upright(bold(r))$ es: $ kappa = frac(\|upright(bold(r))'\(t\)times upright(bold(r))''\(t\)\|, \|upright(bold(r))'\(t\)\|^3) $
