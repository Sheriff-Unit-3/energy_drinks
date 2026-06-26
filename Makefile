%.lua: %.fnl
	fennel --compile $< > $@

SRC := $(wildcard *.fnl)
OUT := $(patsubst %.fnl,%.lua,$(SRC))

.PHONY: all
all: $(OUT)

clean:
	rm $(OUT)
