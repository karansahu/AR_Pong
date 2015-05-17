//Maya ASCII 2015 scene
//Name: Table.ma
//Last modified: Fri, May 15, 2015 02:31:53 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.22043685727628 8.9137315346019914 -9.4867383489943116 ;
	setAttr ".r" -type "double3" -29.738352729532508 -852.60000000011894 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 17.084241165593838;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1415251742281509 0.099727407097816467 -2.0666894316673279 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.81587628202632767 100.1 -0.42195408915240273 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.222481945019053;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.44760288415112226 -0.21159344822941348 100.11999502798585 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.5849002819476299;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.35960932637154275 -1.0201345471880399 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.5702465432980377;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".s" -type "double3" 0.3607 0.1367 0.2705 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".s" -type "double3" 0.3607 0.1367 0.2705 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.091197145903310961 0.67800574230428434 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29264092 0 0 -0.29264092 
		0 0 0.29264092 0 0 -0.29264092 0 0 0.29264092 0 0 -0.29264092 0 0 0.29264092 0 0 
		-0.29264092 0 0;
	setAttr -s 8 ".vt[0:7]"  -4.28485107 -0.41787955 8.12253571 4.28485107 -0.41787955 8.12253571
		 -4.28485107 0.41787955 8.12253571 4.28485107 0.41787955 8.12253571 -4.28485107 0.41787955 -8.12253571
		 4.28485107 0.41787955 -8.12253571 -4.28485107 -0.41787955 -8.12253571 4.28485107 -0.41787955 -8.12253571;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 2.1718166549383153 1.94077897862783 -0.0090716160000221396 ;
	setAttr ".r" -type "double3" 0 0 -11.888 ;
	setAttr ".s" -type "double3" 0.85481827058271409 0.75221285153438722 1 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[65]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[66]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[67]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[68]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[69]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[70]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[71]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[72]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
	setAttr ".pt[73]" -type "float3" -2.9802322e-008 0 -5.9604645e-008 ;
createNode transform -n "left";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.11833187071167 1.9366566944386745 -0.0090716159999994356 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.5804213146758528;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0 0.076862318859309248 -2.0546111934259015 ;
	setAttr ".s" -type "double3" 1 0.52895063058469727 0.99768914105479767 ;
createNode transform -n "transform1" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0 0.19635964956600901 -2.0785275183424483 ;
	setAttr ".s" -type "double3" 0.55056174650832135 0.55056174650832135 0.55056174650832135 ;
createNode transform -n "transform2" -p "pSphere1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	setAttr ".t" -type "double3" -1.1415251742281509 0 0 ;
	setAttr ".rp" -type "double3" 0 0.16629800945520401 -2.0546113848686218 ;
	setAttr ".sp" -type "double3" 0 0.16629800945520401 -2.0546113848686218 ;
createNode transform -n "polySurface1" -p "pSphere2";
	setAttr ".t" -type "double3" 0 0 0.0093262817352730565 ;
	setAttr ".rp" -type "double3" -3.7252902984619141e-009 0.18916309624910355 -2.0785273909568787 ;
	setAttr ".sp" -type "double3" -3.7252902984619141e-009 0.18916309624910355 -2.0785273909568787 ;
createNode transform -n "transform5" -p "|pSphere2|polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pSphere2";
	setAttr ".s" -type "double3" 0.65575552621576128 1 1 ;
	setAttr ".rp" -type "double3" 0 0.13631945848464966 -2.0546113848686218 ;
	setAttr ".sp" -type "double3" 0 0.13631945848464966 -2.0546113848686218 ;
createNode transform -n "transform4" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[12]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[14]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[16]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[18]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[19]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[21]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[26]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[36]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[39]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[40]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[43]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[45]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[48]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[51]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[52]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[54]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[55]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[61]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[62]" -type "float3" 0.01080858 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[68]" -type "float3" -0.01080858 0 0 ;
	setAttr ".pt[70]" -type "float3" 0.01080858 0 0 ;
createNode transform -n "transform3" -p "pSphere2";
	setAttr ".v" no;
createNode mesh -n "pSphere2Shape" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
	setAttr ".t" -type "double3" 1.1415251791477203 0 0 ;
	setAttr ".rp" -type "double3" -1.1415251791477203 0.16629800945520401 -2.0546113848686218 ;
	setAttr ".sp" -type "double3" -1.1415251791477203 0.16629800945520401 -2.0546113848686218 ;
