## [Conventional commits](https://www.conventionalcommits.org/fr/v1.0.0/#sp%c3%a9cification)

```
<type>[scope optionnel]: <description>

[corps optionnel]

[pied de page optionnel)]
```

| Type de commit | Titre                    | Description                                                                                                 | Emoji | Release                        | A inclure dans un changelog |
|:-----------:|--------------------------|-------------------------------------------------------------------------------------------------------------|:-----:|--------------------------------|:--------------------:|
|   `feat`    | Features                 | Nouvelle fonctionnalité                                                                                               |   ✨   | `minor`                        |        `true`        |
|    `fix`    | Bug Fixes                | Correction de bug                                                                                                   |  🐛   | `patch`                        |        `true`        |
|   `docs`    | Documentation            | Modif de documentation                                                                                  |  📚   | `patch` if `scope` is `readme` |        `true`        |
|   `style`   | Styles                   | Changements qui n'affectent pas le sens du code (espacements, formattage, point-virgule, etc)      |  💎   | -                              |        `true`        |
| `refactor`  | Code Refactoring         | Changement de code qui n'est ni du bugfix ni du feat                                                   |  📦   | -                              |        `true`        |
|   `perf`    | Performance Improvements | Optimisation de performances                                                                    |  🚀   | `patch`                        |        `true`        |
|   `test`    | Tests                    | Ajout ou modification de tests                                                           |  🚨   | -                              |        `true`        |
|   `build`   | Builds                   | Changements qui affectent les outils de build ou les dépendances externes         |  🛠   | `patch`                        |        `true`        |
|    `ci`     | Continuous Integrations  | Changement en rapport avec la CI |  ⚙️   | -                              |        `true`        |
|   `chore`   | Chores                   | Changement qui ne concernent ni des sources ni des tests                                                           |  ♻️   | -                              |        `true`        |
|  `revert`   | Reverts                  | Annulation d'un commit précédent                                                                                   |  🗑   | -                              |        `true`        |
