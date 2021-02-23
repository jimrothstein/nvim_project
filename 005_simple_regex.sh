#!/bin/bash
##############
# use VIM search, /
# simple regex examples
##############


# :nohls   turns OFF highlighting

##############
# match exactly ONE   /[1234]
this line has a 1 character
no numbers
this line has a 2 character
this line has a 12 character
##############

##############
# [^fF]1 do NOT match either one or both
this line has an f
this line has an F
this line has an F1
but this line has neither 1
and this line   almost has F1		# no match
and this line F almost has 1		# match
and this line   almost has 1		# match
##############




this line contains 'single quotes' in sentence
thie line containes "double quotes" in sentence
