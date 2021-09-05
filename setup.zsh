#!/usr/bin/env zsh

bin_dir=~/bin/zsh
copy -pr bin $bin_dir

echo export ZSH_COMPLETION_FRAMEWORK_BASE_DIR=~/zsh
echo export ZSH_COMPLETION_FRAMEWORK_BIN_DIR=~/bin/zsh


