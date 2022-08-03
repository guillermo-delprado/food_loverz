# Readme
Este proyecto es una aplicacion web que su idea surgio viendo un video de youtube en donde una persona creaba una web para saber que lugares eran buenos para comer en 1 semana.

El proyecto es una web en la cual los restaurantes pueden agregar su negocio a la plataforma y empezar a recibir reviews para tener un mejor alcance, los usuarios pueden dejar reviews en los restaurantes a los que acudieron y añadir imagenes para que los demas usuarios puedan tomar en cuenta sus opiniones y asi tomar una mejor decision sobre a que restaurante acudir.

# Objetivo
Se requiere un sistema que permita la creación de restaurantes, reviews, comentarios.

# Requisitos funcionales:
- Debe permitir a los usuarios registrarse
- Debe permitir a los usuarios iniciar sesion
- Debe permitir la creación de restaurantes con sus parametros
- Debe permitir la creación de reviews con sus parametros, estos seran relacionados a los restaurantes
- Debe permitir la creación de reviews con sus comentarios, estos seran relacionados a las reviews
- Debe permitir a los usuarios ingresar a las vistas en donde encuentran la informacion sobre los restaurantes, reviews y comentarios.
- Usar Postgresql

# Requisitos no funcionales
- Debe ser compatible en cualquiera navegador web moderno
- Configuración de un servidor web (heroku o similar) para el deployment automático de actualizaciones de la app
- Libertar para implementar cualquier framework o libreria enfocada al Frontend


# Dependencias (Requisitos de ejecución)
- Git, para clonar el proyecto, instalar según el sistema operativo (o descargar como ZIP)
- Ruby 3.0.2
- Gema bundler: `gem install bundler`

# Instalación
1. Clonar el proyecto: `git clone https://github.com/guillermo-delprado/food_loverz.git`
2. Instalar las gemas `bundle install`
3. Instalar dependencias `yarn install`
4. Crear la base de datos: `rails db:create db:migrate`
5. [Obligatorio] Popular la base de datos con los datos de las categorias `rails db:seed`
6. Aplicar redis-server en una terminal
7. Prender el servidor de prueba `bin/dev`
8. Abrir el navegador en `localhost:3000`


# Frontend
Para facilitar el entendimiento de la programación en Ruby y en Rails se propuso utilizar TailwindCSS

# Base de datos : Postgresql


# Mejoras futuras
- Agregar autenticación con google, twitter, etc

- Mejorar apartado de rating 



