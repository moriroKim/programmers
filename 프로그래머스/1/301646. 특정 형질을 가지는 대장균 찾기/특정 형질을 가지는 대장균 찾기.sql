-- 8(1000) => 형질 4
-- 15(1111) => 형질 4, 3, 2, 1
-- 1(0001) => 형질 1
-- 13(1101) => 형질 4, 3, 1
-- (2번 형질을 포함하지 X) AND 1번 OR 3번 OR 1번, 3번
-- => (0010, 1110, 1010, 0011, 0111) AND (0001 OR 0100 OR 0101)
-- => (2, 14, 10, 3, 11)
SELECT COUNT(ID) AS COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & 2) = 0  -- 2번 형질이 없는 경우
AND ((GENOTYPE & 1) > 0 OR (GENOTYPE & 3) > 0 OR (GENOTYPE & 4) > 0);  -- 1번 또는 3번 형질 포함