#Scripting practice: 'set', 'puts', 'expr'

set x 10

puts "the value of x is:$x"

set text "some text"

puts "the value of text is:$text"

expr 3-8

set result [expr -3*$x]

puts $result

# If running through VMD on command line, put 'exit' at the end to leave VMD
exit