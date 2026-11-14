CC     = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2
SRC    = src/main.c src/trie.c
TARGET = spellchecker

all: $(TARGET)

$(TARGET): $(SRC) src/trie.h
	$(CC) $(CFLAGS) -o $@ $(SRC)

run: $(TARGET)
	./$(TARGET) data/dictionary.txt data/sample.txt

clean:
	rm -f $(TARGET)

.PHONY: all run clean
