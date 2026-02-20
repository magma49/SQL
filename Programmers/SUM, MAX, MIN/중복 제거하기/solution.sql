SELECT
    count(*) count
from
    (
        select distinct
            NAME
        from
            ANIMAL_INS
        where
            NAME is not null
    ) a;