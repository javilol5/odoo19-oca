CASAL y DIEGO

# Manual de Implantación de Odoo 19 con Docker Compose

Este repositorio contiene la configuración y la guía paso a paso para la implantación de ...

---

## 📑 ÍNDICE

> 📌 **Navegación Rápida:**
>
> *  [1. Estructura del proyecto](#1-estructura-del-proyecto)
> *  [2. ...](#2-aplicaciones-y-módulos)
> *  [3. ...](#3-ejercicio-1-tipos-de-productos-e-impuestos)
> *  [4. ...](#4-ejercicio-2-recorrido-completo-del-cliente-a-la-factura-pagada)
> *  [5. ...](#5-facturación-de-proveedores-y-registros-adicionales)
> *  [6. ...](#6-ejercicio-3-búsquedas-guardadas-y-filtros)
> *  [7. ...](#7-ejercicio-4-modo-desarrollador)
> * 🚨 [8. Incidencias y Solución de Problemas](#8-incidencias-y-solución-de-problemas)
> * 🤖 [9. Declaración del Uso de Inteligencia Artificial](#9-declaración-del-uso-de-inteligencia-artificial)


## 1. Estructura del proyecto

[ MÓDULO PRINCIPAL OCA ]
  └── l10n_es_aeat_mod303 (Repositorio: OCA/l10n-spain [b 19.0])
        │
        ├── Depende de: l10n_es_aeat (Repositorio: OCA/l10n-spain [b 19.0])
        │     │
        │     ├── Depende de: l10n_es (Repositorio: OCA/l10n-spain [b 19.0])
        │     │     │
        │     │     └── Depende de: account (MÓDULO DEL NÚCLEO DE ODOO)
        │     │     └── Depende de: base (MÓDULO DEL NÚCLEO DE ODOO)
        │     │
        │     └── Depende de: account (MÓDULO DEL NÚCLEO DE ODOO)
        │
        └── Depende de: account_debit_note (MÓDULO DEL NÚCLEO DE ODOO / o Contabilidad de la OCA según versión)




## 8. Incidencias y Solución de Problemas

| Fecha | Síntoma / Problema                                         | Causa                                                            | Solución |
| :--- |:-----------------------------------------------------------|:-----------------------------------------------------------------| :--- |
| 12/11/26 | No funciona | Error de sintaxis | Aprender a Leer/Escribir |
|  |  |  |  |
|  |  |  |  |

---

## 9. Declaración del Uso de Inteligencia Artificial

- 
- 
- 