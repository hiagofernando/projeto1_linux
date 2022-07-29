#!/bin/bash
echo "Criando deiretorios..."

mkdir /plubico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GPR_ADM
groupadd GPR_VEN
groupadd GPR_SEC

echo "Criando usuarios,,"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Especificando permissões dos diretiros..."

chown root:GPR_ADM /adm
chown root:GPR_VEN /ven
chown root:GPR_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 700 /sec
chmod 777 /publico

echo "Finalizado..."
