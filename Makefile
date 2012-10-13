CC  = 	g++
CFLAGS = -O2 -g -Wall -c
SOURCES = BitmapFont.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = BitmapFont

all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

%.o: %.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(TARGET)
	rm -rf output/*
	
ASC12: FONT_NAME = ASC12
ASC12: FONT_LENGTH = 12
ASC12: BYTE_IN_ROW = 1
ASC12: BYTE_IN_CODE = 1
ASC12: FONT_OFFSET = 0x20
ASC12: ASC12.txt

ASC16: FONT_NAME = ASC16
ASC16: FONT_LENGTH = 16
ASC16: BYTE_IN_ROW = 1
ASC16: BYTE_IN_CODE = 1
ASC16: FONT_OFFSET = 0x00
ASC16: ASC16.txt

ASC48: FONT_NAME = ASC48
ASC48: FONT_LENGTH = 144
ASC48: BYTE_IN_ROW = 3
ASC48: BYTE_IN_CODE = 1
ASC48: FONT_OFFSET = 0x20
ASC48: ASC48.txt

HZK12: FONT_NAME = HZK12
HZK12: FONT_LENGTH = 24
HZK12: BYTE_IN_ROW = 2
HZK12: BYTE_IN_CODE = 2
HZK12: FONT_OFFSET = 0xA1
HZK12: HZK12.txt
	
HZK14: FONT_NAME = HZK14
HZK14: FONT_LENGTH = 28
HZK14: BYTE_IN_ROW = 2
HZK14: BYTE_IN_CODE = 2
HZK14: FONT_OFFSET = 0xA1
HZK14: HZK14.txt

HZK16: FONT_NAME = HZK16
HZK16: FONT_LENGTH = 32
HZK16: BYTE_IN_ROW = 2
HZK16: BYTE_IN_CODE = 2
HZK16: FONT_OFFSET = 0xA1
HZK16: HZK16.txt

HZK16S: FONT_NAME = HZK16S
HZK16S: FONT_LENGTH = 32
HZK16S: BYTE_IN_ROW = 2
HZK16S: BYTE_IN_CODE = 2
HZK16S: FONT_OFFSET = 0xA1
HZK16S: HZK16S.txt

HZK16F: FONT_NAME = HZK16F
HZK16F: FONT_LENGTH = 32
HZK16F: BYTE_IN_ROW = 2
HZK16F: BYTE_IN_CODE = 2
HZK16F: FONT_OFFSET = 0xA1
HZK16F: HZK16F.txt

HZK24F: FONT_NAME = HZK24F
HZK24F: FONT_LENGTH = 72
HZK24F: BYTE_IN_ROW = 3
HZK24F: BYTE_IN_CODE = 2
HZK24F: FONT_OFFSET = 0xB0
HZK24F: HZK24F.txt

HZK24H: FONT_NAME = HZK24H
HZK24H: FONT_LENGTH = 72
HZK24H: BYTE_IN_ROW = 3
HZK24H: BYTE_IN_CODE = 2
HZK24H: FONT_OFFSET = 0xB0
HZK24H: HZK24H.txt

HZK24S: FONT_NAME = HZK24S
HZK24S: FONT_LENGTH = 72
HZK24S: BYTE_IN_ROW = 3
HZK24S: BYTE_IN_CODE = 2
HZK24S: FONT_OFFSET = 0xB0
HZK24S: HZK24S.txt

HZK24T: FONT_NAME = HZK24T
HZK24T: FONT_LENGTH = 72
HZK24T: BYTE_IN_ROW = 3
HZK24T: BYTE_IN_CODE = 2
HZK24T: FONT_OFFSET = 0xB0
HZK24T: HZK24T.txt

HZK32: FONT_NAME = HZK32
HZK32: FONT_LENGTH = 128
HZK32: BYTE_IN_ROW = 4
HZK32: BYTE_IN_CODE = 2
HZK32: FONT_OFFSET = 0xA1
HZK32: HZK32.txt

HZK40S: FONT_NAME = HZK40S
HZK40S: FONT_LENGTH = 200
HZK40S: BYTE_IN_ROW = 5
HZK40S: BYTE_IN_CODE = 2
HZK40S: FONT_OFFSET = 0xB0
HZK40S: HZK40S.txt

HZK40T: FONT_NAME = HZK40T
HZK40T: FONT_LENGTH = 200
HZK40T: BYTE_IN_ROW = 5
HZK40T: BYTE_IN_CODE = 2
HZK40T: FONT_OFFSET = 0xA1
HZK40T: HZK40T.txt

HZK48S: FONT_NAME = HZK48S
HZK48S: FONT_LENGTH = 288
HZK48S: BYTE_IN_ROW = 6
HZK48S: BYTE_IN_CODE = 2
HZK48S: FONT_OFFSET = 0xB0
HZK48S: HZK48S.txt

HZK48T: FONT_NAME = HZK48T
HZK48T: FONT_LENGTH = 288
HZK48T: BYTE_IN_ROW = 6
HZK48T: BYTE_IN_CODE = 2
HZK48T: FONT_OFFSET = 0xA1
HZK48T: HZK48T.txt

HZK48: FONT_NAME = HZK48
HZK48: FONT_LENGTH = 288
HZK48: BYTE_IN_ROW = 6
HZK48: BYTE_IN_CODE = 2
HZK48: FONT_OFFSET = 0xA1
HZK48: HZK48.txt

%.txt: $(TARGET)
	./$(TARGET) font/$(FONT_NAME) $(FONT_LENGTH) $(BYTE_IN_ROW) $(BYTE_IN_CODE) $(FONT_OFFSET) > output/$@

