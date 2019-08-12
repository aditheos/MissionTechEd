{
	"contents": {
		"e0a1380c-f9cd-443b-b989-f46c0937fbd1": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "orderapproval",
			"subject": "orderApproval",
			"name": "orderApproval",
			"documentation": "",
			"lastIds": "96a9583e-37db-485d-a362-bd30df273780",
			"events": {
				"7b475023-984f-4992-be94-3389800776e1": {
					"name": "StartEvent1"
				},
				"2d3c3665-a4e4-4d98-9baf-ff79b5a97fbb": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"58e03e41-da98-451e-919a-86884f087703": {
					"name": "getOrderDetail"
				},
				"0d4c4470-e4f4-4fa6-bc49-3213a8b0f898": {
					"name": "approveOrderEmployee"
				},
				"d0f44e61-d0bb-415c-8e5f-747670e8b89a": {
					"name": "createOrderDisplay"
				},
				"14b5f8cb-0f6c-4e91-a1df-88485911ca7b": {
					"name": "ExclusiveGateway2"
				},
				"6e9bce99-abc0-4a21-ab2a-9229291524fc": {
					"name": "approveOrderManager"
				}
			},
			"sequenceFlows": {
				"a4d148dc-aee5-4930-9781-47374c442dea": {
					"name": "SequenceFlow1"
				},
				"efdafb39-4a9a-431c-be10-1ffefff0c5b1": {
					"name": "SequenceFlow2"
				},
				"1960421b-2857-47df-9a1f-9889beb2a421": {
					"name": "SequenceFlow3"
				},
				"11d7696c-7592-4fda-ae5d-cde5bed1a50c": {
					"name": "SequenceFlow4"
				},
				"37644635-c486-4cef-a08c-520ec74739b5": {
					"name": "SequenceFlow5"
				},
				"b5652eae-aa24-43b3-8130-bb904b68caff": {
					"name": "SequenceFlow6"
				},
				"6147a59d-44b5-4c16-bf3a-555f1725e2e9": {
					"name": "SequenceFlow7"
				}
			},
			"diagrams": {
				"4882766e-2659-428e-98b3-41d3e96ddb16": {}
			}
		},
		"7b475023-984f-4992-be94-3389800776e1": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"966bd9af-f06a-4a37-88fe-8599d991a587": {}
			}
		},
		"2d3c3665-a4e4-4d98-9baf-ff79b5a97fbb": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"58e03e41-da98-451e-919a-86884f087703": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "NWDATA",
			"path": "/V3/Northwind/Northwind.svc/Orders(${context.OrderID})?$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.ShipmentDetails}",
			"id": "servicetask1",
			"name": "getOrderDetail",
			"documentation": "Check the Order info and Approve"
		},
		"a4d148dc-aee5-4930-9781-47374c442dea": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "7b475023-984f-4992-be94-3389800776e1",
			"targetRef": "58e03e41-da98-451e-919a-86884f087703"
		},
		"efdafb39-4a9a-431c-be10-1ffefff0c5b1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "58e03e41-da98-451e-919a-86884f087703",
			"targetRef": "d0f44e61-d0bb-415c-8e5f-747670e8b89a"
		},
		"4882766e-2659-428e-98b3-41d3e96ddb16": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"2ff80497-a5be-498f-a645-3358c6e78a39": {},
				"8af92cb3-e0e8-4f0c-9797-b60e84d26679": {},
				"4da3b610-5099-4447-b15a-47a399dcd12a": {},
				"f2b38630-4bb8-4c1d-97db-99cbbb13bfe2": {},
				"a4331154-2230-4746-84a5-91714bbf28f0": {},
				"69a0fa2a-33d0-4e97-ba27-9737f896a269": {},
				"7d893b00-8b24-4d9e-8ac6-ccca02089d0f": {},
				"25fb9608-43f0-4e06-9891-8f1e30f44f49": {},
				"5a703296-8d9c-427c-915f-0d75f7f04708": {},
				"94270ff5-afeb-48ee-9656-25faed80a444": {},
				"bacc9636-64ed-4dc0-8076-8bcdf025f3b5": {},
				"f4843a84-80de-4db1-9ed6-212c96076fd8": {},
				"fd597f09-0c88-48f0-ac65-f7a0cde45066": {},
				"734ef7fd-b50b-407e-a964-bf1ae276a7e9": {}
			}
		},
		"966bd9af-f06a-4a37-88fe-8599d991a587": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/orderApproval/order.json",
			"id": "default-start-context"
		},
		"2ff80497-a5be-498f-a645-3358c6e78a39": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 16,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "7b475023-984f-4992-be94-3389800776e1"
		},
		"8af92cb3-e0e8-4f0c-9797-b60e84d26679": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 555,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2d3c3665-a4e4-4d98-9baf-ff79b5a97fbb"
		},
		"4da3b610-5099-4447-b15a-47a399dcd12a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "32,117 128,117",
			"sourceSymbol": "2ff80497-a5be-498f-a645-3358c6e78a39",
			"targetSymbol": "f2b38630-4bb8-4c1d-97db-99cbbb13bfe2",
			"object": "a4d148dc-aee5-4930-9781-47374c442dea"
		},
		"f2b38630-4bb8-4c1d-97db-99cbbb13bfe2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 78,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "58e03e41-da98-451e-919a-86884f087703"
		},
		"a4331154-2230-4746-84a5-91714bbf28f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "128,118 259,118",
			"sourceSymbol": "f2b38630-4bb8-4c1d-97db-99cbbb13bfe2",
			"targetSymbol": "25fb9608-43f0-4e06-9891-8f1e30f44f49",
			"object": "efdafb39-4a9a-431c-be10-1ffefff0c5b1"
		},
		"96a9583e-37db-485d-a362-bd30df273780": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 2
		},
		"0d4c4470-e4f4-4fa6-bc49-3213a8b0f898": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Order for ${context.ShipmentDetails.OrderID}",
			"description": "Mr. Employee, please confirm the order to customer \" ${context.ShipmentDetails.ShipName} \"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/entrytoteched/webapp/my.entryToTechEd",
			"recipientUsers": "P980024",
			"id": "usertask1",
			"name": "approveOrderEmployee",
			"documentation": "Approve Order"
		},
		"69a0fa2a-33d0-4e97-ba27-9737f896a269": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 428,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "0d4c4470-e4f4-4fa6-bc49-3213a8b0f898"
		},
		"1960421b-2857-47df-9a1f-9889beb2a421": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "0d4c4470-e4f4-4fa6-bc49-3213a8b0f898",
			"targetRef": "2d3c3665-a4e4-4d98-9baf-ff79b5a97fbb"
		},
		"7d893b00-8b24-4d9e-8ac6-ccca02089d0f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "478,41.75 541.75,41.75 541.75,117.75 572.5,117.75",
			"sourceSymbol": "69a0fa2a-33d0-4e97-ba27-9737f896a269",
			"targetSymbol": "8af92cb3-e0e8-4f0c-9797-b60e84d26679",
			"object": "1960421b-2857-47df-9a1f-9889beb2a421"
		},
		"d0f44e61-d0bb-415c-8e5f-747670e8b89a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/orderApproval/orderDisplay.js",
			"id": "scripttask1",
			"name": "createOrderDisplay",
			"documentation": "Create Order Display"
		},
		"25fb9608-43f0-4e06-9891-8f1e30f44f49": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 209,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "d0f44e61-d0bb-415c-8e5f-747670e8b89a"
		},
		"11d7696c-7592-4fda-ae5d-cde5bed1a50c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "d0f44e61-d0bb-415c-8e5f-747670e8b89a",
			"targetRef": "14b5f8cb-0f6c-4e91-a1df-88485911ca7b"
		},
		"5a703296-8d9c-427c-915f-0d75f7f04708": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "259,118 357,118",
			"sourceSymbol": "25fb9608-43f0-4e06-9891-8f1e30f44f49",
			"targetSymbol": "94270ff5-afeb-48ee-9656-25faed80a444",
			"object": "11d7696c-7592-4fda-ae5d-cde5bed1a50c"
		},
		"14b5f8cb-0f6c-4e91-a1df-88485911ca7b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "37644635-c486-4cef-a08c-520ec74739b5"
		},
		"94270ff5-afeb-48ee-9656-25faed80a444": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 336,
			"y": 97,
			"object": "14b5f8cb-0f6c-4e91-a1df-88485911ca7b"
		},
		"37644635-c486-4cef-a08c-520ec74739b5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "14b5f8cb-0f6c-4e91-a1df-88485911ca7b",
			"targetRef": "0d4c4470-e4f4-4fa6-bc49-3213a8b0f898"
		},
		"bacc9636-64ed-4dc0-8076-8bcdf025f3b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "357,118 403,118 403,42 478,42",
			"sourceSymbol": "94270ff5-afeb-48ee-9656-25faed80a444",
			"targetSymbol": "69a0fa2a-33d0-4e97-ba27-9737f896a269",
			"object": "37644635-c486-4cef-a08c-520ec74739b5"
		},
		"6e9bce99-abc0-4a21-ab2a-9229291524fc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Order for ${context.ShipmentDetails.OrderID}",
			"description": "Mr. Manager please confirm the order to customer \" ${context.ShipmentDetails.ShipName} \"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/entrytoteched/webapp/my.entryToTechEd",
			"recipientUsers": "P980024",
			"id": "usertask2",
			"name": "approveOrderManager"
		},
		"f4843a84-80de-4db1-9ed6-212c96076fd8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 428,
			"y": 200,
			"width": 100,
			"height": 60,
			"object": "6e9bce99-abc0-4a21-ab2a-9229291524fc"
		},
		"b5652eae-aa24-43b3-8130-bb904b68caff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${ context.manager == true }",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "14b5f8cb-0f6c-4e91-a1df-88485911ca7b",
			"targetRef": "6e9bce99-abc0-4a21-ab2a-9229291524fc"
		},
		"fd597f09-0c88-48f0-ac65-f7a0cde45066": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "357,118 403,118 403,234 490,234",
			"sourceSymbol": "94270ff5-afeb-48ee-9656-25faed80a444",
			"targetSymbol": "f4843a84-80de-4db1-9ed6-212c96076fd8",
			"object": "b5652eae-aa24-43b3-8130-bb904b68caff"
		},
		"6147a59d-44b5-4c16-bf3a-555f1725e2e9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "6e9bce99-abc0-4a21-ab2a-9229291524fc",
			"targetRef": "2d3c3665-a4e4-4d98-9baf-ff79b5a97fbb"
		},
		"734ef7fd-b50b-407e-a964-bf1ae276a7e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "478,230 478,167.25 558,167.25 558,126",
			"sourceSymbol": "f4843a84-80de-4db1-9ed6-212c96076fd8",
			"targetSymbol": "8af92cb3-e0e8-4f0c-9797-b60e84d26679",
			"object": "6147a59d-44b5-4c16-bf3a-555f1725e2e9"
		}
	}
}