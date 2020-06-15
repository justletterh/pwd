default: all

all: check write

check:
	gcc check.c -o check -lcrypt

write:
	gcc write.c -o write -lcrypt

clean:
	-rm -f check.c
	-rm -f write.c

rm: clean
	-rm -f check
	-rm -f write