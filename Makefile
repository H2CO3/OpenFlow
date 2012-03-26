TARGET = OpenFlow
OBJECTS = $(patsubst %.m, %.o, $(wildcard *.m))

CC = arm-apple-darwin9-gcc
CFLAGS = -c -std=gnu99 -Wall -isysroot /Developer/Platforms/iPhoneOS.platform/SDKs/iPhoneOS4.2.sdk

all: $(TARGET)
	echo "Done"

$(TARGET): $(OBJECTS)

%.o: %.m
	$(CC) $(CFLAGS) -o $@ $^

