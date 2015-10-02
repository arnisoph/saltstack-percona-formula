#!jinja|yaml

{% set datamap = salt['formhelper.get_defaults']('percona', saltenv) %}

# SLS includes/ excludes
include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}

percona_tools:
  pkg:
    - installed
    - pkgs: {{ datamap.tools.pkgs }}
