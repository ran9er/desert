NAME = a
SOURCE = $(addsuffix .tex , $(NAME))
TARGET = $(addsuffix .pdf , $(NAME))
COMPILER = xelatex
MKIDX = makeindex
O = $(addsuffix .log , $(NAME)) $(addsuffix .aux , $(NAME)) \
$(addsuffix .idx , $(NAME)) $(addsuffix .ilg , $(NAME)) $(addsuffix .ind , $(NAME)) \
$(addsuffix .toc , $(NAME)) $(addsuffix .out , $(NAME))

all:
	$(COMPILER) $(SOURCE) $(TARGET)
	$(COMPILER) $(SOURCE) $(TARGET)

clean:
	rm $(O)
