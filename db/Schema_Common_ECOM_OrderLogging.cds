namespace SNAH.Common.ECOM;

entity OrderLogging {
    key ecommordernumber : String(16)
        @Core.Description: 'Order number submitted from ecomm system';
        ecommrepplacedorder   : String(8)
        @Core.Description: 'yes or no will drive original order type in B2B';
        ecommorderid     : String(32)
        @Core.Description: 'ID of order coming from ecomm';
        ecommordersource : String(16)
        @Core.Description: 'Source of order (ie GB2B, Shopify)';
        transactid       : String(40)
        @Core.Description: 'Custom transaction Id';
        ponumber         : String(32)
        @Core.Description: 'PO Number from source';
        iflowname        : String(64)
        @Core.Description: 'Name of iFlow that wrote the log';
        dateupdated      : DateTime
        @Core.Description: 'Date and time last updated';
        payload          : LargeString
        @Core.Description: 'holds the Order Playload from ecomm system';
        id               : UUID
        @Core.Description: 'System-provided unique Id';
}

entity OrderXRef {
    key ecommordernumber : String(16)
        @Core.Description: 'Order number submitted from ecomm system';
        erpordernumber   : String(16)
        @Core.Description: 'Order number returned from ERP';
        ecommtranslatedordertype : String(8)
        @Core.Description: 'Order Type converted to ERP ecomm (original) order type';
        erpordertype     : String(8)
        @Core.Description: 'Order Type returned from ERP';
        erpresult        : String(16)
        @Core.Description: 'Result from call to ERP (ie success , failure) ';
        erpmessage       : String(255)
        @Core.Description: 'Message From ERP System';
        ermresponsepayload: String(4096)
        @Core.Description : 'response payload from ERP';
        transactid       : String(40)
        @Core.Description: 'Custom transaction Id';
        dateupdated      : DateTime
        @Core.Description: 'Date and time last updated';
}

entity orderView as select 
    key ol.ecommordernumber,
    ol.ecommrepplacedorder,
    xref.ecommtranslatedordertype,
    xref.erpordernumber,
    xref.erpordertype,
     ol.ponumber,
    ol.ecommordersource,
    ol.transactid,
    xref.erpresult,
    xref.erpmessage,
    xref.ermresponsepayload,
    ol.dateupdated as orderlogupdateddate,
    xref.dateupdated as erpudpatedate,
    ol.iflowname,
    ol.payload
from OrderLogging  as ol 
 left join OrderXRef as xref on  ol.ecommordernumber = xref.ecommordernumber;
