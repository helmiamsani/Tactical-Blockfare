//Maya ASCII 2017 scene
//Name: hummer.ma
//Last modified: Sat, Nov 16, 2019 11:13:54 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "E2375A92-4DD0-2BCA-162D-9F88B5216DDF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.012086119078873 6.9467139038510268 -8.3154533341024788 ;
	setAttr ".r" -type "double3" 6.8616472707902414 833.39999999992858 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "937E2161-490A-92B0-D964-EC91B5FFDB94";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 60.441984114032842;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A4CE5AB9-43C7-0934-F0DA-05890423E943";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "93E5C376-40B6-03B5-F896-DDB91B3EB404";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "75F16C97-4A86-D24E-B635-1A813C15E089";
	setAttr ".t" -type "double3" 1.4985411513437374 23.748029798847842 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C9B351DF-4D1A-FA12-611B-D88F33EB67CA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.668485202952777;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "359BEDAA-49A4-6915-356A-E9B49F73B622";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BDAFF07B-4D13-2298-4DE8-57AC4EAA377F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "77A546B0-4ECE-455F-EB09-828335016532";
	setAttr ".t" -type "double3" 0 17.82817480168314 0 ;
	setAttr ".s" -type "double3" 13.41429557404715 10.499226830231159 16.155452750509873 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "3A044D19-4AD5-CB46-956B-8D9086497445";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "CD8CB3F6-4569-BD6F-34FE-608CF09D2C57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.022130455821752548 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[368:373]" -type "float3"  0 0 -0.024109239 0 0 -0.024109239 
		0 0 -0.024109239 0 0 -0.024109239 0 0 -0.024109239 0 0 -0.024109239;
createNode transform -n "imagePlane1";
	rename -uid "18B833F7-4442-ECD3-6F1F-1D9B81972AF0";
	setAttr ".t" -type "double3" 0.13524080534222804 26.245134872227407 -20.104968195187858 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "C6E914E2-44E1-8191-B562-4D93700076BD";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/Michelle/Desktop/NKv8YtX.jpg";
	setAttr ".cov" -type "short2" 314 217 ;
	setAttr ".dlc" no;
	setAttr ".w" 3.14;
	setAttr ".h" 2.17;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCylinder1";
	rename -uid "18742C12-46E9-308E-E4C4-DF97C9562428";
	setAttr ".t" -type "double3" 0 12.887360649837373 13.754900688335933 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".s" -type "double3" 2.2061076192811928 7.6564665564848902 2.2061076192811928 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "F9699EBA-4FA0-D462-E145-9597526979AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.484375 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "05DC73F3-447D-2784-3D5A-FBADDFA5E576";
	setAttr ".t" -type "double3" 0 12.887360649837373 -10.12785305060709 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".s" -type "double3" 2.2061076192811928 7.6564665564848902 2.2061076192811928 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "6F9356CF-456D-F56E-FD71-688C429A9C21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "41D286BF-4A0C-8960-6410-F49BDE222E0F";
	setAttr ".t" -type "double3" 5.5442646146986085 15.701907892712189 16.859039811200464 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.78007603190214037 0.78007603190214037 0.78007603190214037 ;
createNode transform -n "transform3" -p "pCylinder3";
	rename -uid "A36F7C35-4497-467A-2422-DBB47BA505A8";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform3";
	rename -uid "9B20B60D-4CCD-30E0-B0AC-C2A4D42CF5F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3546866774559021 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4";
	rename -uid "56E09743-4A54-4573-A6A5-6C8AEFF5CDD0";
	setAttr ".t" -type "double3" -5.4918953816402798 15.701907892712189 16.859039811200464 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.78007603190214037 0.78007603190214037 0.78007603190214037 ;
createNode transform -n "transform2" -p "pCylinder4";
	rename -uid "B03A09A7-445D-397A-51D3-2FB4438DD339";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform2";
	rename -uid "D9E322A0-4233-3F64-DD34-F2AF9128601A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3546866774559021 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.57812506 0.70843351
		 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625
		 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".vt[0:6]"  0.50000024 1 -0.86602533 -0.49999985 1 -0.86602551
		 -1 1 -1.4901161e-007 -0.50000012 1 0.86602539 0.49999997 1 0.86602545 1 1 0 0 1 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 0 6 1
		 1 6 1 2 6 1 3 6 1 4 6 1 5 6 1;
	setAttr -s 6 -ch 18 ".fc[0:5]" -type "polyFaces" 
		f 3 0 7 -7
		mu 0 3 4 3 6
		f 3 1 8 -8
		mu 0 3 3 2 6
		f 3 2 9 -9
		mu 0 3 2 1 6
		f 3 3 10 -10
		mu 0 3 1 0 6
		f 3 4 11 -11
		mu 0 3 0 5 6
		f 3 5 6 -12
		mu 0 3 5 4 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "7044E335-43B1-C4BB-D31E-4D9D6F6D75D7";
	setAttr ".rp" -type "double3" 0.015208722547396025 18.028175707787014 1.3607675047910943 ;
	setAttr ".sp" -type "double3" 0.015208722547396025 18.028175707787014 1.3607675047910943 ;
