#!/bin/bash

echo "Iniciando configuração:"
echo "1 - Criando diretórios... aguarde!"

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

echo "2 - Criando grupos de usuários... aguarde!"
sudo groupadd -f GRP_ADM
sudo groupadd -f GRP_VEN
sudo groupadd -f GRP_SEC

echo "3 - Criando usuários... aguarde!"
useradd carlos -m -s /bin/bash -p passwd Senha123 -G GRP_ADM
useradd maria -m -s /bin/bash -p passwd Senha123 -G GRP_ADM
useradd joao -m -s /bin/bash -p passwd Senha123 -G GRP_ADM

useradd debora -m -s /bin/bash -p passwd Senha123 -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p passwd Senha123 -G GRP_VEN
useradd roberto -m -s /bin/bash -p passwd Senha123 -G GRP_VEN

useradd josefina -m -s /bin/bash -p passwd Senha123 -G GRP_SEC
useradd amanda -m -s /bin/bash -p passwd Senha123 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p passwd Senha123 -G GRP_SEC

echo "3 - Concedendo permissões... aguarde!"
chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

echo "Finalizando..."
echo "Concluído!"
