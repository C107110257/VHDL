vcom sg.vhd




vsim -gui work.tb_top
add wave -position insertpoint sim:/tb_top/b2v_inst/*
add wave -position insertpoint sim:/tb_top/b2v_inst2/*
run 100 ns