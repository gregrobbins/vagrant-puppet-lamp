### <username><![CDATA[fleshlig_magento]]></username>
### <password><![CDATA[r8R7Q7mBgeYS]]></password>
### <dbname><![CDATA[fleshlig_magento]]></dbname>

mysqldump -ufleshlig_magento -pr8R7Q7mBgeYS fleshlig_magento --no-data > fli.magento.dev.dump.sql
mysqldump -ufleshlig_magento -pr8R7Q7mBgeYS fleshlig_magento -t  \
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
    --ignore-table fleshlig_magento.magento_log_customer \
    --ignore-table fleshlig_magento.magento_log_quote \
    --ignore-table fleshlig_magento.magento_log_summary \
    --ignore-table fleshlig_magento.magento_log_summary_type \
    --ignore-table fleshlig_magento.magento_log_url \
    --ignore-table fleshlig_magento.magento_log_url_info \
    --ignore-table fleshlig_magento.magento_log_visitor \
    --ignore-table fleshlig_magento.magento_log_visitor_info \
    --ignore-table fleshlig_magento.magento_log_visitor_online \
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
    --ignore-table fleshlig_magento.magento_api_session \
    --ignore-table fleshlig_magento.magento_core_session \
    --ignore-table fleshlig_magento.magento_dataflow_session \
    --ignore-table fleshlig_magento.magento_persistent_session \
# mysql> show tables where Tables_in_fleshlig_magento like '%enterprise_customer%';
# +----------------------------------------------+
# | Tables_in_fleshlig_magento                   |
# +----------------------------------------------+
# | enterprise_customer_sales_flat_order         |
# | enterprise_customer_sales_flat_order_address |
# | enterprise_customer_sales_flat_quote         |
# | enterprise_customer_sales_flat_quote_address |
# | enterprise_customerbalance                   |
# | enterprise_customerbalance_history           |
# | enterprise_customersegment_customer          |
# | enterprise_customersegment_event             | KEEP
# | enterprise_customersegment_segment           | KEEP
# | enterprise_customersegment_website           | KEEP
# +----------------------------------------------+
# 10 rows in set (0.00 sec)
    --ignore-table fleshlig_magento.enterprise_customer_sales_flat_order \
    --ignore-table fleshlig_magento.enterprise_customer_sales_flat_order_address \
    --ignore-table fleshlig_magento.enterprise_customer_sales_flat_quote \
    --ignore-table fleshlig_magento.enterprise_customer_sales_flat_quote_address \
    --ignore-table fleshlig_magento.enterprise_customerbalance \
    --ignore-table fleshlig_magento.enterprise_customerbalance_history \
    --ignore-table fleshlig_magento.enterprise_customersegment_customer \
