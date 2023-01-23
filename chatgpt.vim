" myplugin.vim

" Define a new command called `MyPlugin`
command! ChatGPT call ChatGptFuncion()

" Define the function that gets called when `MyPlugin` is run
function! ChatGptFuncion()
    " Define the message to pass to the chatgpt command
    let message = "insert your message"

    " Run the external command and capture its output
    let output = system("chatgpt -c " . shellescape(message))

    " Insert the output at the cursor position
    execute "normal i" . output
endfunction

