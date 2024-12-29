# Projet en cours 
Keywords : 
- virtualisation
- administration système

### Pourquoi Debian ?
"L'utilisation de Debian est fortement conseillée pour quelqu'un débutant dans ce domaine."

### Machine virtuelle ?
Un logiciel, au lieu d'un ordinateur physique, pour exécuter des programmes et des applications. Chaque machine virtuelle a son propre système d'exploitation et fonctionne séparemment, donc on peut avoir plusieurs machines virtuelles sur une machine. 

- [ ] mise en place de KDump
- [ ] **SELinux** doit rester actif et sa configuration doit être adaptée au sujet

### AppArmor ?
- [ ] AppArmor doit rester actif
- Le système de sécurité Linux qui permet le contrôle d'accès obligatoire (ou Mandatory Access Control) : il restreint les actions des processus. Inclus par défault sur Debian. Vérifier s'il est actif avec : aa-status

### LVM ?
Logiciel de gestion par volumes logiques (ou Logical Volume Manager) qui permet de manipuler facilement les partitions.   
  
- pour Debian, apt-get as package manager

### Différence entre Aptitude et APT (Advanced Packaging Tool) ? 
1. Aptitude est un gestionnaire de paquets haut niveau, alors que APT est bas niveau et peut être utilisé par d'autres gestionnaires de paquets haut niveau.
2. Aptitude est intelligent et va automatiquement enlever des paquets inutilisés et suggerer l'installation de paquets dépendants, alors que APT va seulement faire ce qui lui ait demande en lignes de commande.  

### SSH ?
Secure Shell Host est un mécanisme d'authentification entre un client et un hôte. Il utilise des techniques de cryptage pour que toute communication entre clients et hôtes soit faite sous forme cryptée. Un utilisateur sur Mac ou Linux peut utiliser SSH le terminal pour travailler sur son serveur via SSH.  
- [ ] Un service SSH sera obligatoirement actif sur le port 4242 dans votre machine virtuelle. Pour des questions de sécurité, on ne devra pas pouvoir se connecter par SSH avec l’utilisateur root.
- [ ] L’utilisation de SSH sera testée durant la soutenance par la mise en place d’un nouveau compte. Il faut par conséquent comprendre comment fonctionne ce service.

### UFW ?
- Uncomplicated Firewall is a interface to modify the firewall of the device without compromising security. You use it to configure which ports to allow connections to and which ports to close. This is useful in conjunction with SSH, can set a specific port for it to work with.
- [x] configurer votre système d’exploitation avec le pare-feu UFW et ne laisser ouvert **que** le port 4242 dans votre machine virtuelle.
- [ ] Votre pare-feu devra être actif au lancement de votre machine virtuelle. 

# Steps
- [x] download my virtual machine
- [x] install my virtual machine
- [x] access my virtual machine (créer au minimum 2 partitions chiffrées en utilisant LVM)
- [x] configure my virtual machine
- [ ] connect to SSH
- [ ] continue configurating my virtual machine
- [ ] submission
