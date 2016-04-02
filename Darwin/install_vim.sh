if [ -d ~/.vim ]; then
echo 'wat'
  mv ~/.vim ~/.vim.timcosgrove.vimsetup.bak
fi
git clone https://github.com/timcosgrove/.vim.git ~/.vim
~/.vim/vim_setup.sh
