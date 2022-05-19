VERILOG = iverilog
TARGET = PRPG.vcd
TEMP = temp.vvp

$(TARGET) : temp.vvp
	vvp temp.vvp
temp.vvp: PRPG_tb.v PRPG.v
	$(VERILOG) -o temp.vvp PRPG_tb.v PRPG.v
clean:
	-del $(TARGET)
	-del $(TEMP)