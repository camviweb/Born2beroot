# Projet en cours 
### Keywords
- virtualisation
- administration système

### Pourquoi Debian ?
"L'utilisation de Debian est fortement conseillée pour quelqu'un débutant dans ce domaine."

### Machine virtuelle ?
Un logiciel, au lieu d'un ordinateur physique, pour exécuter des programmes et des applications. Chaque machine virtuelle a son propre système d'exploitation et fonctionne séparemment, donc on peut avoir plusieurs machines virtuelles sur une machine. 

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
- [x] Pour des questions de sécurité, on ne devra pas pouvoir se connecter par SSH avec l’utilisateur root.
- [x] L’utilisation de SSH sera testée durant la soutenance par la mise en place d’un nouveau compte.

### UFW ?
- Uncomplicated Firewall est une interface pour modifier le pare-feu de l'appareil sans compromettre la sécurité. Elle permet de configurer les ports auxquels autoriser les connexions et les ports à fermer. C'est utile en avec SSH car on peut définir un port spécifique avec lequel fonctionner.
- [x] configurer votre système d’exploitation avec le pare-feu UFW et ne laisser ouvert **que** le port 4242 dans votre machine virtuelle.
- [x] Votre pare-feu devra être actif au lancement de votre machine virtuelle. 

### Politique de mot de passe fort
- Nous utilisons la bibliothèque de vérification de la qualité des mots de passe et il existe 2 fichiers : common-password qui définit les règles telles que les caractères majuscules et minuscules, les caractères en double, etc. et le fichier login.defs qui stocke les règles d'expiration des mots de passe (30 jours, etc.).
- [x] votre mot de passe doit expirer tous les 30 jours
- [x] Le nombre minimum de jours avant de pouvoir modifier un mot de passe sera configuré à 2.
- [x] L’utilisateur devra recevoir un avertissement 7 jours avant que son mot de passe n’expire.
- [x] Votre mot de passe sera de 10 caractères minimums dont une majuscule, une minuscule et un chiffre, et ne devra pas comporter plus de 3 caractères identiques consécutifs.
- [x] Le mot de passe ne devra pas comporter le nom de l’utilisateur.
- [x] La règle suivante ne s’applique pas à l’utilisateur root : le mot de passe devra comporter au moins 7 caractères qui ne sont pas présents dans l’ancien mot de passe.
- [x] votre mot de passe root devra suivre cette politique
- [x] il faudra changer tous les mots de passe des comptes présents sur la machine virtuelle, compte root inclus.
- (canguyen : Born2beroot! root : Helloworld2025 canguyen42 : Born2beroot)

## Groupes
- [x] Un utilisateur sera présent avec pour nom votre login en plus de l’utilisateur root.
- [x] Cet utilisateur appartiendra aux groupes user42 et sudo.

### Sudo
- [x] L’authentification en utilisant sudo sera limitée à 3 essais en cas de mot de passe erroné.
- [x] Un message de votre choix s’affichera en cas d’erreur suite à un mauvais mot de passe lors de l’utilisation de sudo.
- [x] Chaque action utilisant sudo sera archivée, aussi bien les inputs que les outputs.
- [x] Le journal se trouvera dans le dossier /var/log/sudo/.
- [x] Le mode TTY sera activé pour des questions de sécurité.
- [x] Les paths utilisables par sudo seront restreints, pour des questions de sécurité. Exemple : /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin

### script avec cron
- Cron ou cron job est un utilitaire de ligne de commande pour planifier des commandes ou des scripts à des intervalles spécifiques ou à une heure précise chaque jour. Utile si vous souhaitez configurer votre serveur pour qu'il redémarre à une heure précise chaque jour.
- [x] Dès le lancement de votre serveur, le script écrira des informations toutes les 10 minutes sur tous les terminaux (jetez un oeil du côté de wall). La bannière est facultative.
- [x] L’architecture de votre système d’exploitation ainsi que sa version de kernel.
- [x] Le nombre de processeurs physiques.
- [x] Le nombre de processeurs virtuels.
- [x] La mémoire vive disponible actuelle sur votre serveur ainsi que son taux d’utilisation sous forme de pourcentage.
- [x] La mémoire disponible actuelle sur votre serveur ainsi que son taux d’utilisation sous forme de pourcentage.
- [x] Le taux d’utilisation actuel de vos processeurs sous forme de pourcentage.
- [x] La date et l’heure du dernier redémarrage.
- [x] Si LVM est actif ou pas.
- [x] Le nombre de connexions actives.
- [x] Le nombre d’utilisateurs utilisant le serveur.
- [x] L’adresse IPv4 de votre serveur, ainsi que son adresse MAC (Media Access Control).
- [x] Le nombre de commande executées avec le programme sudo.
- [x] expliquer le fonctionnement de ce script
- [x] interrompre son exécution sans le modifier

### Commandes
- sudo chage -l canguyen pour verifier les regles d'expiration des mots de passe
- lsb_release -a || cat /etc/os-release
- getent group groupname
- sudo adduser new_username
- sudo groupadd groupname
- sudo usermod -aG groupname username
- sudo nano /etc/login.defs
- sudo nano /etc/pam.d/common-password
- hostnamectl
- sudo hostnamectl set-hostname new_hostname - pour changer le nom d'hote actuel puis -> redemarrer la machine virtuelle avec sudo reboot
- sudo nano /etc/hosts - change current hostname to new hostname
- lsblk - pour afficher les partitions
- dpkg -l | grep sudo – pour montrer que sudo est installe
- sudo visudo ls
- sudo nano /etc/sudoers
- cd ~/../../var/log && nano sudo.log
- sudo ufw status
- sudo ufw status numbered
- sudo ufw allow port-id
- sudo ufw delete rulenumber
- sudo service ssh status
- sudo systemctl status ssh
- ssh your_user_id@192.168.122.1 -p 4242 - dans un terminal pour montrer que SSH sur le port 4242 fonctionne
- cd /usr/local/bin && vim monitoring.sh
- sudo crontab -u root -e – pour editer le cron job
- change 10 value to */1 * * * *
- (sleep 30s – to run it every 30 seconds, delete the line to stop the job from running)
- sudo cronstop && sudo reboot 
- sudo cronstart 

# Steps
- [x] download my virtual machine
- [x] install my virtual machine
- [x] access my virtual machine (créer au minimum 2 partitions chiffrées en utilisant LVM)
- [x] configure my virtual machine
- [x] connect to SSH
- [x] continue configurating my virtual machine
- [x] submission
