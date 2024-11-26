### Benchmark : Technologies Interface API

---

### **1. Objectif**

Comparer **MariaDB (SQL)** et **Firestore (NoSQL)** pour identifier la stack de base de données API la plus adaptée à un projet type **IFTTT** (déclencheurs et actions enchaînés, intégration d’APIs tierces, tâches asynchrones).

Pour ce projet, nous avons besoin :
- D'une base de données qui permet de stocker beaucoup de données facilement,
- D'une base de données qui permet d'accéder aux données rapidement,
- D'une base de données facile d'utilisation

Focus sur :
1. **Capacité**
2. **Efficacité**
3. **Facilité d'usage**

---

### **2. Technologies évaluées**

- **MariaDB (SQL)** : Base de données standard utilisant le langage SQL pour faire des requêtes.
- **Firestore (NoSQL)** : Service de base de données créé par Google, modèle en document.

---

### **3. Évaluation**

#### **3.1. Capacité**
| Technologie           | Points forts                                                  | Points faibles                                  |
|-----------------------|---------------------------------------------------------------|-------------------------------------------------|
| **MariaDB (SQL)**     | Capacité de données très important car données très générique | Structure de données aplati donc moins complexe |
| **Firestore (NoSQL)** | Permet des données très complexe                              | Plus lourd sur le stockage                      |

#### **3.2. Efficacité**
| Technologie           | Points forts                                                                 | Points faibles                                   |
|-----------------------|------------------------------------------------------------------------------|--------------------------------------------------|
| **MariaDB (SQL)**     | Requêtes très efficace et rapide grâce à plusieurs algorithme d'optimisation | Sans ORM, les requêtes complexe sont dûr à faire |
| **Firestore (NoSQL)** | Requêtes complexe avec des filtres, des sorts facile à implémenter           | Requête un peu lente et moins optimisé           |

#### **3.3. Facilité d'usage**
| Technologie           | Points forts                                 | Points faibles                                                   |
|-----------------------|----------------------------------------------|------------------------------------------------------------------|
| **MariaDB (SQL)**     | Documentation et aide très grande            | Beaucoup de choses à apprendre pour être efficace sur le langage |
| **Firestore (NoSQL)** | Documentation Firebase très claire et facile | Documentation propre à Firestore donc moins documenté            |

---

### **4. Synthèse**
| Critères             | **MariaDB (SQL)** | **Firestore (NoSQL)** |
|----------------------|-------------------|-----------------------|
| **Capacité**         | ⭐⭐⭐⭐              | ⭐⭐⭐                   |
| **Efficacité**       | ⭐⭐⭐⭐              | ⭐⭐⭐                   |
| **Facilité d'usage** | ⭐⭐⭐⭐              | ⭐⭐⭐⭐                  |

---

### **5. Notre choix**

Avec les arguments précédemment cités et les objectifs, il semble logique que nous prenions MariaDB comme solution. De plus cette solution est parfaite pour notre objectif de scalabilité de l'application.

### **6. Sources**

[Comparatif MariaDB (SQL) et Firestore (NoSQL)](https://db-engines.com/en/system/Google+Cloud+Firestore%3BMariaDB)
[SQL ou NoSQL](https://azure.microsoft.com/fr-fr/resources/cloud-computing-dictionary/what-is-nosql-database)
