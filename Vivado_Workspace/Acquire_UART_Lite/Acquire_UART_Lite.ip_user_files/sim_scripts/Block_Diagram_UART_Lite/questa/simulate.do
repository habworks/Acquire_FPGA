onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Block_Diagram_UART_Lite_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Block_Diagram_UART_Lite.udo}

run 1000ns

quit -force
