# Scripting practice: molecules in VMD

# Load the 'frag01.pdb' PDB file found in the 'data' directory
mol load pdb data/frag01.pdb

# Print specific details of loaded structure
puts "Molecular Info. on NUM: [molinfo num]"
molinfo top
puts "Molecular Info. on number of atoms: [molinfo top get numatoms]"
puts "Molecular Info. on number of frames: [molinfo top get numframes]"
puts "Molecular Info. on filename: [molinfo top get filename]"

set sel [atomselect top "name P"]

# Print information about this selection, either individual
$sel get resid
puts ""

# ... or in lists of data
$sel get {resname resid}
puts ""
$sel get {x y z}
puts ""

# For an easier way to read the previous two, use the foreach loops, first defining and then iterating over the lists
set residue_list [$sel get {resname resid}]
foreach res $residue_list {
puts $res
}
# Save memory by deleting lists after use
unset residue_list
puts ""

set residue_pos_list [$sel get {x y z}]
foreach res $residue_pos_list {
puts $res
}
puts ""
unset residue_pos_list

# The 'measure' command has a set of algorithms useful in molecular analysis. 
# Such as getting the geometric center of a selection
measure center $sel
puts ""

# ... and returning the minimum and maximum {x y z} values of the selection into two vectors
measure minmax $sel

# Before we move on, let's split these two vectors up and print only the first element in each
# To do both, we will need to use the lindex command that allows us to select from the indices of the list
set min_vector [lindex [measure minmax $sel] 0]
puts [lindex $min_vector 0]
puts ""
set max_vector [lindex [measure minmax $sel] 1]
puts [lindex $max_vector 0]
puts ""


# Back to 'measure', we can also get the radius of gyration of the selection
set compaction [measure rgyr [atomselect top all]]
puts "Radius of gyration: $compaction"

# This is too long. Use round with line formatting to print out a respectable output.
puts "Radius of gyration: [format "%.4f" $compaction]"
unset compaction
puts ""

exit