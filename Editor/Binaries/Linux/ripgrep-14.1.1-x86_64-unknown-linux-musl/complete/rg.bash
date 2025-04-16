_rg() {
  local i cur prev opts cmds
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  cmd=""
  opts=""

  for i in ${COMP_WORDS[@]}; do
    case "${i}" in
      rg)
        cmd="rg"
        ;;
      *)
        ;;
    esac
  done

  case "${cmd}" in
    rg)
      opts="--regexp -e --file -f --after-context -A --before-context -B --binary --no-binary --block-buffered --no-block-buffered --byte-offset -b --no-byte-offset --case-sensitive -s --color --colors --column --no-column --context -C --context-separator --no-context-separator --count -c --count-matches --crlf --no-crlf --debug --dfa-size-limit --encoding -E --no-encoding --engine --field-context-separator --field-match-separator --files --files-with-matches -l --files-without-match --fixed-strings -F --no-fixed-strings --follow -L --no-follow --generate --glob -g --glob-case-insensitive --no-glob-case-insensitive --heading --no-heading --help -h --hidden -. --no-hidden --hostname-bin --hyperlink-format --iglob --ignore-case -i --ignore-file --ignore-file-case-insensitive --no-ignore-file-case-insensitive --include-zero --no-include-zero --invert-match -v --no-invert-match --json --no-json --line-buffered --no-line-buffered --line-number -n --no-line-number -N --line-regexp -x --max-columns -M --max-columns-preview --no-max-columns-preview --max-count -m --max-depth -d --max-filesize --mmap --no-mmap --multiline -U --no-multiline --multiline-dotall --no-multiline-dotall --no-config --no-ignore --ignore --no-ignore-dot --ignore-dot --no-ignore-exclude --ignore-exclude --no-ignore-files --ignore-files --no-ignore-global --ignore-global --no-ignore-messages --ignore-messages --no-ignore-parent --ignore-parent --no-ignore-vcs --ignore-vcs --no-messages --messages --no-require-git --require-git --no-unicode --unicode --null -0 --null-data --one-file-system --no-one-file-system --only-matching -o --path-separator --passthru --pcre2 -P --no-pcre2 --pcre2-version --pre --no-pre --pre-glob --pretty -p --quiet -q --regex-size-limit --replace -r --search-zip -z --no-search-zip --smart-case -S --sort --sortr --stats --no-stats --stop-on-nonmatch --text -a --no-text --threads -j --trace --trim --no-trim --type -t --type-not -T --type-add --type-clear --type-list --unrestricted -u --version -V --vimgrep --with-filename -H --no-filename -I --word-regexp -w --auto-hybrid-regex --no-auto-hybrid-regex --no-pcre2-unicode --pcre2-unicode --sort-files --no-sort-files <PATTERN> <PATH>..."
      if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
      fi
      case "${prev}" in

        --regexp)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -e)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --file)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -f)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --after-context)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -A)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --before-context)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -B)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --binary)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-binary)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --block-buffered)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-block-buffered)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --byte-offset)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -b)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-byte-offset)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --case-sensitive)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -s)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --color)
          COMPREPLY=($(compgen -W "never auto always ansi" -- "${cur}"))
          return 0
          ;;
        --colors)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --column)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-column)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --context)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -C)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --context-separator)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-context-separator)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --count)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -c)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --count-matches)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --crlf)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-crlf)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --debug)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --dfa-size-limit)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --encoding)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -E)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-encoding)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --engine)
          COMPREPLY=($(compgen -W "default pcre2 auto" -- "${cur}"))
          return 0
          ;;
        --field-context-separator)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --field-match-separator)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --files)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --files-with-matches)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -l)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --files-without-match)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --fixed-strings)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -F)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-fixed-strings)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --follow)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -L)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-follow)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --generate)
          COMPREPLY=($(compgen -W "man complete-bash complete-zsh complete-fish complete-powershell" -- "${cur}"))
          return 0
          ;;
        --glob)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -g)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --glob-case-insensitive)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-glob-case-insensitive)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --heading)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-heading)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --help)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -h)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --hidden)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -.)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-hidden)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --hostname-bin)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --hyperlink-format)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --iglob)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-case)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -i)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-file)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-file-case-insensitive)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-file-case-insensitive)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --include-zero)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-include-zero)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --invert-match)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -v)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-invert-match)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --json)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-json)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --line-buffered)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-line-buffered)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --line-number)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -n)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-line-number)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -N)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --line-regexp)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -x)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --max-columns)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -M)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --max-columns-preview)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-max-columns-preview)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --max-count)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -m)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --max-depth)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -d)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --max-filesize)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --mmap)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-mmap)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --multiline)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -U)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-multiline)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --multiline-dotall)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-multiline-dotall)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-config)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-dot)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-dot)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-exclude)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-exclude)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-files)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-files)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-global)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-global)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-messages)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-messages)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-parent)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-parent)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-ignore-vcs)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --ignore-vcs)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-messages)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --messages)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-require-git)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --require-git)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-unicode)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --unicode)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --null)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -0)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --null-data)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --one-file-system)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-one-file-system)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --only-matching)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -o)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --path-separator)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --passthru)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pcre2)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -P)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-pcre2)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pcre2-version)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pre)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-pre)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pre-glob)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pretty)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -p)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --quiet)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -q)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --regex-size-limit)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --replace)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -r)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --search-zip)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -z)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-search-zip)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --smart-case)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -S)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --sort)
          COMPREPLY=($(compgen -W "none path modified accessed created" -- "${cur}"))
          return 0
          ;;
        --sortr)
          COMPREPLY=($(compgen -W "none path modified accessed created" -- "${cur}"))
          return 0
          ;;
        --stats)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-stats)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --stop-on-nonmatch)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --text)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -a)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-text)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --threads)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -j)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --trace)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --trim)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-trim)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --type)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -t)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --type-not)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -T)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --type-add)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --type-clear)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --type-list)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --unrestricted)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -u)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --version)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -V)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --vimgrep)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --with-filename)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -H)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-filename)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -I)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --word-regexp)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        -w)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --auto-hybrid-regex)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-auto-hybrid-regex)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-pcre2-unicode)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --pcre2-unicode)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --sort-files)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
        --no-sort-files)
          COMPREPLY=($(compgen -f "${cur}"))
          return 0
          ;;
      esac
      COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
      return 0
      ;;
  esac
}

complete -F _rg -o bashdefault -o default rg
