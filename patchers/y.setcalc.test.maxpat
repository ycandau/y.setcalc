{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 20.0, 133.0, 968.0, 774.0 ],
		"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
		"editing_bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 11,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "dark_std",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 75.0, 214.0, 34.0 ],
					"style" : "",
					"text" : "Check the referenc dict against which the calculated values are checked"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 75.0, 210.0, 20.0 ],
					"style" : "",
					"text" : "Run test using Forte or Rahn mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 15.0, 150.0, 34.0 ],
					"style" : "",
					"text" : "Test y.setcalc for all possible pitch classes"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 210.0, 57.0, 22.0 ],
					"style" : "",
					"text" : "s setcalc"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 405.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r setcalc"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 210.0, 28.0, 22.0 ],
					"style" : "",
					"text" : "s js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 150.0, 124.0, 22.0 ],
					"style" : "",
					"text" : "t s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 180.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "prime_type $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 180.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "test_setcalc $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 120.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "Rahn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 120.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "Forte"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 450.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 495.0, 150.0, 22.0 ],
					"style" : "",
					"text" : "0 1 2 3 4 5 6 7 8 9 10 11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 495.0, 105.0, 22.0 ],
					"style" : "",
					"text" : "12 12 12 12 12 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 495.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "12-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 315.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 150.0, 105.0, 22.0 ],
					"style" : "",
					"text" : "test_dict"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 180.0, 28.0, 22.0 ],
					"style" : "",
					"text" : "s js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 120.0, 105.0, 22.0 ],
					"style" : "",
					"text" : "sort_dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 540.0, 30.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 60.0, 141.0, 22.0 ],
					"style" : "",
					"text" : "import y.setcalc.test.json"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 270.0, 30.0, 22.0 ],
					"style" : "",
					"text" : "r js"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 630.0, 45.0, 22.0 ],
					"style" : "",
					"text" : "s js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 585.0, 163.0, 22.0 ],
					"style" : "",
					"text" : "prepend test_setcalc_results"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 540.0, 300.0, 22.0 ],
					"style" : "",
					"text" : "join 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 360.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "12-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 360.0, 165.0, 22.0 ],
					"style" : "",
					"text" : "0 1 2 3 4 5 6 7 8 9 10 11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "list", "list", "list", "list", "list" ],
					"patching_rect" : [ 75.0, 450.0, 375.0, 22.0 ],
					"saved_object_attributes" : 					{
						"prime_type" : "rahn",
						"verbose" : 1
					}
