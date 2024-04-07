# Scripting practice: for loops

# for {initialization} {test} {increment} {commands}

# try first: iterate and print result
# try second: open a file, write results to file, close file

set file [open results_002.dat w]

for {set x 0} {$x <= 10} {incr x} {

set result [expr -3*$x]
#puts $result
puts $file $result

}

close $file

# If running through VMD on command line, put 'exit' at the end to leave VMD
exit