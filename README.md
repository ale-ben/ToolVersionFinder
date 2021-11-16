# ToolVersionFinder
Script per velocizzare la ricerca delle versioni dei tool installati un una determinata suite base UNIX.
Il tool prernde in input un file testuale con il nome dei tool da cercare e crea una tabella con la versione trovata e altre informazioni

## Utilizzo
### 1) Creare il file
Pe preparare il file in input basta creare un file contenente il nome dei tool, uno per riga.
#### Esempio di file in input:
Nome del file: `imaging`
```
Cyclone
dc3dd
dcfldd
dd
dd_rescue
ddrescue
DDRescue-GUI
esximager
ewfacquire
ewfacquirestream
ftkimager
guymager
```

### 2) Esecuzione dello script
Il primo step è dare i permessi di esecuzione allo script: `chmod +x ./toolVersionFinder.sh`
Lo script va lanciato da terminale *sh seguito dal nome del file in input, verrà generato un file csv chiamato `[nome del file in input].csv`

`./toolVersionFinder.sh [NomeFileInput]`

### 3) Elaborazione del file di output
Il file di output è in formato *csv* e può essere importato in quasi tutti i fogli di calcolo.
#### IMPORTANTE:
In fase di importazione selezionare come separatore SOLO il carattere virgola (,)

#### Esempio Output
L'output dello script per l'input al punto 2 sarà il seguente
```
Program,path,--version,-v,-V
Cyclone,Not Found,--,--,--
dc3dd,/usr/bin/dc3dd,dc3dd (dc3dd) 7.2.641|Copyright (C) 2008 Free Software Foundation  Inc.|,,
dcfldd,/usr/bin/dcfldd,dcfldd (dcfldd) 1.3.4-1|Written by: dcfldd by Nicholas Harbour  GNU dd by Paul Rubin  David MacKenzie and Stuart Kemp.|,,
dd,/bin/dd,dd (coreutils) 8.25|Copyright (C) 2016 Free Software Foundation  Inc.|,,
dd_rescue,/usr/bin/dd_rescue,,,
ddrescue,/usr/bin/ddrescue,GNU ddrescue 1.19|Copyright (C) 2014 Antonio Diaz Diaz.|,,GNU ddrescue 1.19|Copyright (C) 2014 Antonio Diaz Diaz.|
DDRescue-GUI,Not Found,--,--,--
esximager,Not Found,--,--,--
ewfacquire,/usr/bin/ewfacquire,ewfacquire 20180403||,ewfacquire 20180403||,ewfacquire 20180403||
ewfacquirestream,/usr/bin/ewfacquirestream,ewfacquirestream 20180403||,ewfacquirestream 20180403||,ewfacquirestream 20180403||
ftkimager,/usr/bin/ftkimager,,,
guymager,/usr/bin/guymager,|Using default log file name /var/log/guymager.log|,|Using default log file name /var/log/guymager.log|,|Using default log file name /var/log/guymager.log|
```