createNode mesh -n "polySurface1Shape" -p "|polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".pt";
	setAttr ".pt[201]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[202]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[203]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[204]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[205]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[206]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[207]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[208]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[209]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[210]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[211]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[212]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[213]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[214]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[215]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[216]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[217]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[218]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[219]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[220]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[223]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[224]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[225]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[226]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[229]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[232]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[233]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[234]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[239]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[240]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[241]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[242]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[243]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[249]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[250]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[251]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[252]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[253]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[259]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[260]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[261]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[262]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[268]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[269]" -type "float3" 0 -0.016630679 0 ;
	setAttr ".pt[270]" -type "float3" 0 -0.016630679 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 2.2792588284869906 1.0076324459165131 -1.4116744650150492 ;
	setAttr ".r" -type "double3" 0 -15.000000000000009 -11.888 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 2.2792588284869906 1.0076324459165131 1.3080756424950226 ;
	setAttr ".r" -type "double3" 0 -15.000000000000009 -11.888 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 154 ".uvst[0].uvsp[0:153]" -type "float2" 0.63531649 0.078125
		 0.578125 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625
		 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.375 0.3125 0.39583334 0.3125 0.41666669 0.3125 0.43750003
		 0.3125 0.45833337 0.3125 0.47916672 0.3125 0.50000006 0.3125 0.52083337 0.3125 0.54166669
		 0.3125 0.5625 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.62499994 0.3125 0.375
		 0.68843985 0.39583334 0.68843985 0.41666669 0.68843985 0.43750003 0.68843985 0.45833337
		 0.68843985 0.47916672 0.68843985 0.50000006 0.68843985 0.52083337 0.68843985 0.54166669
		 0.68843985 0.5625 0.68843985 0.58333331 0.68843985 0.60416663 0.68843985 0.62499994
		 0.68843985 0.63531649 0.765625 0.578125 0.70843351 0.5 0.6875 0.421875 0.70843351
		 0.36468354 0.765625 0.34375 0.84375 0.36468354 0.921875 0.421875 0.97906649 0.5 1
		 0.578125 0.97906649 0.63531649 0.921875 0.65625 0.84375 0.578125 0.020933539 0.578125
		 0.020933539 0.578125 0.020933539 0.578125 0.020933539 0.63531649 0.078125 0.63531649
		 0.078125 0.63531649 0.078125 0.63531649 0.078125 0.5 0 0.5 0 0.5 0 0.5 0 0.421875
		 0.020933539 0.421875 0.020933539 0.421875 0.020933539 0.421875 0.020933539 0.36468354
		 0.078125 0.36468354 0.078125 0.36468354 0.078125 0.36468354 0.078125 0.421875 0.29156646
		 0.421875 0.29156646 0.421875 0.29156646 0.421875 0.29156646 0.5 0.3125 0.5 0.3125
		 0.5 0.3125 0.5 0.3125 0.578125 0.29156646 0.578125 0.29156646 0.578125 0.29156646
		 0.578125 0.29156646 0.63531649 0.234375 0.63531649 0.234375 0.63531649 0.234375 0.63531649
		 0.234375 0.65625 0.15625 0.65625 0.15625 0.65625 0.15625 0.65625 0.15625 0.578125
		 0.020933539 0.63531649 0.078125 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375
		 0.15625 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.63531649 0.921875 0.63531649 0.921875 0.63531649 0.921875
		 0.63531649 0.921875 0.578125 0.97906649 0.578125 0.97906649 0.578125 0.97906649 0.578125
		 0.97906649 0.5 1 0.5 1 0.5 1 0.5 1 0.421875 0.97906649 0.421875 0.97906649 0.421875
		 0.97906649 0.421875 0.97906649 0.36468354 0.921875 0.36468354 0.921875 0.36468354
		 0.921875 0.36468354 0.921875 0.421875 0.70843351 0.421875 0.70843351 0.421875 0.70843351
		 0.421875 0.70843351 0.5 0.6875 0.5 0.6875 0.5 0.6875 0.5 0.6875 0.578125 0.70843351
		 0.578125 0.70843351 0.578125 0.70843351 0.578125 0.70843351 0.63531649 0.765625 0.63531649
		 0.765625 0.63531649 0.765625 0.63531649 0.765625 0.65625 0.84375 0.65625 0.84375
		 0.65625 0.84375 0.65625 0.84375 0.63531649 0.921875 0.578125 0.97906649 0.5 1 0.421875
		 0.97906649 0.36468354 0.921875 0.34375 0.84375 0.36468354 0.765625 0.421875 0.70843351
		 0.5 0.6875 0.578125 0.70843351 0.63531649 0.765625 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".vt[0:127]"  0.10253978 -0.71332186 -0.059201837 0.059201479 -0.71332169 -0.10254014
		 -9.5367432e-007 -0.71332181 -0.11840308 -0.059201837 -0.71332181 -0.1025399 -0.10254037 -0.71332169 -0.059201717
		 -0.11840415 -0.71332169 -1.1920929e-007 -0.10254097 -0.71332169 0.059201837 -0.059202194 -0.71332175 0.1025399
		 -7.1525574e-007 -0.71332169 0.11840296 0.059200525 -0.71332192 0.1025399 0.10254002 -0.71332169 0.059201598
		 0.1184032 -0.71332175 1.1920929e-007 0.10254014 0.71332157 -0.059201598 0.059200644 0.71332204 -0.10254037
		 -8.3446503e-007 0.71332204 -0.11840308 -0.059202313 0.71332204 -0.10254014 -0.10254061 0.71332181 -0.059201956
		 -0.11840415 0.71332181 -1.1920929e-007 -0.10254073 0.71332157 0.059201598 -0.059202433 0.71332181 0.10254014
		 -3.5762787e-007 0.71332181 0.11840284 0.059200764 0.71332204 0.1025399 0.10253894 0.71332157 0.05920136
		 0.1184032 0.71332157 1.1920929e-007 0.090121269 -0.78892761 -0.055874348 0.054261923 -0.85603452 -0.046265841
		 -0.0010070801 -0.90709829 -0.031456351 -0.069473624 -0.93637949 -0.013110995 0.048445821 -0.77879834 -0.099658847
		 0.017391801 -0.83691442 -0.091337323 -0.030473471 -0.88113701 -0.078512073 -0.089766383 -0.90649521 -0.062624335
		 -0.007874012 -0.76125401 -0.11629355 -0.03060782 -0.80379784 -0.11020195 -0.065647364 -0.83617121 -0.10081327
		 -0.10905266 -0.8547346 -0.089182496 -0.063747406 -0.74099529 -0.10132205 -0.076873541 -0.76555806 -0.097805142
		 -0.097102761 -0.78424901 -0.092384458 -0.1221627 -0.79496646 -0.085669637 -0.10420418 -0.7234509 -0.058756232
		 -0.10900903 -0.73244178 -0.057468534 -0.11641324 -0.73928297 -0.055484772 -0.12558603 -0.74320596 -0.053026795
		 -0.060866594 -0.72345108 0.10298598 -0.065670729 -0.73244178 0.1042732 -0.07307446 -0.73928291 0.10625684
		 -0.082247972 -0.7432059 0.10871506 -0.0045458078 -0.74099541 0.11962092 -0.017672062 -0.76555818 0.12313783
		 -0.037901282 -0.78424901 0.1285584 -0.062961817 -0.79496652 0.1352731 0.051327467 -0.76125401 0.10464942
		 0.028593779 -0.80379796 0.11074102 -0.0064457655 -0.83617127 0.12012994 -0.049851179 -0.8547346 0.13176048
		 0.091784239 -0.7787981 0.062083364 0.060730219 -0.8369143 0.07040441 0.012865305 -0.88113701 0.083229661
		 -0.04642868 -0.90649521 0.099117398 0.10598433 -0.78892761 0.0033274889 0.070125222 -0.85603452 0.012935877
		 0.014855146 -0.90709853 0.027745366 -0.053610921 -0.93637943 0.046090961 -0.53241849 -1.037273765 0.11093462
		 -0.55271137 -1.0073895454 0.061421275 -0.5719974 -0.95562893 0.034863114 -0.58510804 -0.89586097 0.038375974
		 -0.58853108 -0.8441003 0.071018934 -0.5813489 -0.8142162 0.12404549 -0.56548548 -0.81421626 0.18324745
		 -0.54519272 -0.84410036 0.23276055 -0.5259068 -0.89586103 0.25931883 -0.51279616 -0.95562905 0.25580585
		 -0.50937343 -1.0073895454 0.22316301 -0.51655602 -1.037273645 0.17013633 0.085721612 0.80085576 -0.054695129
		 0.037827373 0.87506378 -0.041861653 -0.0338521 0.92464793 -0.022655129 -0.1184032 0.94205987 3.5762787e-007
		 0.044635534 0.78912866 -0.098637462 0.0031577349 0.85339391 -0.087523341 -0.058918238 0.89633524 -0.070890069
		 -0.13214135 0.91141427 -0.051269889 -0.010663271 0.76881611 -0.11554611 -0.041026831 0.81586206 -0.10741007
		 -0.08646965 0.84729707 -0.09523356 -0.14007306 0.85833585 -0.080870748 -0.065358281 0.74536169 -0.10089076
		 -0.082888961 0.77252376 -0.096193314 -0.10912514 0.7906729 -0.089163184 -0.14007282 0.79704654 -0.080870748
		 -0.10479414 0.72504938 -0.05859828 -0.11121035 0.73499143 -0.056878924 -0.12081373 0.74163473 -0.054305673
		 -0.13214159 0.74396765 -0.051270247 -0.061455727 0.72504914 0.10314381 -0.067872047 0.73499119 0.10486305
		 -0.077475309 0.74163401 0.1074363 -0.088803053 0.74396694 0.11047161 -0.0061568022 0.74536145 0.12005246
		 -0.023687243 0.77252352 0.12474978 -0.04992342 0.79067242 0.13177979 -0.080872059 0.79704559 0.14007223
		 0.048538446 0.76881611 0.10539687 0.018174767 0.81586206 0.1135329 -0.02726841 0.84729707 0.1257093
		 -0.080871582 0.85833561 0.14007223 0.087974072 0.78912818 0.063104272 0.046496511 0.85339391 0.074218392
		 -0.015579462 0.89633501 0.090851903 -0.088802576 0.91141403 0.11047173 0.10158443 0.80085576 0.0045067072
		 0.053690314 0.87506378 0.017340064 -0.017989397 0.92464769 0.036546588 -0.10254061 0.94205987 0.059202194
		 -0.25199699 0.94206059 0.035796285 -0.26573491 0.9114145 -0.015473485 -0.27366662 0.85833609 -0.045074701
		 -0.2736665 0.79704654 -0.045074821 -0.26573539 0.74396765 -0.015474558 -0.25199771 0.71332204 0.035796046
		 -0.23613429 0.71332181 0.094998121 -0.22239685 0.74396741 0.14626753 -0.21446538 0.79704559 0.17586815
		 -0.21446514 0.85833585 0.17586839 -0.22239602 0.91141379 0.14626837 -0.23613429 0.94205987 0.09499836;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 0 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 12 1 0 12 1 1 13 1 2 14 1 3 15 1 4 16 1 5 17 1 6 18 1
		 7 19 1 8 20 1 9 21 1 10 22 1 11 23 1 0 24 1 24 25 1 25 26 1 26 27 1 1 28 1 28 29 1
		 29 30 1 30 31 1 24 28 1 25 29 1 26 30 1 27 31 1 2 32 1 32 33 1 33 34 1 34 35 1 28 32 1
		 29 33 1 30 34 1 31 35 1 3 36 1 36 37 1 37 38 1 38 39 1 32 36 1 33 37 1 34 38 1 35 39 1
		 4 40 1 40 41 1 41 42 1 42 43 1 36 40 1 37 41 1 38 42 1 39 43 1 40 5 1 41 5 1 42 5 1
		 43 5 1 7 44 1 44 45 1 45 46 1 46 47 1 6 44 1 6 45 1 6 46 1 6 47 1 8 48 1 48 49 1
		 49 50 1 50 51 1 44 48 1 45 49 1 46 50 1 47 51 1 9 52 1 52 53 1 53 54 1 54 55 1 48 52 1
		 49 53 1 50 54 1 51 55 1 10 56 1 56 57 1 57 58 1 58 59 1 52 56 1 53 57 1 54 58 1 55 59 1
		 11 60 1 60 61 1 61 62 1 62 63 1 56 60 1 57 61 1 58 62 1 59 63 1 60 24 1 61 25 1 62 26 1
		 63 27 1 27 64 1 31 65 1 64 65 0 35 66 1 65 66 0 39 67 1 66 67 0 43 68 1 67 68 0 5 69 1
		 68 69 0 6 70 1 69 70 0 47 71 1 70 71 0 51 72 1 71 72 0 55 73 1 72 73 0 59 74 1 73 74 0
		 63 75 1 74 75 0 75 64 0 12 76 1 76 77 1 77 78 1 78 79 1 13 80 1 80 81 1 81 82 1 82 83 1
		 76 80 1 77 81 1 78 82 1 79 83 1 14 84 1 84 85 1 85 86 1 86 87 1 80 84 1 81 85 1 82 86 1
		 83 87 1 15 88 1 88 89 1;
	setAttr ".ed[166:251]" 89 90 1 90 91 1 84 88 1 85 89 1 86 90 1 87 91 1 16 92 1
		 92 93 1 93 94 1 94 95 1 88 92 1 89 93 1 90 94 1 91 95 1 92 17 1 93 17 1 94 17 1 95 17 1
		 19 96 1 96 97 1 97 98 1 98 99 1 18 96 1 18 97 1 18 98 1 18 99 1 20 100 1 100 101 1
		 101 102 1 102 103 1 96 100 1 97 101 1 98 102 1 99 103 1 21 104 1 104 105 1 105 106 1
		 106 107 1 100 104 1 101 105 1 102 106 1 103 107 1 22 108 1 108 109 1 109 110 1 110 111 1
		 104 108 1 105 109 1 106 110 1 107 111 1 23 112 1 112 113 1 113 114 1 114 115 1 108 112 1
		 109 113 1 110 114 1 111 115 1 112 76 1 113 77 1 114 78 1 115 79 1 79 116 1 83 117 1
		 116 117 0 87 118 1 117 118 0 91 119 1 118 119 0 95 120 1 119 120 0 17 121 1 120 121 0
		 18 122 1 121 122 0 99 123 1 122 123 0 103 124 1 123 124 0 107 125 1 124 125 0 111 126 1
		 125 126 0 115 127 1 126 127 0 127 116 0;
	setAttr -s 124 -ch 480 ".fc[0:123]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 4 -1 36 44 -41
		mu 0 4 1 0 54 50
		f 4 -45 37 45 -42
		mu 0 4 50 54 55 51
		f 4 -46 38 46 -43
		mu 0 4 51 55 56 52
		f 4 -47 39 47 -44
		mu 0 4 52 56 57 53
		f 4 -2 40 52 -49
		mu 0 4 2 1 50 58
		f 4 -53 41 53 -50
		mu 0 4 58 50 51 59
		f 4 -54 42 54 -51
		mu 0 4 59 51 52 60
		f 4 -55 43 55 -52
		mu 0 4 60 52 53 61
		f 4 -3 48 60 -57
		mu 0 4 3 2 58 62
		f 4 -61 49 61 -58
		mu 0 4 62 58 59 63
		f 4 -62 50 62 -59
		mu 0 4 63 59 60 64
		f 4 -63 51 63 -60
		mu 0 4 64 60 61 65
		f 4 -4 56 68 -65
		mu 0 4 4 3 62 66
		f 4 -69 57 69 -66
		mu 0 4 66 62 63 67
		f 4 -70 58 70 -67
		mu 0 4 67 63 64 68
		f 4 -71 59 71 -68
		mu 0 4 68 64 65 69
		f 3 -5 64 72
		mu 0 3 5 4 66
		f 3 -73 65 73
		mu 0 3 5 66 67
		f 3 -74 66 74
		mu 0 3 5 67 68
		f 3 -75 67 75
		mu 0 3 5 68 69
		f 3 -7 80 -77
		mu 0 3 7 6 70
		f 3 -81 81 -78
		mu 0 3 70 6 71
		f 3 -82 82 -79
		mu 0 3 71 6 72
		f 3 -83 83 -80
		mu 0 3 72 6 73
		f 4 -8 76 88 -85
		mu 0 4 8 7 70 74
		f 4 -89 77 89 -86
		mu 0 4 74 70 71 75
		f 4 -90 78 90 -87
		mu 0 4 75 71 72 76
		f 4 -91 79 91 -88
		mu 0 4 76 72 73 77
		f 4 -9 84 96 -93
		mu 0 4 9 8 74 78
		f 4 -97 85 97 -94
		mu 0 4 78 74 75 79
		f 4 -98 86 98 -95
		mu 0 4 79 75 76 80
		f 4 -99 87 99 -96
		mu 0 4 80 76 77 81
		f 4 -10 92 104 -101
		mu 0 4 10 9 78 82
		f 4 -105 93 105 -102
		mu 0 4 82 78 79 83
		f 4 -106 94 106 -103
		mu 0 4 83 79 80 84
		f 4 -107 95 107 -104
		mu 0 4 84 80 81 85
		f 4 -11 100 112 -109
		mu 0 4 11 10 82 86
		f 4 -113 101 113 -110
		mu 0 4 86 82 83 87
		f 4 -114 102 114 -111
		mu 0 4 87 83 84 88
		f 4 -115 103 115 -112
		mu 0 4 88 84 85 89
		f 4 -12 108 116 -37
		mu 0 4 0 11 86 54
		f 4 -117 109 117 -38
		mu 0 4 54 86 87 55
		f 4 -118 110 118 -39
		mu 0 4 55 87 88 56
		f 4 -119 111 119 -40
		mu 0 4 56 88 89 57
		f 4 -48 120 122 -122
		mu 0 4 53 57 91 90
		f 4 -56 121 124 -124
		mu 0 4 61 53 90 92
		f 4 -64 123 126 -126
		mu 0 4 65 61 92 93
		f 4 -72 125 128 -128
		mu 0 4 69 65 93 94
		f 4 -76 127 130 -130
		mu 0 4 5 69 94 95
		f 4 -6 129 132 -132
		mu 0 4 6 5 95 96
		f 4 -84 131 134 -134
		mu 0 4 73 6 96 97
		f 4 -92 133 136 -136
		mu 0 4 77 73 97 98
		f 4 -100 135 138 -138
		mu 0 4 81 77 98 99
		f 4 -108 137 140 -140
		mu 0 4 85 81 99 100
		f 4 -116 139 142 -142
		mu 0 4 89 85 100 101
		f 4 -120 141 143 -121
		mu 0 4 57 89 101 91
		f 4 12 148 -153 -145
		mu 0 4 48 47 106 102
		f 4 152 149 -154 -146
		mu 0 4 102 106 107 103
		f 4 153 150 -155 -147
		mu 0 4 103 107 108 104
		f 4 154 151 -156 -148
		mu 0 4 104 108 109 105
		f 4 13 156 -161 -149
		mu 0 4 47 46 110 106
		f 4 160 157 -162 -150
		mu 0 4 106 110 111 107
		f 4 161 158 -163 -151
		mu 0 4 107 111 112 108
		f 4 162 159 -164 -152
		mu 0 4 108 112 113 109
		f 4 14 164 -169 -157
		mu 0 4 46 45 114 110
		f 4 168 165 -170 -158
		mu 0 4 110 114 115 111
		f 4 169 166 -171 -159
		mu 0 4 111 115 116 112
		f 4 170 167 -172 -160
		mu 0 4 112 116 117 113
		f 4 15 172 -177 -165
		mu 0 4 45 44 118 114
		f 4 176 173 -178 -166
		mu 0 4 114 118 119 115
		f 4 177 174 -179 -167
		mu 0 4 115 119 120 116
		f 4 178 175 -180 -168
		mu 0 4 116 120 121 117
		f 3 16 -181 -173
		mu 0 3 44 43 118
		f 3 180 -182 -174
		mu 0 3 118 43 119
		f 3 181 -183 -175
		mu 0 3 119 43 120
		f 3 182 -184 -176
		mu 0 3 120 43 121
		f 3 18 184 -189
		mu 0 3 42 41 122
		f 3 188 185 -190
		mu 0 3 42 122 123
		f 3 189 186 -191
		mu 0 3 42 123 124
		f 3 190 187 -192
		mu 0 3 42 124 125
		f 4 19 192 -197 -185
		mu 0 4 41 40 126 122
		f 4 196 193 -198 -186
		mu 0 4 122 126 127 123
		f 4 197 194 -199 -187
		mu 0 4 123 127 128 124
		f 4 198 195 -200 -188
		mu 0 4 124 128 129 125
		f 4 20 200 -205 -193
		mu 0 4 40 39 130 126
		f 4 204 201 -206 -194
		mu 0 4 126 130 131 127
		f 4 205 202 -207 -195
		mu 0 4 127 131 132 128
		f 4 206 203 -208 -196
		mu 0 4 128 132 133 129
		f 4 21 208 -213 -201
		mu 0 4 39 38 134 130
		f 4 212 209 -214 -202
		mu 0 4 130 134 135 131
		f 4 213 210 -215 -203
		mu 0 4 131 135 136 132
		f 4 214 211 -216 -204
		mu 0 4 132 136 137 133
		f 4 22 216 -221 -209
		mu 0 4 38 49 138 134
		f 4 220 217 -222 -210
		mu 0 4 134 138 139 135
		f 4 221 218 -223 -211
		mu 0 4 135 139 140 136
		f 4 222 219 -224 -212
		mu 0 4 136 140 141 137
		f 4 23 144 -225 -217
		mu 0 4 49 48 102 138
		f 4 224 145 -226 -218
		mu 0 4 138 102 103 139
		f 4 225 146 -227 -219
		mu 0 4 139 103 104 140
		f 4 226 147 -228 -220
		mu 0 4 140 104 105 141
		f 4 155 229 -231 -229
		mu 0 4 105 109 143 142
		f 4 163 231 -233 -230
		mu 0 4 109 113 144 143
		f 4 171 233 -235 -232
		mu 0 4 113 117 145 144
		f 4 179 235 -237 -234
		mu 0 4 117 121 146 145
		f 4 183 237 -239 -236
		mu 0 4 121 43 147 146
		f 4 17 239 -241 -238
		mu 0 4 43 42 148 147
		f 4 191 241 -243 -240
		mu 0 4 42 125 149 148
		f 4 199 243 -245 -242
		mu 0 4 125 129 150 149
		f 4 207 245 -247 -244
		mu 0 4 129 133 151 150
		f 4 215 247 -249 -246
		mu 0 4 133 137 152 151
		f 4 223 249 -251 -248
		mu 0 4 137 141 153 152
		f 4 227 228 -252 -250
		mu 0 4 141 105 142 153;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyCube -n "polyCube1";
	setAttr ".w" 8.5697025157822111;
	setAttr ".h" 0.83575907842646269;
	setAttr ".d" 16.245072316413331;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".wt" 0.95123869180679321;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".cv" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[9:11]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".re" 0;
	setAttr ".p[0]"  0 0 1;
