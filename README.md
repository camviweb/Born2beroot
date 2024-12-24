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
- **SELinux** doit rester actif et sa configuration doit etre adaptee au sujet

### AppArmor ?
- **AppArmor** doit rester actif
- Le systeme de securite Linux qui permet le controle d'acces obligatoire (ou Mandatory Access Control) : il restreint les actions des processus. Inclus par default sur Debian. Verifier s'il est actif avec : aa-status

### LVM ?
Logiciel de gestion par volumes logiques (ou Logical Volume Manager) qui permet de manipuler facilement les partitions.   
  
- pour Debian, apt-get as package manager

### Difference entre Aptitude et APT (Advanced Packaging Tool) ? 
1. Aptitude est un gestionnaire de paquets haut niveau, alors que APT est bas niveau et peut etre utilise par d'autres gestionnaires de paquets haut niveau.
2. Aptitude est intelligent et va automatiquement enlever des paquets inutilises et suggerer l'installation de paquets dependants, alors que APT va seulement faire ce qui lui ait demande en lignes de commande.  

- port 4242

# Steps
- [x] download my virtual machine
- [x] install my virtual machine
- [x] access my virtual machine (creer au minimum 2 partitions chiffrees en utilisant LVM)
- [ ] configure my virtual machine
- [ ] connect to SSH
- [ ] continue configurating my virtual machine
- [ ] submission
