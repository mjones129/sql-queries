select * from books where author_lname = 'Eggers' and released_year > 2010;

-- logical and can be chained

select * from books where author_fname = 'Dave' and released_year > 2010 and title like '%novel%';

-- left and right, both sides need to evaluate to true

select title, pages from books where char_length(title) > 30 and pages > 500