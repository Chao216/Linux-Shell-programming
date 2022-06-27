# Linux-Shell-programming

## Table of Contents

### [1. Variable](#variable)



## 1 Variable <a name="variable"></a>

in Shell, you can create a varibale with `VARIABLE_NAME=value`

by convention, use uppercase for variable name, and no space betwwen `=`.

when you need to output an varaible, put `$` before variable name.

if you want to assign command output to an varibale, wrap command with `$(command)` or
```shell
VARIABLE_NAME=`command`
```
### 1.1 export and environment variable

if you want  a variable to be accessible globally in the mcahine, export it as a environment variable in `/etc/profile`

```shell
export VARIABLE_NAME=value
```
### 1.2 positional parameter

positional paramters are arguments that follows the command/shell

such as `command arg1 arg2`

`$0` refers to the command itsel

`$1` refers to the first arg

`$2` refers to the second arg

`$*` refers to all positional parameters

`$@ ` refers to all positional params

`$#` refers to number of args

### 1.3 internal variables

`$$` the PID of current process
`$!` the PID of last background process
`$?` the result of last bg process, if return 0, it means normal, not 0, something wrong.
