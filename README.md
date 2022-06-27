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

