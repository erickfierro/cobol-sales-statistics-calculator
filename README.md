# Cobol Sales Statistics Calculator

This project is a sales statistics calculator developed in `COBOL`. It provides an efficient solution for calculating and analyzing sales data, allowing users to gain valuable insights into their product and sales performance.

## Features

- Calculate sales statistics, including total revenue, sales by product, and other relevant indicators
- Efficient processing of large sales data sets
- Intuitive and easy-to-use user interface

## [CSV](https://github.com/erickfierro/cobol-sales-statistics-calculator/blob/main/data.csv) File Structure

### Description
This CSV file is used to store sales data, including the product name, unit price, and quantity sold. It is part of the COBOL sales statistics calculator project.

![Diagrama de flujo](https://github.com/erickfierro/cobol-sales-statistics-calculator/blob/main/assets/Diagrama_de_flujo.jpeg){ width=100px }

### Format

The columns of the CSV file are as follows:
- **Product Name**: Name of the product.
- **Unit Price**: Unit price of the product in the local currency.
- **Quantity Sold**: Number of units sold.

### Example

Below is an example of some rows from the CSV file:

| Product Name                                 | Unit Price | Quantity Sold |
|----------------------------------------------|------------|---------------|
| Laptop HP Pavilion 15.6'                     | 2,400,000  | 20            |
| Smartphone Samsung Galaxy S21                | 3,000,000  | 15            |
| Wireless Headphones Apple AirPods Pro        | 937,500    | 30            |

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

Compile program

```bash
# Compile SalesDataProcessor
cobc -x -o bin/SalesDataProcessor src/SalesDataProcessor.cbl
```

To run main program execute

```bash
# Run run.sh
./run.sh
```
## Contributions

Contributions are welcome! If you have ideas to improve this project or find any errors, do not hesitate to open an [issue](https://github.com/erickfierro/cobol-sales-statistics-calculator/issues) or send a [pull request](https://github.com/erickfierro/cobol-sales-statistics-calculator/pulls)
