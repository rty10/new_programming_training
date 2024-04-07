usage: mol <command> [args...]

Molecules and Data:
  new [file name] [options...]       -- load file into a new molecule
  new atoms <natoms>                 -- generate a new molecule with 'empty' atoms
  addfile <file name> [options...]   -- load files into existing molecule
    options: type, first, last, step, waitfor, volsets, filebonds, autobonds,
             <molid> (addfile only)
  load <file type> <file name>       -- load molecule (obsolescent)
  urlload <file type> <URL>          -- load molecule from URL
  pdbload <four letter accession id> -- download molecule from the PDB
  cancel <molid>                     -- cancel load/save of trajectory
  delete <molid>                     -- delete given molecule
  rename <molid> <name>              -- Rename the specified molecule
  dataflag <molid> [set | unset] <flagname> -- Set/unset data output flags
  list [all|<molid>]                 -- displays info about molecules

Molecule GUI Properties:
  top <molid>                        -- make that molecule 'top'
  on <molid>                         -- make molecule visible
  off <molid>                        -- make molecule invisible
  fix <molid>                        -- don't apply mouse motions
  free <molid>                       -- let mouse move molecules
  active <molid>                     -- make molecule active
  inactive <molid>                   -- make molecule inactive

Graphical Representations:
  addrep <molid>                     -- add a new representation
  delrep <repid> <molid>             -- delete rep
  default [color | style | selection | material] <value>
  representation|rep <style>         -- set the drawing style for new reps
  selection <selection>              -- set the selection for new reps
  color <color>                      -- set the color for new reps
  material <material>                -- set the material for new reps
  modstyle <repid> <molid> <style>   -- change the drawing style for a rep
  modselect <repid> <molid> <selection>  -- change the selection for a rep
  modcolor <repid> <molid> <color>   -- change the color for a rep
  modmaterial <repid> <molid> <material> -- change the material for a rep
  repname <molid> <repid>            -- Get the name of a rep
  repindex <molid> <repname>         -- Get the repid of a rep from its name
  reanalyze <molid>                  -- Re-analyze structure after changes
  bondsrecalc <molid>                -- Recalculate bonds, current timestep
  ssrecalc <molid>                   -- Recalculate secondary structure (Cartoon)
  selupdate <repid> <molid> [on|off] -- Get/Set auto recalc of rep selection
  colupdate <repid> <molid> [on|off] -- Get/Set auto recalc of rep color
  scaleminmax <molid> <repid> [<min> <max>|auto] -- Get/set colorscale minmax
  drawframes <molid> <repid> [<framespec>|now] -- Get/Set drawn frame range
  smoothrep <molid> <repid> [smooth] -- Get or set trajectory smoothing value
  showperiodic <molid> <repid> [flags] -- Get or set periodic image display
  numperiodic <molid> <repid> <n>    -- Get or set number of periodic images
  showrep <molid> <repid> [on|off]   -- Turn selected rep on or off
  volaxes   <molid> <volID> <Xaxis> <Yaxis> <Zaxis> -- set vol axes
  voldelete <molid> <volID>          -- delete volumetric data
  volmove   <molid> <volID> <matrix> -- transform volumetric data
  volorigin <molid> <volID> <vector> -- set origin
  volscale  <molid> <volID> <vector> -- scale volume

Clipping Planes:
  clipplane center <clipid> <repid> <molid> [<vector>]
  clipplane color  <clipid> <repid> <molid> [<vector>]
  clipplane normal <clipid> <repid> <molid> [<vector>]
  clipplane status <clipid> <repid> <molid> [<mode>]
  clipplane num

See also the molinfo command
