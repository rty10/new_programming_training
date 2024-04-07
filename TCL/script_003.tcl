# Scripting practice: molecules in VMD

# Load the 'circ01.pdb' PDB file found in the 'data' directory
# mol new data/circ01.pdb
mol load pdb data/circ01.pdb


# Print details of loaded structure
mol list all


# The default representation is lines. Change to atomic spheres + cylindrical bonds (rep CPK)
 #-!- mol modstyle <repid> <molid> <style>
mol modstyle 0 top CPK


# From loaded molecule select all of the phosphorous atoms
# -!- 'top' is one of the various "molid" options and refers to the most recently loaded structure
set phosphates [atomselect top "name P"]
set carbons [atomselect top "name C*"]

# Print the number of all phosphorous atoms selected
puts "The number of phosphorous atoms is:[$phosphates num]"
puts "The number of carbon atoms is:[$carbons num]"


# Shift all of the phosphates away from the rest of the circle
$phosphates moveby {10 0 0} ;# translational motion in Cartesian coordinate vector
#$phosphates move [transaxis x 40 deg]  ;#transformation needed to rotate a selection about a specified axis


# Set the beta values in the structure to 0
set sel [atomselect top all]
$sel set beta 0

# Set the atomic radii to 1.0 and larger for phosphorous
$sel set radius 1.0
$phosphates set radius 2.0
