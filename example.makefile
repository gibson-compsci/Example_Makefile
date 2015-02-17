#This Makefile was created by Cameron Gibson
#    for CSE320 Project 05

#DEFINING VARIABLES
#This will be the name of the file that you will run
EXE = proj05
#This is the list of file to be compiled
SOURCES = proj05.driver.c proj05.support.c
#or g++
CC = gcc
#all warnings
CFLAGS = -Wall
#or .cpp
OBJECTS = $(SOURCES:.c=.o)

#THESE DO THE WORK: (make and make clean)
$(EXE): $(OBJECTS)
    $(CC) $(CFLAGS) $^ -o $@
clean:
    $(RM) $(EXE) $(OBJECTS)

#LISTING PREREQUISITES
#use "gcc -MM *.c >> Makefile" to append prerequisites for every .c file
proj05.driver.o: proj05.driver.c \
  /user/cse320/Projects/project05.support.h
proj05.support.o: proj05.support.c


#or in c++ "g++ -MM *.cpp" or whatever file type you want
