function createRoadLinks() {
	
	inst1 = instance_create_depth(174, 183, 0, RoadLinks);
	inst2 = instance_create_depth(449, 183, 0, RoadLinks);
	inst3 = instance_create_depth(936, 183, 0, RoadLinks);
	inst4 = instance_create_depth(1171, 183, 0, RoadLinks);
	inst5 = instance_create_depth(936, 373, 0, RoadLinks);
	inst6 = instance_create_depth(1171, 373, 0, RoadLinks);
	inst7 = instance_create_depth(343, 430, 0, RoadLinks);
	inst8 = instance_create_depth(449, 430, 0, RoadLinks);
	inst9 = instance_create_depth(739, 430, 0, RoadLinks);
	inst10 = instance_create_depth(739, 501, 0, RoadLinks);
	inst11 = instance_create_depth(936, 501, 0, RoadLinks);
	inst12 = instance_create_depth(343, 728, 0, RoadLinks);
	inst13 = instance_create_depth(739, 728, 0, RoadLinks);
	inst14 = instance_create_depth(936, 762, 0, RoadLinks);
	inst15 = instance_create_depth(1084, 762, 0, RoadLinks);
	inst16 = instance_create_depth(1171, 762, 0, RoadLinks);
	inst17 = instance_create_depth(174, 913, 0, RoadLinks);
	inst18 = instance_create_depth(343, 913, 0, RoadLinks);
	inst19 = instance_create_depth(1084, 913, 0, RoadLinks);
	
	inst1.directioncount = 2;
	inst1.directions[1] = true;
	inst1.neighbors[1] = inst17;
	inst1.directions[3] = true;
	inst1.neighbors[3] = inst2;
	
	inst2.directioncount = 3;
	inst2.directions[1] = true;
	inst2.neighbors[1] = inst8;
	inst2.directions[2] = true;
	inst2.neighbors[2] = inst1;
	inst2.directions[3] = true;
	inst2.neighbors[3] = inst3;
	
	inst3.directioncount = 3;
	inst3.directions[1] = true;
	inst3.neighbors[1] = inst5;
	inst3.directions[2] = true;
	inst3.neighbors[2] = inst2;
	inst3.directions[3] = true;
	inst3.neighbors[3] = inst4;
	
	inst4.directioncount = 2;
	inst4.directions[1] = true;
	inst4.neighbors[1] = inst6;
	inst4.directions[2] = true;
	inst4.neighbors[2] = inst3;
	
	inst5.directioncount = 3;
	inst5.directions[0] = true;
	inst5.neighbors[0] = inst3;
	inst5.directions[1] = true;
	inst5.neighbors[1] = inst11;
	inst5.directions[3] = true;
	inst5.neighbors[3] = inst6;
	
	inst6.directioncount = 3;
	inst6.directions[0] = true;
	inst6.neighbors[0] = inst4;
	inst6.directions[1] = true;
	inst6.neighbors[1] = inst16;
	inst6.directions[2] = true;
	inst6.neighbors[2] = inst5;
	
	inst7.directioncount = 2;
	inst7.directions[1] = true;
	inst7.neighbors[1] = inst12;
	inst7.directions[3] = true;
	inst7.neighbors[3] = inst8;
	
	inst8.directioncount = 3;
	inst8.directions[0] = true;
	inst8.neighbors[0] = inst2;
	inst8.directions[2] = true;
	inst8.neighbors[2] = inst7;
	inst8.directions[3] = true;
	inst8.neighbors[3] = inst9;
	
	inst9.directioncount = 2;
	inst9.directions[1] = true;
	inst9.neighbors[1] = inst10;
	inst9.directions[2] = true;
	inst9.neighbors[2] = inst8;
	
	inst10.directioncount = 3;
	inst10.directions[0] = true;
	inst10.neighbors[0] = inst9;
	inst10.directions[1] = true;
	inst10.neighbors[1] = inst13;
	inst10.directions[3] = true;
	inst10.neighbors[3] = inst11;
	
	inst11.directioncount = 3;
	inst11.directions[0] = true;
	inst11.neighbors[0] = inst5;
	inst11.directions[1] = true;
	inst11.neighbors[1] = inst14;
	inst11.directions[2] = true;
	inst11.neighbors[2] = inst10;
	
	inst12.directioncount = 3;
	inst12.directions[0] = true;
	inst12.neighbors[0] = inst7;
	inst12.directions[1] = true;
	inst12.neighbors[1] = inst18;
	inst12.directions[3] = true;
	inst12.neighbors[3] = inst13;
	
	inst13.directioncount = 2;
	inst13.directions[0] = true;
	inst13.neighbors[0] = inst10;
	inst13.directions[2] = true;
	inst13.neighbors[2] = inst12;
	
	inst14.directioncount = 2;
	inst14.directions[0] = true;
	inst14.neighbors[0] = inst11;
	inst14.directions[3] = true;
	inst14.neighbors[3] = inst15;
	
	inst15.directioncount = 3;
	inst15.directions[1] = true;
	inst15.neighbors[1] = inst19;
	inst15.directions[2] = true;
	inst15.neighbors[2] = inst14;
	inst15.directions[3] = true;
	inst15.neighbors[3] = inst16;
	
	inst16.directioncount = 2;
	inst16.directions[0] = true;
	inst16.neighbors[0] = inst6;
	inst16.directions[2] = true;
	inst16.neighbors[2] = inst15;
	
	inst17.directioncount = 2;
	inst17.directions[0] = true;
	inst17.neighbors[0] = inst1;
	inst17.directions[3] = true;
	inst17.neighbors[3] = inst18;
	
	inst18.directioncount = 3;
	inst18.directions[0] = true;
	inst18.neighbors[0] = inst12;
	inst18.directions[2] = true;
	inst18.neighbors[2] = inst17;
	inst18.directions[3] = true;
	inst18.neighbors[3] = inst19;
	
	inst19.directioncount = 2;
	inst19.directions[0] = true;
	inst19.neighbors[0] = inst15;
	inst19.directions[2] = true;
	inst19.neighbors[2] = inst18;	
}