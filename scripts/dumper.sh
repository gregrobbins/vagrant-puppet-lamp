### <username><![CDATA[fleshlig_magento]]></username>
### <password><![CDATA[r8R7Q7mBgeYS]]></password>
### <dbname><![CDATA[fleshlig_magento]]></dbname>
# mysql> show tables where Tables_in_fleshlig_magento like '%magento_log%';
# +----------------------------+
# | Tables_in_fleshlig_magento |
# +----------------------------+
# | magento_log_customer       |
# | magento_log_quote          |
# | magento_log_summary        |
# | magento_log_summary_type   |
# | magento_log_url            |
# | magento_log_url_info       |
# | magento_log_visitor        |
# | magento_log_visitor_info   |
# | magento_log_visitor_online |
# +----------------------------+
# 9 rows in set (0.00 sec)
# 
# mysql> show tables where Tables_in_fleshlig_magento like '%session%';
# +----------------------------+
# | Tables_in_fleshlig_magento |
# +----------------------------+
# | magento_api_session        |
# | magento_core_session       |
# | magento_dataflow_session   |
# | magento_persistent_session |
# +----------------------------+
# 4 rows in set (0.00 sec)

mysqldump -ufleshlig_magento -p fleshlig_magento --no-data > fli.magento.dev.dump.sql
mysqldump -ufleshlig_magento -p fleshlig_magento -t  \
    --ignore-table fleshlig_magento.magento_log_customer \
    --ignore-table fleshlig_magento.magento_log_quote \
    --ignore-table fleshlig_magento.magento_log_summary \
    --ignore-table fleshlig_magento.magento_log_summary_type \
    --ignore-table fleshlig_magento.magento_log_url \
    --ignore-table fleshlig_magento.magento_log_url_info \
    --ignore-table fleshlig_magento.magento_log_visitor \
    --ignore-table fleshlig_magento.magento_log_visitor_info \
    --ignore-table fleshlig_magento.magento_log_visitor_online \
    --ignore-table fleshlig_magento.magento_api_session \
    --ignore-table fleshlig_magento.magento_core_session \
    --ignore-table fleshlig_magento.magento_dataflow_session \
    --ignore-table fleshlig_magento.magento_persistent_session \
    >> fli.magento.dev.dump.sql
gzip fli.magento.dev.dump.sql
