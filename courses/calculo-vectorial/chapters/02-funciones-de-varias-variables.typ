#import "/lib/notes.typ": *

= Funciones de Varias variables
#strong[Definición:] Una función $f$ de dos variables es una regla la cual asigna a cada par ordenado de números reales $\(x\,y\)$ en un conjunto $bb(D)$ un número real único denotado por $f\(x\,y\)$. Donde se tiene que el conjunto $bb(D)$ es el dominio de $f$ y su rango es el conjunto de valores que $f$ adopta.

Se suele escribir $z = f\(x\,y\)$ para explicitar el valor que adopta $f$ en un punto general $\(x\,f\)$. Teniendo las variables independientes que son $x$ y $y$, y las variables dependientes como $z$.

#heading(level: 2, numbering: none)[Ejemplo]
Para la siguiente función, evaluar $f\(3\,5\)$ y determine y trace el dominio. #sinnum[$  f\(x\,y\)= frac(sqrt(x + y + 1), x - 1) $] Solución: Evaluándolo en $f\(3\,5\)$: #sinnum[$  f\(3\,5\)= frac(sqrt(3 + 5 + 1), 3 - 1) = sqrt(9) / 2 = 3 / 2 $] La expresión para $f$ tiene sentido si es que el denominador es diferente de $0$ y la cantidad bajo el signo de la raíz cuadrada no es negativa. Así, se tiene que el dominio de $f$ es: #sinnum[$  bb(D) = {\(x\,y\)quad\|x + y + 1 gt.eq 0\,x eq.not 1 } $] La desigualdad $x + y + 1 gt.eq 0$ describe los puntos que se encuentran en o sobre la recta $y = - x - 1$, mientras que $x eq.not 1$ significa que los puntos sobre la recta $x = 1$ deben excluirse del dominio.

= Curvas de Nivel
Una curva de nivel $f\(x\,y\)= k$ es el conjunto de todos los puntos en el dominio de $f$ en los que $f$ adopta un valor $k$ dado. Es decir que esto nos muestra en que parte de la gráfica de $f$ esta tiene una altura $k$.

#strong[Definición:] Las #emph[curvas de nivel] de una función $f$ de dos variables son las curvas con las ecuaciones $f\(x\,y\)= k$, donde $k$ es una constante.

= Límites y continuidad de una función real de variable vectorial
== Límite de una función real de variable vectorial
#strong[Definición:] Sea $f$ una función de dos variables cuyo dominio $bb(D)$ incluye puntos arbitrariamente cerca de $\(a\,b\)$. Se dice entonces que el límite de $f\(x\,y\)$ cuando $\(x\,y\)$ se aproxima a $\(a\,b\)$ es $L$ y se denota de la forma $ lim_(\(x\,y\)arrow.r\(a\,b\)) f\(x\,y\)= L $ si para cada número $epsilon > 0$ hay un correspondiendo número $𝛥 > 0$ tal que $\(x\,y\)in bb(D)$ y $0 < sqrt(\(x - a\)^2 +\(y - b\)^2) < 𝛥$ entonces $\|f\(x\,y\)- L\|< epsilon$.

== Continuidad de una función real de variable vectorial
#strong[Definición:] Una función $f$ de dos variables se llama continua en $\(a\,b\)$ si se cumple que: $ lim_(\(x\,y\)arrow.r\(a\,b\)) f\(x\,y\)= f\(a\,b\) $ Se dice que $f$ es continua en $bb(D)$ si $f$ es continua en cada punto $\(a\,b\)$ en $bb(D)$.

= Derivadas parciales
En general, si $f$ es una función de dos variables $x$ y $y$, sus derivadas parciales son las funciones $f_x = frac(partial f\(x\,y\), partial x)$ y $f_y = frac(partial f\(x\,y\), partial y)$. $ f_x = frac(partial f\(x\,y\), partial x) = lim_(h arrow.r 0) frac(f\(x + h\,y\)- f\(x\,y\), h) $ $ f_y = frac(partial f\(x\,y\), partial x) = lim_(h arrow.r 0) frac(f\(x\,y + h\)- f\(x\,y\), h) $

