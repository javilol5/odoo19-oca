# 🚀 Manual de Implantación de Odoo 19 con Docker Compose

**Autores:** Casal y Diego  

Este repositorio contiene la configuración y la guía paso a paso para la implantación y puesta en marcha de **Odoo 19** mediante contenedores Docker, incluyendo la localización española (OCA) y las evidencias de verificación.

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

---

## 1. Estructura del proyecto

El siguiente esquema muestra el árbol de dependencias necesario para el funcionamiento del **Modelo 303 (AEAT)** a partir del repositorio de la OCA (`OCA/l10n-spain`, rama `19.0`):

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

---

## 2. Módulos instalados en Aplicaciones

Verificación de que los tres módulos principales de la localización española aparecen correctamente instalados en el menú de **Aplicaciones**:

![Módulos instalados en Aplicaciones](images/captura2.png)

---

## 3. Creación de declaración del Modelo 303

Comprobación en **Facturación → Informes** (o menú **AEAT**) de la disponibilidad para generar la autoliquidación del Modelo 303:

![Declaración del Modelo 303](images/captura3.png)

---

## 4. Verificación de imagen personalizada (`sxe-odoo`)

Ejecución de `docker compose images` confirmando que el contenedor activo utiliza la imagen personalizada `sxe-odoo`:

![Verificación imagen sxe-odoo](images/captura4.png)

---

## 5. Importación de librería en el contenedor

Prueba de importación desde el entorno Python del contenedor verificando que las dependencias externas cargan sin errores:

![Importación de librería](images/captura5.png)

---

## 6. Exclusión de `addons/oca/` en el repositorio

Comprobación del estado de Git (`git status` / `.gitignore`) asegurando que la carpeta `addons/oca/` no está rastreada ni subida al repositorio:

![Exclusión de addons/oca](images/captura6.png)

---

## 7. Integridad de la pila oficial (`odoo19`)

Verificación en el directorio `odoo19` mediante `docker compose images` de que la pila original de la Actividad 1 sigue intacta usando la imagen oficial `odoo`:

![Integridad pila odoo19](images/captura7.png)

---

## 🚨 8. Incidencias y solución de problemas

Registro de errores encontrados durante el despliegue y cómo se resolvieron:

| Fecha | Síntoma / Problema | Causa | Solución |
| :--- | :--- | :--- | :--- |
| `12/11/2026` | Falla al ejecutar el levantamiento de contenedores (`docker compose up -d`). | Error tipográfico en el comando (`docker cosmpose`). | Corregir la sintaxis a `docker compose up -d`. |
| `12/11/2026` | No aparece el módulo `account_tax_balance` (necesario para el Modelo 303). | Dependencia no descargada en la carpeta de `addons`. | Descargar el módulo desde el repositorio de la OCA correspondiente y actualizar la lista de aplicaciones. |
| `12/11/2026` | *Pendiente* | *Pendiente* | *Pendiente* |

---

## 🤖 9. Declaración del uso de Inteligencia Artificial

Durante la elaboración de esta práctica se ha utilizado Inteligencia Artificial como herramienta de apoyo para:

* 🔍 **Depuración:** Detección de errores de sintaxis en comandos y archivos de configuración.
* 🧩 **Gestión de dependencias:** Identificación de los módulos requeridos por la localización española de la OCA.
* 🔄 **Mantenimiento:** Guía de referencia rápida para la actualización de contenedores y módulos en Odoo.
* 📝 **Documentación:** Estructuración y mejora visual del archivo `README.md`.
