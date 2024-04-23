# Cobol Sales Statistics Calculator

This project is a sales statistics calculator developed in `COBOL`. It provides an efficient solution for calculating and analyzing sales data, allowing users to gain valuable insights into their product and sales performance.

## Features

- Calculate sales statistics, including total revenue, sales by product, and other relevant indicators
- Efficient processing of large sales data sets
- Intuitive and easy-to-use user interface

## Compiler install

Download the program [OpenCobolIDE](https://launchpad.net/cobcide/+download) available for Windows, GNU/Linux and Mac OSX.

To install only the compiler on `GNU/Linux`

```bash
# Install gnucobol4
sudo apt-get install gnucobol4
```

> [!NOTE]
> If when trying to install the compiler it generates the error `Unable to locate package gnucobol4`, execute
> ```bash
> sudo apt-get update
> ```

## Compile program in GNU/Linux

To compile the program in the `/bin` folder

```bash
# Create folder /bin
mkdir bin
```

- Compile program

```bash
# Compile SalesDataProcessor
cobc -x -o bin/SalesDataProcessor src/SalesDataProcessor.cbl
```

- To run main program execute

```bash
# Run SalesDataProcessor
bin/SalesDataProcessor
```
## Contributions

Contributions are welcome! If you have ideas to improve this project or find any errors, do not hesitate to open an [issue](https://github.com/erickfierro/cobol-sales-statistics-calculator/issues) or send a [pull request](https://github.com/erickfierro/cobol-sales-statistics-calculator/pulls)