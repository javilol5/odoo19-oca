# 🚀 Manual de Implantación de Odoo 19 con Docker Compose

**Autores:** Casal y Diego  

Este repositorio contiene la configuración y la guía paso a paso para la implantación y puesta en marcha de **Odoo 19** mediante contenedores Docker, incluyendo la localización española (OCA).

---

## 📑 Índice

> 📌 **Navegación Rápida**
>
> * [1. Estructura del proyecto](#1-estructura-del-proyecto)
> * [2. Módulos instalados en Aplicaciones](#2-módulos-instalados-en-aplicaciones)
> * [3. Creación de declaración del Modelo 303](#3-creación-de-declaración-del-modelo-303)
> * [4. Verificación de imagen personalizada (`sxe-odoo`)](#4-verificación-de-imagen-personalizada-sxe-odoo)
> * [5. Importación de librería en el contenedor](#5-importación-de-librería-en-el-contenedor)
> * [6. Exclusión de `addons/oca/` en el repositorio](#6-exclusión-de-addonsoca-en-el-repositorio)
> * [7. Integridad de la pila oficial (`odoo19`)](#7-integridad-de-la-pila-oficial-odoo19)
> * 🚨 [8. Incidencias y solución de problemas](#8-incidencias-y-solución-de-problemas)
> * 🤖 [9. Declaración del uso de Inteligencia Artificial](#9-declaración-del-uso-de-inteligencia-artificial)


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

## 2. Los tres módulos aparecen como instalados en Aplicaciones

![](/images/.png)

## 3. En Facturación → Informes (o el menú AEAT) se puede crear una declaración del 303

![](/images/.pn

## 4. La imagen en uso es la tuya: ´´´docker compose images´´´ muestra ```sxe-odoo```

![](/images/.pn

## 5. La librería se importa sin error dentro del contenedor

![](/images/.pn

## 6. ```addons/oca/``` no está en el repositorio

![](/images/.pn

## 7. La pila de la actividad 1 sigue intacta: docker compose images en odoo19 muestra la imagen oficial odoo

![](/images/.pn





## 8. Incidencias y Solución de Problemas

| Fecha | Síntoma / Problema                                         | Causa                                                            | Solución |
| :--- |:-----------------------------------------------------------|:-----------------------------------------------------------------| :--- |
| 12/11/26 | No funciona al ejecutar docker compose up -d | Error de sintaxis (docker co**s**mpose) | Aprender a Leer/Escribir |
| 12/11/26 | No aparece account_tax_balande (303) | Dependencia no descargada | Descargar dependencia |
| 12/11/26 |  |  |  |

---

## 9. Declaración del Uso de Inteligencia Artificial

- Ayuda para encontrar errores de sintaxis
- Ayuda para encontrar las dependencias necesarias
- Ligera guía para actualizar Odoo
- Embellecer el Readme.md
