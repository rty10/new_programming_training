# Scripting practice: molecules in VMD

# Load the 'circ01.pdb' PDB file found in the 'data' directory
mol new data/circ01.pdb

# Select all phosphorous atoms
set p_atoms [atomselect top "name P"]

# Get the indices of the phosphorous atoms
set p_index [$p_atoms get index]

# measure bond {$index1 $index2} frame <frame>
# measure angle {$index1 $index2 $index3} frame <frame>
# measure dihed {$index1 $index2 $index3 $index4} frame <frame>
# frame <frame> ↔ frame all ↔ (current frame by default)
# first <frame> last <frame> step <step>

#measure bond "$p_index" first 0 last 25 ;# distances for frames 0 - 25

#set bond_list [measure bond "$fe_index $o2_index" first 0 last 100 ]

#for {set i 0} {$i <= 100} {incr i} {

#puts "frame $i bond [lindex $bond_list $i]"}

exit