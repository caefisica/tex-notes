#import "/lib/notes.typ": *

= Clasificación de las ecuaciones de la Física Matemática
== Ecuaciones con dos variables Independientes
La forma general de una ecuación diferencial parcial (EDP) de $2^(upright("do"))$ orden: $ F\(x\,y\,u\,u_x\,u_y\,u_(x x)\,u_(x y)\,u_(y y)\)= 0 $ Un caso particular es (Ecuación semilineal o cuasilineal): $ a_11 u_(x x) + 2 a_12 u_(x y) + a_22 u_(y y) + f\(x\,y\,u\,u_x\,u_y\)= 0 $ Un caso más particular toma la forma (ecuación lineal): $ a_11 u_(x x) + 2 a_12 u_(x y) + a_22 u_(y y) + b_1 u_x + b_2 u_y + c u = f\(x\,y\) $<eq2.2> donde $a_11\,b_1\,c$ son funciones solo de $\(x\,y\)$.

#definicion[

Se denomina forma cuadrática característica de la ecuación #ref(<eq2.2>) a la expresión: $ Q\(lambda_1\,lambda_2\)= a_11 lambda_1^2 + 2 a_12 lambda_1 lambda_2 + a_22 lambda_2^2 $<eq2.4> Se denomina discriminante de la forma cuadrática #ref(<eq2.4>), a la expresión: $ Delta = - med a_11 & a_12\
a_12 & a_22 = a_12^2 - a_11 a_22 $

]

#definicion[

La ecuación #ref(<eq2.2>) es del tipo:

- #strong[Hiperbólico], si $Delta > 0$.

- #strong[Elíptico], si $Delta < 0$.

- #strong[Parabólico], si $Delta = 0$.

]

Una ecuación con coeficiente variables puede ser de diferente tipo en regiones distintas de $cal(R)^2$. Si cambiamos de coordenadas, el tipo de ecuación no cambiara: $ xi = xi\(X\,y\)\,quad eta = eta\(x\,y\) $

#definicion[

Se denomina forma canónica de la ecuación diferencial #ref(<eq2.2>), del tipo:

+ #strong[Hiperbólico], a la expresión: $ cal(V)_(xi xi) - beta_1 cal(V)_xi + beta_2 cal(V)_eta + phi cal(V) = g\(xi\,eta\) $ O también $ cal(V)_(xi eta) + beta_1 cal(V)_xi + beta_2 cal(V)_eta + phi cal(V) = g\(xi\,eta\) $

+ #strong[Elíptico], a la expresión: $ cal(V)_(xi xi) + cal(V)_(eta eta) + beta_1 cal(V)_xi + beta_2 cal(V)_eta + phi cal(V) = g\(xi\,eta\) $

+ #strong[Parabólico], a la expresión: $ cal(V)_(eta eta) + beta_1 cal(V)_xi + beta_2 cal(V)_eta + phi cal(V) = g\(xi\,eta\) $

]

=== Algoritmo
+ Se halla el determinante $Delta$ y se determina el tipo de ecuación.

+ Se hallan las primeras integrales de la ecuación característica #sinnum[$  a_11\(d y\)^2 - 2 a_12 d x d y + a_22\(d x\)^2 = 0 $]

  + #sinnum[$  a_11 (frac(d y, d x))^2 - & 2 a_12 (frac(d y, d x)) + a_22 = 0\,\(a_11 eq.not 0\)\
     & arrow.r frac(d y, d x) = frac(a_12 plus.minus sqrt(Delta), a_11) $]

  + #sinnum[$  a_22 (frac(d x, d y))^2 - & 2 a_12 (frac(d x, d y)) + a_11 = 0\,\(a_22 eq.not 0\)\
     & arrow.r frac(d y, d x) = frac(a_12 plus.minus sqrt(Delta), a_22) $]

+ Las primeras integrales serán, en el caso del tipo:

  + #strong[Hiperbólico:] $phi\(x\,y\)= c_11\,psi\(x\,y\)= c_2$.

  + #strong[Elíptico:] $alpha\(x\,y\)plus.minus beta\(x\,y\)= c$.

  + #strong[Parabólico:] $delta\(x\,y\)= c$.

+ Hacemos el cambio de variable correspondiente.

  + #strong[Hiperbólico:] $xi = phi\(x\,y\)\,eta = psi\(x\,y\)$.

  + #strong[Elíptico:] $xi = alpha\(x\,y\)\,eta = beta\(x\,y\)$.

  + #strong[Parabólico:] $xi = delta\(x\,y\)\,eta = epsilon\(x\,y\)$, donde $epsilon\(x\,y\)$ es una función arbitraria de $C^1$, tal que #sinnum[$  delta_x & delta_y\
    epsilon_x & epsilon_y eq.not 0 $]

#heading(level: 2, numbering: none)[Ejemplo]
Llevar a su forma canónica, en cada región que corresponda, a la ecuación #sinnum[$  y u_(x x) + u_(y y) = 0 $]

+ #strong[Paso 1.-] Hallamos el determinante #sinnum[$  a_11 = y\,a_12 = 0\,a_22 = 1 med arrow.r med Delta = a_12^2 - a_11 a_22 = - y $] Por lo tanto

  + En el semiplano $y < 0$, el determinante $Delta > 0$ entonces la ecuación será del tipo hiperbólica.

  + En el semiplano $y > 0$, el determinante $Delta < 0$ entonces la ecuación será del tipo elíptica.

  + En la recta $y = 0$, el determinante $Delta = 0$ entonces la ecuación será del tipo parabólica.

