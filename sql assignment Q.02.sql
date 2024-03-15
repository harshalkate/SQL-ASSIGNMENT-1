-- Q.02 SQL question on facebook 
use first_one;
create table product_info(
product_id int,
product_name varchar(25)
);
insert into product_info(product_id,product_name) values
(1001,"about_us"),
(1002,"Our services"),
(1003,"Blog_page"),
(1004,"Careers"),
(1005,"Terms"),
(1006,"Meta_Store");
select* from product_info;

create table E_web_activity(
user_id int,
product_id int,
activity_date date
);
select * from E_web_activity;
insert into E_web_activity(user_id,product_id,activity_date) values
(1, 1001, '2024-03-20'),
(1, 1001, '2024-03-14'),
(2, 1002, '2024-02-20'),
(3, 1003, '2024-01-25'),
(4, 1006, '2023-12-28'),
(5, 1003, '2023-11-20'),
(6, 1004, '2023-08-20'),
(7, 1001, '2023-08-24'),
(8, 1004, '2024-01-20'),
(9, 1003, '2023-07-18'),
(10, 1002, '2023-08-01');

select product_id
from product_info
where product_id not in(
select distinct product_id
from E_web_activity
);