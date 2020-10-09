create table customers(
    id              bigserial primary key,
    name            varchar(255)
);

create table products (
    id              bigserial,
    title           varchar(255) not null,
    price           int,
    primary key(id)
);

create table orders (
    id              bigserial primary key,
    customer_id     bigint references customers(id),
    price           int
);

create table order_items(
    id              bigserial primary key,
    product_id      bigserial references products(id),
    order_id        bigserial references orders(id),
    price           int,
    price_per_product int,
    quantity        int
);

insert into customers (name) values
('Cust1'),
('Cust2'),
('Cust3'),
('Cust4');

insert into products (title, price) values
('Bred1', 100),
('Bred2', 200);
