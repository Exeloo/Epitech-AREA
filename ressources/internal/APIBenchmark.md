### Benchmark : Technologies Backend

---

### **1. Objectif**

Comparer **NestJS**, **Go**, **Python**, et **Ruby** pour identifier la stack backend la plus adaptée à un projet type **IFTTT** (déclencheurs et actions enchaînés, intégration d’APIs tierces, tâches asynchrones).

Focus sur :
1. **Gestion des workflows**
2. **Tâches asynchrones**
3. **Écosystème/API clients**
4. **Expérience développeur**

---

### **2. Technologies évaluées**

- **NestJS** : Framework TypeScript/Node.js structuré et modulaire, avec des outils comme **Bull** pour les queues.
- **Go** : Langage compilé et performant, connu pour sa gestion native de la concurrence via les **goroutines**.
- **Python** : Langage interprété avec des frameworks comme FastAPI pour les APIs et Celery pour les tâches.
- **Ruby** : Framework Rails efficace pour des MVPs, associé à **Sidekiq** pour le traitement en arrière-plan.

---

### **3. Évaluation**

#### **3.1. Gestion des workflows**
| Technologie | Points forts | Points faibles |
|-------------|---------------|----------------|
| **NestJS**  | Structure modulaire, facilement extensible. Gestion des workflows via des middlewares et queues (Bull). | Requiert une bonne connaissance de TypeScript pour structurer efficacement. |
| **Go**      | Très performant pour des workflows sur mesure, contrôle total via goroutines et canaux. | Implémentation manuelle nécessaire pour des flux complexes. Peu d’outils natifs. |
| **Python**  | Celery et Django-Q gèrent bien les workflows avec des tâches enchaînées. Large écosystème pour orchestrer des APIs. | Performances moindres sur des flux très complexes sans optimisation. |
| **Ruby**    | Rails est rapide pour des flux simples, et des gems comme `workflow` facilitent l’implémentation. | Pas idéal pour des workflows très complexes ou de grande échelle. |

#### **3.2. Tâches asynchrones**
| Technologie | Points forts | Points faibles |
|-------------|---------------|----------------|
| **NestJS**  | Intégration directe avec des queues comme **Bull** ou RabbitMQ. Très bon support des tâches asynchrones. | Moins performant sur des flux hautement concurrents par rapport à Go. |
| **Go**      | Goroutines très légères et concurrence native. Excellente scalabilité. | Gestion des queues et workers à coder manuellement. |
| **Python**  | Outils comme Celery, avec un support robuste pour les workflows asynchrones. Intégration facile avec Redis ou RabbitMQ. | Peut devenir complexe sur des workflows massivement parallèles. |
| **Ruby**    | Sidekiq offre une intégration simple et efficace avec Redis. | Performance limitée pour des tâches très nombreuses ou intensives. |

#### **3.3. Écosystème/API clients**
| Technologie | Points forts | Points faibles |
|-------------|---------------|----------------|
| **NestJS**  | Large bibliothèque de modules Node.js pour intégrer facilement des APIs tierces. | Plus complexe pour les APIs très spécifiques ou non documentées. |
| **Go**      | Stable, rapide et des bibliothèques bien maintenues. Parfait pour les APIs critiques en performance. | Écosystème moins riche que Python pour des intégrations API exotiques. |
| **Python**  | Enorme écosystème pour consommer des APIs (requests, FastAPI, etc.). Automatisation et parsing faciles. | Gestion manuelle des dépendances pour certains cas complexes. |
| **Ruby**    | Gems comme HTTParty ou Faraday simplifient l’intégration des APIs. | Moins actif sur des APIs modernes ou complexes. |

#### **3.4. Expérience développeur**
| Technologie | Points forts | Points faibles |
|-------------|---------------|----------------|
| **NestJS**  | Structure claire, documentation complète, bon support TypeScript. | Courbe d'apprentissage TypeScript pour les nouveaux arrivants. |
| **Go**      | Simple à lire, outils natifs solides, idéal pour des workflows hautement personnalisés. | Plus difficile à appréhender pour les débutants. |
| **Python**  | Lisibilité du code, forte communauté, outils matures. | Moins structuré pour les projets très complexes sans un cadre strict. |
| **Ruby**    | Rails est un plaisir à utiliser pour des workflows simples, beaucoup d’automatisation. | Complexité accrue sur des projets de grande échelle. |

---

### **4. Synthèse**
| Critères                | **NestJS**        | **Go**          | **Python**       | **Ruby**         |
|-------------------------|-------------------|-----------------|------------------|------------------|
| **Workflows**           | ⭐⭐⭐⭐             | ⭐⭐⭐            | ⭐⭐⭐⭐            | ⭐⭐⭐            |
| **Tâches asynchrones**  | ⭐⭐⭐⭐             | ⭐⭐⭐⭐⭐          | ⭐⭐⭐             | ⭐⭐             |
| **Écosystème/API**      | ⭐⭐⭐⭐             | ⭐⭐⭐            | ⭐⭐⭐⭐            | ⭐⭐⭐            |
| **Expérience Dev**      | ⭐⭐⭐             | ⭐⭐             | ⭐⭐⭐⭐            | ⭐⭐⭐⭐          |

---

### **5. Recommandations**

- **NestJS** : Parfait si vous recherchez une solution structurée avec des outils prêts à l’emploi pour orchestrer des workflows et gérer des tâches en arrière-plan.
- **Go** : Idéal pour des projets nécessitant des performances extrêmes et une gestion concurrente massive, mais nécessite un effort supplémentaire pour les workflows complexes.
- **Python** : Excellent choix pour des workflows complexes, avec un écosystème riche pour automatiser et intégrer des APIs tierces. Idéal pour une équipe cherchant une courbe d'apprentissage douce.
- **Ruby** : Idéal pour un démarrage rapide (MVP). Rails simplifie énormément le développement mais pourrait être un frein si le projet s’étend considérablement.
