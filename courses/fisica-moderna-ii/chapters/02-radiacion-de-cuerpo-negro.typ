#import "/lib/notes.typ": *

= Radiación de cuerpo negro
Un #emph[cuerpo negro] es aquel cuerpo que no absorve toda la radiación que recibe y no emite radiación propia. Recordemos el diagrama esquemático mostrado en la figura #ref(<fig:cuerpo_negro>).

== Introducción
=== Conceptos importantes
==== Ley de desplazamiento de Wien
Otto Fritz Franz Wien (1864-1928); El pudo demostrar que la longitud de onda $lambda_(m acute(a) x)$, en la cual la densidad de flujo por intervalo unitario de longitud de onda que emerge del cuerpo negro es un máximo. Varía como: $ T lambda_(m acute(a) x) = 2\,8978 times 10^(- 3) m K $

==== Ley de Stefan-Boltzmann
La densidad de flujo radiante total o existencia es definida por: $ M = sigma T^4\, $<eq:21> donde $sigma$ representa la constante de Stefan-Boltzmann: $ sigma = 5\,67 times 10^(- 8) frac(W, m^2 K^4) $ La ecuación #ref(<eq:21>) indica la cantidad total de energía radiada por un cuerpo negro en equilibrio térmico.

====  Distribución de Planck
La densidad de energía en el rango $lambda$ a $lambda + upright("d") lambda$ es dado por la distribucion de Planck $ upright("d") E = rho upright("d") lambda\, $<eq:22> donde: $ rho\(lambda\,T\)= frac(8 pi h c, lambda^5) (frac(1, e^(h c\/lambda k T) - 1)) $ Esta expresión ajusta la curva experimental muy bien para toda longitud de onda y el valor de $h$ puede ser obtenido variando su valor hasta un mejor ajuste.

Para longitud de onda corta, $h c\/lambda k T$ es grande y $exp\(h c\/lambda k T\)arrow.r oo$\; por lo tanto: $ rho arrow.r 0 upright(", cuando ") cases(delim: "{", lambda arrow.r 0, nu arrow.r oo) $ #strong[Ejemplo]: Representar la curva de Planck para una estrella de tipo espectral B con temperatura de $14000 K$. $ B_lambda\(T\) & = B\(lambda\,t\)\
 & = c_1 / lambda^5 frac(1, e^(c_2\/lambda T) - 1)\, $ donde: $  & c_1 = 2 h c^2 = 1\,191 times 10^11 med upright("erg Å") / s\
 & c_2 = frac(h c, k_B) = 1\,4388 times 10^8 upright("Å-K") $

#figure(
  table(
    columns: 2,
    align: (left,left,),
    table.header([$lambda times 10^3$Å], [$B_lambda\(14000 med K\)times 10^(- 9)$],),
    table.hline(),
    [1], [4,088],
    [2], [26,11],
    [3], [16,46],
    [4], [9,668],
  )
  , kind: table
  )

Analizando este caso con la ley de desplazamiento de Wien: $ lambda_(m acute(a) x) T & = 2\,8978 times 10^(- 3) m K\
lambda & = frac(2\,8978, 14000) times 10^7 upright(" Å")\
 & approx 2069\,86\
 & approx 2069 med upright("Å") $ La energía total radiada será: $ E & = integral_0^oo B_lambda\(T\)upright("d") lambda\
 & = c_1 integral_0^oo frac(upright("d") lambda, e^(c_2\/lambda T) - 1)\
 & = frac(2 pi^5 k, 15 c^2 h^3) thick T^4 $ De la ecuación #ref(<eq:22>): $ E = 8 pi h c integral_0^oo frac(upright("d") lambda, lambda^5 (e^(h c\/lambda k T) - 1)) $ Realizando un cambio de variable: $ lambda = frac(c, lambda T) arrow.r upright("d") alpha & = - c / T frac(upright("d") lambda, lambda^2)\
upright("d") lambda & = - c / T thick upright("d") lambda $ Reemplazando: $ E & = frac(8 pi h T^4, c^3) integral_0^oo frac(alpha^5 upright("d") alpha, e^(h\/kappa dot.op alpha) - 1)\
E & = T^4 underbrace(integral_0^oo frac(8 pi h, c^3) frac(alpha^5 upright("d") alpha, e^(h\/kappa dot.op alpha) - 1), a = frac(4 sigma, c)) equiv a T^4 $ Adicionalmente, por la ley de Wien: $frac(upright("d") rho, upright("d") x) = 0$ $ rho & = frac(8 pi h c, lambda^5) [frac(1, e^(h c\/k lambda T) - 1)]\
frac(upright("d") rho, upright("d") x) & = - 5 (e^(h c\/lambda kappa T) - 1) + 1 / lambda frac(h c e^(h c\/lambda kappa T), kappa T) $ Y como $frac(upright("d") rho, upright("d") x) = 0$, entonces: $ 5 (1 - e^(h c\/lambda kappa T)) & = 1 / lambda frac(h c, kappa_B)\
(1 - e^(h c\/lambda kappa T)) & = underbrace(frac(1, 5 lambda) frac(h c, kappa_B), x) $ Finalmente: $ enmarcado( e^(- x) + 1 / 5 x - 1 = 0 ) $ Este problema puede ser resuelto numéricamente a través del método de aproximación sucesivas.

