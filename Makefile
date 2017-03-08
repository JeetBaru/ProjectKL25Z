CC = cc
CFLAGS = -std=c99 -Wall -Werror -g -O0

#
# build third-party libraries
#
SUBDIRS = libraries

ifdef SUBDIRS
.PHONY : $(SUBDIRS)
$(SUBDIRS) : 
	@if [ -d $@ ]; then \
		$(MAKE) --no-print-directory --directory=$@ \
			CC=$(CC) CFLAGS="$(CFLAGS)" $(MAKECMDGOALS); \
	fi	
endif


THIRD_PARTY_DIR =libraries
CMOCKA_INCLUDE_DIR = $(THIRD_PARTY_DIR)/build-Debug/include
CMOCKA_LIBRARY = $(THIRD_PARTY_DIR)/build-Debug/lib/libcmocka.a

cmocka : $(SUBDIRS)

CFLAGS += -I $(CMOCKA_INCLUDE_DIR)

#
# quick and dirty build rules to demonstrate testing, not good build
# system practices.
#

#
# library
#
LIB_SRCS = \
	cirbuff.c 

LIB_OBJS = $(LIB_SRCS:%.c=%.o)

LIB_HEADERS = $(LIB_SRCS:%.c=%.h)

LIB = libutils.a

#
# main executable
#
EXE_SRCS = Main.c
EXE_OBJS = $(EXE_SRCS:%.c=%.o)

EXE = circbuf.out

#
# tests
#
TEST_QUADRATIC_SRCS = \
	test_cirbuff.c

TEST_QUADRATIC_OBJS = $(TEST_QUADRATIC_SRCS:%.c=%.o)

TEST_QUADRATIC_EXE = test_cirbuf.out


#
# Generic rule to generate objects
#
%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(LIB) : $(LIB_OBJS)
	$(AR) $(ARFLAGS) $@ $^

all : $(LIB) $(EXE)

$(EXE) : $(EXE_OBJS) $(LIB)
	$(CC) $(CFLAGS) -o $@ $^ -lm

test : $(TEST_QUADRATIC_EXE)
	./$(TEST_QUADRATIC_EXE)

$(TEST_QUADRATIC_EXE) : $(TEST_QUADRATIC_SRCS) $(LIB)
	$(CC) $(CFLAGS) -o $@ $^ $(CMOCKA_LIBRARY) -lm


.PHONY : clean
clean : FORCE
	-rm -rf *~ *.o $(LIB) $(EXE) $(TEST_QUADRATIC_EXE) *.dSYM/

.PHONY : clobber
clobber : $(SUBDIRS) clean


FORCE :
