declare -gA _lazyload
function lazyload {
  if [[ $1 == ':' ]]
  then
    shift
    local cmd=$funcstack[2]
    unfunction $cmd
    local load_cmd=${_lazyload[$cmd]}
    eval $load_cmd
    $cmd $@
  else
    local seperator='--'
    local seperator_index=${@[(ie)--]}
    local cmd_list=(${@:1:(($seperator_index - 1))}); 
    local load_cmd=${@[(($seperator_index + 1))]};
    local cmd
    for cmd in $cmd_list
    do
      _lazyload[$cmd]=$load_cmd
      function $cmd {
        lazyload : $@
      }
    done
  fi
}

