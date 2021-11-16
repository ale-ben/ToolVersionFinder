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
Lo script va lanciato da terminale *sh seguito dal nome del file in input, verrà generato un file csv chiamato `[nome del file in input].csv]
