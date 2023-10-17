function! g:coderunner#SaveAndCompileCode() 
    normal :w

    if !exists('g:coderunner#code_type')
        echo "coderunner doesn't support current code type: " . expand('%:e')
        return
    endif

    let l:code_type = g:coderunner#code_type 
    if l:code_type == "Interpreted"
        return
    endif
    
    let l:compile_command = g:coderunner#compile_command
    execute "!" . l:compile_command
endfunction

function! g:coderunner#RunCode()
    if !exists('g:coderunner#code_type')
        echo "coderunner doesn't support current code type: " . expand('%:e')
        return
    endif

    call g:coderunner#SaveAndCompileCode()
    
    let l:run_command = g:coderunner#run_command
    execute "!" . l:run_command
endfunction
