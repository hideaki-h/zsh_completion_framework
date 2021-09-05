# Overview of zsh_completion_framework
zsh_completion_framework is a helpful framework to make scripts with completion.
It's based on object-oriented-like framework and developer just codes some concrete core functions.
As the result scirpts with completion are achieved.

In addition to the framework, it includes a sample implementation, git-do scripts.
git-do scripts is front-end of git to serve the follows.
- clone: create local repository from remote repository
- create: create local repository and attach to remote repository
- push: push local repository to remote repository

# architecture
User infetface of scripts is focused to only one "XXX-do" script.
By first argument of the script indicated(I call it as "DO"), concrete script/function will be called.
each of "DO" is associated to one concrete script and name of the script is as same as "DO".

"_XXX-do" script include compdef function for completion by zsh.
It also calls concrete script/function when completion 

Concrete script has several callback functions called by "XXX-do" and "_XXX-do".
- func_sub_do: execute the work(like class method) 
- func_sub_return_completion_do_argX: return arguments information for completion(like typelib in MS)
- func_sub_do_desc: return description of this do method
- func_sub_do_help: return arguments information for user

## file structure
+/
 + XXX-do
 + functions
 | + _XXX-do
 + do.XXX-do
 | + do1
 | + do2
 | ...
 + .do
 + + do.super

|file|role|
|-|-|
|XXX-do|abstracted controller|
|_XXX-do|abstracted modeler|
|doX|concrete controller/modeler|
|do.super|abstracted doX super class|

# setup

## clone

## install(file allocation)

## environmental variable setting
|variable|||
|-|-|-|
|ZSH_COMPLETION_FRAMEWORK_BIN_DIR|(mandatory)directory path where do.XXX-do is located||
|ZSH_COMPLETION_FRAMEWORK_BASE_DIR|(optional)directory path where setting, loggin file will be located(like etc, var)||