createNode mesh -n "pCylinder5Shape" -p "pCylinder5";
	rename -uid "4FC352D1-4909-9709-7FD4-4A839622A1A7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.083333339542150497 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "94D02476-4B92-0F65-B7BA-11AB5661E9C1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5F559110-406B-886D-ED77-C0907C9E1712";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "50E76069-4547-57E0-9646-D3A4B9FE67E7";
createNode displayLayerManager -n "layerManager";
	rename -uid "0428F604-4E83-2898-A7A1-CDBDB970E05E";
createNode displayLayer -n "defaultLayer";
	rename -uid "196D8CD2-4E08-35DC-4477-C5999132B40E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A56D3825-46FD-2696-3545-B2A7B1586A01";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CC0DCF0A-4A82-E16E-1305-8688A2D09B3A";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "CD43279A-4269-42F2-121F-DDB98E2D3962";
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5EF1FF9A-40E5-EBAB-E57F-368F641F86BD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1103\n                -height 1283\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1103\n            -height 1283\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1102\n                -height 1283\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1102\n            -height 1283\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1103\\n    -height 1283\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1103\\n    -height 1283\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 1283\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 1283\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C2B6219E-4B01-0768-B22B-47B846DF466B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "AB8C8134-4508-FDB8-BF75-06BE19B43344";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.7396545 8.0777264 ;
	setAttr ".rs" 33085;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071477870235752 0.61794598012881075 8.0777263752549366 ;
	setAttr ".cbx" -type "double3" 6.7071477870235752 4.8613630165027057 8.0777263752549366 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "A5B6EF19-4472-986E-E16A-DA9FC62E196B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[3:5]" -type "float3"  0 0.070831373 0 0 0.070831373
		 0 0 0.070831373 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "0A6895DC-4BEE-0104-821B-D58214F9A15A";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.3535738 8.6499786 8.0777264 ;
	setAttr ".rs" 58997;
	setAttr ".off" 0.5;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 6.1827859079389462 8.0777263752549366 ;
	setAttr ".cbx" -type "double3" 6.7071473872464136 11.117172184557283 8.0777263752549366 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "DCD580AB-47B9-1C7D-6EDC-DA973A3E3CF7";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[6]" -type "float3" 0 -0.1366429 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.1366429 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.1366429 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.59065157 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.59065157 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.59065157 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.59065157 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.59065157 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.59065157 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "2A48F82D-4D7C-6F84-38B8-9E9D21259DE8";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.3535736 8.6499796 8.0777264 ;
	setAttr ".rs" 47263;
	setAttr ".off" 0.5;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071469874692529 6.1827862208402884 8.0777263752549366 ;
	setAttr ".cbx" -type "double3" 0 11.117172184557283 8.0777263752549366 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "09448CE7-4765-6297-59DE-018BBBD3461D";
	setAttr ".ics" -type "componentList" 1 "f[8:13]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.8675599 -8.0777264 ;
	setAttr ".rs" 61575;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071465876920913 0.61794723173418209 -8.0777263752549366 ;
	setAttr ".cbx" -type "double3" 6.7071465876920913 11.117172184557283 -8.0777263752549366 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "700C040B-400A-1213-0F8B-4FAB3BC731C0";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[15:20]" -type "float3"  0 -0.14144617 0 0 -0.14144617
		 0 0 -0.14144617 0 0 0.061020903 0 0 0.061020903 0 0 0.061020903 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "98A0B92F-442F-98C2-C938-B5ABC1426971";
	setAttr ".ics" -type "componentList" 1 "f[8:13]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.8675599 -9.4652748 ;
	setAttr ".rs" 62644;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 0.61794785753686732 -9.4652748005030354 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 11.117172184557283 -9.4652748005030354 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "CB58DE38-489F-3C9B-DC8F-3DBE2BC3E13C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[36:47]" -type "float3"  0 0 -0.085887291 0 0 -0.085887291
		 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291
		 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291 0 0 -0.085887291;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "96F11BB1-457C-4821-5123-6EB3D3A55726";
	setAttr ".ics" -type "componentList" 1 "f[36:45]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.8675604 -6.7150536 ;
	setAttr ".rs" 56812;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.40000000596046448;
	setAttr ".cbn" -type "double3" -6.7071461879149297 0.61794817043821038 -7.4088277922290233 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 11.117172184557283 -6.0212793669809246 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "66645F33-4598-961C-D565-6DB0F5919798";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.12729119 ;
	setAttr ".tk[46]" -type "float3" 0 -0.39556098 -0.33749139 ;
	setAttr ".tk[47]" -type "float3" 0 -0.39556098 -0.33749139 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[50]" -type "float3" 0 -0.39556098 -0.33749139 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.33749139 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.33749139 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "0DFEDEEC-4325-1E79-2942-AEA203BCB654";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20:22]" "e[29:35]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.54172992706298828;
	setAttr ".dr" no;
	setAttr ".re" 22;
	setAttr ".sma" 50.214592;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "7B8E074D-4E8D-7389-30E2-E387DFDE3D4A";
	setAttr ".dc" -type "componentList" 1 "e[33]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "B9974D43-4017-038B-90CF-DDB5C1F17D9F";
	setAttr ".dc" -type "componentList" 1 "e[32]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "AE1E1AB2-4013-A12E-7011-84B2A34745B0";
	setAttr ".dc" -type "componentList" 1 "e[167]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "E16DBD0E-435C-20DB-D26D-12924A4B2834";
	setAttr ".dc" -type "componentList" 1 "e[165]";
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "7EF2813E-41F9-27BF-19A9-8F90D34FDC3E";
	setAttr ".ics" -type "componentList" 1 "f[81]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7071462 5.8675604 -2.4965279 ;
	setAttr ".rs" 57467;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.7071461879149297 0.61794879624089649 -6.0212793669809246 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 11.117172184557283 1.0282235041370058 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "0353225A-438B-1605-71E6-E980C2D110AC";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7071462 5.8675609 4.5529752 ;
	setAttr ".rs" 42090;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.7071461879149297 0.61794910914223866 1.0282235041370058 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 11.117172184557283 8.0777263752549366 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "84E64254-4CDF-B795-84BB-87B518EC6379";
	setAttr ".ics" -type "componentList" 2 "f[16]" "f[81]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7071462 5.8675609 1.0282238 ;
	setAttr ".rs" 33327;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.7071461879149297 1.4179496045443054 -5.2212784257880536 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 10.317172314957903 7.277725915532077 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "75FF2258-4D6A-D84B-6884-6192923F3B91";
	setAttr ".ics" -type "componentList" 1 "f[81]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.107655 5.8675613 -2.4965272 ;
	setAttr ".rs" 50562;
	setAttr ".off" 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.107654941421699 1.4179499174456485 -5.2212779443180422 ;
	setAttr ".cbx" -type "double3" 7.107654941421699 10.317172314957903 0.22822355597603272 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "E9E31A57-44CF-4AF8-7806-3C95AD55BA4D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[104:119]" -type "float3"  0.029856859 0 0 0.029856859
		 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0
		 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0
		 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0 0.029856859 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "FE209579-48A6-8530-4FE0-5B9BF1337E6E";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.1076541 5.8675613 4.5529742 ;
	setAttr ".rs" 39791;
	setAttr ".off" 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.1076541418673767 1.4179502303469906 1.8282231212873463 ;
	setAttr ".cbx" -type "double3" 7.1076541418673767 10.317172314957903 7.2777249525920542 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "0CCFB4E4-4FE1-1654-EC09-51838021D396";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[120:135]" -type "float3"  0 0.34388882 0 0 0.22244471
		 0 0 0.34388882 0 0 0.22505963 0 0 0.1552981 0 0 -0.0064039207 0 0 -0.0064039207 0
		 0 0.15401781 0 0 0.34388888 0 0 0.21982992 0 0 0.34388888 0 0 0.22244471 0 0 0.15401781
		 0 0 -0.0064039207 0 0 -0.0064039207 0 0 0.15273756 0;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "9A2A4B2A-4D34-3DE4-9DBE-ABA753E64E3D";
	setAttr ".dc" -type "componentList" 1 "f[43]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "D7F2BE82-427A-5B66-7607-53BBE7626D01";
	setAttr ".dc" -type "componentList" 1 "f[40]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "C0493A71-4EEB-3ABD-E936-259836729B07";
	setAttr ".dc" -type "componentList" 1 "f[70]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "2AFC6B1F-4064-1951-3EC2-739207E69C95";
	setAttr ".dc" -type "componentList" 1 "f[64]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "8E674C14-48E2-9946-5AE6-F882E46624C5";
	setAttr ".dc" -type "componentList" 1 "f[64]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "B0F0BE09-421F-AB13-2C6B-DE9823A1FD16";
	setAttr ".dc" -type "componentList" 1 "f[68]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "89F5077F-4247-AA71-EE2A-4A97CCC051E9";
	setAttr ".ics" -type "componentList" 2 "f[16]" "f[75]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.5000458 7.6392264 1.0282235 ;
	setAttr ".rs" 48494;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.5000458198910787 6.0285174104957004 -4.2212777307669755 ;
	setAttr ".cbx" -type "double3" 7.5000458198910787 9.2499359245130126 6.2777247390409876 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "D1B69D2B-4555-9AE6-1B62-E59CB5FC06E3";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[72]" -type "float3" 0 0.038411614 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.038411614 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.038537391 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.038537391 0 ;
	setAttr ".tk[102]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[104]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[106]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[111]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[112]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[113]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[117]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[118]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[121]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[124]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.029251751 0 0 ;
	setAttr ".tk[133]" -type "float3" 0.029251751 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "12238967-4FD4-1D94-ED49-09825DFB0A75";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.6499796 8.0777264 ;
	setAttr ".rs" 55143;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.207145691829357 6.6827869215932587 8.0777263752549366 ;
	setAttr ".cbx" -type "double3" 6.207145691829357 10.617172109606999 8.0777263752549366 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "1A4FA7B1-47E2-84C0-AA2B-8F958A2AC17C";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[134:149]" -type "float3"  -0.037939824 0 0 -0.037939824
		 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824
		 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824
		 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0 -0.037939824 0 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0D0E95CC-416F-54D3-5B61-56A98E8B809D";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "A1115662-4DCF-8463-6786-A38CC3B39414";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[34:35]" "e[37]" "e[39]" "e[42]" "e[44]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.34847608208656311;
	setAttr ".re" 44;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "75506A72-4D20-C9C6-5EAB-619DC6A609AB";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[3]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.061300233 0 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[155]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[156]" -type "float3" 0 0 -0.029376622 ;
	setAttr ".tk[157]" -type "float3" 0 0 -0.029376622 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "8D655F45-4E60-4A4A-E916-428E334057F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[305:306]" "e[308]" "e[310]" "e[312]" "e[314]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.75056248903274536;
	setAttr ".dr" no;
	setAttr ".re" 306;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "5CF2F24C-442A-527B-F4DE-6DB03BB098D1";
	setAttr ".dc" -type "componentList" 1 "e[148]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "C7C1CBFC-40E9-9D0B-7778-3E99C7479349";
	setAttr ".dc" -type "componentList" 1 "e[149]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "193F7C1E-4BDE-C815-4CA9-CABF461031E1";
	setAttr ".dc" -type "componentList" 1 "e[33]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "1CDE1890-43EC-73B5-FD8E-BEA2EAE52A6F";
	setAttr ".dc" -type "componentList" 1 "e[32]";
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "D8B8BCC8-4A73-4295-8FEF-DA8A18F38B84";
	setAttr ".ics" -type "componentList" 1 "f[68]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.7071462 5.8675618 -2.4965279 ;
	setAttr ".rs" 39286;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 0.61795098655029612 -6.0212793669809246 ;
	setAttr ".cbx" -type "double3" -6.7071461879149297 11.117172184557283 1.0282235041370058 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "E886914F-440C-D0BE-8B59-D4A7457F43C6";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.7071462 5.8675618 4.5529752 ;
	setAttr ".rs" 41439;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 0.61795098655029612 1.0282235041370058 ;
	setAttr ".cbx" -type "double3" -6.7071461879149297 11.117172184557283 8.0777263752549366 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "DA8196A2-42A6-5F90-FF77-07831369D85F";
	setAttr ".ics" -type "componentList" 1 "f[68]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.7071462 5.8675618 -2.4965274 ;
	setAttr ".rs" 40956;
	setAttr ".off" 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 1.417951481952362 -5.2212784257880536 ;
	setAttr ".cbx" -type "double3" -6.7071461879149297 10.317172314957903 0.22822355597603272 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "1CAED638-4705-4E25-FF2C-CAA80AF2C505";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.7071462 5.8675618 4.5529742 ;
	setAttr ".rs" 55191;
	setAttr ".off" 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 1.417951481952362 1.828223241654849 ;
	setAttr ".cbx" -type "double3" -6.7071461879149297 10.317172314957903 7.2777254340620656 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "412E15EF-482B-51EC-39D8-289F8ED753AA";
	setAttr ".ics" -type "componentList" 3 "f[17]" "f[68]" "f[172:187]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.7071462 5.8675618 1.0282238 ;
	setAttr ".rs" 49701;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 1.417951794853705 -5.2212774628480316 ;
	setAttr ".cbx" -type "double3" -6.7071461879149297 10.317172314957903 7.2777249525920542 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "FF1D8AD0-49A6-DB3A-D07B-7FA5F9D24868";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[186:201]" -type "float3"  0 0.11255959 0 0 0.17651837
		 0 0 -0.037386987 0 0 -0.037386987 0 0 0.11375628 0 0 0.17896256 0 0 0.29003233 0
		 0 0.29003233 0 0 0.14353046 0 0 0.11136293 0 0 -0.037386987 0 0 -0.037386987 0 0
		 0.11255959 0 0 0.17651837 0 0 0.29003233 0 0 0.29003233 0;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "DAE1727A-40FA-16D5-37A8-54960734E89C";
	setAttr ".ics" -type "componentList" 2 "f[17]" "f[68]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4696293 7.9499602 1.0282235 ;
	setAttr ".rs" 34432;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.4696291743506089 6.3587401111713957 -4.221278212236987 ;
	setAttr ".cbx" -type "double3" -7.4696291743506089 9.5411807395901143 6.277725220510999 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "FC717426-44AD-89F4-E5F2-F8872E524C37";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[186:217]" -type "float3"  -0.056841064 0.073412761 0
		 -0.056841064 0.070800848 0 -0.056841064 0.058722679 0 -0.056841064 0.058722679 0
		 -0.056841064 0.070897996 0 -0.056841064 0.076091312 0 -0.056841064 0.08530844 0 -0.056841064
		 0.08530844 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0
		 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064
		 0.070897996 0 -0.056841064 0.076091312 0 -0.056841064 0.058722679 0 -0.056841064
		 0.058722679 0 -0.056841064 0.070995197 0 -0.056841064 0.076289766 0 -0.056841064
		 0.08530844 0 -0.056841064 0.08530844 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064
		 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064 0 0 -0.056841064
		 0 0;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "6022DA7D-460F-74AD-A81D-BB82D5632D61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[71:72]" "e[75]" "e[78]" "e[80]" "e[84]" "e[87]" "e[90]" "e[92]" "e[95]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.68041771650314331;
	setAttr ".dr" no;
	setAttr ".re" 95;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "D6D99D84-4698-A0AA-799B-A2BF9D167816";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[218:233]" -type "float3"  0.030535001 0 0 0.030535001
		 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0
		 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0
		 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0 0.030535001 0 0;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "F1A452E9-40EF-8927-BFB0-368FB828FB06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[71:72]" "e[75]" "e[78]" "e[80]" "e[84]" "e[87]" "e[90]" "e[92]" "e[95]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.076342403888702393;
	setAttr ".re" 95;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "5C35CE7F-4AF6-E152-9D1B-9F83BE596151";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[12:13]" "e[36]" "e[39]" "e[43]" "e[175]" "e[191]" "e[239]" "e[255]" "e[303]" "e[309]" "e[319]" "e[324]" "e[356]" "e[364]" "e[388]" "e[436]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.46886906027793884;
	setAttr ".re" 303;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "0308B455-411D-5CCA-0478-B8988E2BA3DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[27:28]" "e[68:69]" "e[91]" "e[94]" "e[96]" "e[134:135]" "e[137]" "e[140]" "e[163]" "e[211]" "e[227]" "e[275]" "e[337]" "e[394]" "e[415]" "e[449]" "e[455]" "e[469]" "e[475]" "e[489]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 5.8675593952443901 0 1;
	setAttr ".wt" 0.62885737419128418;
	setAttr ".re" 455;
	setAttr ".sma" 50.214592;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent15";
	rename -uid "FBF5A421-4837-0AA0-3478-E7A5C50E938B";
	setAttr ".dc" -type "componentList" 1 "f[250]";