createNode polyDuplicateEdge -n "polyDuplicateEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".of" 0.90714311599731445;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.057124134 0 ;
	setAttr ".rs" 35896;
	setAttr ".lt" -type "double3" 0 1.2325951644078309e-032 0.43270912457807531 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5455457824707033 0.057124134710431096 -2.1971459083557132 ;
	setAttr ".cbx" -type "double3" 1.5455457824707033 0.057124134710431096 2.1971459083557132 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[12]" -type "float3" 0.10523678 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.10523678 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.10523678 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.10523678 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.10523678 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.10523678 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.10523678 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.10523678 0 0 ;
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 1.0000000000000002 0 2.2204460492503131e-016 ;
	setAttr ".w" 2.8148735999999994;
	setAttr ".h" 0.13160311812611331;
	setAttr ".d" 4.3855730688000003;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.83648425734490917 -0.1760919161578918 -0 0 0.1549552775644201 0.73607950383666276 0 0
		 0 -0 1 0 2.1718166549383153 1.94077897862783 -0.0090716160000221396 1;
	setAttr ".re" 10;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 0.83648425734490917 -0.1760919161578918 -0 0 0.1549552775644201 0.73607950383666276 0 0
		 0 -0 1 0 2.1718166549383153 1.94077897862783 -0.0090716160000221396 1;
	setAttr ".re" 14;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[16]" "e[19]" "e[24]" "e[30]";
	setAttr ".ix" -type "matrix" 0.83648425734490917 -0.1760919161578918 -0 0 0.1549552775644201 0.73607950383666276 0 0
		 0 -0 1 0 2.1718166549383153 1.94077897862783 -0.0090716160000221396 1;
	setAttr ".re" 19;
	setAttr ".p[0]"  0 0 1;
