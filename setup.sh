
output_message() {
  echo -e "\e[32m$1\e[0m"
}

setup_dockerfile_syntax () {
  git clone https://github.com/ekalinin/Dockerfile.vim.git
  cd Dockerfile.vim
  make install
}


output_message "Setup Dockerfile Syntax"
setup_dockerfile_syntax
