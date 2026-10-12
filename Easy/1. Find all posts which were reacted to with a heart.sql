SELECT * FROM facebook_posts; -- check what columns are in table

SELECT * FROM facebook_reactions;

-- inner join
select distinct
    fp.post_id,
    fp.poster,
    fp.post_text,
    fp.post_keywords,
    fp.post_date
from
    facebook_posts fp
    inner join facebook_reactions fr on fp.post_id = fr.post_id
where
    fr.reaction = 'heart'

-- left join 
SELECT DISTINCT
    fp.post_id,
    fp.poster,
    fp.post_text,
    fp.post_keywords,
    fp.post_date
    -- fp.post_date,
    -- fr.post_id,fr.reaction -- Check if tables are joined correctly
FROM
    facebook_posts AS fp
    LEFT JOIN facebook_reactions AS fr ON fp.post_id = fr.post_id -- key to join tables?
WHERE
    fr.reaction = 'heart';



