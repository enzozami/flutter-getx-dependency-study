## SmartManagement
Alterando padrões de descarte das dependências.

---

- GetX, por padrão, descarta objetos não utilizados da memória, mesmo que ocorra uma falha e um widget que o utiliza não seja descartado corretamente. Isso é o que é chamado full.
- Mas você pode definir comportamentos diferentes.

---
SmartManagement.**full**
#### É o padrão. Descarte as classes que não estão sendo usadas e não foram definidas como permanentes.

---
SmartManagement.**onlyBuilder**
#### Com esta opção, apenas os objetos iniciados ou carregados em um Binding com Get.lazyPut() serão descatados.
#### Se você usar Get.put() ou Get.putAsync() ou qualquer outra abordagem, o SmartMangement não terá permissões para excluir essa dependência.

---
SmartManagement.**keepFactory**
- Assim como o SmartManagement.full, ele removerá suas dependências quando não estiver mais sendo usado. No entanto, ele manterá sua fábrica, o que significa que recriará a dependência se você precisar dessa instância novamente.



