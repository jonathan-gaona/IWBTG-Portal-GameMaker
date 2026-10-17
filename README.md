# 🌀 IWBTG x Portal 2 - Fangame Project

Este es un juego de plataformas de precisión (*precision platformer*) que combina la dificultad técnica y físicas de **I Wanna Be The Guy (IWBTG)** con la mecánica de portales espaciales y conservación de momento de **Portal 2**.

Desarrollado en **GameMaker** utilizando el motor comunitario **K&R GMS2 Engine** como base.

---

## 🛠️ Requisitos Previos

Antes de levantar el proyecto en una nueva computadora, asegúrate de tener instalado:

1. **[GameMaker](https://gamemaker.io/)** (Versión LTS / Reciente).
2. **[Git](https://git-scm.com/)** en tu sistema.
3. Una cuenta de GitHub configurada con acceso a este repositorio.

---

## 🚀 Cómo levantar el proyecto en una nueva PC

Sigue estos pasos la primera vez que vayas a trabajar en una computadora diferente:

1. **Clonar el repositorio:**
   Abre la terminal o Git Bash y ejecuta:
   ```bash
   git clone [https://github.com/jonathan-gaona/IWBTG-Portal-GameMaker.git](https://github.com/jonathan-gaona/IWBTG-Portal-GameMaker.git)
Entrar a la carpeta del proyecto:

Bash


cd IWBTG-Portal-GameMaker
Abrir en GameMaker:

Abre GameMaker.

Haz clic en Abrir / Open.

Navega hasta la carpeta clonada y selecciona el archivo K&R GMS2 Engine.yyp.

Probar el proyecto:

Presiona la tecla F5 (o haz clic en el botón verde de Ejecutar).

Controles básicos de prueba:

Moverse: Flechas direccionales (Izquierda / Derecha).

Saltar / Doble Salto: Tecla Shift.

Disparar Portal Azul: Clic Izquierdo del ratón.

Disparar Portal Naranja: Clic Derecho del ratón.

Reiniciar Nivel: Tecla R.

🔄 Flujo de Trabajo y Commits entre Computadoras
1. Al Inicio del Día / Antes de Empezar a Programar
Asegúrate de descargar los últimos cambios realizados en otras PCs:

Bash


git pull origin main
2. Al Final del Día / Al Terminar de Guardar Avances
Guarda tu trabajo y súbelo a GitHub siguiendo estos 3 pasos:

Añadir los archivos modificados:

Bash


git add .
Crear el commit con un mensaje descriptivo:

Bash


git commit -m "feat: descripción de los cambios realizados"
Subir los cambios a GitHub:

Bash


git push origin main
📁 Estructura del Proyecto
Objects/Player/: Contiene la lógica del jugador (objPlayer) y detección de colisiones.

Objects/: Objetos obj_portal_azul, obj_portal_naranja y proyectiles.

Rooms/Test Rooms/: Niveles de prueba (rSampleRoom, rPortalLevel1).

.gitignore: Excluye cachés temporales y archivos de compilación propios de GameMaker.
