SELECT
    `MEMBER_ID`,
    `MEMBER_NAME`,
    `GENDER`,
    DATE_FORMAT (`DATE_OF_BIRTH`, '%Y-%m-%d') `DATE_OF_BIRTH`
FROM
    member_profile
where
    `GENDER` = 'W'
    and DATE_FORMAT (`DATE_OF_BIRTH`, '%m') = '03'
    and `TLNO` IS NOT NULL;