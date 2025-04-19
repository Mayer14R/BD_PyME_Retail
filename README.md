
# 📦 Base de Datos para PyME del Sector Retail

Este repositorio contiene el diseño y desarrollo de una base de datos relacional implementada en **SQL Server Express 2019** para una PyME del sector detallista ("retail"). El proyecto fue elaborado como parte del estudio de caso de la asignatura **Bases de Datos** en la Licenciatura en Ingeniería en Ciberseguridad.

## 🧠 Objetivo

Diseñar e implementar una base de datos que gestione eficientemente las entidades clave del negocio: **Productos**, **Clientes** y **Ventas**, incluyendo relaciones, normalización y medidas de seguridad.

## 📂 Contenido

- [`BD_PyME_Retail.sql`](./BD_PyME_Retail.sql): Script con el código SQL completo para crear las tablas, relaciones, insertar datos de prueba y realizar consultas.
- [`Informe_BD_PyME_Retail.docx`](./Informe_BD_PyME_Retail.docx): Informe detallado en formato Word.
- [`Informe_BD_PyME_Retail.pdf`](./Informe_BD_PyME_Retail.pdf): Versión en PDF del informe para presentación académica.

## 🛠️ Estructura de la Base de Datos

- **Productos**: Contiene información del inventario.
- **Clientes**: Datos personales y de contacto.
- **Ventas**: Transacciones realizadas, relacionadas a clientes.
- **DetalleVenta**: Tabla puente para representar ventas de múltiples productos.

## 🔐 Seguridad Implementada

- Control de acceso por roles.
- Protección de datos sensibles de clientes.
- Copias de seguridad y auditorías de acceso.

## 🚀 Requisitos

- SQL Server Express 2019 o superior
- SQL Server Management Studio (SSMS)

## 🧪 Ejecución

1. Clona este repositorio o descarga los archivos.
2. Abre `BD_PyME_Retail.sql` con SSMS.
3. Ejecuta el script por secciones (CREATE, INSERT, SELECT).
4. Verifica los resultados y realiza pruebas adicionales si deseas.

## 📚 Créditos y Bibliografía

Este proyecto se basa en principios de diseño de bases de datos, normalización, y seguridad de la información:

- Coronel, C., & Morris, S. (2020). *Database Systems*.
- Elmasri & Navathe (2017). *Fundamentals of Database Systems*.
- ISO/IEC 27001 (2013). Seguridad de la información.

---

¡Gracias por visitar este repositorio! Para dudas o comentarios, no dudes en crear un issue.
