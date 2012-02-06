# Foundations coursework test files tester thingamabobby
#   Author: Simon Walker
#
# Tests coursework using a set of test files.
#
# How to use this makefile:
#  1) add a line to the top of YOUR makefile like this:
# runcmd = COMMAND
#        where COMMAND is the command to run your program.
#  2) add a command to the bottom of YOUR makefile like this:
# include test-files/Makefile
#  3) just run "make jbw" (or any other target) to test that set of files.
#     and see the file differences on the console (whitespace is automatically
#     ignored)
#
# How to add to this makefile:
#  1) pick the name of a target which hasn't been used yet
#  2) put a sample input and output file into this directory
#  3) copy an existing target, and tweak the filenames under the cp statement 
#     and the diff statement to match the ones you've added.
#  4) make sure indentation is done with tabs.

jbw:
	rm -f input
	cp test-files/input input
	$(runcmd)
	diff -wu output test-files/output

stw:
	rm -f input
	cp test-files/test1 input
	$(runcmd)
	diff -wu output test-files/test1-output