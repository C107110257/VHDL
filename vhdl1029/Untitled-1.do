vsim -gui -t ns work.adder1 
add wave -position insertpoint sim:/adder1/*

force -freeze sim:/adder1/a 000000000 0
force -freeze sim:/adder1/a 000000010 50
force -freeze sim:/adder1/a 000000100 100
force -freeze sim:/adder1/a 000000110 150
force -freeze sim:/adder1/a 000001000 200
force -freeze sim:/adder1/a 000001010 250
force -freeze sim:/adder1/a 000001100 300
force -freeze sim:/adder1/a 000001110 350

force -freeze sim:/adder1/b 000000000 0
force -freeze sim:/adder1/b 000000100 50
force -freeze sim:/adder1/b 000001000 100
force -freeze sim:/adder1/b 000001100 150
force -freeze sim:/adder1/b 000000000 200
force -freeze sim:/adder1/b 000000100 250
force -freeze sim:/adder1/b 000001000 300
force -freeze sim:/adder1/b 000001100 350

run 400