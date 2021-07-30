-- 1
select name, count(ga.author_id) from genre g 
join genre_author ga ON  g.id = ga.genre_id 
group by g.id;

-- 2
select count(t.id) from track t 
join album a ON t.album_id = a.id
where a.year between 2019 and 2020;

-- 3
select avg(t.duration), a.name from track t
join album a on a.id = t.album_id 
group by a.name;

-- 4
select a.name from author a
left join (
	select distinct a2.name from author a2 
	join author_album aa on a2.id = aa.author_id 
	join album alb on aa.album_id = alb.id
	where alb.year = 2020) as a2020
on a.name = a2020.name
where a2020.name is NULL;


-- 5 
select distinct m.name from miscellany m
join miscellany_track mt ON m.id = mt.miscellany_id
join track t on mt.track_id = t.id
join album a on t.album_id = a.id
join author_album aa on a.id = aa.album_id
join author a2 on aa.author_id = a2.id 
where a2.name = 'Xiaooley';

-- 6
select a.name, count(g.id) from album a 
join author_album aa on a.id = aa.album_id
join genre_author ga on aa.author_id = ga.author_id
join genre g on ga.genre_id = g.id
group by a.name
having count(g.id) > 1;

--7
select t.name from track t 
left join miscellany_track mt on t.id = mt.track_id 
where mt.track_id is null;

--8
select a.name from author a 
join author_album aa on a.id = aa.author_id
join album a2 on aa.album_id = a2.id
join track t on aa.album_id = t.album_id 
where t.duration = (
	select min(track.duration) from track
	);

--9
select a.name, count(t.id), a.id from album a 
join track t ON a.id = t.album_id
group by a.name, a.id
having count(t.id) = (
	select count(id) from track
	group by album_id
	order by count(id)
	limit 1
	);