createNode polyDuplicateEdge -n "polyDuplicateEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[14]" "e[16]" "e[18:20]" "e[25]" "e[32]" "e[39]";
	setAttr ".of" 0.94078147411346436;
createNode polyDuplicateEdge -n "polyDuplicateEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[34]" "e[36]" "e[38]" "e[40]" "e[42]" "e[44]" "e[46:47]" "e[49]" "e[57]" "e[67]" "e[75]";
	setAttr ".of" 0.90614980459213257;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 3 "f[40]" "f[51]" "f[62:63]";
	setAttr ".ix" -type "matrix" 0.83648425734490917 -0.1760919161578918 -0 0 0.1549552775644201 0.73607950383666276 0 0
		 0 -0 1 0 2.1718166549383153 1.94077897862783 -0.0090716160000221396 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1167748 1.9523661 -0.0090716165 ;
	setAttr ".rs" 44404;
	setAttr ".lt" -type "double3" 2.7408630920433552e-016 -1.2427409905420271e-017 -0.076259711609294928 ;
	setAttr ".ls" -type "double3" 0.92349694953200123 0.95260901020271738 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.9191526790367908 1.0136080902463949 -2.0720045841396706 ;
	setAttr ".cbx" -type "double3" 2.3143966912722398 2.8911241128919047 2.0538613521396263 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[10:17]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polyDelEdge -n "polyDelEdge2";
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[3:4]" "e[11:14]" "e[22]";
	setAttr ".cv" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".re" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".re" 19;
	setAttr ".p[0]"  0 0 1;
createNode polyDuplicateEdge -n "polyDuplicateEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[22]" "e[24]" "e[26]" "e[28]" "e[30:31]";
	setAttr ".of" 0.94947522878646851;
createNode polyDuplicateEdge -n "polyDuplicateEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[22]" "e[24]" "e[26]" "e[28]" "e[30:31]";
	setAttr ".of" 0.97128796577453613;
createNode polyDuplicateEdge -n "polyDuplicateEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[14]" "e[16]" "e[18:20]" "e[25]" "e[32]" "e[37]" "e[47]" "e[53]" "e[56]" "e[61]" "e[71]" "e[77]";
	setAttr ".of" 0.88347136974334717;
createNode polyCube -n "polyCube3";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 0.6029776422153752;
	setAttr ".h" 0.086454519054767212;
	setAttr ".d" 0.25388532303805295;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.52895063058469727 0 0 0 0 0.99768914105479767 0
		 0 0.076862318859309248 -2.0546111934259015 1;
	setAttr ".re" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyDuplicateEdge -n "polyDuplicateEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".of" 0.899944007396698;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.52895063058469727 0 0 0 0 0.99768914105479767 0
		 0 0.076862318859309248 -2.0546111934259015 1;
	setAttr ".re" 19;
	setAttr ".p[0]"  0 0 1;
createNode polyDuplicateEdge -n "polyDuplicateEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[38]" "e[40]" "e[42]" "e[44]" "e[46]" "e[48]" "e[50]" "e[52]" "e[54:55]";
	setAttr ".of" 0.84229880571365356;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[9:10]" "f[16]" "f[19]" "f[26]" "f[29]" "f[36]" "f[38]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.52895063058469727 0 0 0 0 0.99768914105479767 0
		 0 0.076862318859309248 -2.0546111934259015 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.099727407 -2.0546112 ;
	setAttr ".rs" 40031;
	setAttr ".lt" -type "double3" 0 2.6404269553052374e-017 0.11891425852011681 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30148881673812866 0.099727404802665176 -2.181260511219222 ;
	setAttr ".cbx" -type "double3" 0.30148881673812866 0.099727404802665176 -1.9279618756325811 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[30]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.0041930224 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.0041930224 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.0041930224 ;