==== Efecto fotoeléctrico
Propuesto por A. Einstein en 1905. Si un haz monocromático de pulsación $omega$ incide sobre la superficie de un metal puede este emitir electrones. Si $ℏ omega$ es inferior a un cierto límite $W$, llamado #emph[trabajo de extracción], que depende del tipo de metal, no hay emisión para un amplio intervalo de intensidades de haz. Si $ℏ omega > W$, los electrones son emitidos con una energía cinética $T$ tal que: $ ℏ omega = W + T $ #strong[Ejemplo 01:] Si el potencial retardador de 5 voltios detiene a los fotoelectrones emitidos de cesio. ¿Cuál es la longitud de onda de los fotones incidentes? (Use $1\,9 thick e V$ para $W$ del Cesio).

#emph[Datos del problema]: $V = 5 V$. $ h nu & = T_(m acute(a) x) + W_0\
W_0 & = 1\,9 thick e V = 1\,9 times 1\,6 times 10^(- 19) thick J\
W_0 & equiv 3\,04 times 10^(- 19) J $ Además sabemos que $V = c / lambda$. Entonces: $ lambda = frac(h c, e V + W_0) = 1801 upright(" Å")\, $ donde $e = 1\,6 times 10^(- 14)$.

#strong[Ejemplo 02:] Si el umbral fotoeléctrico del sodio es $5420$ $angstrom$. Calcular la velocidad máxima de los fotoelectrones, si es iluminado con $lambda = 4000$ Å. $ h nu & = T_(m acute(a) x) + W_0\
T_(m acute(a) x) & = h nu - W_0\
1 / 2 m v_(m acute(a) x)^2 & = h c / lambda - W_0\
v^2 & = 2 / m (frac(h c, lambda) - W_0)\, $ donde $W_0$ es el trabajo y está dentro del umbral. Por lo que: $W_0 = h nu_0 = h c / lambda_0$. $ v^2 & = frac(2 h c, m) (1 / lambda - 1 / lambda_0)\
v & equiv 5\,348 times 10^5 thick m\/s $

El efecto fotoeléctrico y la radiación del cuerpo negro solo indican que la energía se intercambia por cuantos de valor $ℏ omega$. La naturaleza corpuscular de la radiación se pone más claramente de manifiesto en la difusión de los rayos X por los electrones (#emph[efecto Compton, 1923]). #emph[Esta sección requiere de un diagrama para clarificar algunos conceptos.]

#strong[Según el principio de conservación del momento:]
$ bold(p) + bold(p)_e = bold(p)' + bold(p)'_e, $
y según el principio de conservación de la energía relativista:
$ E + E_e = E' + E'_e, $
relativísticamente:
$ E^2 = E_0^2 + (p c)^2 $
Asimismo,
$ bold(p)'^2_e = p^2 + p'^2 - 2 p p' cos theta, $
donde $theta$ es el ángulo de dispersión. Además sabemos que $E = p c = m c^2$.
$ enmarcado( bold(p)'^2_e = E^2 / c^2 + E'^2 / c^2 - 2 (E E') / c^2 thick cos theta ) $
Además, por conservación de la energía:
$ underbrace(E', "Fotón dispersado") + underbrace(E'_e, "Electrón") = underbrace(E, "Fotón incidente") + underbrace(E_e, "En reposo") $
Reemplazando:
$ E' + sqrt(m_0^2 c^4 + p'^2_e c^2) = E + m_0 c^2 $
Despejando, el momento del electrón dispersado al cuadrado será:
$ enmarcado( bold(p)'^2_e = E^2 / c^2 + E'^2 / c^2 + 2 m_0 (E - E') - 2 (E E') / c^2 ) $
Comparando ambos resultados, obtenemos:
$ E - E' = (E E') / (m_0 c^2) (1 - cos theta) $
$ 1 / E' - 1 / E = 1 / (m_0 c^2) (1 - cos theta) $<eq:compton-inversa>
$ E = h nu_0 = h c / lambda_0 $<eq:compton-e>
$ E' = h nu' = (h c) / lambda' $<eq:compton-e-prima>
Reemplazando las ecuaciones #ref(<eq:compton-e>) y #ref(<eq:compton-e-prima>) en #ref(<eq:compton-inversa>):
$ lambda - lambda_0 = h / (m_0 c) (1 - cos theta) $

#strong[Relación del efecto Compton:]

Para $theta = pi / 2$: $ Delta lambda = lambda - lambda_0 = frac(h, m_0 C) = lambda_(upright("Compton")) $
