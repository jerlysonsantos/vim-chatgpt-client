" myplugin.vim

" Define a new command called `MyPlugin`
command -nargs=* ChatGPT call ChatGptFuncion(<q-args>)

" Define the function that gets called when `MyPlugin` is run
function! ChatGptFuncion(text)
    " Run the external command and capture its output
    let output = system("chatgpt -c " . a:text)

    " Open a new split window and set its contents to the command output
    execute "new"
    execute "setlocal buftype=nofile"
    execute "setlocal bufhidden=wipe"
    execute "setlocal nobuflisted"
    execute "setlocal nonumber"
    execute "setlocal noswapfile"
    execute "setlocal nowrap"
    execute "setlocal readonly"
    execute "setlocal cursorline"
    execute "normal i" . output
endfunction