createNode polySphere -n "polySphere1";
	setAttr ".r" 0.14937316871834744;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[0:179]" "f[360:379]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 0.55056174650832135 0 0 0 0 0.55056174650832135 0 0
		 0 0 0.55056174650832135 0 0 0.19635964956600901 -2.0785275183424483 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.204009e-009 0.19635965 -2.0785275 ;
	setAttr ".rs" 59426;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.082239171809315448 0.19635964956600901 -2.1607667147637919 ;
	setAttr ".cbx" -type "double3" 0.082239155401296782 0.19635964956600901 -1.9962883547371422 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[400:401]" "e[403]" "e[405]" "e[407]" "e[409]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437]";
	setAttr ".ix" -type "matrix" 0.55056174650832135 0 0 0 0 0.55056174650832135 0 0
		 0 0 0.55056174650832135 0 0 0.19635964956600901 -2.0785275183424483 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[201]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[202]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[203]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[204]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[205]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[206]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[207]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[208]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[209]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[210]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[211]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[212]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[213]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[214]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[215]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[216]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[218]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[219]" -type "float3" 0 -0.17551573 0 ;
	setAttr ".tk[220]" -type "float3" 0 -0.17551573 0 ;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.55056174650832135 0 0 0 0 0.55056174650832135 0 0
		 0 0 0.55056174650832135 0 0 0.19635964956600901 -2.0785275183424483 1;
	setAttr ".a" 180;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:289]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 220 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 70 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:289]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 4 "f[41]" "f[44]" "f[62]" "f[65]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.057124134 0 ;
	setAttr ".rs" 32890;
	setAttr ".lt" -type "double3" 1.1102230246251565e-016 -1.1534966764015032e-017 -0.051948872020149153 ;
	setAttr ".ls" -type "double3" 0.97006386336438111 0.68122712568843269 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2378982064723969 0.057124134710431096 -2.0861355693340302 ;
	setAttr ".cbx" -type "double3" 1.2378982064723969 0.057124134710431096 2.0861355693340302 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[42]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.095070437 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.095070437 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.095070437 0 0 ;
createNode polyBevel2 -n "polyBevel1";
	setAttr ".ics" -type "componentList" 7 "e[1:2]" "e[12]" "e[17]" "e[78]" "e[89]" "e[119]" "e[131]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel2 -n "polyBevel2";
	setAttr ".ics" -type "componentList" 6 "e[10]" "e[12]" "e[14:15]" "e[18]" "e[20]" "e[22:23]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 0.11840307368246621;
	setAttr ".h" 1.4266433459434891;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2792588284869906 0.71332167297174454 -1.4116744650150492 1;
	setAttr ".a" 180;
createNode polyWedgeFace -n "polyWedgeFace1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[12:23]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".ws" yes;
	setAttr ".wa" 77.205188644913861;
	setAttr ".d" 4;
	setAttr ".ed[0]"  5;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[12:23]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0222092 0.21881551 -1.4116745 ;
	setAttr ".rs" 64309;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0203992765893091 0.10446115970104797 -1.5260430129412068 ;
	setAttr ".cbx" -type "double3" 2.0240192088863278 0.3331698599757501 -1.2973060118686033 ;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:11]" "e[24:35]" "e[48:133]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]" "e[155]" "e[158]" "e[161]" "e[164]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[65]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[66]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[67]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[68]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[69]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[70]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[71]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[72]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[73]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[74]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[75]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[76]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
	setAttr ".tk[77]" -type "float3" -0.46294484 -0.10089442 0.12404564 ;