+ #strong[Paso 2.-] Escribimos la ecuación característica. Dado que $a_22 = 1 eq.not 0 arrow.r frac(d x, d y) = frac(a_12 plus.minus sqrt(Delta), a_22) = plus.minus sqrt(- y)$.

  + #sinnum[$  y < 0 med arrow.r med d x = & plus.minus sqrt(- y) d y arrow.r x + c = - 2 / 3\(- y\)^(3\/2)\
     & arrow.r c_1 = x plus.minus 2 / 3\(- y\)^(3\/2) $] Por lo tanto las primeras integrales son: #sinnum[$  phi\(x\,y\)= x + 2 / 3\(- y\)^(3\/2) = c_1\;psi\(x\,y\)= x - 2 / 3\(- y\)^(3\/2) = c_1 $]

  + #sinnum[$  y > 0 med arrow.r med d x = & plus.minus i sqrt(y) d y arrow.r x + c = plus.minus i 2 / 3 y^(3\/2)\
     & arrow.r alpha\(x\,y\)plus.minus i beta\(x\,y\)= c $] donde $alpha\(x\,y\)= x$, $beta\(x\,y\)= 2 / 3 y^(3\/2)$.

  + #sinnum[$  y = 0 med arrow.r med & d x = 0\(d y\)arrow.r x = c\
     & arrow.r delta\(x\,y\)= x $]

+ #strong[Paso 3.-] Cambio de variable #sinnum[$  y < 0 arrow.r xi = x + 2 / 3\(- y\)^(3\/2)\,eta = x - 2 / 3\(- y\)^(3\/2) $] Introducimos la función $cal(V)\(xi\,eta\)$ y obtenemos #sinnum[$  cal(V)\(xi\,eta\)= u\[x\(xi\,e t a\)\,y\(xi\,eta\)\]\,frac(d xi, d x) = 1\,frac(d eta, d x) = 1\,frac(d xi, d y) = - sqrt(- y)\,frac(d eta, d y) = sqrt(- y) $] #sinnum[$  u_x & = cal(V)_xi + cal(V)_eta\,u_y = (- cal(V)_xi + cal(V)_eta) sqrt(- y)\
  u_(x x) & = cal(V)_(xi xi) + 2 cal(V)_(xi eta) + cal(V)_(eta eta)\
  u_(y y) & = - y (cal(V)_(xi xi) - 2 cal(V)_(xi eta) + cal(V)_(eta eta)) - frac(1, 2 sqrt(- y)) (- cal(V)_xi + cal(V)_eta) $] Reemplazamos en $y u_(x x) + u_(y y) = 0$ y obtenemos #sinnum[$  y\(cal(V)_(xi xi) + 2 cal(V)_(xi eta) + cal(V)_(eta eta)\)- y\(cal(V)_(xi xi) - 2 cal(V)_(xi eta) + cal(V)_(eta eta)\)- frac(1, 2 sqrt(- y))\(- cal(V)_xi + cal(V)_eta\)= y [4 cal(V)_(xi eta) - frac(1, 2\(- y\)^(3\/2)) \( - cal(V)_xi + cal(V)_eta \)] = 0 $] Dividimos entre $4 y$ y expresamos $2\(- y\)^(3\/2) = 3 / 2\(xi - eta\)$ #sinnum[$  cal(V)_(xi eta) - frac(1, 6\(xi - eta\))\(- cal(V)_xi + cal(V)_eta\)= 0 $]

== Clasificación de las ecuaciones de la física matemática
Sea $ a_11 u_(x x) + 2 a_12 u_(x y) + a_22 u_(y y) + b_1 u_x + b u_y + c u + f = 0 $<eq2.11> Busquemos $ xi = phi\(x\,y\)\,eta = psi\(x\,y\) $ Tal que #ref(<eq2.11>) sea lo más sencilla posible respecto a las segundas derivadas. $u\(x\,y\)arrow.r cal(V)\(xi\,eta\)$ $ u_x & = cal(V)_xi xi_x + cal(V)_eta eta_x\;u_y = cal(V)_xi xi_y + cal(V)_eta eta_y\
u_(x x) & = cal(V)_(xi xi) xi_x^2 + 2 cal(V)_(xi eta) xi_x eta_x + cal(V)_(eta eta) eta_x^2 + cal(V)_xi xi_(x x) + cal(V)_eta eta_(x x)\
u_(x y) & = cal(V)_(xi xi) xi_x xi_y + cal(V)_(xi eta)\(xi_x eta_y + xi_y eta_x\)+ cal(V)_(eta eta) eta_x eta_y + u_xi xi_(x y) + u_eta eta_(x y)\
u_(y y) & = cal(V)_(xi xi) xi_y^2 + 2 cal(V)_(xi eta) xi_y eta_y + cal(V)_(eta eta) eta_y^2 + cal(V)_xi xi_(y y) + cal(V)_eta eta_(y y) $<eq2.13> Reemplazamos #ref(<eq2.13>) en #ref(<eq2.11>) y obtenemos: $ barra(a_11) cal(V)_(xi xi) + 2 barra(a_12) cal(V)_(xi eta) + barra(a_12) cal(V)_(eta eta) + barra(F\(xi\,eta\,cal(V)\,cal(V)_xi\,cal(V)_eta\)) = 0 $ donde #sinnum[$  & barra(a_11) = a_11 xi_x^2 + 2 a_12 xi_x xi_y + a_22 xi_y^2\
 & barra(a_12) = a_11 xi_x eta_x + a_12\(xi_x eta_y + xi_y eta_x\)+ a_12 xi_y eta_y\
 & barra(a_22) = a_11 eta_x^2 + 2 a_12 eta_x eta_y + a_22 eta_y^2\
 & barra(F\(xi\,eta\,cal(V)\,cal(V)_xi\,cal(V)_eta) = beta_1 cal(V)_eta + beta_2 cal(V)_eta + gamma u + delta $]
