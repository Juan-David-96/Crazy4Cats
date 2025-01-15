# Proyecto Crazy4Cats

## Descripción
Crazy4Cats es una aplicación web que permite a los usuarios interactuar con posts sobre gatitos. Los usuarios pueden registrar sus cuentas, crear publicaciones, comentar sobre ellas y reaccionar con "Me gusta" o "No me gusta". La plataforma también cuenta con un sistema de autenticación y un sistema de roles con diferentes permisos.

## Funcionalidades

### Reacciones
- Los usuarios pueden reaccionar a los posts con un "Me gusta" (dedito hacia arriba) o "No me gusta" (dedito hacia abajo).
- Estas reacciones están asociadas al usuario y al post.
- Si un usuario ya ha reaccionado a un post, podrá eliminar su reacción.
- Si elige otra reacción, la anterior se eliminará automáticamente y se registrará la nueva.

### Comentarios
- Los usuarios pueden comentar en los posts.
- El creador de un comentario puede eliminar su comentario en cualquier momento.
- Los usuarios no registrados pueden poner un nombre al momento de comentar, en caso de no proporcionar ninguno se agrega como "Anónimo".
- Los usuarios registrados pueden poner un nombre al momento de comentar, en este caso se colocará el nombre que proporcionó y entre paréntesis el nombre del usuario.
- Si el usuario está registrado y no proporciona ningún nombre para comentar, se coloca el nombre del usuario por defecto.
- Solo el propietario de un post puede eliminar los comentarios asociados a ese post.
- Los administradores pueden eliminar cualquier comentario de cualquier post.

### Autenticación de Usuario
- La autenticación de usuarios se realiza mediante Devise.
- El usuario puede registrarse con nombre y correo electrónico.
- Los usuarios deben estar registrados e iniciados sesión para poder comentar y reaccionar en los posts.

## Tecnologías Utilizadas
- Ruby on Rails para el backend.
- Devise para la gestión de autenticación de usuarios.
- Bootstrap para el diseño y la interfaz de usuario.
- PostgreSQL como sistema de base de datos.