createNode polyWedgeFace -n "polyWedgeFace2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[24:35]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".ws" yes;
	setAttr ".wa" 90;
	setAttr ".d" 4;
	setAttr ".ed[0]"  17;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[24:35]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3378463 1.841131 -1.4116745 ;
	setAttr ".rs" 34694;
	setAttr ".lt" -type "double3" -7.1696675373983265e-016 -3.7569129935927786e-016 
		0.13830603788652263 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3142861915258899 1.7292147763866725 -1.5260431228631575 ;
	setAttr ".cbx" -type "double3" 2.3614065856720949 1.9530470545242169 -1.2973059592119593 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[12:35]" "e[156:241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]";
	setAttr ".ix" -type "matrix" 0.94520879496748766 -0.19897998846197862 0.25881904510252096 0
		 0.20599924243295964 0.97855215094395798 3.469446951953615e-018 0 -0.25326793329033315 0.05331652721834132 0.9659258262890682 0
		 2.2792588284869906 1.0076324459165131 -1.4116744650150492 1;
	setAttr ".a" 180;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0:39]" "f[41:50]" "f[52:61]" "f[64:71]";
	setAttr ".irc" -type "componentList" 3 "f[40]" "f[51]" "f[62:63]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[40]" "f[51]" "f[62:63]";
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:31]" "f[33:34]" "f[36:47]" "f[49:50]" "f[64:87]";
	setAttr ".irc" -type "componentList" 4 "f[32]" "f[35]" "f[48]" "f[51:63]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[32]" "f[35]" "f[48]" "f[51:63]";
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[8]" "f[13]" "f[18:20]" "f[25]" "f[30:31]" "f[33:34]" "f[49:50]" "f[73]" "f[77:81]" "f[85:86]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.057124145328998566 0 ;
	setAttr ".ic" -type "double2" 1.850388956892437 0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.8799805641174316 4.3054924011230469 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -0.50472689 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.50472641 0 ;
	setAttr ".uvtk[12]" -type "float2" -0.52795959 0 ;
	setAttr ".uvtk[15]" -type "float2" -0.52796054 0 ;
	setAttr ".uvtk[21]" -type "float2" -0.1968686 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.22010189 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.22010154 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.19686729 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.52795959 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.50472653 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.50472701 0 ;
	setAttr ".uvtk[67]" -type "float2" -0.5279603 0 ;
	setAttr ".uvtk[103]" -type "float2" -0.19686705 0 ;
	setAttr ".uvtk[110]" -type "float2" -0.22010189 0 ;
	setAttr ".uvtk[111]" -type "float2" -0.22010213 0 ;
	setAttr ".uvtk[117]" -type "float2" -0.19686884 0 ;
	setAttr ".uvtk[124]" -type "float2" -0.50472724 0 ;
	setAttr ".uvtk[130]" -type "float2" -0.5279603 0 ;
	setAttr ".uvtk[131]" -type "float2" -0.19686776 0 ;
	setAttr ".uvtk[132]" -type "float2" -0.2201013 0 ;
	setAttr ".uvtk[133]" -type "float2" -0.36241388 0 ;
	setAttr ".uvtk[134]" -type "float2" -0.36241364 0 ;
	setAttr ".uvtk[135]" -type "float2" -0.362414 0 ;
	setAttr ".uvtk[136]" -type "float2" -0.19686919 0 ;
	setAttr ".uvtk[137]" -type "float2" -0.22010142 0 ;
	setAttr ".uvtk[138]" -type "float2" -0.50472653 0 ;
	setAttr ".uvtk[139]" -type "float2" -0.52795959 0 ;
	setAttr ".uvtk[140]" -type "float2" -0.22010154 0 ;
	setAttr ".uvtk[141]" -type "float2" -0.19686896 0 ;
	setAttr ".uvtk[142]" -type "float2" -0.50472665 0 ;
	setAttr ".uvtk[143]" -type "float2" -0.52795935 0 ;
	setAttr ".uvtk[144]" -type "float2" -0.362414 0 ;
	setAttr ".uvtk[145]" -type "float2" -0.362414 0 ;
	setAttr ".uvtk[146]" -type "float2" -0.36241412 0 ;
	setAttr ".uvtk[147]" -type "float2" -0.36241412 0 ;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "f[1:2]" "f[4]" "f[7]" "f[9]" "f[12]" "f[14]" "f[17]" "f[21]" "f[24]" "f[26]" "f[29]" "f[64:72]" "f[74:76]" "f[82:84]" "f[87]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".ic" -type "double2" -1.1458247322979642 0.5 ;
	setAttr ".ps" -type "double2" 180 0.11424829065799713 ;
	setAttr ".r" 4.394291877746582;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 1.180686 -0.14429015 ;
	setAttr ".uvtk[7]" -type "float2" 1.180686 -0.14402634 ;
	setAttr ".uvtk[11]" -type "float2" 1.180686 -1.1323917 ;
	setAttr ".uvtk[13]" -type "float2" 1.180686 -1.1328124 ;
	setAttr ".uvtk[16]" -type "float2" 1.180686 -0.7493875 ;
	setAttr ".uvtk[19]" -type "float2" 1.180686 -0.14400703 ;
	setAttr ".uvtk[22]" -type "float2" 1.180686 -0.14431375 ;
	setAttr ".uvtk[26]" -type "float2" 1.180686 -0.74932861 ;
	setAttr ".uvtk[31]" -type "float2" 1.180686 -1.1327934 ;
	setAttr ".uvtk[33]" -type "float2" 1.180686 -1.1324275 ;
	setAttr ".uvtk[35]" -type "float2" 1.180686 -0.14456189 ;
	setAttr ".uvtk[37]" -type "float2" 1.180686 -0.1441946 ;
	setAttr ".uvtk[39]" -type "float2" 1.180686 -1.1325679 ;
	setAttr ".uvtk[41]" -type "float2" 1.180686 -1.1330624 ;
	setAttr ".uvtk[45]" -type "float2" 1.180686 -0.74965632 ;
	setAttr ".uvtk[47]" -type "float2" 1.180686 -1.1325673 ;
	setAttr ".uvtk[82]" -type "float2" 1.180686 -0.14419472 ;
	setAttr ".uvtk[83]" -type "float2" 1.180686 -0.14456308 ;
	setAttr ".uvtk[84]" -type "float2" 1.180686 -0.74965292 ;
	setAttr ".uvtk[85]" -type "float2" 1.180686 -1.1330649 ;
	setAttr ".uvtk[86]" -type "float2" 1.180686 -1.1300807 ;
	setAttr ".uvtk[87]" -type "float2" 1.180686 -0.14667284 ;
	setAttr ".uvtk[88]" -type "float2" 1.180686 -0.14667308 ;
	setAttr ".uvtk[89]" -type "float2" 1.180686 -1.13008 ;
	setAttr ".uvtk[90]" -type "float2" 1.180686 -0.14658469 ;
	setAttr ".uvtk[91]" -type "float2" 1.180686 -1.1299932 ;
	setAttr ".uvtk[92]" -type "float2" 1.180686 -0.1465407 ;
	setAttr ".uvtk[93]" -type "float2" 1.180686 -1.1299484 ;
	setAttr ".uvtk[94]" -type "float2" 1.180686 -1.1297535 ;
	setAttr ".uvtk[95]" -type "float2" 1.180686 -0.14685529 ;
	setAttr ".uvtk[96]" -type "float2" 1.180686 -0.14684218 ;
	setAttr ".uvtk[97]" -type "float2" 1.180686 -1.1297398 ;
	setAttr ".uvtk[98]" -type "float2" 1.180686 -0.74465454 ;
	setAttr ".uvtk[99]" -type "float2" 1.180686 -1.125165 ;
	setAttr ".uvtk[100]" -type "float2" 1.180686 -0.73056495 ;
	setAttr ".uvtk[101]" -type "float2" 1.180686 -1.1107967 ;
	setAttr ".uvtk[102]" -type "float2" 1.180686 -1.1255913 ;
	setAttr ".uvtk[104]" -type "float2" 1.180686 -0.74507874 ;
	setAttr ".uvtk[105]" -type "float2" 1.180686 -1.110198 ;
	setAttr ".uvtk[108]" -type "float2" 1.180686 -0.72996658 ;
	setAttr ".uvtk[109]" -type "float2" 1.180686 -1.1255914 ;
	setAttr ".uvtk[112]" -type "float2" 1.180686 -0.74466491 ;
	setAttr ".uvtk[113]" -type "float2" 1.180686 -1.1251757 ;
	setAttr ".uvtk[115]" -type "float2" 1.180686 -0.14223129 ;
	setAttr ".uvtk[117]" -type "float2" 1.180686 -0.14265555 ;
	setAttr ".uvtk[118]" -type "float2" 1.180686 -0.14265549 ;
	setAttr ".uvtk[119]" -type "float2" 1.180686 -0.14224195 ;
	setAttr ".uvtk[121]" -type "float2" 1.180686 -0.12844402 ;
	setAttr ".uvtk[122]" -type "float2" 1.180686 -0.12784505 ;
	setAttr ".uvtk[144]" -type "float2" 1.180686 -1.1101968 ;
	setAttr ".uvtk[145]" -type "float2" 1.180686 -0.7299661 ;
	setAttr ".uvtk[146]" -type "float2" 1.180686 -0.74507809 ;
	setAttr ".uvtk[147]" -type "float2" 1.180686 -0.12784547 ;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[148]" "e[176]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" -0.032672346 0.16945897 ;
	setAttr ".uvtk[7]" -type "float2" -0.032853901 0.16945271 ;
	setAttr ".uvtk[11]" -type "float2" -0.032853901 0.16917631 ;
	setAttr ".uvtk[13]" -type "float2" -0.032743394 0.16918629 ;
	setAttr ".uvtk[16]" -type "float2" -0.032672346 0.16930982 ;
	setAttr ".uvtk[19]" -type "float2" 0.95215106 0.16945225 ;
	setAttr ".uvtk[22]" -type "float2" 0.9519695 0.16945954 ;
	setAttr ".uvtk[26]" -type "float2" 0.9519695 0.16930842 ;
	setAttr ".uvtk[31]" -type "float2" 0.95204055 0.16918585 ;
	setAttr ".uvtk[33]" -type "float2" 0.95215106 0.16917716 ;
	setAttr ".uvtk[35]" -type "float2" 0.96695185 0.16946542 ;
	setAttr ".uvtk[37]" -type "float2" 0.96677029 0.16945671 ;
	setAttr ".uvtk[39]" -type "float2" 0.96677029 0.1691805 ;
	setAttr ".uvtk[41]" -type "float2" 0.96688074 0.16919224 ;
	setAttr ".uvtk[45]" -type "float2" 0.96695185 0.16931622 ;
	setAttr ".uvtk[47]" -type "float2" -0.047473073 0.16918048 ;
	setAttr ".uvtk[82]" -type "float2" -0.047473073 0.16945671 ;
	setAttr ".uvtk[83]" -type "float2" -0.047654629 0.16946545 ;
	setAttr ".uvtk[84]" -type "float2" -0.047654629 0.16931613 ;
	setAttr ".uvtk[85]" -type "float2" -0.04758358 0.1691923 ;
	setAttr ".uvtk[86]" -type "float2" -0.047369599 0.16912141 ;
	setAttr ".uvtk[87]" -type "float2" -0.047369599 0.16951558 ;
	setAttr ".uvtk[88]" -type "float2" 0.96666676 0.16951558 ;
	setAttr ".uvtk[89]" -type "float2" 0.96666676 0.16912138 ;
	setAttr ".uvtk[90]" -type "float2" 0.95225453 0.16951348 ;
	setAttr ".uvtk[91]" -type "float2" 0.95225453 0.16911933 ;
	setAttr ".uvtk[92]" -type "float2" -0.032957405 0.16951244 ;
	setAttr ".uvtk[93]" -type "float2" -0.032957405 0.16911826 ;
	setAttr ".uvtk[94]" -type "float2" -0.040163487 0.16911364 ;
	setAttr ".uvtk[95]" -type "float2" -0.040163487 0.16951992 ;
	setAttr ".uvtk[96]" -type "float2" 0.95946062 0.1695196 ;
	setAttr ".uvtk[97]" -type "float2" 0.95946062 0.16911331 ;
	setAttr ".uvtk[98]" -type "float2" 0.95146227 0.16919738 ;
	setAttr ".uvtk[99]" -type "float2" 0.95152867 0.16900462 ;
	setAttr ".uvtk[100]" -type "float2" 0.94758236 0.16886267 ;
	setAttr ".uvtk[101]" -type "float2" -0.028285235 0.16866329 ;
	setAttr ".uvtk[102]" -type "float2" 0.96739268 0.16901475 ;
	setAttr ".uvtk[104]" -type "float2" 0.96745902 0.16920747 ;
	setAttr ".uvtk[105]" -type "float2" 0.97133887 0.16864906 ;
	setAttr ".uvtk[108]" -type "float2" 0.97133887 0.16884845 ;
	setAttr ".uvtk[109]" -type "float2" -0.048095524 0.16901475 ;
	setAttr ".uvtk[112]" -type "float2" -0.03216514 0.16919763 ;
	setAttr ".uvtk[113]" -type "float2" -0.03223151 0.16900489 ;
	setAttr ".uvtk[115]" -type "float2" 0.95146227 0.16941006 ;
	setAttr ".uvtk[117]" -type "float2" 0.96745902 0.16942014 ;
	setAttr ".uvtk[118]" -type "float2" -0.048161864 0.16942014 ;
	setAttr ".uvtk[119]" -type "float2" -0.03216514 0.16941032 ;
	setAttr ".uvtk[121]" -type "float2" -0.028285235 0.16908252 ;
	setAttr ".uvtk[122]" -type "float2" 0.97133887 0.16906829 ;
	setAttr ".uvtk[144]" -type "float2" -0.052041709 0.16864903 ;
	setAttr ".uvtk[145]" -type "float2" -0.052041709 0.16884844 ;
	setAttr ".uvtk[146]" -type "float2" -0.048161864 0.16920745 ;
	setAttr ".uvtk[147]" -type "float2" -0.052041709 0.16906831 ;
	setAttr ".uvtk[148]" -type "float2" -0.028285235 0.16886267 ;
	setAttr ".uvtk[149]" -type "float2" 0.94758236 0.16908252 ;
	setAttr ".uvtk[150]" -type "float2" 0.94758236 0.16866329 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[0]" "f[3]" "f[5:6]" "f[10:11]" "f[15:16]" "f[22:23]" "f[27:28]" "f[36:47]";
	setAttr ".ix" -type "matrix" 0.36070000000000002 0 0 0 0 0.13669999999999999 0 0
		 0 0 0.27050000000000002 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -0.057124145328998566 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.8799805641174316 4.394291877746582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 96 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -1.4023832 0 ;
	setAttr ".uvtk[1]" -type "float2" -1.4643536 0 ;
	setAttr ".uvtk[2]" -type "float2" -1.4643536 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.40238297 0 ;
	setAttr ".uvtk[8]" -type "float2" -1.316231 0 ;
	setAttr ".uvtk[9]" -type "float2" -1.3162308 0 ;
	setAttr ".uvtk[10]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[17]" -type "float2" -2.3782015 0 ;
	setAttr ".uvtk[18]" -type "float2" -0.40238297 0 ;
	setAttr ".uvtk[20]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[23]" -type "float2" -1.4643532 0 ;
	setAttr ".uvtk[24]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[25]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[32]" -type "float2" -1.3162308 0 ;
	setAttr ".uvtk[34]" -type "float2" -1.3162308 0 ;
	setAttr ".uvtk[36]" -type "float2" -2.3782015 0 ;
	setAttr ".uvtk[42]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[43]" -type "float2" -1.3162314 0 ;
	setAttr ".uvtk[44]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[53]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[54]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[55]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[56]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[57]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[58]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[59]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[60]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[61]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[62]" -type "float2" -1.316231 0 ;
	setAttr ".uvtk[63]" -type "float2" -1.316231 0 ;
	setAttr ".uvtk[64]" -type "float2" -1.3162308 0 ;
	setAttr ".uvtk[106]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[107]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[120]" -type "float2" -1.3162314 0 ;
	setAttr ".uvtk[127]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[151]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[152]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[153]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[154]" -type "float2" -1.4023832 0 ;
	setAttr ".uvtk[155]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[156]" -type "float2" -1.3782017 0 ;
	setAttr ".uvtk[157]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[158]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[159]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[160]" -type "float2" -1.3782016 0 ;
	setAttr ".uvtk[161]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[162]" -type "float2" -1.4023832 0 ;
	setAttr ".uvtk[163]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[164]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[165]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[166]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[167]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[168]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[169]" -type "float2" -1.4023832 0 ;
	setAttr ".uvtk[170]" -type "float2" -1.3782014 0 ;
	setAttr ".uvtk[171]" -type "float2" -1.3782014 0 ;
	setAttr ".uvtk[172]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[173]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[174]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[175]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[176]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[177]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[178]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[179]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[180]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[181]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[182]" -type "float2" -1.3782015 0 ;
	setAttr ".uvtk[183]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[184]" -type "float2" -1.4023831 0 ;
	setAttr ".uvtk[185]" -type "float2" -1.4643536 0 ;
	setAttr ".uvtk[186]" -type "float2" -1.4643536 0 ;
	setAttr ".uvtk[187]" -type "float2" -1.316231 0 ;
	setAttr ".uvtk[188]" -type "float2" -1.3162308 0 ;
	setAttr ".uvtk[189]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[190]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[191]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[192]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[193]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[194]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[195]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[196]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[197]" -type "float2" -1.3162314 0 ;
	setAttr ".uvtk[198]" -type "float2" -1.4643532 0 ;
	setAttr ".uvtk[199]" -type "float2" -1.4643532 0 ;
	setAttr ".uvtk[200]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[201]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[202]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[203]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[204]" -type "float2" -1.4643532 0 ;
	setAttr ".uvtk[205]" -type "float2" -1.3162314 0 ;
	setAttr ".uvtk[206]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[207]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[208]" -type "float2" -1.4643537 0 ;
	setAttr ".uvtk[209]" -type "float2" -1.3162309 0 ;
	setAttr ".uvtk[210]" -type "float2" -1.4643538 0 ;
	setAttr ".uvtk[211]" -type "float2" -1.3162308 0 ;
	setAttr -s 92 ".nuv[0:91]"  0 19 1.000000238419 0.025262356 
		0 53 0.92982882 0.025262356 0 54 0.92982882 -2.9802322e-008 3 
		41 0.070171356 -2.9802322e-008 3 42 0.070171356 0.025262356 3 21
		 0 0.025262356 5 48 0.92982882 0.99999988 5 49 0.92982882 0.97473752 
		5 16 1.000000238419 0.97473752 6 14 0 0.97473752 6 46 0.070171356
		 0.97473752 6 47 0.070171356 0.99999988 10 26 0 0.96110678 10 
		45 0.070171356 0.96110678 10 46 0.070171356 0.97473752 10 14 0
		 0.97473752 11 16 1.000000238419 0.97473752 11 49 0.92982882 0.97473752 
		11 50 0.92982882 0.96110678 11 28 1.000000238419 0.96110678 15 
		31 1.000000238419 0.038893044 15 52 0.92982882 0.038893044 15 53
		 0.92982882 0.025262356 15 19 1.000000238419 0.025262356 16 21 0 0.025262356 
		16 42 0.070171356 0.025262356 16 43 0.070171356 0.038893044 16 
		33 0 0.038893044 22 10 0 0.49999994 22 44 0.070171356 0.49999994 
		22 45 0.070171356 0.96110678 22 26 0 0.96110678 23 28 1.000000238419
		 0.96110678 23 50 0.92982882 0.96110678 23 51 0.92982882 0.49999994 
		23 8 1.000000238419 0.49999994 27 8 1.000000238419 0.49999994 27 
		51 0.92982882 0.49999994 27 52 0.92982882 0.038893044 27 31 1.000000238419
		 0.038893044 28 33 0 0.038893044 28 43 0.070171356 0.038893044 28 
		44 0.070171356 0.49999994 28 10 0 0.49999994 36 5 0.50000012
		 -2.9802322e-008 36 20 0.50000012 0.025262356 36 42 0.070171356 0.025262356 
		36 41 0.070171356 -2.9802322e-008 37 43 0.070171356 0.038893044 37 
		42 0.070171356 0.025262356 37 20 0.50000012 0.025262356 37 32
		 0.50000012 0.038893044 38 44 0.070171356 0.49999994 38 43 0.070171356
		 0.038893044 38 32 0.50000012 0.038893044 38 9 0.50000012 0.49999994 
		39 45 0.070171356 0.96110678 39 44 0.070171356 0.49999994 39 
		9 0.50000012 0.49999994 39 27 0.50000012 0.96110678 40 46 0.070171356
		 0.97473752 40 45 0.070171356 0.96110678 40 27 0.50000012 0.96110678 
		40 15 0.50000012 0.97473752 41 47 0.070171356 0.99999988 41 46
		 0.070171356 0.97473752 41 15 0.50000012 0.97473752 41 4 0.50000012
		 0.99999988 42 48 0.92982882 0.99999988 42 4 0.50000012 0.99999988 
		42 15 0.50000012 0.97473752 42 49 0.92982882 0.97473752 43 50
		 0.92982882 0.96110678 43 49 0.92982882 0.97473752 43 15 0.50000012
		 0.97473752 43 27 0.50000012 0.96110678 44 51 0.92982882 0.49999994 
		44 50 0.92982882 0.96110678 44 27 0.50000012 0.96110678 44 9
		 0.50000012 0.49999994 45 52 0.92982882 0.038893044 45 51 0.92982882
		 0.49999994 45 9 0.50000012 0.49999994 45 32 0.50000012 0.038893044 
		46 53 0.92982882 0.025262356 46 52 0.92982882 0.038893044 46 
		32 0.50000012 0.038893044 46 20 0.50000012 0.025262356 47 54 0.92982882
		 -2.9802322e-008 47 53 0.92982882 0.025262356 47 20 0.50000012 0.025262356 
		47 5 0.50000012 -2.9802322e-008;
