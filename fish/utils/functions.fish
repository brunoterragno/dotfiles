# Create a new directory and enter it
function mkd
  mkdir -p "$argv"; cd "$argv"
end

function cd
  builtin cd $argv; ls
end

function node -d "Server-side JavaScript runtime" -w node
  __nvm_run "node" $argv
end

function npm -d "node package manager" -w npm
  __nvm_run "npm" $argv
end

function nvm
  if not type -q bass
    echo 'Bass is not installed please install it running fisher edc/bass'
    return
  end
  set -q NVM_DIR; or set -gx NVM_DIR ~/.nvm
  set -g nvm_prefix $NVM_DIR
  bass source $nvm_prefix/nvm.sh --no-use ';' nvm $argv
end