createNode polyAppend -n "polyAppend1";
	rename -uid "0570EF98-419D-7D73-9B24-9BB2255553DF";
	setAttr -s 4 ".d[0:3]"  -2147483134 -2147483133 -2147483136 -2147483346;
	setAttr ".tx" 1;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "CE6E0F0E-4E03-5F96-2EEA-C6BF785ED897";
	setAttr ".ics" -type "componentList" 5 "f[145:146]" "f[230]" "f[237:239]" "f[245]" "f[277]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.88043 1.7756436 ;
	setAttr ".rs" 36605;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -2.5999999046325684;
	setAttr ".cbn" -type "double3" -6.7071461879149297 12.578566392989046 -12.51792081658977 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 15.182293875785344 16.069207990345454 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "C63F70B4-4CBD-13A7-6312-37BC5C5690B3";
	setAttr ".ics" -type "componentList" 4 "f[8:13]" "f[223:224]" "f[233:234]" "f[265:266]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.72031 -11.358228 ;
	setAttr ".rs" 35633;
	setAttr ".off" 0.60000002384185791;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 12.578565141383674 -14.91758661116055 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 22.862056508586111 -7.798868092703974 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "C3BAB6F1-441A-92D4-1324-A19B186A7E00";
	setAttr ".ics" -type "componentList" 4 "f[8:13]" "f[223:224]" "f[233:234]" "f[265:266]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.875111 -11.620748 ;
	setAttr ".rs" 33281;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.5;
	setAttr ".cbn" -type "double3" -6.1071462322557002 13.178565982287239 -14.917585648220527 ;
	setAttr ".cbx" -type "double3" 6.1071462322557002 22.571656527134611 -8.3239087325564753 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "D0309D29-415E-FE17-724E-46B7754A4E8D";
	setAttr ".ics" -type "componentList" 2 "f[223:224]" "f[233:234]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 20.381994 -11.249747 ;
	setAttr ".rs" 43913;
	setAttr ".off" 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.1071462322557002 18.629869344955214 -14.417584819239977 ;
	setAttr ".cbx" -type "double3" 6.1071462322557002 22.134120321448016 -8.0819093867121534 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "73F46C49-40B5-4291-9B8E-1C91EA93899D";
	setAttr ".ics" -type "componentList" 2 "f[223:224]" "f[233:234]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 20.381994 -11.249746 ;
	setAttr ".rs" 57039;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.60000002384185791;
	setAttr ".cbn" -type "double3" -5.1071460396388773 19.113866393628513 -13.542514999782426 ;
	setAttr ".cbx" -type "double3" 5.1071460396388773 21.650122021169349 -8.9569772802896619 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "3E899827-46C8-963E-1304-B181994456D2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[257:259]" -type "float3"  0 -0.10731473 0 0 -0.10731473
		 0 0 -0.10731473 0;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "2E136E00-4A63-3F1F-5513-AF8ABBF7754B";
	setAttr ".dc" -type "componentList" 1 "e[489]";
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "7A5EA43B-481F-5C94-0BA2-16A7DEDB63E2";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 15.756536 17.619961 ;
	setAttr ".rs" 40256;
	setAttr ".off" 0.5;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7071461879149297 14.047490195175433 17.619961268226607 ;
	setAttr ".cbx" -type "double3" 6.7071461879149297 17.465583474022484 17.619961268226607 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "5CF187C8-4270-34D4-F73F-F3848D6EF4F7";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 13.41429557404715 0 0 0 0 10.499226830231159 0 0 0 0 16.155452750509873 0
		 0 17.82817480168314 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 15.683537 17.619961 ;
	setAttr ".rs" 51111;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.2665665847429333 14.474490386846725 17.619961268226607 ;
	setAttr ".cbx" -type "double3" 4.2665665847429333 16.892583046441192 17.619961268226607 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "B1F8C05C-48A9-53ED-4B71-01B15098DB2A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[362:367]" -type "float3"  0.14466505 -0.0069529233 0
		 0 -0.0069529233 0 0.14466505 -0.0069529233 0 0 -0.0069529233 0 -0.14466505 -0.0069529233
		 0 -0.14466505 -0.0069529233 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "8ABA5C46-48C0-C4E2-2737-55B4D43AF87D";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "A4D6500B-4EE7-FEDA-3373-288F7555EEDF";
	setAttr ".dc" -type "componentList" 1 "f[0:11]";
