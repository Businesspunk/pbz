CREATE (Nikita: Person {name: "Nikita", from:"Belarus"}), (Vlad:
Person {name: "Vlad", from: "Russia"}), (Alexander:
Person {name: "Alexander", from: "USA"});

MATCH(Nikita:Person), (Vlad:Person)
  WHERE Nikita.name = 'Nikita' AND Vlad.name = 'Vlad'
CREATE(Vlad)-[:BE_FRIEND]->(Nikita);

MATCH(Nikita:Person), (Vlad:Person)
  WHERE Nikita.name = 'Nikita' AND Vlad.name = 'Vlad'
CREATE(Nikita)-[:BE_FRIEND]->(Vlad);

MATCH(Nikita:Person), (Vlad:Person)
  WHERE Nikita.name = 'Nikita' AND Vlad.name = 'Vlad'
CREATE(Vlad)-[:BE_FRIEND]->(Nikita);

MATCH(Nikita:Person), (Alexander:Person)
  WHERE Nikita.name = 'Nikita' AND Alexander.name = 'Alexander'
CREATE(Alexander)-[:BE_FRIEND]->(Nikita);

MATCH(Nikita:Person), (Alexander:Person)
  WHERE Nikita.name = 'Nikita' AND Alexander.name = 'Alexander'
CREATE(Nikita)-[:BE_FRIEND]->(Alexander);

MATCH(Vlad:Person), (Alexander:Person)
  WHERE Vlad.name = 'Vlad' AND Alexander.name = 'Alexander'
CREATE(Alexander)-[:BE_FRIEND]->(Vlad);

MATCH(Vlad:Person), (Alexander:Person)
  WHERE Vlad.name = 'Vlad' AND Alexander.name = 'Alexander'
CREATE(Vlad)-[:BE_FRIEND]->(Alexander);

CREATE (Iphone12: Smartphone {Company: "Apple", from:"USA"}), (SamsungGalaxyS20:
Smartphone {Company: "Samsung", from: "Korea"}), (Huawei:
Smartphone {Company: "Huawei", from: "China"});

MATCH(Nikita:Person), (Iphone12: Smartphone)
  WHERE Nikita.name = 'Nikita' AND Iphone12.Company = 'Apple'
CREATE(Nikita)-[:LIKE]->(Iphone12);

MATCH(Nikita:Person), (Phone: Smartphone)
  WHERE Nikita.name = 'Nikita' AND Phone.Company = 'Huawei'
CREATE(Nikita)-[:LIKE]->(Phone);

MATCH(Nikita:Person), (SamsungGalaxyS20:
Smartphone)
  WHERE Nikita.name = 'Nikita' AND SamsungGalaxyS20.Company = 'Samsung'
CREATE(Nikita)-[:HAVE]->(SamsungGalaxyS20);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Vlad' AND Phone.Company = 'Huawei'
CREATE(Person)-[:HAVE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Vlad' AND Phone.Company = 'Apple'
CREATE(Person)-[:LIKE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Vlad' AND Phone.Company = 'Samsung'
CREATE(Person)-[:LIKE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Alexander' AND Phone.Company = 'Apple'
CREATE(Person)-[:HAVE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Alexander' AND Phone.Company = 'Samsung'
CREATE(Person)-[:LIKE]->(Phone);



