transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Advanced Digital/Lab 3/fullAdder.vhd}
vcom -93 -work work {E:/Advanced Digital/Lab 3/components.vhd}
vcom -93 -work work {E:/Advanced Digital/Lab 3/wallaceTree.vhd}
vcom -93 -work work {E:/Advanced Digital/Lab 3/rippleCarry.vhd}
vcom -93 -work work {E:/Advanced Digital/Lab 3/carrySave.vhd}