createNode polyUnite -n "polyUnite1";
	rename -uid "CB5B3F45-4876-6E52-DB0E-81934DC60A22";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	rename -uid "318A3DAE-4E34-0662-400C-42BF20E20B86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D0493B01-491F-859A-52C5-9B9DC25D84AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId2";
	rename -uid "6D92818E-46BE-1FBD-6718-DB8BF9977AC0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "2073DC29-41AE-483E-93EE-8284A009887C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "7F7D3CAF-404A-62FC-A955-BD8443ECCCD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "0981D999-43BC-76CB-741E-6CB26C343256";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4985E8DC-400E-1521-429F-139AEEBBEF23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:356]";
createNode groupId -n "groupId6";
	rename -uid "E4DDD432-405F-7A8B-A98D-D9BD275ED450";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "76A57E9B-4A2B-6B15-C1E1-7BA3E41146F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:368]";
	setAttr ".gi" 7;
createNode polySplit -n "polySplit1";
	rename -uid "DDC9C47E-434A-5CCE-A1E9-468872329BF6";
	setAttr -s 7 ".e[0:6]"  1 0 0 0 0 0 0;
	setAttr -s 7 ".d[0:6]"  -2147483643 -2147483637 -2147483638 -2147483639 -2147483640 -2147483641 
		-2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "B7DBCC6E-4B5A-89DB-4FE6-249D28FAB98B";
	setAttr ".v[0]" -type "float3"  5.9135828 16.376284 17.619961;
	setAttr -s 3 ".e[0:2]"  0 361 0;
	setAttr -s 3 ".d[0:2]"  -2147482909 0 -2147482909;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "00C7B6DC-4AED-AF2C-19A2-E4980D4CE18B";
	setAttr ".v[0]" -type "float3"  6.0564952 16.289463 17.619961;
	setAttr -s 3 ".e[0:2]"  0 361 0.68839902;
	setAttr -s 3 ".d[0:2]"  -2147482909 0 -2147483134;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "79207486-43AB-5B29-0F32-FC9003F5F675";
	setAttr ".v[0]" -type "float3"  6.3295102 15.699621 17.619961;
	setAttr -s 3 ".e[0:2]"  0 361 0;
	setAttr -s 3 ".d[0:2]"  -2147482892 0 -2147482911;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "1992BC66-4BAB-D6E3-34A6-11BA9FC900FD";
	setAttr ".e[0]"  0.58696198;
	setAttr ".d[0]"  -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "48FEA8EC-41BB-1B67-F487-A1A294274011";
	setAttr ".dc" -type "componentList" 1 "f[370]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "39FEE664-4ABF-FD2F-9487-B89C1D21FF6A";
	setAttr ".dc" -type "componentList" 1 "f[361]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "E6C8B6EF-46E4-BF0F-1A91-F5B5079981BD";
	setAttr ".dc" -type "componentList" 1 "f[368]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "B5AE1F00-4845-D409-61AE-1E912730AA57";
	setAttr ".dc" -type "componentList" 1 "f[358]";