== Derivadas de orden superior
Si $f$ es una función de dos variables, sus derivadas parciales $f_x$ y $f_y$ también son funciones de dos variables, así que se pueden considerar su derivadas parciales $\(f_x\)_x$, $\(f_x\)_y$, $\(f_y\)_x$ y $\(f_y\)_y$, llamadas segundas derivadas parciales de $f$. $ \(f_x\)_x = f_(x x) & = frac(partial, partial x) (frac(partial f, partial x)) = frac(partial^2 f, partial x^2)\
\(f_x\)_y = f_(x y) & = frac(partial, partial y) (frac(partial f, partial x)) = frac(partial^2 f, partial y partial x)\
\(f_y\)_x = f_(x x) & = frac(partial, partial x) (frac(partial f, partial y)) = frac(partial^2 f, partial x partial y)\
\(f_y\)_y = f_(y y) & = frac(partial, partial y) (frac(partial f, partial y)) = frac(partial^2 f, partial y^2) $

= Derivadas direccionales y vector gradiente
== Derivadas direccionales
#strong[Definición:] La #emph[derivada direccional] de $f$ en $\(x_0\,y_0\)$ en la dirección de un vector unitario $upright(bold(u)) = chevron.l a\,b chevron.r$ se define como: $ bb(D)_(upright(bold(u))) f\(x_0\,y_0\)= frac(partial f\(x_0\,y_0\), partial upright(bold(u))) = lim_(h arrow.r 0) frac(f\(x_0 + h_a\,y_0 + h_b\)- f\(x_0\,y_0\), h) $ #strong[Teorema:] Si $f$ es una función derivable de $x$ y $y$, entonces $f$ tiene una derivada direccional en la dirección de cualquier vector unitario $upright(bold(u)) = chevron.l a\,b chevron.r$ y $ bb(D)_(upright(bold(u))) f\(x\,y\)= f_x\(x\,y\)a + f_y\(x\,y\)b $

== El vector gradiente
#strong[Definición:] Si $f$ es una función de dos variables $x$ y $y$, entonces el gradiente de $f$ es la función vector $nabla f$ definida por: $ nabla f\(x\,y\)= chevron.l f_x\(x\,y\)\,f_y\(x\,y\)chevron.r = frac(partial f, partial x) hat(i) + frac(partial f, partial y) hat(j) $

#heading(level: 2, numbering: none)[Ejemplo]
Si $f\(x\,y\)= sin x + e^(x y)$, entonces: #sinnum[$  nabla f\(x\,y\)= chevron.l f_x\,f_y chevron.r = chevron.l cos x + y e^(x y)\,x e^(x y) chevron.r $]

== Derivada direccional en términos del vector gradiente
Se tiene: $ bb(D)_(upright(bold(u))) f\(x\,y\)= nabla f\(x\,y\)dot.op upright(bold(u)) $ Esto expresa la derivada direccional en la dirección de un vector unitario $upright(bold(u))$ como la proyección escalar del vector gradiente en $upright(bold(u))$.

= Planos tangentes
== Vector normal
#strong[Teorema:] Si una ecuación de una superficie $bb(S)$ es $f\(x\,y\,z\)= 0$ y $f_x\,f_y\,f_z$ son continuas y $P_0\(x_0\,y_0\,z_0\)$ es un punto del plano de $bb(S)$, entonces un vector normal a $bb(S)$ en $P_0$ es $arrow(N) = nabla f\(x_0\,y_0\,z_0\)$.

== Ecuación del plano tangente
#strong[Definición:] Si una ecuación de una superficie $bb(S)$ es: $f\(x\,y\,z\)= 0$, entonces el plano tangente de $bb(S)$ en un punto $P_0\(x_0\,y_0\,z_0\)$ es el plano que tiene como vector normal a $arrow(N) = nabla f\(x_0\,y_0\,z_0\)$ y la ecuación del plano tangente esta dado por: $ bb(D)_1 f\(x_0\,y_0\,z_0\)\(x - x_0\)+ bb(D)_2 f\(x_0\,y_0\,z_0\)\(y - y_0\)+ bb(D)_3 f\(x_0\,y_0\,z_0\)\(z - z_0\)= 0 $

== Ecuación simétrica de la recta normal
#strong[Definición:] La recta normal a la superficie $bb(S)$ en el punto $P_0 in bb(S)$ es la recta que pasa a través de $P_0$ y sigue la dirección del vector normal del plano tangente a $bb(S)$ en $P_0$.

La ecuación simétrica de la recta normal a S en $P_0\(x_0\,y_0\,z_0\)$ es: $ frac(x - x_0, bb(D)_1 f\(x_0\,y_0\,z_0\)) = frac(y - y_0, bb(D)_2 f\(x_0\,y_0\,z_0\)) = frac(z - z_0, bb(D)_3 f\(x_0\,y_0\,z_0\)) $

= Máximos y Mínimos
= Multiplicadores de Lagrange
