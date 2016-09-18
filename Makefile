CC      = cc
OBJS    = bto_ir_cmd.o
#LIBS	= -lusb-1.0
LIBS	= -lusb

bto_ir_cmd: $(OBJS)
	$(CC) -Wall -o $@ $(OBJS) $(LIBS)

.c.o:
	$(CC) -c $<

clean:
	@rm -f $(OBJS)
	@rm -f bto_ir_cmd