createNode polyAppend -n "polyAppend2";
	rename -uid "3D140B46-478E-6B9B-8D77-F3BB9391457F";
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147482909;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts4";
	rename -uid "9B9A875E-4156-23AF-B8A8-DEA2F5E39AC5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:367]";
	setAttr ".gi" 9;
createNode polyAppend -n "polyAppend3";
	rename -uid "AAB1CF3A-4616-6868-34AC-ADAA875A06F7";
	setAttr -s 4 ".d[0:3]"  -2147482908 -2147482893 -2147483647 -2147482891;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts5";
	rename -uid "0C05CC09-463D-0017-E790-1C97BA7C3582";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:368]";
	setAttr ".gi" 11;
createNode polyAppend -n "polyAppend4";
	rename -uid "566FBC98-4848-F0BC-C07C-B6989905873F";
	setAttr -s 4 ".d[0:3]"  -2147483643 -2147483134 -2147482894 -2147482892;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts6";
	rename -uid "3B9B14DE-4CC8-67A5-4BBD-728138320052";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:369]";
	setAttr ".gi" 12;
createNode polyAppend -n "polyAppend5";
	rename -uid "F8049794-4478-707C-F756-46AF70BEB60C";
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147482889;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts7";
	rename -uid "42E1E827-41C2-46A6-C1DA-C79E1CF10AC3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:370]";
	setAttr ".gi" 13;
