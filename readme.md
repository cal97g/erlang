# Erlang

Use Erlang when your application needs to be:

- able to handle a large number of concurrent activities
- distributable over a network of computers
- fault tolerant to both software and hardware errors
- scalable
- easily upgradeable and reconfigurable without having to stop and restart the application itself
- responsiveness is a requirement 



## Running Erlang files

- ```erl``` open the erlang cli

- ```c(module)``` compile the module

- ```module:method()```. run some method

  

## Basic Syntax



### Modules

In erlang code is divided into modules. Modules consist of a sequence of attributes and function declarations. It's the equivalent of a namespace.

```erlang
-module(ModuleName)
```

The module name needs to be the same as the filename with the extension ```.erl``` otherwise import statements will not work as intended.

To import a module you can use the ```-`import``` syntax.

```-import(ModuleName, [FunctionName/NoParams])```

for example, HelloModule defines a function HelloWorld which takes one parameter. To import it use:

```-import(HelloModule, [HelloWorld/1])```

### Syntax

#### Comments

```erlang
%comments look like thise
```



#### Hello World

```erlang
-module(HelloWorld). % This is the HelloWorld module
-export([hello_world/0, add/2]). % Export the start method with 0 parameters

hello_world()->
	io.fwrite("Hello, world!\n").

% Method parameters need to start with an upper case letter or an underscore.
add(A, B) ->
    A + B.

```



#### Variables

- Variables cannot change
- Their type is inferred
- Can call functions before they have been defined
- Variable names must start with a capital or underscore ala ```Name```, ```_Age```



#### Comparison

- ```=:=``` True if the value and type is equal. Ie ```1 =:= 1``` is ```true``` while ```1 =:= 1.0``` is ```false```
- ```=/=``` True if the value or type are not equal. ```1 =/= 1``` is ```false``` while ```1 =/= 1.0``` is ```true```
- 

