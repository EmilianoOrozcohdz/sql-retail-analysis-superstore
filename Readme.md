#  Análisis de Negocio: Superstore Sales (SQL + Docker)

Este proyecto simula un análisis para una cadena de retail internacional. Utilicé **PostgreSQL** montado en un contenedor de **Docker** para gestionar y analizar más de 10,000 registros de ventas.

## Tecnologías Utilizadas
* **Base de Datos:** PostgreSQL 15 (En Docker)
* **Gestor:** DBeaver
* **Lenguaje:** SQL (PostgreSQL Dialect)

##  Cómo ejecutar este proyecto
1. Copiar este repositorio.
2. Tener **Docker Desktop** instalado.
3. En la terminal ejecutar el siguiente comando: `docker-compose up -d`.
4. Conectar DBeaver al puerto `5432` y ejecuta los scripts .sql en la carpeta `/scripts`.

##  Análisis Realizados

### 1. Rentabilidad Regional (CTEs & Window Functions)
Identifiqué las 5 subcategorías más rentables por cada región. 
* **Respuesta:** Las fotocopiadoras son el producto con el mayor volumen de ganancia para casi todas las regiones.

### 2. Eficiencia Logística (Shipping Lag)
Analicé el tiempo promedio de envío para cada `Ship Mode` ordenado por regiones.
* **Respuesta:** El modo de envio "Standard Class" presenta promedios de envio de 4 dias, lo que sugiere una oportunidad de optimizar la eficiencia de envios, especialmente para la region `West` que presenta un promedio de 5 dias de envio.

### 3. Identificación de Clientes VIP (Principio de Pareto)
Implementé un cálculo de **suma acumulada** para identificar al 20% de clientes que generan el 80% de la utilidad.
* **Respuesta:** Dado que se tiene un aproximado de 800 clientes 150 de ellos corresponden al 80% de la utilidad de la empresa lo que afirma la hipotesis del 20% de clientes que generan el 80% de utilidad. Ademas se encontro que 11 clientes representan el 20% de la utilidad de la empresa. Lo que perimite enfocar una retencion de alto impacto para dichos clientes.

##  Contacto
[Emiliano Orozco Hernandez] - [(https://www.linkedin.com/in/emiliano-orozco-hern%C3%A1ndez-6243813a9/?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BxjjXqRu1TSSPSxQQd%2FgMcg%3D%3D)]