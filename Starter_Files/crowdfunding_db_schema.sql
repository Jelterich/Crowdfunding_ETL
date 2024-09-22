create table campaign(
cf_id INT not null,
contact_id INT not null,
foreign key (contact_id) references contacts(contact_id),
company_name varchar not null,
description varchar not null,
goal DEC not null,
pledged DEC not null,
outcome varchar not null,
backers_count INT not null,
country varchar not null,
currency varchar not null,
launched_date date not null,
end_date date not null,
category_id varchar not null,
foreign key (category_id) references category(category_id),
subcategory_id varchar not null,
foreign key (subcategory_id) references subcategory(subcategory_id)
);

create table category(
category_id varchar not null primary key,
category varchar not null
);

create table subcategory(
subcategory_id varchar not null primary key,
subcategory varchar not null
);

create table contacts(
contact_id INT not null primary key,
first_name varchar not null,
last_name varchar not null,
email varchar not null
);

select * from campaign;

select * from contacts;

select * from category;

select * from subcategory;
