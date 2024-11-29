# teste-pm2

- Crie um script de atualização. Exemplo: atualizar.sh
```
#!/bin/bash
BRANCH=$1
cd /caminho/da/aplicacao
git fetch origin
git checkout $BRANCH
git pull origin $BRANCH
pm2 restart minha-aplicacao
```



- Torne os scripts executáveis
```
chmod +x atualizar.sh
```

- Atualize passando o branch desejado:
```
./atualizar.sh develop
./atualizar.sh master
```

```
*/10 * * * * cd /caminho/master && git pull origin master && pm2 restart minha-aplicacao-master
```