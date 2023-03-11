vsim -gui -t ns work.dff2
add wave -position insertpoint sim:/dff2/*

force -freeze sim:/dff2/rst 0 {25 ns}

force -freeze sim:/dff2/rst 1 

force -freeze sim:/dff2/d 0 0, 1 {100 ns} -r 200

force -freeze sim:/dff2/clk 0 0, 1 {25 ns} -r 50

run 350