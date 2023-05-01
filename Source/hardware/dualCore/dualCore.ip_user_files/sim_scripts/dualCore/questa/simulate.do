onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dualCore_opt

do {wave.do}

view wave
view structure
view signals

do {dualCore.udo}

run -all

quit -force
