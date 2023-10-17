let g:coderunner#code_type="Compiled"

let g:coderunner#compile_command=' g++ -o "' . expand('%:r') . '"  "' . expand('%:p') . '" '

let g:coderunner#run_command='"'.expand('%:r') . '.exe"'