createNode polyMapSew -n "polyMapSew1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[8]" "e[14:15]" "e[17]" "e[25:26]" "e[28]" "e[35:36]" "e[38]" "e[47:48]" "e[50]" "e[57:58]" "e[60]" "e[76:85]" "e[87]" "e[89:98]" "e[100]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 151 ".uvtk[0:150]" -type "float2" 0.56480092 0.54956561 0.64387149
		 0.54956561 0.64387137 0.56933755 0.56480092 0.56933755 -0.85531664 -0.0095559955
		 0.0020204037 0.77054387 -0.85531664 -0.0092815161 -0.0051991353 0.76330948 1.31910741
		 0.56933755 1.31910741 0.54956561 1.3981781 0.54956561 0.0054229796 0.75195122 -0.85624242
		 -0.0092815161 0.009579137 0.75660789 -0.46999681 -0.39633539 -0.85624236 -0.0095559955
		 0.00775212 0.76441497 1.39817798 0.56933755 0.5648008 -0.21332589 -0.60556394 0.20181909
		 0.64387161 -0.21332589 -0.84305 -0.0092815161 -0.61330432 0.19514169 0.64387137 -0.19355395
		 0.56480092 -0.19355395 1.39817774 -0.19355395 -0.60749722 0.18893212 -0.84397578
		 -0.0092815161 -0.47049123 -0.18522812 -0.46999681 -0.41903663 -0.84397578 -0.0095559955
		 -0.59986639 0.18662596 1.31910741 -0.19355395 -0.59499204 0.19051461 1.31910741 -0.21332589
		 0.0021481067 0.7711606 1.39817798 -0.21332589 -0.0049769143 0.76382518 -0.84305012
		 -0.0095559955 0.005637988 0.75247467 -0.85624242 0.0092815757 0.0097267926 0.7572034
		 1.39817822 -0.18288568 1.31910741 -0.18288568 0.64387107 -0.18288568 0.0078825057
		 0.76502877 -0.85531664 0.0092815757 -0.59549558 0.1902996 -0.47049123 -0.1625268
		 -0.56444365 -0.41903663 -0.85531664 0.0095559359 -0.56493807 -0.1625268 -0.56493807
		 -0.18522812 0.56480062 -0.18288568 0.5648008 0.53889745 0.64387137 0.53889745 1.31910753
		 0.53889745 1.39817822 0.53889745 1.39817858 0.17800596 1.31910789 0.17800596 0.64387101
		 0.17800596 0.56480014 0.17800596 0.98148936 0.56933755 0.98148936 0.54956561 0.98148948
		 0.53889745 -0.37604439 -0.18522812 -0.37604439 -0.1625268 -0.85624236 0.0095559359
		 -0.37554997 -0.41903663 -0.37554997 -0.39633539 -0.46999681 -0.41903663 -0.56444365
		 -0.41903663 -0.56444365 -0.39633539 -0.46999681 -0.39633539 -0.56493807 -0.18522812
		 -0.56493807 -0.1625268 -0.47049123 -0.1625268 -0.47049123 -0.18522812 -0.37604439
		 -0.1625268 -0.37604439 -0.18522812 -0.37554997 -0.39633539 -0.37554997 -0.41903663
		 -0.60611105 0.20165081 -0.61390775 0.19503355 -0.6081692 0.1888973 -0.60049009 0.18653943
		 -0.58897161 0.19185013 -0.60411984 0.20804811 -0.0114934 0.76226676 0.0036556574
		 0.74606788 -0.60366344 0.20831354 -0.58851588 0.19211623 -0.011748388 0.7617861 0.0033999684
		 0.74558783 -0.29254746 0.46846417 -0.30816099 0.4851597 -0.30777311 0.48549846 -0.29215908
		 0.46880233 -0.62407297 0.16487694 -0.61393785 0.15950599 -0.77064872 0.0020161569
		 0.21288127 0.90644425 0.037583653 0.76958251 -0.84305012 0.0095559359 0.032904807
		 0.78005224 0.21380377 0.90621132 0.98148948 0.17800596 0.98148948 -0.18288568 0.20614108
		 0.91440505 -0.61470294 0.1595709 -0.84397578 0.0095559359 -0.84397578 0.0092815757
		 0.032906834 0.77929682 0.037587229 0.76882541 -0.56444365 -0.39633539 -0.63224602
		 0.17361645 -0.84305 0.0092815757 0.024731621 0.78879184 -0.63300931 0.17367907 0.024733439
		 0.78803653 0.98148948 -0.19355395 0.19676973 0.9236725 0.19769248 0.92343915 -0.85531664
		 0 -0.84964621 0.009861052 -0.84964621 0.0095559359 -0.46999681 -0.39633539 0.98148924
		 -0.21332589 -0.84964621 -0.0095559955 -0.85624236 0 -0.84305012 0 -0.84397578 0 -0.84964621
		 -0.0092815161 -0.84964627 0 -0.84964621 0.0092815757 -0.84305 0.009861052 -0.84397578
		 0.009861052 -0.85531664 0.009861052 -0.85624242 0.009861052 -0.84397578 -0.009861052
		 -0.84305 -0.009861052 -0.85531664 -0.009861052 -0.85624242 -0.009861052 -0.84964621
		 -0.009861052 -0.76281464 -0.0071144253 -0.77047795 0.0010799915 -0.62483555 0.1649389
		 -0.77892733 0.010114938 0.20521885 0.91463768 -0.77909786 0.01105082 -0.7629863 -0.0061772764;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 12 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyBevel2.out" "pCubeShape1.i";
