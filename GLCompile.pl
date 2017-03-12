#!/usr/bin/perl

use Term::ANSIColor;

print color('MAGENTA');

$usage = "GLCompile.pl /home/<user>/GLPROJECT/<first argument> \n or \ndefault:  /home/<user>/GLPROJECT/CppApplication_1/main.cpp \n";

if($ARGV[0] eq '-?')
 {print $usage;}
  else{
  if($ARGV[0])
{ system "g++ -w -lGL -lglut -lGLU /home/".getpwuid( $< )."/GLPROJECT/".$ARGV[0]."  -o GL_EXEC_FILE";}
else
{ system "g++ -w -lGL -lglut -lGLU /home/".getpwuid( $< )."/GLPROJECT/CppApplication_1/main.cpp -o GL_EXEC_FILE";}
 }

print color('RESET');
