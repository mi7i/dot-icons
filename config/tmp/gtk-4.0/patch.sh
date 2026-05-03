#!/bin/bash
set -e

#ln -sf ~/.themes/name/gtk-4.0/gtk.css gtk.css
#ln -sf ~/.themes/name/gtk-4.0/gtk-dark.css gtk-dark.css

{
    echo ""
    echo '@import url("mygtk.css");'
    echo ""
} >> gtk.css

