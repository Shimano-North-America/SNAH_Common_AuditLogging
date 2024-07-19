using OrderLogger as service from '../../srv/SRV_Common_ECOM_OrderLogging';
annotate service.OrderView with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ecommordernumber',
                Value : ecommordernumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ecommrepplacedorder',
                Value : ecommrepplacedorder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ecommtranslatedordertype',
                Value : ecommtranslatedordertype,
            },
            {
                $Type : 'UI.DataField',
                Label : 'erpordernumber',
                Value : erpordernumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'erpordertype',
                Value : erpordertype,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ponumber',
                Value : ponumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ecommordersource',
                Value : ecommordersource,
            },
            {
                $Type : 'UI.DataField',
                Label : 'transactid',
                Value : transactid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'erpresult',
                Value : erpresult,
            },
            {
                $Type : 'UI.DataField',
                Label : 'erpmessage',
                Value : erpmessage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ermresponsepayload',
                Value : ermresponsepayload,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orderlogupdateddate',
                Value : orderlogupdateddate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'erpudpatedate',
                Value : erpudpatedate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'iflowname',
                Value : iflowname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'payload',
                Value : payload,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Ec omm Order Number',
            Value : ecommordernumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EComm Order Type',
            Value : ecommtranslatedordertype,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Erp Order Number',
            Value : erpordernumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Erp Order Type',
            Value : erpordertype,
        },
        {
                $Type : 'UI.DataField',
                Label : 'Import Results',
                Value : erpresult,
            },
         {
                $Type : 'UI.DataField',
                Label : 'Erp UdpateDate',
                Value : erpudpatedate,
            },
    ],
);

