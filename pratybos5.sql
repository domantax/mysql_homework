-- Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius
  SELECT Authors.name COLLATE latin1_general_ci
  FROM Authors
UNION
  SELECT Books.title
  FROM Books;