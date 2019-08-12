{
	"contents": {
		"6f672969-7cb3-4b56-b699-7f5471cc69a5": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "missionteched",
			"subject": "missionTechEd",
			"name": "missionTechEd",
			"documentation": "Mission TechEd 2019",
			"lastIds": "12b96938-c24a-4443-9ca6-d60e33c7b4a7",
			"events": {
				"0808bc94-0879-4b85-b3a4-4f89dc06a30c": {
					"name": "StartEvent1"
				},
				"8a762e73-282c-4118-b4dd-6a99561c25be": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"2c725bf1-3aa8-40b6-999e-3060ec4db81a": {
					"name": "CheckApproveMission"
				}
			},
			"sequenceFlows": {
				"08831358-447e-4066-8b2e-90dc56cec4f8": {
					"name": "SequenceFlow1"
				},
				"33a6b3c8-b9fb-4060-8713-9fbd0c062fdf": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"d3c1f229-e06f-4993-98e3-057c4a3a196b": {}
			}
		},
		"0808bc94-0879-4b85-b3a4-4f89dc06a30c": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"8a762e73-282c-4118-b4dd-6a99561c25be": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"08831358-447e-4066-8b2e-90dc56cec4f8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "0808bc94-0879-4b85-b3a4-4f89dc06a30c",
			"targetRef": "2c725bf1-3aa8-40b6-999e-3060ec4db81a"
		},
		"d3c1f229-e06f-4993-98e3-057c4a3a196b": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"ef2b7387-5e91-47a4-9f09-afe9c9cd5287": {},
				"e97fe05b-8b99-4456-885e-7dff24e1894a": {},
				"bc24738f-4b5f-41a2-bf33-da6387bb1135": {},
				"3b3d8f93-598e-406e-98ca-2e0f51af5aca": {},
				"dc2730cc-ba3f-4fec-922f-0f6a9b8f0ae6": {}
			}
		},
		"ef2b7387-5e91-47a4-9f09-afe9c9cd5287": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "0808bc94-0879-4b85-b3a4-4f89dc06a30c"
		},
		"e97fe05b-8b99-4456-885e-7dff24e1894a": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "8a762e73-282c-4118-b4dd-6a99561c25be"
		},
		"bc24738f-4b5f-41a2-bf33-da6387bb1135": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 237,116",
			"sourceSymbol": "ef2b7387-5e91-47a4-9f09-afe9c9cd5287",
			"targetSymbol": "3b3d8f93-598e-406e-98ca-2e0f51af5aca",
			"object": "08831358-447e-4066-8b2e-90dc56cec4f8"
		},
		"12b96938-c24a-4443-9ca6-d60e33c7b4a7": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2
		},
		"2c725bf1-3aa8-40b6-999e-3060ec4db81a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Can you see the product ${context.product}, then Apporve the Mission TechEd2019 ",
			"description": "If you can see the Workitem in your Inbox and Product name in subject then, please do approve the person for TechEd 2019 Entry.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P980024",
			"formReference": "/forms/missionTechEd/approveEntryTechEd2019.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approveentryteched2019"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "CheckApproveMission",
			"documentation": "Check and Approve Mission to TechEd"
		},
		"3b3d8f93-598e-406e-98ca-2e0f51af5aca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 187,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "2c725bf1-3aa8-40b6-999e-3060ec4db81a"
		},
		"33a6b3c8-b9fb-4060-8713-9fbd0c062fdf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "2c725bf1-3aa8-40b6-999e-3060ec4db81a",
			"targetRef": "8a762e73-282c-4118-b4dd-6a99561c25be"
		},
		"dc2730cc-ba3f-4fec-922f-0f6a9b8f0ae6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "237,116.75 357.5,116.75",
			"sourceSymbol": "3b3d8f93-598e-406e-98ca-2e0f51af5aca",
			"targetSymbol": "e97fe05b-8b99-4456-885e-7dff24e1894a",
			"object": "33a6b3c8-b9fb-4060-8713-9fbd0c062fdf"
		}
	}
}