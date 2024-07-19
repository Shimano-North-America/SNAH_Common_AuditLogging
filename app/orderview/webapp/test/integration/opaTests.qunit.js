sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'orderview/orderview/test/integration/FirstJourney',
		'orderview/orderview/test/integration/pages/OrderViewList',
		'orderview/orderview/test/integration/pages/OrderViewObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderViewList, OrderViewObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('orderview/orderview') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderViewList: OrderViewList,
					onTheOrderViewObjectPage: OrderViewObjectPage
                }
            },
            opaJourney.run
        );
    }
);