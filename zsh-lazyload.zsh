function lazyload {  
  local seperator='--'
  local seperator_index=${@[(ie)$seperator]}
  local cmd_list=(${@:1:(($seperator_index - 1))}); 
  local load_cmd=${@[(($seperator_index + 1))]};   
   
  if [[ ! $load_cmd ]]; then
    >&2 echo "[ERROR] lazyload: No load command defined"
    >&2 echo "  $@"
    return 1
  fi
  
  # check if lazyload was called by placeholder function
  if (( ${cmd_list[(Ie)${funcstack[2]}]} )); then
    unfunction $cmd_list
    eval "$load_cmd"
  else
    # create placeholder function for each command
    local cmd
    for cmd in $cmd_list; eval "function $cmd { lazyload $cmd_list $seperator ${(qqqq)load_cmd} && $cmd \"\$@\" }"
  fi
}

### Notes ###
# ${funcstack[2]}      resolves to the caller function name
# ${ARRAY[(Ie)$value]} resolves to the index of the VALUE within the ARRAY (I - Index; e - exact match, no pattern match)
# (($NUMBER))          resolves to false for NUMBER 0, else true
# ${(qqqq)VAR}         resolves to quoted value in the format of $'...'
