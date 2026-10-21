#import "/lib/notes.typ": *

= Electrostática
== Campo Electrico
$ enmarcado( d arrow(F) = frac(1, 4 pi epsilon_o) frac(d q dot.op d q', upright(bold(r))^2) hat(upright(bold(r))) ) $ donde $epsilon_o = 8.85 times 10^(- 12) C\/N dot.op m^2$, $arrow(upright(bold(r))) = arrow(r) - arrow(r)'$. \ Si: $ arrow(F) = frac(1, 4 pi epsilon_o) frac(Q q, upright(bold(r))^2) hat(upright(bold(r))) = frac(1, 4 pi epsilon_o) frac(Q q, upright(bold(r))^3) arrow(upright(bold(r)))\
arrow(F) = frac(1, 4 pi epsilon_o) frac(Q q, \|arrow(r) - arrow(r)')^3\(arrow(r) - arrow(r)'\) $ Si existieran varias cargas $q_i$, entonces: $ arrow(F) = F_1 + dots.h.c & = frac(1, 4 pi epsilon_o) (frac(q_1 Q, upright(bold(r))_1^2) hat(upright(bold(r)))_1 + frac(q_2 Q, upright(bold(r))_2^2) hat(upright(bold(r)))_2 + dots.h.c)\
arrow(F) & = frac(Q, 4 pi epsilon_o) (q_1 / upright(bold(r))_1^2 hat(upright(bold(r)))_1 + q_2 / upright(bold(r))_2^2 hat(upright(bold(r)))_2 + dots.h.c) $

\ Definimos el campo eléctrico como: $ arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) (q_1 / upright(bold(r))_1^2 hat(upright(bold(r)))_1 + q_2 / upright(bold(r))_2^2 hat(upright(bold(r)))_2 + dots.h.c) = frac(1, 4 pi epsilon_o) sum_(i = 1)^n q_i / upright(bold(r))_i^2 hat(upright(bold(r)))_i $ $ enmarcado( arrow(F)\(arrow(r)\)= Q arrow(E)\(arrow(r)\)) $

$ arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral frac(d q, upright(bold(r))^2) hat(upright(bold(r))) $

\

+ #strong[LINEA:] \ $ lambda = frac(d q, d l') arrow.r d q = lambda d l' $ $ arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(C') frac(lambda\(arrow(r)'\), upright(bold(r))^2) hat(upright(bold(r))) d l'\
  arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(C') frac(lambda\(arrow(r)'\)\(arrow(r) - arrow(r)'\), \|arrow(r) - arrow(r)'\|^3) d l' $

+ #strong[SUPERFICIE:] \ $ sigma = frac(d q, d a') arrow.r d q = sigma\(arrow(r')\)d a' $ $ arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(S') frac(sigma\(arrow(r')\), upright(bold(r))^2) hat(upright(bold(r))) d a'\
  arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(S') frac(sigma\(arrow(r')\), \|arrow(r) - arrow(r')\|^3)\(arrow(r) - arrow(r')\)d a' $

+ #strong[VOLÚMEN] \ $ rho\(arrow(r')\)= frac(d q, d v') arrow.r d q = rho\(arrow(r')\)d v' $ $ arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(V') frac(rho\(arrow(r')\), upright(bold(r))^2) hat(upright(bold(r))) d V'\
  arrow(E)\(arrow(r)\)= frac(1, 4 pi epsilon_o) integral_(V') frac(rho\(arrow(r'), \|arrow(r) - arrow(r')\|^3)\(arrow(r) - arrow(r')\)d V' $

== La función Delta de Dirac
La función $delta$ de Dirac no es propiamente una función, sino más bien es una distribución. Fue introducido por Dirac quien la denomino como función impropia. La función delta de Dirac es introducida para representar cierto tipo de infinitos. Para manejar estos infinitos se introduce la cantidad $delta$ que depende de un parámetro $x$. \ $ delta\(x\)= cases(delim: "{", 0 & "si" & x eq.not 0, oo & "si" & x = 0) $ $ integral_(- oo)^oo delta\(x\)d x = 1 $

\

=== Propiedades
+ $ integral_(- oo)^oo f\(x\)delta\(x\)d x = f\(0\) $ donde $f\(x\)$ es cualquier función continua de $x$. \

+ Haciendo un cambio en el origen: $ integral_(- oo)^oo f\(x\)delta\(x - a\)= f\(a\) $ donde $a$ es un número real cualquiera.

+ También se puede definir la función $delta$ como la derivada de la función de Heaviside: \ Sea la función de Heaviside. $ H\(x\)= cases(delim: "{", 0 & "si" & x < 0, 1 & "si" & x > 0) $ O también $ H\(x - x_o\)= cases(delim: "{", 0 & "si" & x < x_o, 1 & "si" & x > x_o) $

  \ Se tiene que: $ delta\(x - x_o\)= frac(d, d x) (H \( x - x_o \)) = cases(delim: "{", 0 & "si" & x eq.not 0, oo & "si" & x = 0) $ Comprobando: #sinnum[$  integral_(- a)^b f\(x\)delta\(x\)d x = integral_(- a)^b f\(x\)H'\(x\)d x $] Integrando por partes: #sinnum[$  integral_(- a)^b f\(x\)H'\(x\)d x & = f\(x\)H\(x\)\|_(- a)^b - integral_(- a)^b f'\(x\)H\(x\)d x\
   & = f\(b\)- integral_0^b f'\(x\)d x = f\(b\)-\(f\(b\)- f\(0\)\)\
   & = f\(0\) $]

+ $delta\(- x\)= delta\(x\)$ $arrow.r$ sí la función es par. #sinnum[$  integral_(- oo)^oo f\(x\)delta\(- x\)d x & = - integral_oo^(- oo) f\(- x\)delta\(x\)d x = f\(0\)\
  f\(0\) & = integral_(- oo)^oo f\(x\)delta\(x\)d x med arrow.r delta\(- x\)= delta\(x\) $]
