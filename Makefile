.m.o:
	$(CC) -ObjC -g -c $<

OBJS = main.o MyCalendar.o

MyCal : ${OBJS}
	$(CC) -g -o MyCal ${OBJS} -framework Foundation -lobjc

clean:
	-rm *~
	-rm ${OBJS}
	-rm MyCal
