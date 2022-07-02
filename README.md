# Linux-Shell-programming

## 1 Variable

in Shell, you can create a varibale with `VARIABLE_NAME=value`

by convention, use uppercase for variable name, and no space betwwen `=`.

when you need to output an varaible, put `$` before variable name.

if you want to assign command output to an varibale, wrap command with `$(command)` or
```shell
VARIABLE_NAME=`command`
```

notice, when use variable inside a quote, use double quote "", single quote will ignore variable.

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

### 1.4 expression in Shell

to declare an expression, there are three ways

```shell

$((expression))

$[expression]

expr num1 + num2

```

if you want to assign an expression to  a variable, use \`\`

```shell
A=3
B=6
C=`$(($A+$B))`

echo $C
```

### 1.5 comparison operator

`-eq` =
`-ne` !=
`-gt` >
`-ge` >=
`-lt` <
`-le` <=


## 2. Conditions

### 2.1 if elif control

```shell
if [ condition ]
then command
elif [ condition ]
then command
else
command
fi
```
 example

 ```Shell
 #!/bin/bash

 if [ $1 -lt 60 ]
 then
 	echo "you failed your exam"
 elif [ $1 -ge 60 ]
 then
 	echo "congratulations"
 fi
```

### 2.2 case control


```shell
case  $variable-name  in
             pattern1|pattern2|pattern3)       
         command1
                 ...
                 ....
                 commandN
                 ;;
             pattern4|pattern5|pattern6)
         command1
                 ...
                 ....
                 commandN
                 ;;            
             pattern7|pattern8|patternN)       
         command1
                 ...
                 ....
                 commandN
                 ;;
             *)              
esac  
```  

```shell

#!/bin/bash

case $1 in
	1)
		echo "janurary"
		;;
	2)
		echo "february"
		;;
	3)
		echo "march"
		;;
	4)
		echo "April"
		;;
	*)
		echo "other month"
		;;
esac


```

<hr />

### 2.3 for loop

```Shell
for index in  something

do
  //code to run

done
```

```Shell
#!/bin/bash

for i in $*
do
	echo $i
done

echo ========================================

for j in $@
do
	echo $j
done

echo ========================================

for k in "$*"
do
	echo $k
done

echo ========================================

for l in "$@"
do
	echo $l
done
```

or the  (i =1; i < 100; i ++) style loop

```Shell
#!/bin/bash

sum=0

for ((i=0; i <= $1; i++))
do
	sum=$(($sum + $i))
	echo "sum is now @ $sum"
done
```

### 2.4 while loop

```Shell
#!/bin/bash

i=$1

while [ $i -ge 0 ]
do
	i=$(($i-1))
echo $i
done

```

### 2.5 The read prompt

read is kinda like prompt in javascript, -t for timeout, -p for message

```Shell
read -p "the message you want to display" VARIABLE1

echo $VARIABLE1

read -t 10 -p "message to display" VARIABLE2

echo $VARIABLE2
```

```Shell
#!/bin/bash

read -p "please enter the value for name  " NAME

echo "you name is $NAME"

read -t 10 -p "What is your age?  " AGE
echo "So you are $AGE years old?"

```


## 3. function

### 3.1 builtin function

`basename` will return the file name

```Shell
basename /home/chao/Desktop/Linux-Shell-programming/position.sh
basename /home/chao/Desktop/Linux-Shell-programming/position.sh .sh
```
will respectively return  `postion.sh` and `psotion`, as directory path is trimmed.
