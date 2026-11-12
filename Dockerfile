ARG ODOO_TAG=19.0
FROM odoo:${ODOO_TAG}

USER root

RUN pip3 install --no-cache-dir --break-system-packages chardet "deepdiff<8" pycountry pyjwt requests unidecode xmlsig zeep
USER odoo