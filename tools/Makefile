.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c99 -Wall -Wextra -Wno-missing-field-initializers

tools := \
	lzcomp \
	png_dimensions \
	scan_includes \
	palette \
	pokemon_animation \
	pokemon_animation_graphics \
	gfx \
	md5 \
	bankends
all: $(tools)
	@:

clean:
	rm -f $(tools)
	$(MAKE) -C lz/ clean

gfx md5: common.h

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

bankends: bankends.c parsemap.c parsemap.h
	$(CC) -O3 -o $@ $^

lzcomp:
	$(MAKE) -C lz/
	cp lz/lzcomp .
