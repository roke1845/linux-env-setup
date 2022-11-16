
output_message() {
  echo -e "\e[32m$1\e[0m"
}

setup_dockerfile_syntax () {
  git clone https://github.com/ekalinin/Dockerfile.vim.git
  cd Dockerfile.vim
  make install
}

setup_ncdu () {
  check=$(which ncdu)
  if [ $? -eq 1 ]; then  
    cp ncdu/ncdu /bin/ncdu
  else 
    output_message "ncdu exists"
  fi
} 

output_message "Setup Dockerfile Syntax"
setup_dockerfile_syntax
output_message "Dockerfile Syntax setuped"

output_message "Setup ncdu"
setup_ncdu
output_message "ncdu setuped"
