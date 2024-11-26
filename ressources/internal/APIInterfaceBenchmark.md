### Benchmark : Technologies Interface API

---

### **1. Objectif**

Comparer **Rest** et **GraphQL** pour identifier la stack d'interface API la plus adaptée à un projet type **IFTTT** (déclencheurs et actions enchaînés, intégration d’APIs tierces, tâches asynchrones).

Pour ce projet, nous avons besoin :
- D'une interface qui permet un chargement des données efficient,
- D'une interface qui est facilement documentable,
- D'une interface bien typée

Focus sur :
1. **Efficacité**
2. **Documentation**
3. **Typée**

---

### **2. Technologies évaluées**

- **Rest** : Système standard d'interface, fonctionnant avec des routes.
- **GraphQL** : Interface qui fonctionne avec des schémas et de la récupération partielle de données.

---

### **3. Évaluation**

#### **3.1. Efficacité**
| Technologie | Points forts                                                                     | Points faibles                                                           |
|-------------|----------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **Rest**    | Requêtes rapide et efficaces, souvent moins coûteuses pour le serveur            | Si beaucoup de données sont requises, il faut faire beaucoup de requêtes |
| **GraphQL** | Peu de requêtes nécessaire avec le concept de over-fetching et de under-fetching | De requêtes pouvant être plus longues pour l'API                         |

#### **3.2. Documentation**
| Technologie | Points forts                                                                         | Points faibles                                               |
|-------------|--------------------------------------------------------------------------------------|--------------------------------------------------------------|
| **Rest**    | Beaucoup d'offres de systèmes de documentations (swagger par exemple)                | Avec beaucoup de routes la documentation devient très lourde |
| **GraphQL** | Documentation nativement implémenter et lisible avec des outils (apollo par exemple) | Peu de système externe de documentation                      |

#### **3.3. Typée**
| Technologie | Points forts                                                     | Points faibles                                       |
|-------------|------------------------------------------------------------------|------------------------------------------------------|
| **Rest**    | Typage libre et potentiellement différent entre plusieurs routes | Typage pas forcément natif et à implémenter soi même |
| **GraphQL** | Typage natif implémenté et très complet                          | Typage très rigide                                   |

---

### **4. Synthèse**
| Critères          | **Rest** | **GraphQL** |
|-------------------|----------|-------------|
| **Efficacité**    | ⭐⭐⭐⭐     | ⭐⭐⭐         |
| **Documentation** | ⭐⭐⭐      | ⭐⭐⭐⭐        |
| **Typée**         | ⭐⭐⭐      | ⭐⭐⭐⭐⭐       |

---

### **5. Notre choix**

Nous avons décidé de prendre les deux technologies dans deux cadres différents.

Pour notre interface API avec nos app client, nous allons utiliser GraphQL. Son typage et sa documentation simple et rapide permettra plus simplement de transmettre des informations et d'avancer en simultanée.

Pour notre interface API avec nos microservices, nous allons utiliser Rest. Ses requêtes simples et génériques permettent de facilement connecter une api externe et d'avoir une documentation précise.

### **6. Sources**

[Comparatif Rest et GraphQL](https://tailcall.run/graphql/graphql-vs-rest-api-comparison/)
[GraphQL plus performant que Rest ?](https://www.reddit.com/r/graphql/comments/pom5h1/is_graphql_generally_worse_at_performance_than/)
