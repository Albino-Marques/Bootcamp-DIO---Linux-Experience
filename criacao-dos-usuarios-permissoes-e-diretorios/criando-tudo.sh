#!/bin/bash

echo "Criando os diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."

useradd albino -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd kauani -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd otavio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd marcelo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sabrina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd marta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd luna -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd guinevere -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd talita -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando as permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Pronto....."

