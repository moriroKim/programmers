SELECT A.FLAVOR
FROM ICECREAM_INFO A
JOIN FIRST_HALF B ON A.FLAVOR = B.FLAVOR
WHERE B.TOTAL_ORDER > 3000
AND A.INGREDIENT_TYPE = 'fruit_based'