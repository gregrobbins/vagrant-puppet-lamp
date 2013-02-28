create schema magento;
create user magento;
grant all on magento.* to 'magento'@'localhost';
grant all on magento.* to 'magento'@'%';
set password for 'magento'@'localhost' = password('magento');
set password for 'magento'@'%' = password('magento');
