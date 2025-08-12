##!/bin/bash

# Mata quaisquer instâncias de barras que estejam rodando
killall polybar

# Efetivamente roda a(s) polybar(s)
polybar cima &
polybar baixo &
