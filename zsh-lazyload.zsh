function lazyload {
  local load_cmd=$1; shift
  local cmd_list=($@); shift $#

  for cmd_name in $cmd_list; do
    alias $cmd_name="lazyload: '$load_cmd' $cmd_list; $cmd_name"
  done
}

function lazyload: {
  local load_cmd=$1; shift
  local alias_list=($@); shift $#
  
  unalias $alias_list
  eval $load_cmd
  
  if [[ ${(kM)functions:#$load_cmd} ]] && [[ $load_cmd == 'load:'* ]]; then
    unfunction $load_cmd
  fi
}
