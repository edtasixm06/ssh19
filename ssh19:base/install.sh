#! /bin/bash
# @edt ASIX M06 2019-2020
# instal.lacio
# -------------------------------------

# Creació d'usuaris locals ------------------------------------------
for user in local1 local2 local3
do
  useradd $user
  echo $user  | passwd --stdin $user
done
# -------------------------------------------------------------------

# Configuració client autenticació ldap =============================
bash /opt/docker/auth.sh
#cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
# ===================================================================

