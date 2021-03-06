CC  = 	g++
CFLAGS = -O2 -g -Wall

SOURCES = bitmapfont.cpp block.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = bitmapfont
FONTS = ASC12 ASC16 ASC48 HZK12 HZK14 HZK16 HZK16F HZK16S HZK24F HZK24H HZK24K HZK24S HZK32 HZK40 HZK48

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@
	mkdir -p output/

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@ 

allfonts:$(FONTS)

all: $(TARGET) 

clean:
	rm -rfv $(OBJECTS) $(TARGET)
	rm -rfv output/
	
ASC12: FONT_NAME = ASC12
ASC12: BYTE_IN_ROW = 1
ASC12: VAR_IN_ROW = 12
ASC12: ASC12.txt

ASC16: FONT_NAME = ASC16
ASC16: BYTE_IN_ROW = 1
ASC16: VAR_IN_ROW = 8
ASC16: ASC16.txt

ASC48: FONT_NAME = ASC48
ASC48: BYTE_IN_ROW = 3
ASC48: VAR_IN_ROW = 12
ASC48: ASC48.txt

HZK12: FONT_NAME = HZK12
HZK12: BYTE_IN_ROW = 2
HZK12: VAR_IN_ROW = 8
HZK12: HZK12.txt
	
HZK14: FONT_NAME = HZK14
HZK14: BYTE_IN_ROW = 2
HZK14: VAR_IN_ROW = 8
HZK14: HZK14.txt

HZK16: FONT_NAME = HZK16
HZK16: BYTE_IN_ROW = 2
HZK16: VAR_IN_ROW = 8
HZK16: HZK16.txt

HZK16F: FONT_NAME = HZK16F
HZK16F: BYTE_IN_ROW = 2
HZK16F: VAR_IN_ROW = 8
HZK16F: HZK16F.txt

HZK16S: FONT_NAME = HZK16S
HZK16S: BYTE_IN_ROW = 2
HZK16S: VAR_IN_ROW = 8
HZK16S: HZK16S.txt

HZK24F: FONT_NAME = HZK24F
HZK24F: BYTE_IN_ROW = 3
HZK24F: VAR_IN_ROW = 12
HZK24F: HZK24F.txt

HZK24H: FONT_NAME = HZK24H
HZK24H: BYTE_IN_ROW = 3
HZK24H: VAR_IN_ROW = 12
HZK24H: HZK24H.txt

HZK24K: FONT_NAME = HZK24K
HZK24K: BYTE_IN_ROW = 3
HZK24K: VAR_IN_ROW = 12
HZK24K: HZK24K.txt

HZK24S: FONT_NAME = HZK24S
HZK24S: BYTE_IN_ROW = 3
HZK24S: VAR_IN_ROW = 12
HZK24S: HZK24S.txt

HZK32: FONT_NAME = HZK32
HZK32: BYTE_IN_ROW = 4
HZK32: VAR_IN_ROW = 16
HZK32: HZK32.txt

HZK40: FONT_NAME = HZK40
HZK40: BYTE_IN_ROW = 5
HZK40: VAR_IN_ROW = 10
HZK40: HZK40.txt

HZK48: FONT_NAME = HZK48
HZK48: BYTE_IN_ROW = 6
HZK48: VAR_IN_ROW = 16
HZK48: HZK48.txt

%.txt: $(TARGET)
	./$(TARGET) -f font/$(FONT_NAME) -c $(BYTE_IN_ROW) -n $(VAR_IN_ROW) -p > output/$@