# mysql> show tables where Tables_in_fleshlig_magento like 'sales_%';
# +--------------------------------------+
# | Tables_in_fleshlig_magento           |
# +--------------------------------------+
# | sales_bestsellers_aggregated_daily   |
# | sales_bestsellers_aggregated_monthly |
# | sales_bestsellers_aggregated_yearly  |
# | sales_billing_agreement              |
# | sales_billing_agreement_order        |
# | sales_flat_creditmemo                |
# | sales_flat_creditmemo_comment        |
# | sales_flat_creditmemo_grid           |
# | sales_flat_creditmemo_item           |
# | sales_flat_invoice                   |
# | sales_flat_invoice_comment           |
# | sales_flat_invoice_grid              |
# | sales_flat_invoice_item              |
# | sales_flat_order                     |
# | sales_flat_order_address             |
# | sales_flat_order_grid                |
# | sales_flat_order_item                |
# | sales_flat_order_payment             |
# | sales_flat_order_status_history      |
# | sales_flat_quote                     |
# | sales_flat_quote_address             |
# | sales_flat_quote_address_item        |
# | sales_flat_quote_item                |
# | sales_flat_quote_item_option         |
# | sales_flat_quote_payment             |
# | sales_flat_quote_shipping_rate       |
# | sales_flat_shipment                  |
# | sales_flat_shipment_comment          |
# | sales_flat_shipment_grid             |
# | sales_flat_shipment_item             |
# | sales_flat_shipment_track            |
# | sales_invoiced_aggregated            |
# | sales_invoiced_aggregated_order      |
# | sales_order_aggregated_created       |
# | sales_order_aggregated_updated       |
# | sales_order_status                   |
# | sales_order_status_label             |
# | sales_order_status_state             |
# | sales_order_tax                      |
# | sales_order_tax_item                 |
# | sales_payment_transaction            |
# | sales_recurring_profile              |
# | sales_recurring_profile_order        |
# | sales_refunded_aggregated            |
# | sales_refunded_aggregated_order      |
# | sales_shipping_aggregated            |
# | sales_shipping_aggregated_order      |
# | salesrule                            |
# | salesrule_coupon                     |
# | salesrule_coupon_usage               |
# | salesrule_customer                   |
# | salesrule_customer_group             |
# | salesrule_label                      |
# | salesrule_product_attribute          |
# | salesrule_website                    |
# +--------------------------------------+
# 55 rows in set (0.00 sec)
    --ignore-table fleshlig_magento.sales_bestsellers_aggregated_daily \
    --ignore-table fleshlig_magento.sales_bestsellers_aggregated_monthly \
    --ignore-table fleshlig_magento.sales_bestsellers_aggregated_yearly \
    --ignore-table fleshlig_magento.sales_billing_agreement \
    --ignore-table fleshlig_magento.sales_billing_agreement_order \
    --ignore-table fleshlig_magento.sales_flat_creditmemo \
    --ignore-table fleshlig_magento.sales_flat_creditmemo_comment \
    --ignore-table fleshlig_magento.sales_flat_creditmemo_grid \
    --ignore-table fleshlig_magento.sales_flat_creditmemo_item \
    --ignore-table fleshlig_magento.sales_flat_invoice \
    --ignore-table fleshlig_magento.sales_flat_invoice_comment \
    --ignore-table fleshlig_magento.sales_flat_invoice_grid \
    --ignore-table fleshlig_magento.sales_flat_invoice_item \
    --ignore-table fleshlig_magento.sales_flat_order \
    --ignore-table fleshlig_magento.sales_flat_order_address \
    --ignore-table fleshlig_magento.sales_flat_order_grid \
    --ignore-table fleshlig_magento.sales_flat_order_item \
    --ignore-table fleshlig_magento.sales_flat_order_payment \
    --ignore-table fleshlig_magento.sales_flat_order_status_history \
    --ignore-table fleshlig_magento.sales_flat_quote \
    --ignore-table fleshlig_magento.sales_flat_quote_address \
    --ignore-table fleshlig_magento.sales_flat_quote_address_item \
    --ignore-table fleshlig_magento.sales_flat_quote_item \
    --ignore-table fleshlig_magento.sales_flat_quote_item_option \
    --ignore-table fleshlig_magento.sales_flat_quote_payment \
    --ignore-table fleshlig_magento.sales_flat_quote_shipping_rate \
    --ignore-table fleshlig_magento.sales_flat_shipment \
    --ignore-table fleshlig_magento.sales_flat_shipment_comment \
    --ignore-table fleshlig_magento.sales_flat_shipment_grid \
    --ignore-table fleshlig_magento.sales_flat_shipment_item \
    --ignore-table fleshlig_magento.sales_flat_shipment_track \
    --ignore-table fleshlig_magento.sales_invoiced_aggregated \
    --ignore-table fleshlig_magento.sales_invoiced_aggregated_order \
    --ignore-table fleshlig_magento.sales_order_aggregated_created \
    --ignore-table fleshlig_magento.sales_order_aggregated_updated \
    --ignore-table fleshlig_magento.sales_order_status \
    --ignore-table fleshlig_magento.sales_order_status_label \
    --ignore-table fleshlig_magento.sales_order_status_state \
    --ignore-table fleshlig_magento.sales_order_tax \
    --ignore-table fleshlig_magento.sales_order_tax_item \
    --ignore-table fleshlig_magento.sales_payment_transaction \
    --ignore-table fleshlig_magento.sales_recurring_profile \
    --ignore-table fleshlig_magento.sales_recurring_profile_order \
    --ignore-table fleshlig_magento.sales_refunded_aggregated \
    --ignore-table fleshlig_magento.sales_refunded_aggregated_order \
    --ignore-table fleshlig_magento.sales_shipping_aggregated \
    --ignore-table fleshlig_magento.sales_shipping_aggregated_order \
    --ignore-table fleshlig_magento.salesrule \
    --ignore-table fleshlig_magento.salesrule_coupon \
    --ignore-table fleshlig_magento.salesrule_coupon_usage \
    --ignore-table fleshlig_magento.salesrule_customer \
    --ignore-table fleshlig_magento.salesrule_customer_group \
    --ignore-table fleshlig_magento.salesrule_label \
    --ignore-table fleshlig_magento.salesrule_product_attribute \
    --ignore-table fleshlig_magento.salesrule_website \
