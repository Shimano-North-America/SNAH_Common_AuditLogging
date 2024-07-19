using SNAH.Common.ECOM from '../db/Schema_Common_ECOM_OrderLogging';

service OrderLogger {
    @requires: 'authenticated-user'
    entity OrderLog as projection on ECOM.OrderLogging;

    @requires: 'authenticated-user'
    entity OrderNumXref as projection on ECOM.OrderXRef;
    @requires: 'authenticated-user'
    entity OrderView as projection on ECOM.orderView;
}
