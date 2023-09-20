#!/bin/bash

_sgpt_completion() {
    local current_word
    current_word="${COMP_WORDS[COMP_CWORD]}"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=($(compgen -W "--shell --describe-shell --code --editor --cache --chat --repl --show-chat --list-chats --role --create-role --show-role --list-roles --install-integration" -- "${current_word}"))
    else
        case "${COMP_WORDS[1]}" in
            --shell)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --describe-shell)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --code)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --editor)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --cache)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --chat)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --repl)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --show-chat)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --list-chats)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --role)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --create-role)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --show-role)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --list-roles)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            --install-integration)
                COMPREPLY=($(compgen -W "--prompt --model --temperature --top-probability" -- "${current_word}"))
                ;;
            *)
                COMPREPLY=()
                ;;
        esac
    fi
}

complete -F _sgpt_completion sgpt
