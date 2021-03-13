
truncate table cart;
drop table ProductDetails;
select *from Registration;
select *from ProductDetails;
select *from cart;
select sum(productdetails.price) total from productdetails,cart where productdetails.productid=cart.productid and mob='9876543210';
