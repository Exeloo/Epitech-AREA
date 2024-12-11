### Benchmark : Technologies Backend

---

### **1. Objectif**

Comparer **NestJS**, **Go** et**Python** pour identifier la stack backend la plus adaptée à un projet type **IFTTT** (déclencheurs et actions enchaînés, intégration d’APIs tierces, tâches asynchrones).

Pour ce projet, nous avons besoin :
- d'un langage avec un grand écosystème pour pouvoir utiliser le plus de librairie possible pour augmenter la cadence de travail
- d'un langage qui permet une structuration fortement scalable et modulaire vis à vis des objectifs que nous nous fixons sur le projet
- d'un langage qui a une certaine efficacité et performance
- d'un langage qui nous permet plus simplement un code propre et structuré même en débutant dans celui-ci

Focus sur :
1. **Gestion des workflows**
2. **Tâches asynchrones**
3. **Écosystème/API clients**
4. **Expérience développeur**

---

### **2. Technologies évaluées**

- **NestJS** : Framework TypeScript/Node.js structuré, modulaire et **scalable**.
- **Go** : Langage compilé et performant, connu pour sa gestion native des threads via les **goroutines**.
- **Python** : Langage interprété avec des frameworks comme FastAPI pour les APIs et Celery pour les tâches.

---

### **3. Évaluation**

#### **3.1. Gestion des workflows**
| Technologie | Points forts                                                                                                | Points faibles                                                                    |
|-------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| **NestJS**  | Structure modulaire, facilement extensible. Gestion des native des workflows via des middlewares et queues. | Framework rigide et complexe avec un grand partie pris donc très dûr à apprendre. |
| **Go**      | Très performant pour des workflows sur mesure, contrôle total via goroutines et canaux.                     | Implémentation manuelle nécessaire pour des flux complexes. Peu d’outils natifs.  |
| **Python**  | Celery et Django-Q gèrent bien les workflows avec des tâches enchaînées.                                    | Performances moindres sur des flux très complexes sans optimisation.              |

#### **3.2. Tâches asynchrones**
| Technologie | Points forts                                                                                                            | Points faibles                                                           |
|-------------|-------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **NestJS**  | Intégration directe avec des queues comme Bull ou RabbitMQ. Très bon support des tâches asynchrones.                    | Moins performant sur des flux avec beaucoup de threads par rapport à Go. |
| **Go**      | Goroutines très légères et threads natifs.                                                                              | Gestion des queues et workers à coder manuellement.                      |
| **Python**  | Outils comme Celery, avec un support robuste pour les workflows asynchrones. Intégration facile avec Redis ou RabbitMQ. | Peut devenir complexe sur des workflows massivement parallèles.          |

#### **3.3. Écosystème/API clients**
| Technologie | Points forts                                                                                            | Points faibles                                                   |
|-------------|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| **NestJS**  | Large bibliothèque de modules Node.js pour intégrer facilement des APIs tierces.                        | Plus complexe pour les APIs très spécifiques ou non documentées. |
| **Go**      | Stable, rapide et des bibliothèques bien maintenues. Parfait pour les APIs critiques en performance.    | Écosystème moins riche que Python pour des intégrations API.     |
| **Python**  | Enorme écosystème pour consommer des APIs (requests, FastAPI, etc.). Automatisation et parsing faciles. | Gestion manuelle des dépendances pour certains cas complexes.    |

#### **3.4. Expérience développeur**
| Technologie | Points forts                                                                            | Points faibles                                                        |
|-------------|-----------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| **NestJS**  | Structure claire, documentation complète, bon support TypeScript.                       | Courbe d'apprentissage très très élevé pour les nouveaux arrivants.   |
| **Go**      | Simple à lire, outils natifs solides, idéal pour des workflows hautement personnalisés. | Plus difficile à appréhender pour les débutants.                      |
| **Python**  | Lisibilité du code, forte communauté, outils matures.                                   | Moins structuré pour les projets très complexes sans un cadre strict. |

---

### **4. Synthèse**
| Critères               | **NestJS** | **Go** | **Python** |
|------------------------|------------|--------|------------|
| **Workflows**          | ⭐⭐⭐⭐       | ⭐⭐⭐    | ⭐⭐⭐⭐       |
| **Tâches asynchrones** | ⭐⭐⭐⭐       | ⭐⭐⭐⭐⭐  | ⭐⭐⭐        |
| **Écosystème/API**     | ⭐⭐⭐⭐       | ⭐⭐⭐    | ⭐⭐⭐⭐       |
| **Expérience Dev**     | ⭐⭐⭐        | ⭐⭐⭐    | ⭐⭐⭐⭐       |

---

### **5. Recommandations**

- **NestJS** : Parfait si vous recherchez une solution structurée avec des outils prêts à l’emploi pour orchestrer des workflows et gérer des tâches en arrière-plan.
- **Go** : Idéal pour des projets nécessitant des performances extrêmes et une gestion concurrente massive, mais nécessite un effort supplémentaire pour les workflows complexes.
- **Python** : Excellent choix pour des workflows peu complexes, avec un écosystème riche pour automatiser et intégrer des APIs tierces. Idéal pour une équipe cherchant une courbe d'apprentissage douce.

### **6. Notre choix**

Notre réflexion primaire s'est porté à choisir une solution durable qui pourrait accueillir une grande infrastructure donc nous avons choisi de conserver NestJS et Go. Le python n'étant pas assez scalable facilement.

Ensuite pour départager les 2, nous nous sommes plus interessé à leurs forces.
Go est très optimisé, avec des performances allant jusqu'à 192% supérieur à NestJS.
NestJS a quant à lui un écosystème très complet (celui de js). Mais également l'outil en lui-même est beaucoup plus complet et nécessite beaucoup moins de travaux personnels pour faire certaines fonctionnalités.

Après réflexion, nous avons choisi NestJS comme Framework api. Cela est dû en partie aux avantages cités précédemment que nous trouvons plus adapté au contexte du projet.
Une autre raison est le fait que nous avons peu d'expérience dans les deux languages/framework, et la rigidité de NestJS dans la conception de l'api nous semble plus adapté pour débuter et faire une API complète.

### **7. Sources**

[Comparatif d'optimisation entre Go et NestJS](https://medium.com/deno-the-complete-reference/nestjs-vs-go-performance-comparison-for-jwt-verify-and-mysql-query-510221e6dea8)
[Comparatif complet entre Go et NestJs](https://kinsta.com/blog/node-js-vs-golang/)
[Comparatif Go, NestJs, Python](https://dev.to/rocklinda/benchmarking-csv-file-processing-golang-vs-nestjs-vs-php-vs-python-332e)
[Comparatif des écosystèmes](https://jetbrains.developpez.com/actu/340508/Etat-de-l-ecosysteme-des-developpeurs-en-2022-decouvrez-les-dernieres-tendances-de-l-industrie-les-salaires-les-technologies-et-les-langages-de-programmation-les-plus-populaires/)