# mysql> show tables where Tables_in_fleshlig_magento like 's\_%';
# +----------------------------------------+
# | Tables_in_fleshlig_magento             |
# +----------------------------------------+
# | s_customer_address_entity              |
# | s_customer_address_entity_datetime     |
# | s_customer_address_entity_decimal      |
# | s_customer_address_entity_int          |
# | s_customer_address_entity_text         |
# | s_customer_address_entity_varchar      |
# | s_customer_eav_attribute               |
# | s_customer_eav_attribute_website       |
# | s_customer_entity                      |
# | s_customer_entity_datetime             |
# | s_customer_entity_decimal              |
# | s_customer_entity_int                  |
# | s_customer_entity_text                 |
# | s_customer_entity_varchar              |
# | s_customer_form_attribute              |
# | s_log_customer                         |
# | s_log_quote                            |
# | s_log_summary                          |
# | s_log_summary_type                     |
# | s_log_url                              |
# | s_log_url_info                         |
# | s_log_visitor                          |
# | s_log_visitor_info                     |
# | s_log_visitor_online                   |
# | s_sales_bestsellers_aggregated_daily   |
# | s_sales_bestsellers_aggregated_monthly |
# | s_sales_bestsellers_aggregated_yearly  |
# | s_sales_billing_agreement              |
# | s_sales_billing_agreement_order        |
# | s_sales_flat_creditmemo                |
# | s_sales_flat_creditmemo_comment        |
# | s_sales_flat_creditmemo_grid           |
# | s_sales_flat_creditmemo_item           |
# | s_sales_flat_invoice                   |
# | s_sales_flat_invoice_comment           |
# | s_sales_flat_invoice_grid              |
# | s_sales_flat_invoice_item              |
# | s_sales_flat_order                     |
# | s_sales_flat_order_address             |
# | s_sales_flat_order_grid                |
# | s_sales_flat_order_item                |
# | s_sales_flat_order_payment             |
# | s_sales_flat_order_status_history      |
# | s_sales_flat_quote                     |
# | s_sales_flat_quote_address             |
# | s_sales_flat_quote_address_item        |
# | s_sales_flat_quote_item                |
# | s_sales_flat_quote_item_option         |
# | s_sales_flat_quote_payment             |
# | s_sales_flat_quote_shipping_rate       |
# | s_sales_flat_shipment                  |
# | s_sales_flat_shipment_comment          |
# | s_sales_flat_shipment_grid             |
# | s_sales_flat_shipment_item             |
# | s_sales_flat_shipment_track            |
# | s_sales_invoiced_aggregated            |
# | s_sales_invoiced_aggregated_order      |
# | s_sales_order_aggregated_created       |
# | s_sales_order_aggregated_updated       |
# | s_sales_order_status                   |
# | s_sales_order_status_label             |
# | s_sales_order_status_state             |
# | s_sales_order_tax                      |
# | s_sales_payment_transaction            |
# | s_sales_recurring_profile              |
# | s_sales_recurring_profile_order        |
# | s_sales_refunded_aggregated            |
# | s_sales_refunded_aggregated_order      |
# | s_sales_shipping_aggregated            |
# | s_sales_shipping_aggregated_order      |
# | s_tag                                  |
# | s_tag_properties                       |
# | s_tag_relation                         |
# | s_tag_summary                          |
# | s_wishlist                             |
# | s_wishlist_item                        |
# | s_wishlist_item_option                 |
# +----------------------------------------+
# 77 rows in set (0.01 sec)
    --ignore-table fleshlig_magento.s_customer_address_entity \
    --ignore-table fleshlig_magento.s_customer_address_entity_datetime \
    --ignore-table fleshlig_magento.s_customer_address_entity_decimal \
    --ignore-table fleshlig_magento.s_customer_address_entity_int \
    --ignore-table fleshlig_magento.s_customer_address_entity_text \
    --ignore-table fleshlig_magento.s_customer_address_entity_varchar \
    --ignore-table fleshlig_magento.s_customer_eav_attribute \
    --ignore-table fleshlig_magento.s_customer_eav_attribute_website \
    --ignore-table fleshlig_magento.s_customer_entity \
    --ignore-table fleshlig_magento.s_customer_entity_datetime \
    --ignore-table fleshlig_magento.s_customer_entity_decimal \
    --ignore-table fleshlig_magento.s_customer_entity_int \
    --ignore-table fleshlig_magento.s_customer_entity_text \
    --ignore-table fleshlig_magento.s_customer_entity_varchar \
    --ignore-table fleshlig_magento.s_customer_form_attribute \
    --ignore-table fleshlig_magento.s_log_customer \
    --ignore-table fleshlig_magento.s_log_quote \
    --ignore-table fleshlig_magento.s_log_summary \
    --ignore-table fleshlig_magento.s_log_summary_type \
    --ignore-table fleshlig_magento.s_log_url \
    --ignore-table fleshlig_magento.s_log_url_info \
    --ignore-table fleshlig_magento.s_log_visitor \
    --ignore-table fleshlig_magento.s_log_visitor_info \
    --ignore-table fleshlig_magento.s_log_visitor_online \
    --ignore-table fleshlig_magento.s_sales_bestsellers_aggregated_daily \
    --ignore-table fleshlig_magento.s_sales_bestsellers_aggregated_monthly \
    --ignore-table fleshlig_magento.s_sales_bestsellers_aggregated_yearly \
    --ignore-table fleshlig_magento.s_sales_billing_agreement \
    --ignore-table fleshlig_magento.s_sales_billing_agreement_order \
    --ignore-table fleshlig_magento.s_sales_flat_creditmemo \
    --ignore-table fleshlig_magento.s_sales_flat_creditmemo_comment \
    --ignore-table fleshlig_magento.s_sales_flat_creditmemo_grid \
    --ignore-table fleshlig_magento.s_sales_flat_creditmemo_item \
    --ignore-table fleshlig_magento.s_sales_flat_invoice \
    --ignore-table fleshlig_magento.s_sales_flat_invoice_comment \
    --ignore-table fleshlig_magento.s_sales_flat_invoice_grid \
    --ignore-table fleshlig_magento.s_sales_flat_invoice_item \
    --ignore-table fleshlig_magento.s_sales_flat_order \
    --ignore-table fleshlig_magento.s_sales_flat_order_address \
    --ignore-table fleshlig_magento.s_sales_flat_order_grid \
    --ignore-table fleshlig_magento.s_sales_flat_order_item \
    --ignore-table fleshlig_magento.s_sales_flat_order_payment \
    --ignore-table fleshlig_magento.s_sales_flat_order_status_history \
    --ignore-table fleshlig_magento.s_sales_flat_quote \
    --ignore-table fleshlig_magento.s_sales_flat_quote_address \
    --ignore-table fleshlig_magento.s_sales_flat_quote_address_item \
    --ignore-table fleshlig_magento.s_sales_flat_quote_item \
    --ignore-table fleshlig_magento.s_sales_flat_quote_item_option \
    --ignore-table fleshlig_magento.s_sales_flat_quote_payment \
    --ignore-table fleshlig_magento.s_sales_flat_quote_shipping_rate \
    --ignore-table fleshlig_magento.s_sales_flat_shipment \
    --ignore-table fleshlig_magento.s_sales_flat_shipment_comment \
    --ignore-table fleshlig_magento.s_sales_flat_shipment_grid \
    --ignore-table fleshlig_magento.s_sales_flat_shipment_item \
    --ignore-table fleshlig_magento.s_sales_flat_shipment_track \
    --ignore-table fleshlig_magento.s_sales_invoiced_aggregated \
    --ignore-table fleshlig_magento.s_sales_invoiced_aggregated_order \
    --ignore-table fleshlig_magento.s_sales_order_aggregated_created \
    --ignore-table fleshlig_magento.s_sales_order_aggregated_updated \
    --ignore-table fleshlig_magento.s_sales_order_status \
    --ignore-table fleshlig_magento.s_sales_order_status_label \
    --ignore-table fleshlig_magento.s_sales_order_status_state \
    --ignore-table fleshlig_magento.s_sales_order_tax \
    --ignore-table fleshlig_magento.s_sales_payment_transaction \
    --ignore-table fleshlig_magento.s_sales_recurring_profile \
    --ignore-table fleshlig_magento.s_sales_recurring_profile_order \
    --ignore-table fleshlig_magento.s_sales_refunded_aggregated \
    --ignore-table fleshlig_magento.s_sales_refunded_aggregated_order \
    --ignore-table fleshlig_magento.s_sales_shipping_aggregated \
    --ignore-table fleshlig_magento.s_sales_shipping_aggregated_order \
    --ignore-table fleshlig_magento.s_tag \
    --ignore-table fleshlig_magento.s_tag_properties \
    --ignore-table fleshlig_magento.s_tag_relation \
    --ignore-table fleshlig_magento.s_tag_summary \
    --ignore-table fleshlig_magento.s_wishlist \
    --ignore-table fleshlig_magento.s_wishlist_item \
    --ignore-table fleshlig_magento.s_wishlist_item_option \
    >> fli.magento.dev.dump.sql
gzip fli.magento.dev.dump.sql