connectAttr "layer1.di" "pCube2.do";
connectAttr "groupId12.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape2.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "polyTweakUV5.out" "pCubeShape2.i";
connectAttr "groupId13.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "groupId9.id" "pCubeShape3.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId11.id" "pCubeShape3.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "groupParts8.og" "pCubeShape3.i";
connectAttr "groupId10.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape4.i";
connectAttr "groupId4.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pSphereShape1.i";
connectAttr "groupId2.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "polySurfaceShape2.i";
connectAttr "groupId6.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape3.i";
connectAttr "groupId7.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts3.og" "pSphere2Shape.i";
connectAttr "groupId5.id" "pSphere2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphere2Shape.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurface1Shape.i";
connectAttr "groupId8.id" "polySurface1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface1Shape.iog.og[0].gco";
connectAttr "deleteComponent4.og" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyDuplicateEdge1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyDuplicateEdge1.out" "polyTweak1.ip";
connectAttr "polyCube2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyDuplicateEdge2.ip";
connectAttr "polyDuplicateEdge2.out" "polyDuplicateEdge3.ip";
connectAttr "polyDuplicateEdge3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyDelEdge2.ip";
connectAttr "polySurfaceShape1.o" "polySplitRing6.ip";
connectAttr "pCubeShape2.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape2.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyDuplicateEdge4.ip";
connectAttr "polyDuplicateEdge4.out" "polyDuplicateEdge5.ip";
connectAttr "polyDuplicateEdge5.out" "polyDuplicateEdge6.ip";
connectAttr "polyCube3.out" "polySplitRing8.ip";
connectAttr "pCubeShape4.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polyDuplicateEdge7.ip";
connectAttr "polyDuplicateEdge7.out" "polySplitRing9.ip";
connectAttr "pCubeShape4.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polyDuplicateEdge8.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace3.mp";
connectAttr "polyDuplicateEdge8.out" "polyTweak2.ip";
connectAttr "polySphere1.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeEdge1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak3.out" "polySoftEdge1.ip";
connectAttr "pSphereShape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak3.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pSphereShape1.wm" "polySoftEdge2.mp";
connectAttr "pSphereShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[1]";
connectAttr "pSphereShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[1]";
connectAttr "polySoftEdge2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace3.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pSphere2Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polySeparate1.out[1]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyDuplicateEdge6.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace4.out" "polyBevel1.ip";
connectAttr "pCubeShape2.wm" "polyBevel1.mp";
connectAttr "polyDelEdge2.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyCylinder1.out" "polySoftEdge3.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge3.mp";
connectAttr "polySoftEdge3.out" "polyWedgeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyWedgeFace1.mp";
connectAttr "polyWedgeFace1.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak5.out" "polySoftEdge4.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge4.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polySoftEdge4.out" "polyWedgeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyWedgeFace2.mp";
connectAttr "polyWedgeFace2.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySoftEdge5.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "deleteComponent4.ig";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "groupId11.msg" "blinn1SG.gn" -na;
connectAttr "pCubeShape3.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "polyExtrudeFace2.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "pCubeShape3.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "polyBevel1.out" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId14.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyPlanarProj1.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyCylProj1.ip";
connectAttr "pCubeShape2.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyTweakUV5.ip";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphere2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
// End of Table.ma
