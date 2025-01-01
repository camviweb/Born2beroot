# Projet en cours 
Keywords : 
- virtualisation
- administration système

### Pourquoi Debian ?
"L'utilisation de Debian est fortement conseillée pour quelqu'un débutant dans ce domaine."

### Machine virtuelle ?
Un logiciel, au lieu d'un ordinateur physique, pour exécuter des programmes et des applications. Chaque machine virtuelle a son propre système d'exploitation et fonctionne séparemment, donc on peut avoir plusieurs machines virtuelles sur une machine. 

### KDump ?
- [ ] mise en place de KDump

### SELinux
- [ ] SELinux doit rester actif et sa configuration doit être adaptée au sujet

### AppArmor ?
- [x] AppArmor doit rester actif -> aa-status
- Le système de sécurité Linux qui permet le contrôle d'accès obligatoire (ou Mandatory Access Control) : il restreint les actions des processus. Inclus par défault sur Debian.

### LVM ?
Logiciel de gestion par volumes logiques (ou Logical Volume Manager) qui permet de manipuler facilement les partitions.   

### Différence entre Aptitude et APT (Advanced Packaging Tool) ? 
1. Aptitude est un gestionnaire de paquets haut niveau, alors que APT est bas niveau et peut être utilisé par d'autres gestionnaires de paquets haut niveau.
2. Aptitude est intelligent et va automatiquement enlever des paquets inutilisés et suggerer l'installation de paquets dépendants, alors que APT va seulement faire ce qui lui ait demande en lignes de commande.  

### SSH ?
Secure Shell Host est un mécanisme d'authentification entre un client et un hôte. Il utilise des techniques de cryptage pour que toute communication entre clients et hôtes soit faite sous forme cryptée. Un utilisateur sur Mac ou Linux peut utiliser SSH le terminal pour travailler sur son serveur via SSH.  
- [x] Un service SSH sera actif sur le port 4242 dans votre machine virtuelle.
- [ ] Pour des questions de sécurité, on ne devra pas pouvoir se connecter par SSH avec l’utilisateur root.
- [ ] L’utilisation de SSH sera testée durant la soutenance par la mise en place d’un nouveau compte.

### UFW ?
- Uncomplicated Firewall est une interface pour modifier le pare-feu de l'appareil sans compromettre la sécurité. Elle permet de configurer les ports auxquels autoriser les connexions et les ports à fermer. C'est utile en avec SSH car on peut définir un port spécifique avec lequel fonctionner.
- [x] configurer votre système d’exploitation avec le pare-feu UFW et ne laisser ouvert **que** le port 4242 dans votre machine virtuelle.
- [ ] Votre pare-feu devra être actif au lancement de votre machine virtuelle. 

### Politique de mot de passe fort
- Nous utilisons la bibliothèque de vérification de la qualité des mots de passe et il existe 2 fichiers : common-password qui définit les règles telles que les caractères majuscules et minuscules, les caractères en double, etc. et le fichier login.defs qui stocke les règles d'expiration des mots de passe (30 jours, etc.).
- sudo nano /etc/login.defs
- sudo nano /etc/pam.d/common-password
- [x] votre mot de passe doit expirer tous les 30 jours
- [x] Le nombre minimum de jours avant de pouvoir modifier un mot de passe sera configuré à 2.
- [x] L’utilisateur devra recevoir un avertissement 7 jours avant que son mot de passe n’expire.
- [x] Votre mot de passe sera de 10 caractères minimums dont une majuscule, une minuscule et un chiffre, et ne devra pas comporter plus de 3 caractères identiques consécutifs.
- [x] Le mot de passe ne devra pas comporter le nom de l’utilisateur.
- [x] La règle suivante ne s’applique pas à l’utilisateur root : le mot de passe devra comporter au moins 7 caractères qui ne sont pas présents dans l’ancien mot de passe.
- [x] votre mot de passe root devra suivre cette politique
- [x] il faudra changer tous les mots de passe des comptes présents sur la machine virtuelle, compte root inclus.
(canguyen : Born2beroot! root : Helloworld2025 canguyen42 : Born2beroot)

### Commandes 
- sudo ufw status
- sudo systemctl status ssh
- getent group sudo
- getent group user42
- sudo adduser new username
- sudo groupadd groupname
- sudo usermod -aG groupname username
- sudo chage -l username - pour verifier les regles d'expiration des mots de passe
- hostnamectl
- hostnamectl set-hostname new_hostname - pour changer le nom d'hote actuel puis -> redemarrer la machine virtuelle avec sudo reboot
- sudo nano /etc/hosts - change current hostname to new hostname
- lsblk - pour afficher les partitions
- dpkg -l | grep sudo – to show that sudo is installed
- sudo ufw status numbered
- sudo ufw allow port-id
- sudo ufw delete rule number
- ssh your_user_id@192.168.122.1 -p 4242 - dans un terminal pour montrer que SSH sur le port 4242 fonctionne

# Steps
- [x] download my virtual machine
- [x] install my virtual machine
- [x] access my virtual machine (créer au minimum 2 partitions chiffrées en utilisant LVM)
- [x] configure my virtual machine
- [x] connect to SSH
- [ ] continue configurating my virtual machine
- [ ] submission
