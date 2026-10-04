# MyApp - Gestor de Tareas con Auditoría Forense

Aplicación web desarrollada en Ruby on Rails que permite gestionar tareas con un sistema de auditoría forense integrado.

## Características

- CRUD completo de tareas (crear, leer, editar, eliminar)
- Sistema de auditoría que registra cada acción con:
  - Acción realizada
  - Modelo afectado
  - ID del registro
  - Datos enviados (JSON)
  - Dirección IP del usuario
  - Fecha y hora exacta
- Interfaz responsiva con estilos personalizados
- Base de datos SQLite
- Rama principal protegida contra alteraciones y borrados

## Tecnologías

- Ruby 3.3.10
- Ruby on Rails 8.1.4
- SQLite 3
- HTML/CSS

## Entorno de desarrollo

Este proyecto fue desarrollado íntegramente en un dispositivo Android, utilizando Acode con Alpine Linux como terminal y entorno de ejecución.

## Valor probatorio

Los registros de auditoría generados por esta aplicación constituyen evidencia digital con trazabilidad de tiempo, lugar y acción, susceptible de ser ratificada mediante peritaje informático en un proceso judicial.