,
					"style" : "",
					"text" : "y.setcalc"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"pitch_classes" : 						{
							"0-1" : 							{
								"forte" : "0-1",
								"primeform_f" : "",
								"primeform_r" : "",
								"icv" : [ 0, 0, 0, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"1-1" : 							{
								"forte" : "1-1",
								"primeform_f" : "0",
								"primeform_r" : "0",
								"icv" : [ 0, 0, 0, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-1" : 							{
								"forte" : "2-1",
								"primeform_f" : "01",
								"primeform_r" : "01",
								"icv" : [ 1, 0, 0, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-2" : 							{
								"forte" : "2-2",
								"primeform_f" : "02",
								"primeform_r" : "02",
								"icv" : [ 0, 1, 0, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-3" : 							{
								"forte" : "2-3",
								"primeform_f" : "03",
								"primeform_r" : "03",
								"icv" : [ 0, 0, 1, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-4" : 							{
								"forte" : "2-4",
								"primeform_f" : "04",
								"primeform_r" : "04",
								"icv" : [ 0, 0, 0, 1, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-5" : 							{
								"forte" : "2-5",
								"primeform_f" : "05",
								"primeform_r" : "05",
								"icv" : [ 0, 0, 0, 0, 1, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"2-6" : 							{
								"forte" : "2-6",
								"primeform_f" : "06",
								"primeform_r" : "06",
								"icv" : [ 0, 0, 0, 0, 0, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"3-1" : 							{
								"forte" : "3-1",
								"primeform_f" : "012",
								"primeform_r" : "012",
								"icv" : [ 2, 1, 0, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"3-2" : 							{
								"forte" : "3-2",
								"primeform_f" : "013",
								"primeform_r" : "013",
								"icv" : [ 1, 1, 1, 0, 0, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-3" : 							{
								"forte" : "3-3",
								"primeform_f" : "014",
								"primeform_r" : "014",
								"icv" : [ 1, 0, 1, 1, 0, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-4" : 							{
								"forte" : "3-4",
								"primeform_f" : "015",
								"primeform_r" : "015",
								"icv" : [ 1, 0, 0, 1, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-5" : 							{
								"forte" : "3-5",
								"primeform_f" : "016",
								"primeform_r" : "016",
								"icv" : [ 1, 0, 0, 0, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-6" : 							{
								"forte" : "3-6",
								"primeform_f" : "024",
								"primeform_r" : "024",
								"icv" : [ 0, 2, 0, 1, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"3-7" : 							{
								"forte" : "3-7",
								"primeform_f" : "025",
								"primeform_r" : "025",
								"icv" : [ 0, 1, 1, 0, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-8" : 							{
								"forte" : "3-8",
								"primeform_f" : "026",
								"primeform_r" : "026",
								"icv" : [ 0, 1, 0, 1, 0, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-9" : 							{
								"forte" : "3-9",
								"primeform_f" : "027",
								"primeform_r" : "027",
								"icv" : [ 0, 1, 0, 0, 2, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"3-10" : 							{
								"forte" : "3-10",
								"primeform_f" : "036",
								"primeform_r" : "036",
								"icv" : [ 0, 0, 2, 0, 0, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"3-11" : 							{
								"forte" : "3-11",
								"primeform_f" : "037",
								"primeform_r" : "037",
								"icv" : [ 0, 0, 1, 1, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"3-12" : 							{
								"forte" : "3-12",
								"primeform_f" : "048",
								"primeform_r" : "048",
								"icv" : [ 0, 0, 0, 3, 0, 0 ],
								"invariance" : [ 3, 3 ]
							}
,
							"4-1" : 							{
								"forte" : "4-1",
								"primeform_f" : "0123",
								"primeform_r" : "0123",
								"icv" : [ 3, 2, 1, 0, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-2" : 							{
								"forte" : "4-2",
								"primeform_f" : "0124",
								"primeform_r" : "0124",
								"icv" : [ 2, 2, 1, 1, 0, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-3" : 							{
								"forte" : "4-3",
								"primeform_f" : "0134",
								"primeform_r" : "0134",
								"icv" : [ 2, 1, 2, 1, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-4" : 							{
								"forte" : "4-4",
								"primeform_f" : "0125",
								"primeform_r" : "0125",
								"icv" : [ 2, 1, 1, 1, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-5" : 							{
								"forte" : "4-5",
								"primeform_f" : "0126",
								"primeform_r" : "0126",
								"icv" : [ 2, 1, 0, 1, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-6" : 							{
								"forte" : "4-6",
								"primeform_f" : "0127",
								"primeform_r" : "0127",
								"icv" : [ 2, 1, 0, 0, 2, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-7" : 							{
								"forte" : "4-7",
								"primeform_f" : "0145",
								"primeform_r" : "0145",
								"icv" : [ 2, 0, 1, 2, 1, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-8" : 							{
								"forte" : "4-8",
								"primeform_f" : "0156",
								"primeform_r" : "0156",
								"icv" : [ 2, 0, 0, 1, 2, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-9" : 							{
								"forte" : "4-9",
								"primeform_f" : "0167",
								"primeform_r" : "0167",
								"icv" : [ 2, 0, 0, 0, 2, 2 ],
								"invariance" : [ 2, 2 ]
							}
,
							"4-10" : 							{
								"forte" : "4-10",
								"primeform_f" : "0235",
								"primeform_r" : "0235",
								"icv" : [ 1, 2, 2, 0, 1, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-11" : 							{
								"forte" : "4-11",
								"primeform_f" : "0135",
								"primeform_r" : "0135",
								"icv" : [ 1, 2, 1, 1, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-12" : 							{
								"forte" : "4-12",
								"primeform_f" : "0236",
								"primeform_r" : "0236",
								"icv" : [ 1, 1, 2, 1, 0, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-13" : 							{
								"forte" : "4-13",
								"primeform_f" : "0136",
								"primeform_r" : "0136",
								"icv" : [ 1, 1, 2, 0, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-14" : 							{
								"forte" : "4-14",
								"primeform_f" : "0237",
								"primeform_r" : "0237",
								"icv" : [ 1, 1, 1, 1, 2, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-15" : 							{
								"forte" : "4-Z15",
								"primeform_f" : "0146",
								"primeform_r" : "0146",
								"icv" : [ 1, 1, 1, 1, 1, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "4-Z29"
							}
,
							"4-16" : 							{
								"forte" : "4-16",
								"primeform_f" : "0157",
								"primeform_r" : "0157",
								"icv" : [ 1, 1, 0, 1, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-17" : 							{
								"forte" : "4-17",
								"primeform_f" : "0347",
								"primeform_r" : "0347",
								"icv" : [ 1, 0, 2, 2, 1, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-18" : 							{
								"forte" : "4-18",
								"primeform_f" : "0147",
								"primeform_r" : "0147",
								"icv" : [ 1, 0, 2, 1, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-19" : 							{
								"forte" : "4-19",
								"primeform_f" : "0148",
								"primeform_r" : "0148",
								"icv" : [ 1, 0, 1, 3, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-20" : 							{
								"forte" : "4-20",
								"primeform_f" : "0158",
								"primeform_r" : "0158",
								"icv" : [ 1, 0, 1, 2, 2, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-21" : 							{
								"forte" : "4-21",
								"primeform_f" : "0246",
								"primeform_r" : "0246",
								"icv" : [ 0, 3, 0, 2, 0, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-22" : 							{
								"forte" : "4-22",
								"primeform_f" : "0247",
								"primeform_r" : "0247",
								"icv" : [ 0, 2, 1, 1, 2, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-23" : 							{
								"forte" : "4-23",
								"primeform_f" : "0257",
								"primeform_r" : "0257",
								"icv" : [ 0, 2, 1, 0, 3, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-24" : 							{
								"forte" : "4-24",
								"primeform_f" : "0248",
								"primeform_r" : "0248",
								"icv" : [ 0, 2, 0, 3, 0, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-25" : 							{
								"forte" : "4-25",
								"primeform_f" : "0268",
								"primeform_r" : "0268",
								"icv" : [ 0, 2, 0, 2, 0, 2 ],
								"invariance" : [ 2, 2 ]
							}
,
							"4-26" : 							{
								"forte" : "4-26",
								"primeform_f" : "0358",
								"primeform_r" : "0358",
								"icv" : [ 0, 1, 2, 1, 2, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"4-27" : 							{
								"forte" : "4-27",
								"primeform_f" : "0258",
								"primeform_r" : "0258",
								"icv" : [ 0, 1, 2, 1, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"4-28" : 							{
								"forte" : "4-28",
								"primeform_f" : "0369",
								"primeform_r" : "0369",
								"icv" : [ 0, 0, 4, 0, 0, 2 ],
								"invariance" : [ 4, 4 ]
							}
,
							"4-29" : 							{
								"forte" : "4-Z29",
								"primeform_f" : "0137",
								"primeform_r" : "0137",
								"icv" : [ 1, 1, 1, 1, 1, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "4-Z15"
							}
,
							"5-1" : 							{
								"forte" : "5-1",
								"primeform_f" : "01234",
								"primeform_r" : "01234",
								"icv" : [ 4, 3, 2, 1, 0, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-2" : 							{
								"forte" : "5-2",
								"primeform_f" : "01235",
								"primeform_r" : "01235",
								"icv" : [ 3, 3, 2, 1, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-3" : 							{
								"forte" : "5-3",
								"primeform_f" : "01245",
								"primeform_r" : "01245",
								"icv" : [ 3, 2, 2, 2, 1, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-4" : 							{
								"forte" : "5-4",
								"primeform_f" : "01236",
								"primeform_r" : "01236",
								"icv" : [ 3, 2, 2, 1, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-5" : 							{
								"forte" : "5-5",
								"primeform_f" : "01237",
								"primeform_r" : "01237",
								"icv" : [ 3, 2, 1, 1, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-6" : 							{
								"forte" : "5-6",
								"primeform_f" : "01256",
								"primeform_r" : "01256",
								"icv" : [ 3, 1, 1, 2, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-7" : 							{
								"forte" : "5-7",
								"primeform_f" : "01267",
								"primeform_r" : "01267",
								"icv" : [ 3, 1, 0, 1, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-8" : 							{
								"forte" : "5-8",
								"primeform_f" : "02346",
								"primeform_r" : "02346",
								"icv" : [ 2, 3, 2, 2, 0, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-9" : 							{
								"forte" : "5-9",
								"primeform_f" : "01246",
								"primeform_r" : "01246",
								"icv" : [ 2, 3, 1, 2, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-10" : 							{
								"forte" : "5-10",
								"primeform_f" : "01346",
								"primeform_r" : "01346",
								"icv" : [ 2, 2, 3, 1, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-11" : 							{
								"forte" : "5-11",
								"primeform_f" : "02347",
								"primeform_r" : "02347",
								"icv" : [ 2, 2, 2, 2, 2, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-12" : 							{
								"forte" : "5-Z12",
								"primeform_f" : "01356",
								"primeform_r" : "01356",
								"icv" : [ 2, 2, 2, 1, 2, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "5-Z36"
							}
,
							"5-13" : 							{
								"forte" : "5-13",
								"primeform_f" : "01248",
								"primeform_r" : "01248",
								"icv" : [ 2, 2, 1, 3, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-14" : 							{
								"forte" : "5-14",
								"primeform_f" : "01257",
								"primeform_r" : "01257",
								"icv" : [ 2, 2, 1, 1, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-15" : 							{
								"forte" : "5-15",
								"primeform_f" : "01268",
								"primeform_r" : "01268",
								"icv" : [ 2, 2, 0, 2, 2, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-16" : 							{
								"forte" : "5-16",
								"primeform_f" : "01347",
								"primeform_r" : "01347",
								"icv" : [ 2, 1, 3, 2, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-17" : 							{
								"forte" : "5-Z17",
								"primeform_f" : "01348",
								"primeform_r" : "01348",
								"icv" : [ 2, 1, 2, 3, 2, 0 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "5-Z37"
							}
,
							"5-18" : 							{
								"forte" : "5-Z18",
								"primeform_f" : "01457",
								"primeform_r" : "01457",
								"icv" : [ 2, 1, 2, 2, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "5-Z38"
							}
,
							"5-19" : 							{
								"forte" : "5-19",
								"primeform_f" : "01367",
								"primeform_r" : "01367",
								"icv" : [ 2, 1, 2, 1, 2, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-20" : 							{
								"forte" : "5-20",
								"primeform_f" : "01378",
								"primeform_r" : "01568",
								"icv" : [ 2, 1, 1, 2, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-21" : 							{
								"forte" : "5-21",
								"primeform_f" : "01458",
								"primeform_r" : "01458",
								"icv" : [ 2, 0, 2, 4, 2, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-22" : 							{
								"forte" : "5-22",
								"primeform_f" : "01478",
								"primeform_r" : "01478",
								"icv" : [ 2, 0, 2, 3, 2, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-23" : 							{
								"forte" : "5-23",
								"primeform_f" : "02357",
								"primeform_r" : "02357",
								"icv" : [ 1, 3, 2, 1, 3, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-24" : 							{
								"forte" : "5-24",
								"primeform_f" : "01357",
								"primeform_r" : "01357",
								"icv" : [ 1, 3, 1, 2, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-25" : 							{
								"forte" : "5-25",
								"primeform_f" : "02358",
								"primeform_r" : "02358",
								"icv" : [ 1, 2, 3, 1, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-26" : 							{
								"forte" : "5-26",
								"primeform_f" : "02458",
								"primeform_r" : "02458",
								"icv" : [ 1, 2, 2, 3, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-27" : 							{
								"forte" : "5-27",
								"primeform_f" : "01358",
								"primeform_r" : "01358",
								"icv" : [ 1, 2, 2, 2, 3, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-28" : 							{
								"forte" : "5-28",
								"primeform_f" : "02368",
								"primeform_r" : "02368",
								"icv" : [ 1, 2, 2, 2, 1, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-29" : 							{
								"forte" : "5-29",
								"primeform_f" : "01368",
								"primeform_r" : "01368",
								"icv" : [ 1, 2, 2, 1, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-30" : 							{
								"forte" : "5-30",
								"primeform_f" : "01468",
								"primeform_r" : "01468",
								"icv" : [ 1, 2, 1, 3, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-31" : 							{
								"forte" : "5-31",
								"primeform_f" : "01369",
								"primeform_r" : "01369",
								"icv" : [ 1, 1, 4, 1, 1, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-32" : 							{
								"forte" : "5-32",
								"primeform_f" : "01469",
								"primeform_r" : "01469",
								"icv" : [ 1, 1, 3, 2, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"5-33" : 							{
								"forte" : "5-33",
								"primeform_f" : "02468",
								"primeform_r" : "02468",
								"icv" : [ 0, 4, 0, 4, 0, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-34" : 							{
								"forte" : "5-34",
								"primeform_f" : "02469",
								"primeform_r" : "02469",
								"icv" : [ 0, 3, 2, 2, 2, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-35" : 							{
								"forte" : "5-35",
								"primeform_f" : "02479",
								"primeform_r" : "02479",
								"icv" : [ 0, 3, 2, 1, 4, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"5-36" : 							{
								"forte" : "5-Z36",
								"primeform_f" : "01247",
								"primeform_r" : "01247",
								"icv" : [ 2, 2, 2, 1, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "5-Z12"
							}
,
							"5-37" : 							{
								"forte" : "5-Z37",
								"primeform_f" : "03458",
								"primeform_r" : "03458",
								"icv" : [ 2, 1, 2, 3, 2, 0 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "5-Z17"
							}
,
							"5-38" : 							{
								"forte" : "5-Z38",
								"primeform_f" : "01258",
								"primeform_r" : "01258",
								"icv" : [ 2, 1, 2, 2, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "5-Z18"
							}
,
							"6-1" : 							{
								"forte" : "6-1",
								"primeform_f" : "012345",
								"primeform_r" : "012345",
								"icv" : [ 5, 4, 3, 2, 1, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"6-2" : 							{
								"forte" : "6-2",
								"primeform_f" : "012346",
								"primeform_r" : "012346",
								"icv" : [ 4, 4, 3, 2, 1, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-3" : 							{
								"forte" : "6-Z3",
								"primeform_f" : "012356",
								"primeform_r" : "012356",
								"icv" : [ 4, 3, 3, 2, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z36"
							}
,
							"6-4" : 							{
								"forte" : "6-Z4",
								"primeform_f" : "012456",
								"primeform_r" : "012456",
								"icv" : [ 4, 3, 2, 3, 2, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z37"
							}
,
							"6-5" : 							{
								"forte" : "6-5",
								"primeform_f" : "012367",
								"primeform_r" : "012367",
								"icv" : [ 4, 2, 2, 2, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-6" : 							{
								"forte" : "6-Z6",
								"primeform_f" : "012567",
								"primeform_r" : "012567",
								"icv" : [ 4, 2, 1, 2, 4, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z38"
							}
,
							"6-7" : 							{
								"forte" : "6-7",
								"primeform_f" : "012678",
								"primeform_r" : "012678",
								"icv" : [ 4, 2, 0, 2, 4, 3 ],
								"invariance" : [ 2, 2 ]
							}
,
							"6-8" : 							{
								"forte" : "6-8",
								"primeform_f" : "023457",
								"primeform_r" : "023457",
								"icv" : [ 3, 4, 3, 2, 3, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"6-9" : 							{
								"forte" : "6-9",
								"primeform_f" : "012357",
								"primeform_r" : "012357",
								"icv" : [ 3, 4, 2, 2, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-10" : 							{
								"forte" : "6-Z10",
								"primeform_f" : "013457",
								"primeform_r" : "013457",
								"icv" : [ 3, 3, 3, 3, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z39"
							}
,
							"6-11" : 							{
								"forte" : "6-Z11",
								"primeform_f" : "012457",
								"primeform_r" : "012457",
								"icv" : [ 3, 3, 3, 2, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z40"
							}
,
							"6-12" : 							{
								"forte" : "6-Z12",
								"primeform_f" : "012467",
								"primeform_r" : "012467",
								"icv" : [ 3, 3, 2, 2, 3, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z41"
							}
,
							"6-13" : 							{
								"forte" : "6-Z13",
								"primeform_f" : "013467",
								"primeform_r" : "013467",
								"icv" : [ 3, 2, 4, 2, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z42"
							}
,
							"6-14" : 							{
								"forte" : "6-14",
								"primeform_f" : "013458",
								"primeform_r" : "013458",
								"icv" : [ 3, 2, 3, 4, 3, 0 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-15" : 							{
								"forte" : "6-15",
								"primeform_f" : "012458",
								"primeform_r" : "012458",
								"icv" : [ 3, 2, 3, 4, 2, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-16" : 							{
								"forte" : "6-16",
								"primeform_f" : "014568",
								"primeform_r" : "014568",
								"icv" : [ 3, 2, 2, 4, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-17" : 							{
								"forte" : "6-Z17",
								"primeform_f" : "012478",
								"primeform_r" : "012478",
								"icv" : [ 3, 2, 2, 3, 3, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z43"
							}
,
							"6-18" : 							{
								"forte" : "6-18",
								"primeform_f" : "012578",
								"primeform_r" : "012578",
								"icv" : [ 3, 2, 2, 2, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-19" : 							{
								"forte" : "6-Z19",
								"primeform_f" : "013478",
								"primeform_r" : "013478",
								"icv" : [ 3, 1, 3, 4, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z44"
							}
,
							"6-20" : 							{
								"forte" : "6-20",
								"primeform_f" : "014589",
								"primeform_r" : "014589",
								"icv" : [ 3, 0, 3, 6, 3, 0 ],
								"invariance" : [ 3, 3 ]
							}
,
							"6-21" : 							{
								"forte" : "6-21",
								"primeform_f" : "023468",
								"primeform_r" : "023468",
								"icv" : [ 2, 4, 2, 4, 1, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-22" : 							{
								"forte" : "6-22",
								"primeform_f" : "012468",
								"primeform_r" : "012468",
								"icv" : [ 2, 4, 1, 4, 2, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-23" : 							{
								"forte" : "6-Z23",
								"primeform_f" : "023568",
								"primeform_r" : "023568",
								"icv" : [ 2, 3, 4, 2, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z45"
							}
,
							"6-24" : 							{
								"forte" : "6-Z24",
								"primeform_f" : "013468",
								"primeform_r" : "013468",
								"icv" : [ 2, 3, 3, 3, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z46"
							}
,
							"6-25" : 							{
								"forte" : "6-Z25",
								"primeform_f" : "013568",
								"primeform_r" : "013568",
								"icv" : [ 2, 3, 3, 2, 4, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z47"
							}
,
							"6-26" : 							{
								"forte" : "6-Z26",
								"primeform_f" : "013578",
								"primeform_r" : "013578",
								"icv" : [ 2, 3, 2, 3, 4, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z48"
							}
,
							"6-27" : 							{
								"forte" : "6-27",
								"primeform_f" : "013469",
								"primeform_r" : "013469",
								"icv" : [ 2, 2, 5, 2, 2, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-28" : 							{
								"forte" : "6-Z28",
								"primeform_f" : "013569",
								"primeform_r" : "013569",
								"icv" : [ 2, 2, 4, 3, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z49"
							}
,
							"6-29" : 							{
								"forte" : "6-Z29",
								"primeform_f" : "013689",
								"primeform_r" : "023679",
								"icv" : [ 2, 2, 4, 2, 3, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z50"
							}
,
							"6-30" : 							{
								"forte" : "6-30",
								"primeform_f" : "013679",
								"primeform_r" : "013679",
								"icv" : [ 2, 2, 4, 2, 2, 3 ],
								"invariance" : [ 2, 0 ]
							}
,
							"6-31" : 							{
								"forte" : "6-31",
								"primeform_f" : "013589",
								"primeform_r" : "014579",
								"icv" : [ 2, 2, 3, 4, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-32" : 							{
								"forte" : "6-32",
								"primeform_f" : "024579",
								"primeform_r" : "024579",
								"icv" : [ 1, 4, 3, 2, 5, 0 ],
								"invariance" : [ 1, 1 ]
							}
,
							"6-33" : 							{
								"forte" : "6-33",
								"primeform_f" : "023579",
								"primeform_r" : "023579",
								"icv" : [ 1, 4, 3, 2, 4, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-34" : 							{
								"forte" : "6-34",
								"primeform_f" : "013579",
								"primeform_r" : "013579",
								"icv" : [ 1, 4, 2, 4, 2, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-35" : 							{
								"forte" : "6-35",
								"primeform_f" : "02468A",
								"primeform_r" : "02468A",
								"icv" : [ 0, 6, 0, 6, 0, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"6-36" : 							{
								"forte" : "6-Z36",
								"primeform_f" : "012347",
								"primeform_r" : "012347",
								"icv" : [ 4, 3, 3, 2, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z3"
							}
,
							"6-37" : 							{
								"forte" : "6-Z37",
								"primeform_f" : "012348",
								"primeform_r" : "012348",
								"icv" : [ 4, 3, 2, 3, 2, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z4"
							}
,
							"6-38" : 							{
								"forte" : "6-Z38",
								"primeform_f" : "012378",
								"primeform_r" : "012378",
								"icv" : [ 4, 2, 1, 2, 4, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z6"
							}
,
							"6-39" : 							{
								"forte" : "6-Z39",
								"primeform_f" : "023458",
								"primeform_r" : "023458",
								"icv" : [ 3, 3, 3, 3, 2, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z10"
							}
,
							"6-40" : 							{
								"forte" : "6-Z40",
								"primeform_f" : "012358",
								"primeform_r" : "012358",
								"icv" : [ 3, 3, 3, 2, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z11"
							}
,
							"6-41" : 							{
								"forte" : "6-Z41",
								"primeform_f" : "012368",
								"primeform_r" : "012368",
								"icv" : [ 3, 3, 2, 2, 3, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z12"
							}
,
							"6-42" : 							{
								"forte" : "6-Z42",
								"primeform_f" : "012369",
								"primeform_r" : "012369",
								"icv" : [ 3, 2, 4, 2, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z13"
							}
,
							"6-43" : 							{
								"forte" : "6-Z43",
								"primeform_f" : "012568",
								"primeform_r" : "012568",
								"icv" : [ 3, 2, 2, 3, 3, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z17"
							}
,
							"6-44" : 							{
								"forte" : "6-Z44",
								"primeform_f" : "012569",
								"primeform_r" : "012569",
								"icv" : [ 3, 1, 3, 4, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z19"
							}
,
							"6-45" : 							{
								"forte" : "6-Z45",
								"primeform_f" : "023469",
								"primeform_r" : "023469",
								"icv" : [ 2, 3, 4, 2, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z23"
							}
,
							"6-46" : 							{
								"forte" : "6-Z46",
								"primeform_f" : "012469",
								"primeform_r" : "012469",
								"icv" : [ 2, 3, 3, 3, 3, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z24"
							}
,
							"6-47" : 							{
								"forte" : "6-Z47",
								"primeform_f" : "012479",
								"primeform_r" : "012479",
								"icv" : [ 2, 3, 3, 2, 4, 1 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "6-Z25"
							}
,
							"6-48" : 							{
								"forte" : "6-Z48",
								"primeform_f" : "012579",
								"primeform_r" : "012579",
								"icv" : [ 2, 3, 2, 3, 4, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z26"
							}
,
							"6-49" : 							{
								"forte" : "6-Z49",
								"primeform_f" : "013479",
								"primeform_r" : "013479",
								"icv" : [ 2, 2, 4, 3, 2, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z28"
							}
,
							"6-50" : 							{
								"forte" : "6-Z50",
								"primeform_f" : "014679",
								"primeform_r" : "014679",
								"icv" : [ 2, 2, 4, 2, 3, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "6-Z29"
							}
,
							"7-1" : 							{
								"forte" : "7-1",
								"primeform_f" : "0123456",
								"primeform_r" : "0123456",
								"icv" : [ 6, 5, 4, 3, 2, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-2" : 							{
								"forte" : "7-2",
								"primeform_f" : "0123457",
								"primeform_r" : "0123457",
								"icv" : [ 5, 5, 4, 3, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-3" : 							{
								"forte" : "7-3",
								"primeform_f" : "0123458",
								"primeform_r" : "0123458",
								"icv" : [ 5, 4, 4, 4, 3, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-4" : 							{
								"forte" : "7-4",
								"primeform_f" : "0123467",
								"primeform_r" : "0123467",
								"icv" : [ 5, 4, 4, 3, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-5" : 							{
								"forte" : "7-5",
								"primeform_f" : "0123567",
								"primeform_r" : "0123567",
								"icv" : [ 5, 4, 3, 3, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-6" : 							{
								"forte" : "7-6",
								"primeform_f" : "0123478",
								"primeform_r" : "0123478",
								"icv" : [ 5, 3, 3, 4, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-7" : 							{
								"forte" : "7-7",
								"primeform_f" : "0123678",
								"primeform_r" : "0123678",
								"icv" : [ 5, 3, 2, 3, 5, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-8" : 							{
								"forte" : "7-8",
								"primeform_f" : "0234568",
								"primeform_r" : "0234568",
								"icv" : [ 4, 5, 4, 4, 2, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-9" : 							{
								"forte" : "7-9",
								"primeform_f" : "0123468",
								"primeform_r" : "0123468",
								"icv" : [ 4, 5, 3, 4, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-10" : 							{
								"forte" : "7-10",
								"primeform_f" : "0123469",
								"primeform_r" : "0123469",
								"icv" : [ 4, 4, 5, 3, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-11" : 							{
								"forte" : "7-11",
								"primeform_f" : "0134568",
								"primeform_r" : "0134568",
								"icv" : [ 4, 4, 4, 4, 4, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-12" : 							{
								"forte" : "7-Z12",
								"primeform_f" : "0123479",
								"primeform_r" : "0123479",
								"icv" : [ 4, 4, 4, 3, 4, 2 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "7-Z36"
							}
,
							"7-13" : 							{
								"forte" : "7-13",
								"primeform_f" : "0124568",
								"primeform_r" : "0124568",
								"icv" : [ 4, 4, 3, 5, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-14" : 							{
								"forte" : "7-14",
								"primeform_f" : "0123578",
								"primeform_r" : "0123578",
								"icv" : [ 4, 4, 3, 3, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-15" : 							{
								"forte" : "7-15",
								"primeform_f" : "0124678",
								"primeform_r" : "0124678",
								"icv" : [ 4, 4, 2, 4, 4, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-16" : 							{
								"forte" : "7-16",
								"primeform_f" : "0123569",
								"primeform_r" : "0123569",
								"icv" : [ 4, 3, 5, 4, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-17" : 							{
								"forte" : "7-Z17",
								"primeform_f" : "0124569",
								"primeform_r" : "0124569",
								"icv" : [ 4, 3, 4, 5, 4, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "7-Z37"
							}
,
							"7-18" : 							{
								"forte" : "7-Z18",
								"primeform_f" : "0123589",
								"primeform_r" : "0145679",
								"icv" : [ 4, 3, 4, 4, 4, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "7-Z38"
							}
,
							"7-19" : 							{
								"forte" : "7-19",
								"primeform_f" : "0123679",
								"primeform_r" : "0123679",
								"icv" : [ 4, 3, 4, 3, 4, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-20" : 							{
								"forte" : "7-20",
								"primeform_f" : "0124789",
								"primeform_r" : "0125679",
								"icv" : [ 4, 3, 3, 4, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-21" : 							{
								"forte" : "7-21",
								"primeform_f" : "0124589",
								"primeform_r" : "0124589",
								"icv" : [ 4, 2, 4, 6, 4, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-22" : 							{
								"forte" : "7-22",
								"primeform_f" : "0125689",
								"primeform_r" : "0125689",
								"icv" : [ 4, 2, 4, 5, 4, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-23" : 							{
								"forte" : "7-23",
								"primeform_f" : "0234579",
								"primeform_r" : "0234579",
								"icv" : [ 3, 5, 4, 3, 5, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-24" : 							{
								"forte" : "7-24",
								"primeform_f" : "0123579",
								"primeform_r" : "0123579",
								"icv" : [ 3, 5, 3, 4, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-25" : 							{
								"forte" : "7-25",
								"primeform_f" : "0234679",
								"primeform_r" : "0234679",
								"icv" : [ 3, 4, 5, 3, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-26" : 							{
								"forte" : "7-26",
								"primeform_f" : "0134579",
								"primeform_r" : "0134579",
								"icv" : [ 3, 4, 4, 5, 3, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-27" : 							{
								"forte" : "7-27",
								"primeform_f" : "0124579",
								"primeform_r" : "0124579",
								"icv" : [ 3, 4, 4, 4, 5, 1 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-28" : 							{
								"forte" : "7-28",
								"primeform_f" : "0135679",
								"primeform_r" : "0135679",
								"icv" : [ 3, 4, 4, 4, 3, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-29" : 							{
								"forte" : "7-29",
								"primeform_f" : "0124679",
								"primeform_r" : "0124679",
								"icv" : [ 3, 4, 4, 3, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-30" : 							{
								"forte" : "7-30",
								"primeform_f" : "0124689",
								"primeform_r" : "0124689",
								"icv" : [ 3, 4, 3, 5, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-31" : 							{
								"forte" : "7-31",
								"primeform_f" : "0134679",
								"primeform_r" : "0134679",
								"icv" : [ 3, 3, 6, 3, 3, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-32" : 							{
								"forte" : "7-32",
								"primeform_f" : "0134689",
								"primeform_r" : "0134689",
								"icv" : [ 3, 3, 5, 4, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"7-33" : 							{
								"forte" : "7-33",
								"primeform_f" : "012468A",
								"primeform_r" : "012468A",
								"icv" : [ 2, 6, 2, 6, 2, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-34" : 							{
								"forte" : "7-34",
								"primeform_f" : "013468A",
								"primeform_r" : "013468A",
								"icv" : [ 2, 5, 4, 4, 4, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-35" : 							{
								"forte" : "7-35",
								"primeform_f" : "013568A",
								"primeform_r" : "013568A",
								"icv" : [ 2, 5, 4, 3, 6, 1 ],
								"invariance" : [ 1, 1 ]
							}
,
							"7-36" : 							{
								"forte" : "7-Z36",
								"primeform_f" : "0123568",
								"primeform_r" : "0123568",
								"icv" : [ 4, 4, 4, 3, 4, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "7-Z12"
							}
,
							"7-37" : 							{
								"forte" : "7-Z37",
								"primeform_f" : "0134578",
								"primeform_r" : "0134578",
								"icv" : [ 4, 3, 4, 5, 4, 1 ],
								"invariance" : [ 1, 1 ],
								"Z-mate" : "7-Z17"
							}
,
							"7-38" : 							{
								"forte" : "7-Z38",
								"primeform_f" : "0124578",
								"primeform_r" : "0124578",
								"icv" : [ 4, 3, 4, 4, 4, 2 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "7-Z18"
							}
,
							"8-1" : 							{
								"forte" : "8-1",
								"primeform_f" : "01234567",
								"primeform_r" : "01234567",
								"icv" : [ 7, 6, 5, 4, 4, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-2" : 							{
								"forte" : "8-2",
								"primeform_f" : "01234568",
								"primeform_r" : "01234568",
								"icv" : [ 6, 6, 5, 5, 4, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-3" : 							{
								"forte" : "8-3",
								"primeform_f" : "01234569",
								"primeform_r" : "01234569",
								"icv" : [ 6, 5, 6, 5, 4, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-4" : 							{
								"forte" : "8-4",
								"primeform_f" : "01234578",
								"primeform_r" : "01234578",
								"icv" : [ 6, 5, 5, 5, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-5" : 							{
								"forte" : "8-5",
								"primeform_f" : "01234678",
								"primeform_r" : "01234678",
								"icv" : [ 6, 5, 4, 5, 5, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-6" : 							{
								"forte" : "8-6",
								"primeform_f" : "01235678",
								"primeform_r" : "01235678",
								"icv" : [ 6, 5, 4, 4, 6, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-7" : 							{
								"forte" : "8-7",
								"primeform_f" : "01234589",
								"primeform_r" : "01234589",
								"icv" : [ 6, 4, 5, 6, 5, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-8" : 							{
								"forte" : "8-8",
								"primeform_f" : "01234789",
								"primeform_r" : "01234789",
								"icv" : [ 6, 4, 4, 5, 6, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-9" : 							{
								"forte" : "8-9",
								"primeform_f" : "01236789",
								"primeform_r" : "01236789",
								"icv" : [ 6, 4, 4, 4, 6, 4 ],
								"invariance" : [ 2, 2 ]
							}
,
							"8-10" : 							{
								"forte" : "8-10",
								"primeform_f" : "02345679",
								"primeform_r" : "02345679",
								"icv" : [ 5, 6, 6, 4, 5, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-11" : 							{
								"forte" : "8-11",
								"primeform_f" : "01234579",
								"primeform_r" : "01234579",
								"icv" : [ 5, 6, 5, 5, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-12" : 							{
								"forte" : "8-12",
								"primeform_f" : "01345679",
								"primeform_r" : "01345679",
								"icv" : [ 5, 5, 6, 5, 4, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-13" : 							{
								"forte" : "8-13",
								"primeform_f" : "01234679",
								"primeform_r" : "01234679",
								"icv" : [ 5, 5, 6, 4, 5, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-14" : 							{
								"forte" : "8-14",
								"primeform_f" : "01245679",
								"primeform_r" : "01245679",
								"icv" : [ 5, 5, 5, 5, 6, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-15" : 							{
								"forte" : "8-Z15",
								"primeform_f" : "01234689",
								"primeform_r" : "01234689",
								"icv" : [ 5, 5, 5, 5, 5, 3 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "8-Z29"
							}
,
							"8-16" : 							{
								"forte" : "8-16",
								"primeform_f" : "01235789",
								"primeform_r" : "01235789",
								"icv" : [ 5, 5, 4, 5, 6, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-17" : 							{
								"forte" : "8-17",
								"primeform_f" : "01345689",
								"primeform_r" : "01345689",
								"icv" : [ 5, 4, 6, 6, 5, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-18" : 							{
								"forte" : "8-18",
								"primeform_f" : "01235689",
								"primeform_r" : "01235689",
								"icv" : [ 5, 4, 6, 5, 5, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-19" : 							{
								"forte" : "8-19",
								"primeform_f" : "01245689",
								"primeform_r" : "01245689",
								"icv" : [ 5, 4, 5, 7, 5, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-20" : 							{
								"forte" : "8-20",
								"primeform_f" : "01245789",
								"primeform_r" : "01245789",
								"icv" : [ 5, 4, 5, 6, 6, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-21" : 							{
								"forte" : "8-21",
								"primeform_f" : "0123468A",
								"primeform_r" : "0123468A",
								"icv" : [ 4, 7, 4, 6, 4, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-22" : 							{
								"forte" : "8-22",
								"primeform_f" : "0123568A",
								"primeform_r" : "0123568A",
								"icv" : [ 4, 6, 5, 5, 6, 2 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-23" : 							{
								"forte" : "8-23",
								"primeform_f" : "0123578A",
								"primeform_r" : "0123578A",
								"icv" : [ 4, 6, 5, 4, 7, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-24" : 							{
								"forte" : "8-24",
								"primeform_f" : "0124568A",
								"primeform_r" : "0124568A",
								"icv" : [ 4, 6, 4, 7, 4, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-25" : 							{
								"forte" : "8-25",
								"primeform_f" : "0124678A",
								"primeform_r" : "0124678A",
								"icv" : [ 4, 6, 4, 6, 4, 4 ],
								"invariance" : [ 2, 2 ]
							}
,
							"8-26" : 							{
								"forte" : "8-26",
								"primeform_f" : "0124579A",
								"primeform_r" : "0134578A",
								"icv" : [ 4, 5, 6, 5, 6, 2 ],
								"invariance" : [ 1, 1 ]
							}
,
							"8-27" : 							{
								"forte" : "8-27",
								"primeform_f" : "0124578A",
								"primeform_r" : "0124578A",
								"icv" : [ 4, 5, 6, 5, 5, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"8-28" : 							{
								"forte" : "8-28",
								"primeform_f" : "0134679A",
								"primeform_r" : "0134679A",
								"icv" : [ 4, 4, 8, 4, 4, 4 ],
								"invariance" : [ 4, 4 ]
							}
,
							"8-29" : 							{
								"forte" : "8-Z29",
								"primeform_f" : "01235679",
								"primeform_r" : "01235679",
								"icv" : [ 5, 5, 5, 5, 5, 3 ],
								"invariance" : [ 1, 0 ],
								"Z-mate" : "8-Z15"
							}
,
							"9-1" : 							{
								"forte" : "9-1",
								"primeform_f" : "012345678",
								"primeform_r" : "012345678",
								"icv" : [ 8, 7, 6, 6, 6, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"9-2" : 							{
								"forte" : "9-2",
								"primeform_f" : "012345679",
								"primeform_r" : "012345679",
								"icv" : [ 7, 7, 7, 6, 6, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-3" : 							{
								"forte" : "9-3",
								"primeform_f" : "012345689",
								"primeform_r" : "012345689",
								"icv" : [ 7, 6, 7, 7, 6, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-4" : 							{
								"forte" : "9-4",
								"primeform_f" : "012345789",
								"primeform_r" : "012345789",
								"icv" : [ 7, 6, 6, 7, 7, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-5" : 							{
								"forte" : "9-5",
								"primeform_f" : "012346789",
								"primeform_r" : "012346789",
								"icv" : [ 7, 6, 6, 6, 7, 4 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-6" : 							{
								"forte" : "9-6",
								"primeform_f" : "01234568A",
								"primeform_r" : "01234568A",
								"icv" : [ 6, 8, 6, 7, 6, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"9-7" : 							{
								"forte" : "9-7",
								"primeform_f" : "01234578A",
								"primeform_r" : "01234578A",
								"icv" : [ 6, 7, 7, 6, 7, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-8" : 							{
								"forte" : "9-8",
								"primeform_f" : "01234678A",
								"primeform_r" : "01234678A",
								"icv" : [ 6, 7, 6, 7, 6, 4 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-9" : 							{
								"forte" : "9-9",
								"primeform_f" : "01235678A",
								"primeform_r" : "01235678A",
								"icv" : [ 6, 7, 6, 6, 8, 3 ],
								"invariance" : [ 1, 1 ]
							}
,
							"9-10" : 							{
								"forte" : "9-10",
								"primeform_f" : "01234679A",
								"primeform_r" : "01234679A",
								"icv" : [ 6, 6, 8, 6, 6, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"9-11" : 							{
								"forte" : "9-11",
								"primeform_f" : "01235679A",
								"primeform_r" : "01235679A",
								"icv" : [ 6, 6, 7, 7, 7, 3 ],
								"invariance" : [ 1, 0 ]
							}
,
							"9-12" : 							{
								"forte" : "9-12",
								"primeform_f" : "01245689A",
								"primeform_r" : "01245689A",
								"icv" : [ 6, 6, 6, 9, 6, 3 ],
								"invariance" : [ 3, 3 ]
							}
,
							"10-1" : 							{
								"forte" : "10-1",
								"primeform_f" : "0123456789",
								"primeform_r" : "0123456789",
								"icv" : [ 9, 8, 8, 8, 8, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"10-2" : 							{
								"forte" : "10-2",
								"primeform_f" : "012345678A",
								"primeform_r" : "012345678A",
								"icv" : [ 8, 9, 8, 8, 8, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"10-3" : 							{
								"forte" : "10-3",
								"primeform_f" : "012345679A",
								"primeform_r" : "012345679A",
								"icv" : [ 8, 8, 9, 8, 8, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"10-4" : 							{
								"forte" : "10-4",
								"primeform_f" : "012345689A",
								"primeform_r" : "012345689A",
								"icv" : [ 8, 8, 8, 9, 8, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"10-5" : 							{
								"forte" : "10-5",
								"primeform_f" : "012345789A",
								"primeform_r" : "012345789A",
								"icv" : [ 8, 8, 8, 8, 9, 4 ],
								"invariance" : [ 1, 1 ]
							}
,
							"10-6" : 							{
								"forte" : "10-6",
								"primeform_f" : "012346789A",
								"primeform_r" : "012346789A",
								"icv" : [ 8, 8, 8, 8, 8, 5 ],
								"invariance" : [ 1, 1 ]
							}
,
							"11-1" : 							{
								"forte" : "11-1",
								"primeform_f" : "0123456789A",
								"primeform_r" : "0123456789A",
								"icv" : [ 10, 10, 10, 10, 10, 5 ],
								"invariance" : [ 1, 1 ]
							}
,
							"12-1" : 							{
								"forte" : "12-1",
								"primeform_f" : "0123456789AB",
								"primeform_r" : "0123456789AB",
								"icv" : [ 12, 12, 12, 12, 12, 6 ],
								"invariance" : [ 1, 1 ]
							}

						}

					}
,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 540.0, 90.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict setcalc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 75.0, 315.0, 195.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "y.setcalc.test.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js y.setcalc.test.js"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 3 ],
					"order" : 1,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 4 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 2,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 2,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 2,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"order" : 1,
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"order" : 0,
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "y.setcalc.test.js",
				"bootpath" : "~/Documents/Max 7/Packages/y.setcalc/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "y.setcalc.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"default_bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
		"elementcolor" : [ 0.498039, 0.462745, 0.376471, 1.0 ],
		"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
		"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
		"textcolor_inverse" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
		"clearcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
		"bgfillcolor_type" : "color",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
