-- 아이템의 희귀도가 'RARE'인 아이템들 => 부모
-- 의 모든 다음 업그레이드 아이템 => 자식

SELECT i.ITEM_ID, i.ITEM_NAME, i.RARITY
FROM ITEM_INFO i
WHERE i.ITEM_ID IN ( 
    SELECT t.ITEM_ID
    FROM ITEM_TREE t
    WHERE t.PARENT_ITEM_ID IN ( -- 2. `부모 id`가 포함되어있는 `자식`들을 찾음.
        SELECT ITEM_ID
        FROM ITEM_INFO
        WHERE RARITY = 'RARE' -- 1. 기준이 되는 `부모`를 먼저 찾음.
    )
)
ORDER BY i.ITEM_ID DESC;