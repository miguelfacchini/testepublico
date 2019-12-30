#!/bin/sh
LOGFILE=/suporte/manutencao.log
/usr/local/pgsql/bin/./vacuumdb -U postgres -a -z
if [ $? = 0 ]; then
    echo "`date +%c` - Vacuum realizado com Sucesso" >> $LOGFILE
else
    echo "`date +%c` - ERRO ao realizar vacuum." >> $LOGFILE
fi
# teste
