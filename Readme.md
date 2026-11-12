# 🚀 Manual de Implantación de Odoo 19 con Docker Compose

**Autores:** Casal y Diego  

Este repositorio contiene la configuración y la guía paso a paso para la implantación y puesta en marcha de **Odoo 19** mediante contenedores Docker, incluyendo la localización española (OCA).

---

## 📑 Índice

> 📌 **Navegación Rápida**
>
> * [1. Estructura del proyecto](#1-estructura-del-proyecto)
> * [2. Aplicaciones y módulos](#2-aplicaciones-y-módulos)
> * [3. Ejercicio 1: Tipos de productos e impuestos](#3-ejercicio-1-tipos-de-productos-e-impuestos)
> * [4. Ejercicio 2: Recorrido completo del cliente a la factura pagada](#4-ejercicio-2-recorrido-completo-del-cliente-a-la-factura-pagada)
> * [5. Facturación de proveedores y registros adicionales](#5-facturación-de-proveedores-y-registros-adicionales)
> * [6. Ejercicio 3: Búsquedas guardadas y filtros](#6-ejercicio-3-búsquedas-guardadas-y-filtros)
> * [7. Ejercicio 4: Modo desarrollador](#7-ejercicio-4-modo-desarrollador)
> * 🚨 [10. Incidencias y solución de problemas](#10-incidencias-y-solución-de-problemas)
> * 🤖 [11. Declaración del uso de Inteligencia Artificial](#11-declaración-del-uso-de-inteligencia-artificial)


## 1. Estructura del proyecto

```text
[ MÓDULO PRINCIPAL OCA ]
└── l10n_es_aeat_mod303  (OCA/l10n-spain [19.0])
    ├── l10n_es_aeat     (OCA/l10n-spain [19.0])
    │   ├── l10n_es      (OCA/l10n-spain [19.0])
    │   │   ├── account  (Núcleo de Odoo)
    │   │   └── base     (Núcleo de Odoo)
    │   └── account      (Núcleo de Odoo)
    └── account_debit_note (Núcleo de Odoo / OCA según versión)
```




## 10. Incidencias y Solución de Problemas

| Fecha | Síntoma / Problema                                         | Causa                                                            | Solución |
| :--- |:-----------------------------------------------------------|:-----------------------------------------------------------------| :--- |
| 12/11/26 | No funciona al ejecutar docker compose up -d | Error de sintaxis (docker co**s**mpose) | Aprender a Leer/Escribir |
| 12/11/26 | No aparece account_tax_balande (303) | Dependencia no descargada | Descargar dependencia |
| 12/11/26 |  |  |  |

---

## 11. Declaración del Uso de Inteligencia Artificial

- Ayuda para encontrar errores de sintaxis
- Ayuda para encontrar las dependencias necesarias
- Ligera guía para actualizar Odoo
- Embellecer el Readme.md
