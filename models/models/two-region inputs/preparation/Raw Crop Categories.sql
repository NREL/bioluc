set search_path to luc, public, pg_catalog;


create table "Raw Crop Categories" (
  "FAO crops"          varchar(30)  not null
, "FAO crop item code" smallint     not null
, "Crop Element No"    smallint     not null
, "Crop element name"  varchar(100) not null
, "GTAP category"      varchar(100) not null
, "FAO crop group"     varchar(100) not null
, constraint "PK Raw Crop Categories"
    primary key ("FAO crop item code")
, constraint "UK1 Raw Crop Categories"
    unique ("FAO crops")
)
;


copy "Raw Crop Categories" from stdin;
Maize	56	1	Maize	Cereals grain n.e.c.	Cereals, total
Wheat	15	2	Wheat	Wheat	Cereals, total
Rice, paddy	27	3	Paddy rice	Paddy rice	Cereals, total
Barley	44	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Buckwheat	89	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Canary seed	101	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Cereals, nes	108	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Fonio	94	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Millet	79	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Mixed grain	103	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Oats	75	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Popcorn	68	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Quinoa	92	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Rye	71	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Sorghum	83	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Triticale	97	4	Cereals grain n.e.c.	Cereals grain n.e.c.	Cereals, total
Agave Fibres Nes	800	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Fibre Crops Nes	821	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Flax fibre and tow	773	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Hemp Tow Waste	777	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Jute	780	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Manila Fibre (Abaca)	809	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Ramie	788	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Seed cotton	328	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Sisal	789	5	Plant-based fibres	Plant-based fibres	Fibre crops primary
Coir	813	5	Plant-based fibres	Plant-based fibres	#N/A
Castor oil seed	265	6	Oil seeds	Oil seeds	Oil crops
Coconuts	249	6	Oil seeds	Oil seeds	Oil crops
Groundnuts, with shell	242	6	Oil seeds	Oil seeds	Oil crops
Hempseed	336	6	Oil seeds	Oil seeds	Oil crops
Karite Nuts (Sheanuts)	263	6	Oil seeds	Oil seeds	Oil crops
Linseed	333	6	Oil seeds	Oil seeds	Oil crops
Melonseed	299	6	Oil seeds	Oil seeds	Oil crops
Mustard seed	292	6	Oil seeds	Oil seeds	Oil crops
Oil palm fruit	254	6	Oil seeds	Oil seeds	Oil crops
Oilseeds, Nes	339	6	Oil seeds	Oil seeds	Oil crops
Olives	260	6	Oil seeds	Oil seeds	Oil crops
Poppy seed	296	6	Oil seeds	Oil seeds	Oil crops
Rapeseed	270	6	Oil seeds	Oil seeds	Oil crops
Safflower seed	280	6	Oil seeds	Oil seeds	Oil crops
Sesame seed	289	6	Oil seeds	Oil seeds	Oil crops
Soybeans	236	6	Oil seeds	Oil seeds	Oil crops
Sunflower seed	267	6	Oil seeds	Oil seeds	Oil crops
Tung Nuts	275	6	Oil seeds	Oil seeds	Oil crops
Other Bastfibres	782	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fibre crops primary
Apples	515	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Apricots	526	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Avocados	572	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Bananas	486	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Berries Nes	558	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Blueberries	552	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Carobs	461	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Cashewapple	591	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Cherries	531	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Cranberries	554	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Currants	550	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Dates	577	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Figs	569	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Fruit Fresh Nes	619	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Fruit, tropical fresh nes	603	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Gooseberries	549	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Grapefruit (inc. pomelos)	507	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Grapes	560	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Kiwi fruit	592	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Lemons and limes	497	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Mangoes, mangosteens, guavas	571	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Oranges	490	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Papayas	600	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Peaches and nectarines	534	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Pears	521	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Persimmons	587	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Pineapples	574	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Plantains	489	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Plums and sloes	536	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Pome fruit, nes	542	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Quinces	523	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Raspberries	547	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Sour cherries	530	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Stone fruit, nes	541	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Strawberries	544	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Tangerines, mandarins, clem.	495	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Fruit excl melons
Bambara beans	203	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Beans, dry	176	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Broad beans, horse beans, dry	181	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Chick peas	191	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Cow peas, dry	195	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Lentils	201	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Peas, dry	187	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Pigeon peas	197	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Pulses, nes	211	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Pulses total
Cassava	125	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Potatoes	116	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Sweet potatoes	122	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Taro (cocoyam)	136	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Yams	137	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Yautia (cocoyam)	135	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Roots and tubers
Almonds, with shell	221	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Brazil nuts, with shell	216	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Cashew nuts, with shell	217	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Chestnuts	220	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Hazelnuts, with shell	225	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Nuts, nes	234	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Pistachios	223	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Walnuts, with shell	222	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Treenuts total
Artichokes	366	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Asparagus	367	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Beans, green	414	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Cabbages and other brassicas	358	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Carrots and turnips	426	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Cassava leaves	378	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Cauliflowers and broccoli	393	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Chillies and peppers, green	401	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Cucumbers and gherkins	397	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Eggplants (aubergines)	399	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Garlic	406	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Leeks, other alliaceous veg	407	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Lettuce and chicory	372	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Maize, green	446	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Okra	430	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Onions (inc. shallots), green	402	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Onions, dry	403	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Other melons (inc.cantaloupes)	568	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Peas, green	417	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Pumpkins, squash and gourds	394	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Spinach	373	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
String beans	423	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Tomatoes	388	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Vegetables fresh nes	463	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Watermelons	567	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	Vegetables and melons
Arecanuts	226	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	#N/A
Chicory roots	459	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	#N/A
Chillies and peppers, dry	689	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	#N/A
Kolanuts	224	7	Vegetables, fruit, nuts	Vegetables, fruit, nuts	#N/A
Citrus fruit, nes	512	8	Crops n.e.c.	Crops n.e.c.	Fruit excl melons
Jojoba Seeds	277	8	Crops n.e.c.	Crops n.e.c.	Oil crops
Lupins	210	8	Crops n.e.c.	Crops n.e.c.	Pulses total
Vetches	205	8	Crops n.e.c.	Crops n.e.c.	Pulses total
Roots and Tubers, nes	149	8	Crops n.e.c.	Crops n.e.c.	Roots and tubers
Leguminous vegetables, nes	420	8	Crops n.e.c.	Crops n.e.c.	Vegetables and melons
Mushrooms and truffles	449	8	Crops n.e.c.	Crops n.e.c.	Vegetables and melons
Anise, badian, fennel, corian.	711	8	Crops n.e.c.	Crops n.e.c.	#N/A
Cinnamon (canella)	693	8	Crops n.e.c.	Crops n.e.c.	#N/A
Cloves	698	8	Crops n.e.c.	Crops n.e.c.	#N/A
Cocoa beans	661	8	Crops n.e.c.	Crops n.e.c.	#N/A
Coffee, green	656	8	Crops n.e.c.	Crops n.e.c.	#N/A
Ginger	720	8	Crops n.e.c.	Crops n.e.c.	#N/A
Hops	677	8	Crops n.e.c.	Crops n.e.c.	#N/A
Maté	671	8	Crops n.e.c.	Crops n.e.c.	#N/A
Nutmeg, mace and cardamoms	702	8	Crops n.e.c.	Crops n.e.c.	#N/A
Pepper (Piper spp.)	687	8	Crops n.e.c.	Crops n.e.c.	#N/A
Peppermint	748	8	Crops n.e.c.	Crops n.e.c.	#N/A
Pyrethrum,Dried	754	8	Crops n.e.c.	Crops n.e.c.	#N/A
Spices, nes	723	8	Crops n.e.c.	Crops n.e.c.	#N/A
Tea	667	8	Crops n.e.c.	Crops n.e.c.	#N/A
Tea Nes	674	8	Crops n.e.c.	Crops n.e.c.	#N/A
Tobacco, unmanufactured	826	8	Crops n.e.c.	Crops n.e.c.	#N/A
Vanilla	692	8	Crops n.e.c.	Crops n.e.c.	#N/A
Natural rubber	836	8	Crops n.e.c.	frs	#N/A
Alfalfa for forage and silage	641	9	Forage crop	Crops n.e.c.	#N/A
Beets for Fodder	647	9	Forage crop	Crops n.e.c.	#N/A
Cabbage for Fodder	644	9	Forage crop	Crops n.e.c.	#N/A
Carrots for Fodder	648	9	Forage crop	Crops n.e.c.	#N/A
Clover for forage and silage	640	9	Forage crop	Crops n.e.c.	#N/A
forage Products	651	9	Forage crop	Crops n.e.c.	#N/A
Grasses Nes for forage;Sil	639	9	Forage crop	Crops n.e.c.	#N/A
Green Oilseeds for Silage	642	9	Forage crop	Crops n.e.c.	#N/A
Leguminous for Silage	643	9	Forage crop	Crops n.e.c.	#N/A
Maize for forage and silage	636	9	Forage crop	Crops n.e.c.	#N/A
Rye grass for forage & silage	638	9	Forage crop	Crops n.e.c.	#N/A
Sorghum for forage and silage	637	9	Forage crop	Crops n.e.c.	#N/A
Swedes for Fodder	649	9	Forage crop	Crops n.e.c.	#N/A
Turnips for Fodder	646	9	Forage crop	Crops n.e.c.	#N/A
Pumpkins for Fodder	645	9	Forage crop	Vegetables, fruit, nuts	#N/A
Vegetables Roots Fodder	655	9	Forage crop	Vegetables, fruit, nuts	#N/A
Sugar beet	157	10	Sugar cane, sugar beet	Sugar cane, sugar beet	#N/A
Sugar cane	156	10	Sugar cane, sugar beet	Sugar cane, sugar beet	#N/A
Sugar crops, nes	161	10	Sugar cane, sugar beet	Sugar cane, sugar beet	#N/A
\.