createNode polyAppend -n "polyAppend6";
	rename -uid "4AEBBDF7-4B9F-CF5D-8FC8-63B00D1085EE";
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147482890;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts8";
	rename -uid "39428F78-4540-8D91-C08B-0E9B4503463A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:371]";
	setAttr ".gi" 14;
createNode polyAppend -n "polyAppend7";
	rename -uid "58A82275-4B1A-9898-78FD-C8BC030AB038";
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147482887 -2147482911 -2147482888;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts9";
	rename -uid "FE928099-481B-559F-0458-1E87379A6786";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:372]";
	setAttr ".gi" 15;
createNode polyAppend -n "polyAppend8";
	rename -uid "2C83D709-42D3-532F-CB1E-C3965AC74F4D";
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147482918;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts10";
	rename -uid "747C9864-405C-C83D-B0C4-EE8EA4DE778C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:373]";
	setAttr ".gi" 16;
createNode polyAppend -n "polyAppend9";
	rename -uid "62F35809-40A5-802F-3106-0CACDE112300";
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147482885 -2147483137;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts11";
	rename -uid "84AB9B4A-4056-82E1-E7D0-999C52F75274";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:374]";
	setAttr ".gi" 17;
createNode polyAppend -n "polyAppend10";
	rename -uid "9771785E-4ACB-CCC2-1C85-E9B8241BE2C9";
	setAttr -s 3 ".d[0:2]"  -2147483631 -2147482914 -2147482886;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts12";
	rename -uid "C7A4F367-4DC6-4009-72CD-779D335C9544";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:375]";
	setAttr ".gi" 18;
