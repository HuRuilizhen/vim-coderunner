let g:coderunner#code_type="Compiled"

let g:coderunner#compile_command=' javac "' . expand('%:p') . '" -d "' . expand('%:h') . '"'

let g:coderunner#run_command=' java ' . ' -classpath "' . expand('%:h') . '" ' . expand('%:t:r') 
