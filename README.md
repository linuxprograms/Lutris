# Instalador de Lutris para Debian 13 (Trixie)

Script de automatización para la instalación de Lutris en Debian 13 (Trixie), incluyendo soporte para Wine de 32 y 64 bits, Vulkan, Winetricks y GameMode.

## Descripción

Este script realiza las siguientes tareas:

* Habilita la arquitectura `i386`.
* Instala dependencias esenciales para juegos.
* Configura el repositorio oficial de Lutris.
* Importa y registra la clave GPG del repositorio.
* Instala soporte Vulkan para sistemas de 32 y 64 bits.
* Instala la versión más reciente de Lutris disponible para Debian 13.

## Requisitos

* Debian GNU/Linux 13 (Trixie)
* Conexión a Internet
* Usuario con privilegios `sudo`

## Instalación

Clonar el repositorio:

```bash
git clone https://github.com/linuxprograms/lutris-installer.git
cd lutris-installer
```

Asignar permisos de ejecución:

```bash
chmod +x install.sh
```

Ejecutar el instalador:

```bash
./install.sh
```

## Componentes instalados

| Paquete             | Descripción                                      |
| ------------------- | ------------------------------------------------ |
| wine                | Capa de compatibilidad para aplicaciones Windows |
| wine32              | Soporte Wine de 32 bits                          |
| wine64              | Soporte Wine de 64 bits                          |
| winetricks          | Herramienta de configuración para Wine           |
| gamemode            | Optimizaciones de rendimiento para videojuegos   |
| mesa-vulkan-drivers | Controladores Vulkan                             |
| lutris              | Plataforma de gestión de videojuegos             |

## Verificación

Comprobar la instalación:

```bash
lutris --version
```

Iniciar Lutris:

```bash
lutris
```

## Compatibilidad

| Distribución           | Estado     |
| ---------------------- | ---------- |
| Debian 13 (Trixie)     | Soportado  |
| Debian Testing         | Compatible |
| Debian Stable anterior | No probado |

## Licencia

Este proyecto se distribuye bajo la licencia MIT.

---

Desarrollado para la comunidad GNU/Linux.
