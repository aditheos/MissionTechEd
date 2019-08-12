$.context.genericusertask = {
	control: {
		source: "/ShipmentDetails",
		properties: ["CustomerID", "OrderDate", "RequiredDate", "ShipVia", "Freight", "ShipAddress", "ShipCity", "ShipPostalCode", "ShipCountry"]
	}
};

$.context.manager = $.context.ShipmentDetails.Freight > "50.00";