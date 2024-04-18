# Cobol Sales Statistics Calculator

This project is a sales statistics calculator developed in `COBOL`. It provides an efficient solution for calculating and analyzing sales data, allowing users to gain valuable insights into their product and sales performance.

## Features

- Calculate sales statistics, including total revenue, sales by product, and other relevant indicators
- Efficient processing of large sales data sets
- Intuitive and easy-to-use user interface

## Compiler install

Download the program [OpenCobolIDE](https://launchpad.net/cobcide/+download) available for Windows, GNU/Linux and Mac OSX.

To install only the compiler on `GNU/Linux`

- Downloads and builds a local cache of the list of available packages

```bash
sudo apt-get update
```

- Install gnucobol4

```bash
sudo apt-get install gnucobol4
```

## Compile programs in GNU/Linux

To compile the program in the `/bin` folder

- Create folder /bin

```bash
mkdir bin
```

- Compile programs one by one

```bash
cobc -x -o bin/SalesDataProcessor src/SalesDataProcessor.cbl
```
```bash
cobc -x -o bin/SalesStatisticsCalculator src/SalesStatisticsCalculator.cbl
```
```bash
cobc -x -o bin/ResultsPrinter src/ResultsPrinter.cbl
```

or run the following bash file

```bash
./compile.sh
```

- To run main program execute

```bash
bin/SalesDataProcessor
```
## Contributions

!Contributions are welcome! If you have ideas to improve this project or find any errors, do not hesitate to open an issue or send a pull request