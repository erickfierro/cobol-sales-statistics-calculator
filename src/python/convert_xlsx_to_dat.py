import pandas as pd
import os

# Rutas de los archivos Excel
sales_file_path = '../../data/input/SALES.xlsx'
products_file_path = '../../data/input/PRODUCTS.xlsx'

# Definir los anchos fijos de las columnas
columns_widths = {
    'sales': {
        'Código de Producto': 10,
        'Cantidad Vendida': 4,
        'Fecha de Venta': 8
    },
    'products': {
        'Código de Producto': 10,
        'Nombre del Producto': 20,
        'Descripción': 50,
        'Precio Unitario': 10
    }
}

# Valida la existencia de los archivos
def validate_file_exists(file_path):
    if not os.path.exists(file_path):
        return False
    return True

# Formatea las filas del DataFrame
def format_row(row, column_widths):
    formatted_row = ''
    for col, width in column_widths.items():
        if col == 'Precio Unitario':
            formatted_row += f'{format(row[col], ".2f"):<{width}};'
        elif col == 'Fecha de Venta':
            formatted_row += f'{str(row[col].date()):<{width}};'
        else:
            formatted_row += f'{str(row[col]):<{width}};'
    return formatted_row.rstrip(';')

# Procesa y guarda el DataFrame en CSV
def save_csv_dataframe(df, column_widths, output_path):
    formatted_rows = df.apply(format_row, axis=1, column_widths=column_widths)
    header = ';'.join([f'{col:<{width}}' for col, width in column_widths.items()])
    formatted_rows = pd.concat([pd.Series(header), formatted_rows])
    formatted_rows.to_csv(output_path, index=False, header=False, sep='\n')

if __name__ == "__main__":
    # Valida que los archivos existan antes de leerlos
    if validate_file_exists(sales_file_path) and validate_file_exists(products_file_path):
        # Lee los archivos Excel
        df_sales = pd.read_excel(sales_file_path)
        df_products = pd.read_excel(products_file_path)

        # Procesa y guarda el DataFrame de ventas
        sales_output_path = '../../data/intermediate/SALES.csv'
        save_csv_dataframe(df_sales, columns_widths['sales'], sales_output_path)

        # Procesa y guarda el DataFrame de productos
        products_output_path = '../../data/intermediate/PRODUCTS.csv'
        save_csv_dataframe(df_products, columns_widths['products'], products_output_path)