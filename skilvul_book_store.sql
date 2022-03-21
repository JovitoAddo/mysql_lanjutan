create database skilvulbookstore;
use skilvulbookstore;
show tables;
select * from penerbit;
create table penerbit (
id int(10) auto_increment not null primary key,
nama varchar(50),
kota varchar(50)
);
create table penulis (
id int(10) auto_increment not null primary key,
nama varchar(50),
kota varchar(50)
);
create table buku (
id int(10) not null auto_increment primary key,
ISBN varchar(50),
judul varchar(50),
penulis varchar(50),
penerbit int(10),
harga int(10),
stock int(10),
foreign key (penerbit) references penerbit(id),
foreign key (penulis) references penulis(id)
);
select buku.penerbit,penerbit.nama from buku
inner join penerbit
on buku.id = penerbit.id;

select buku.penerbit, penerbit.nama from buku
left join penerbit
on buku.id = penerbit.id;

select buku.penerbit, penerbit.nama from buku
right join penerbit
on buku.id = penerbit.id;

select max(harga) from buku;

select min(harga) from buku;

select count(harga) from buku where harga < 100000 ;