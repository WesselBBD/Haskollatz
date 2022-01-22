# Haskollatz
Haskollatz is a *Q U E S T I O N A B L E* Haskell implemetation of the famous [Collatz Conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture) Math Problem.

It is a **slightly** optimized Delay (steps to 1) calculator.

## Usage

`Haskollatz [-h] [number ...]`

### Flags

- -h | Prints Help

### Parameters

Haskollatz takes 1 number or multiple numbers and then outputs the amount of steps that number took to reach 1 (it's delay)

```
=#> Haskollatz 12345
50
```

Haskollatz can handle multiple input
```
=#> Haskollatz 1 2 3 4 5
[1, 1, 7, 2, 5]
```

Negative numbers are not computed and will return 0 if entered
```
=#> Haskollatz -50 -9 5 0
[0, 0, 5, 0]
```

Input is not checked and bad input will result in a 'Prelude.read: no parse' error
```
=#> Haskollatz I am not a number
Haskollatz.exe: Prelude.read: no parse
```

Haskollatz is implemented with the unbounded `Integer` as it's number type so feel free to go wild!
```
=#> Haskollatz 565665168465169846549846549815649168461941651489416549164916845649164 6549816546519846511648164651643519831498164906465198 4654986168460891654981654618646149816546189465149816 465148916846519846546818461984654986164681686516
[1485,1271,1118,810]
```

## Building

Please download and install the [Haskell Tool-stack](https://docs.haskellstack.org/en/stable/install_and_upgrade/) for your prefered operationg system.
Steps for windows are included here.

### Installing Stack
#### Using winget
You can install `Stack` with winget using the command below:
```
CMD \> winget install commercialhaskell.stack
```

### Cloning the Repo
Using git (or the zip from GitHub) clone the repo to a folder of your choice.
```
=#> git clone https://github.com/WesselBBD/Haskollatz Haskollatz
```

### Building Haskollatz
Inside the root directory of the project launch your favourite terminal and build the project!
```
=#> stack build
```

Alternatively you can *Build 'n Run* Haskollatz directly through stack.
```
=#> stack run -- 1234
```

Alter-Alternatively you can `install` Haskollatz into your path by running:
```
=#> stack install
=#> ...
=#> Haskollatz -h
```
*Remember to reload your CMD env!*


