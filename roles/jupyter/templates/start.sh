#!/bin/bash
source "{{ aiida_venv }}/bin/activate"
export PYTHONPATH=$PYTHONPATH:{{ jupyter_base_folder }}

if jupyter notebook list | grep -q 'string'; then
  echo "matched"
fi
ads=`jupyter notebook list`

jupyter notebook --notebook-dir="{{ jupyter_base_folder }}" \
  --NotebookApp.default_url="/apps/apps/home/start.ipynb"
