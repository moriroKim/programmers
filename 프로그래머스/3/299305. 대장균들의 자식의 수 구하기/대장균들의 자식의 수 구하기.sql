-- 코드를 작성해주세요
SELECT e.ID,
       (
            SELECT COUNT(*)
            FROM ECOLI_DATA
            WHERE PARENT_ID = e.ID
       ) AS CHILD_COUNT
FROM ECOLI_DATA e
ORDER BY e.ID;