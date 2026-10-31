# RB Team · Agenda de turnos (versión web)

Archivos: `index.html` (la app), `config.js` (tus claves), `supabase.sql` (base de datos).

## 1. Crear la base de datos (Supabase, plan gratuito)
1. Creá una cuenta y un proyecto nuevo en supabase.com.
2. Andá a **SQL Editor**, pegá el contenido de `supabase.sql` y ejecutalo.
3. Andá a **Authentication > Users > Add user**: cargá tu email y una contraseña. Si te lo ofrece, tildá confirmar el email automáticamente.
4. En la configuración de autenticación (Sign In / Providers) desactivá el registro de nuevos usuarios ("Allow new users to sign up"), para que solo vos puedas entrar.
5. Andá a **Project Settings > API** y copiá el **Project URL** y la clave **anon public**.
6. Pegalos en `config.js`. La clave anon puede ser pública: los datos están protegidos por las reglas de la base (RLS) y por tu login.

## 2. Publicar en Vercel
**Opción A, con GitHub:** creá un repositorio, subí los 4 archivos (index.html, config.js, supabase.sql, README.md), y en vercel.com elegí *Add New > Project*, importá el repositorio y tocá *Deploy*. No hay que configurar nada más (Framework: Other, sin build).

**Opción B, desde la computadora:** instalá Node.js, abrí una terminal en esta carpeta y ejecutá `npx vercel` (la primera vez te pide iniciar sesión), y luego `npx vercel --prod`.

Vercel te da una dirección tipo `rb-team.vercel.app`. En *Settings > Domains* podés conectar un dominio propio.

## 3. Usar
Abrí la dirección, entrá con el email y la contraseña del paso 3, y agregala a la pantalla de inicio del celular. Los datos se sincronizan entre dispositivos (se actualizan al volver a la app y cada 30 segundos).

Nota: si dos dispositivos editan a la vez, gana el último en guardar.
