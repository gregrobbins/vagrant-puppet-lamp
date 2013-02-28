#!/bin/bash

sleep 10
mysql -uroot -proot < "/vagrant/puppet/scripts/setup_magento_db.sql"