createNode polyAppend -n "polyAppend11";
	rename -uid "CFE775CC-49B1-1241-F8D7-B1A93921FCB1";
	setAttr -s 2 ".d[0:1]"  -2147483632 -2147482883;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts13";
	rename -uid "2F35EC98-4FFA-EAAD-288A-ACBC8DCD23B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:376]";
	setAttr ".gi" 19;
createNode polyAppend -n "polyAppend12";
	rename -uid "C69FB705-4828-307F-5EDC-1BB318EDE4FB";
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147482884;
	setAttr ".tx" 1;
createNode groupParts -n "groupParts14";
	rename -uid "1F431B61-4B27-60CC-1C33-C782AC411B00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:377]";
	setAttr ".gi" 20;
createNode polyAppend -n "polyAppend13";
	rename -uid "F00F901B-49C5-6453-72C6-C087203EBD6B";
	setAttr -s 4 ".d[0:3]"  -2147483633 -2147482881 -2147482915 -2147482882;
	setAttr ".tx" 1;
createNode groupId -n "groupId7";
	rename -uid "D64DFDDA-457C-7FD2-F539-EBBA11847C5F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "4551BCF3-49FC-C24D-3578-FAA26F1603C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:378]";
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "62647E3B-4865-C2AF-64BD-168E889045FC";
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.026184797 15.701908 17.639114 ;
	setAttr ".rs" 41005;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.2719712257385254 15.026342391967773 17.639114379882812 ;
	setAttr ".cbx" -type "double3" 6.3243408203125 16.377473831176758 17.639114379882812 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "7DC15213-493C-5690-68E5-7FAFACBB5EA9";
	setAttr ".ics" -type "componentList" 4 "f[30]" "f[34]" "f[159:160]" "f[164:165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.465584 12.848844 ;
	setAttr ".rs" 44580;
	setAttr ".off" 0.80000001192092896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.707146167755127 17.465583801269531 8.0777263641357422 ;
	setAttr ".cbx" -type "double3" 6.707146167755127 17.465583801269531 17.619960784912109 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "07682751-4D26-F963-FE68-DD81FC713840";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[388:402]" -type "float3"  0 0 0.33052835 0 0 0.33052835
		 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835
		 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835 0 0 0.33052835
		 0 0 0.33052835;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	rename -uid "0B33DC7D-4389-661B-9040-879738DD4A5A";
	setAttr ".ics" -type "componentList" 4 "f[30]" "f[34]" "f[159:160]" "f[164:165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 17.465584 12.848844 ;
	setAttr ".rs" 46552;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.30000001192092896;
	setAttr ".cbn" -type "double3" -5.9071464538574219 17.465583801269531 8.8777265548706055 ;
	setAttr ".cbx" -type "double3" 5.9071464538574219 17.465583801269531 16.819961547851563 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId5.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId6.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "groupId1.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape3.i";
