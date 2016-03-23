CC=g++
# x86_64
CFLAGS=-c -std=c++0x -msse -msse2 "-I$(AMDAPPSDKROOT)/include"
LDFLAGS="-L$(AMDAPPSDKROOT)/lib/x86_64" -lOpenCL
## x86 32bits
#CFLAGS=-c -m32 -std=c++0x -msse -msse2 "-I$(AMDAPPSDKROOT)/include"
#LDFLAGS=-m32 "-L$(AMDAPPSDKROOT)/lib/x86" -lOpenCL
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=clTut

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
