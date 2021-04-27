<?xml version="1.0" encoding="UTF-8" ?>
<displays>
<display id="110483b1-0179-1000-8012-c0a800f686ac" type="" style="Chart" enable="true">
	<name><![CDATA[Report3]]></name>
	<description><![CDATA[]]></description>
	<tooltip><![CDATA[]]></tooltip>
	<drillclass><![CDATA[]]></drillclass>
	<CustomValues>
		<PLOT_HGRID_WIDTH><![CDATA[THINNER]]></PLOT_HGRID_WIDTH>
		<Y1AXIS_SCALE_INCREMENT><![CDATA[30.0]]></Y1AXIS_SCALE_INCREMENT>
		<Y2AXIS_SCALE_MAXIMUM><![CDATA[80.0]]></Y2AXIS_SCALE_MAXIMUM>
		<Y1AXIS_LINE_WIDTH><![CDATA[THINNEST]]></Y1AXIS_LINE_WIDTH>
		<Y1AXIS_TITLE_ALIGNMENT><![CDATA[CENTER]]></Y1AXIS_TITLE_ALIGNMENT>
		<LEGEND_LOCATION><![CDATA[AUTOMATIC]]></LEGEND_LOCATION>
		<LEGEND_ALIGNMENT><![CDATA[LEFT]]></LEGEND_ALIGNMENT>
		<XAXIS_LINE_WIDTH><![CDATA[THINNEST]]></XAXIS_LINE_WIDTH>
		<DATA_MAP_COLUMNS><![CDATA[\,"LOAN_TYPE"]]></DATA_MAP_COLUMNS>
		<Y1AXIS_SCALE_MAXIMUM><![CDATA[210.0]]></Y1AXIS_SCALE_MAXIMUM>
		<XAXIS_TITLE_ALIGNMENT><![CDATA[CENTER]]></XAXIS_TITLE_ALIGNMENT>
		<XAXIS_TICK_LABEL_ROTATE><![CDATA[HORIZONTAL]]></XAXIS_TICK_LABEL_ROTATE>
		<Y1AXIS_LOGARITHMIC_BASE><![CDATA[BASE_10]]></Y1AXIS_LOGARITHMIC_BASE>
		<TYPE><![CDATA[BAR_VERT_STACK]]></TYPE>
		<GRID_WIDTH><![CDATA[THINNER]]></GRID_WIDTH>
		<PLOT_DATALABELS_BAR_POSITION><![CDATA[ABOVE]]></PLOT_DATALABELS_BAR_POSITION>
		<FOOTNOTE_ALIGNMENT><![CDATA[LEFT]]></FOOTNOTE_ALIGNMENT>
		<XAXIS_TICK_LABEL_SKIP_MODE><![CDATA[AUTOMATIC]]></XAXIS_TICK_LABEL_SKIP_MODE>
		<DATA_MAP_COLNAMES><![CDATA[\,"COUNT(*)","LOAN_TYPE"]]></DATA_MAP_COLNAMES>
		<DATA_MAP_SERIES><![CDATA[\,"LOAN_TYPE"]]></DATA_MAP_SERIES>
		<Y2AXIS_LOGARITHMIC_BASE><![CDATA[BASE_10]]></Y2AXIS_LOGARITHMIC_BASE>
		<STYLE><![CDATA[Autumn]]></STYLE>
		<TITLE_ALIGNMENT><![CDATA[LEFT]]></TITLE_ALIGNMENT>
		<Y2AXIS_TICK_LABEL_ROTATE><![CDATA[HORIZONTAL]]></Y2AXIS_TICK_LABEL_ROTATE>
		<Y2AXIS_SCALE_MINIMUM><![CDATA[10.0]]></Y2AXIS_SCALE_MINIMUM>
		<Y2AXIS_LINE_WIDTH><![CDATA[THINNEST]]></Y2AXIS_LINE_WIDTH>
		<DATA_MAP_VALUES><![CDATA[\,"COUNT(*)"]]></DATA_MAP_VALUES>
		<Y1AXIS_TICK_LABEL_ROTATE><![CDATA[HORIZONTAL]]></Y1AXIS_TICK_LABEL_ROTATE>
		<Y2AXIS_SCALE_INCREMENT><![CDATA[20.0]]></Y2AXIS_SCALE_INCREMENT>
		<PLOT_VGRID_WIDTH><![CDATA[THINNER]]></PLOT_VGRID_WIDTH>
		<Y2AXIS_TITLE_ALIGNMENT><![CDATA[CENTER]]></Y2AXIS_TITLE_ALIGNMENT>
		<SUBTITLE_ALIGNMENT><![CDATA[LEFT]]></SUBTITLE_ALIGNMENT>
	</CustomValues>
	<query>
		<sql><![CDATA[select type as Loan_Type,count(*) from loan group by type]]></sql>
	</query>
		<pdf version="VERSION_1_7" compression="CONTENT">
			<docproperty title="Report3_pdf" author="" subject="" keywords="" />
			<cell toppadding="2" bottompadding="2" leftpadding="2" rightpadding="2" horizontalalign="LEFT" verticalalign="TOP" wrap="true" />
			<column>
				<heading font="Times New Roman" size="10" style="NORMAL" color="-16777216" rowshading="-1" labeling="FIRST_PAGE" />
				<footing font="Times New Roman" size="10" style="NORMAL" color="-16777216" rowshading="-1" labeling="NONE" />
				<blob blob="NONE" zip="false" />
			</column>
			<table font="Times New Roman" size="10" style="NORMAL" color="-16777216" userowshading="false" oddrowshading="-1" evenrowshading="-1" showborders="true" spacingbefore="12" spacingafter="12" horizontalalign="LEFT" />
			<header enable="false" generatedate="false">
				<data>
				null				</data>
			</header>
			<footer enable="false" generatedate="false">
				<data value="null" />
			</footer>
			<pagesetup papersize="LETTER" orientation="1" measurement="in" margintop="1.0" marginbottom="1.0" marginleft="1.0" marginright="1.0" />
		</pdf>
</display>
</displays>