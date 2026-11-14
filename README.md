# Spell Checker in C (Trie)

A fast command-line spell checker written in C. The dictionary is stored in a
**trie (prefix tree)**, giving O(L) lookups where L is the word length,
independent of dictionary size. Misspelled words get suggestions at edit
distance 1 (deletion, insertion, replacement, transposition).

## Project structure
```
spellchecker/
├── src/
│   ├── main.c          # CLI, file reading, interactive mode
│   ├── trie.c          # Trie implementation + suggestions
│   └── trie.h
├── data/
│   ├── dictionary.txt  # whitespace-separated words
│   └── sample.txt      # test input
├── Makefile
└── README.md
```

## Build & run
```bash
make                                                  # build
make run                                              # check data/sample.txt
./spellchecker data/dictionary.txt data/sample.txt    # check a file
./spellchecker data/dictionary.txt                    # interactive mode
make clean
```

## Complexity
| Operation | Time |
|-----------|------|
| Insert    | O(L) |
| Lookup    | O(L) |
| Suggest   | O(L x 26) candidate lookups |

## Tip
For a bigger dictionary, use any word list, e.g. `/usr/share/dict/words`.

## License
MIT
