#!/bin/bash -e

export FUSESOC_ENV=${FUSESOC_BASE}/${VERSION}
python3 -m venv ${FUSESOC_ENV}
${FUSESOC_ENV}/bin/pip3 install -U pip
${FUSESOC_ENV}/bin/pip3 install -U .

mkdir -p ${FUSESOC_MODULEFILES}
cat <<EOF > ${FUSESOC_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${FUSESOC_ENV}/bin
prepend-path PYTHONPATH ${FUSESOC_ENV}
EOF
