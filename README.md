# Projet en cours 
Keywords : 
- virtualisation
- administration système

# Cheat sheet
### Pourquoi Debian ?
"L'utilisation de Debian est fortement conseillee pour quelqu'un debutant dans ce domaine."

### Machine virtuelle ?
Un logiciel, au lieu d'un ordinateur physique, pour executer des programmes et des applications. Chaque machine virtuelle a son propre systeme d'exploitation et fonctionne separemment, donc on peut avoir plusieurs machines virtuelles sur une machine. 

- mise en place de KDump
- [ ] **SELinux** doit rester actif et sa configuration doit etre adaptee au sujet

### AppArmor ?
- [ ] AppArmor doit rester actif
- Le systeme de securite Linux qui permet le controle d'acces obligatoire (ou Mandatory Access Control) : il restreint les actions des processus. Inclus par default sur Debian. Verifier s'il est actif avec : aa-status

### LVM ?
Logiciel de gestion par volumes logiques (ou Logical Volume Manager) qui permet de manipuler facilement les partitions.   
  
- pour Debian, apt-get as package manager

### Difference entre Aptitude et APT (Advanced Packaging Tool) ? 
1. Aptitude est un gestionnaire de paquets haut niveau, alors que APT est bas niveau et peut etre utilise par d'autres gestionnaires de paquets haut niveau.
2. Aptitude est intelligent et va automatiquement enlever des paquets inutilises et suggerer l'installation de paquets dependants, alors que APT va seulement faire ce qui lui ait demande en lignes de commande.  

### SSH ?
Secure Shell Host est un mecanisme d'authentification entre un client et un hote. Il utilise des techniques de cryptage pour que toute communication entre clients et hotes soit faite sous forme cryptee. Un utilisateur sur Mac ou Linux peut utiliser SSH le terminal pour travailler sur son serveur via SSH.  
- [ ] Un service SSH sera obligatoirement actif sur le port 4242 dans votre machine virtuelle. Pour des questions de sécurité, on ne devra pas pouvoir se connecter par SSH avec l’utilisateur root.
- [ ] L’utilisation de SSH sera testée durant la soutenance par la mise en place d’un nouveau compte. Il faut par conséquent comprendre comment fonctionne ce service.

### UFW ?
- Uncomplicated Firewall is a interface to modify the firewall of the device without compromising security. You use it to configure which ports to allow connections to and which ports to close. This is useful in conjunction with SSH, can set a specific port for it to work with.
- [x] configurer votre système d’exploitation avec le pare-feu UFW et ne laisser ouvert **que** le port 4242 dans votre machine virtuelle.
- [ ] Votre pare-feu devra être actif au lancement de votre machine virtuelle. 

# Steps
- [x] download my virtual machine
- [x] install my virtual machine
- [x] access my virtual machine (creer au minimum 2 partitions chiffrees en utilisant LVM)
- [x] configure my virtual machine
- [ ] connect to SSH
- [ ] continue configurating my virtual machine
- [ ] submission