connectAttr "groupId2.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace29.out" "pCylinder5Shape.i";
connectAttr "groupId7.id" "pCylinder5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder5Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace6.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "polyTweak8.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "deleteComponent10.og" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak10.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak13.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "polyExtrudeFace25.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace25.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace26.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak15.ip";
connectAttr "polyCylinder2.out" "deleteComponent17.ig";
connectAttr "pCylinderShape3.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape4.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape3.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape4.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[2]";
connectAttr "deleteComponent17.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace26.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupParts3.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "polyAppend2.ip";
connectAttr "polyAppend2.out" "groupParts4.ig";
connectAttr "groupParts4.og" "polyAppend3.ip";
connectAttr "polyAppend3.out" "groupParts5.ig";
connectAttr "groupParts5.og" "polyAppend4.ip";
connectAttr "polyAppend4.out" "groupParts6.ig";
connectAttr "groupParts6.og" "polyAppend5.ip";
connectAttr "polyAppend5.out" "groupParts7.ig";
connectAttr "groupParts7.og" "polyAppend6.ip";
connectAttr "polyAppend6.out" "groupParts8.ig";
connectAttr "groupParts8.og" "polyAppend7.ip";
connectAttr "polyAppend7.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyAppend8.ip";
connectAttr "polyAppend8.out" "groupParts10.ig";
connectAttr "groupParts10.og" "polyAppend9.ip";
connectAttr "polyAppend9.out" "groupParts11.ig";
connectAttr "groupParts11.og" "polyAppend10.ip";
connectAttr "polyAppend10.out" "groupParts12.ig";
connectAttr "groupParts12.og" "polyAppend11.ip";
connectAttr "polyAppend11.out" "groupParts13.ig";
connectAttr "groupParts13.og" "polyAppend12.ip";
connectAttr "polyAppend12.out" "groupParts14.ig";
connectAttr "groupParts14.og" "polyAppend13.ip";
connectAttr "polyAppend13.out" "groupParts15.ig";
connectAttr "groupId7.id" "groupParts15.gi";
connectAttr "groupParts15.og" "polyExtrudeFace27.ip";
connectAttr "pCylinder5Shape.wm" "polyExtrudeFace27.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace28.ip";
connectAttr "pCylinder5Shape.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace28.out" "polyExtrudeFace29.ip";
connectAttr "pCylinder5Shape.wm" "polyExtrudeFace29.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
// End of hummer.ma
