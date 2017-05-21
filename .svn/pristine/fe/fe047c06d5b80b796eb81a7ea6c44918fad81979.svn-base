<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.goodjob.view.OrderView" %>
<%@ page import="com.goodjob.view.OrderViewItem" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	OrderView order_view = (OrderView)session.getAttribute("order_view");
	OrderViewItem[] order_view_items = (OrderViewItem[])session.getAttribute("order_view_items");
	if(order_view == null || order_view_items == null) request.getRequestDispatcher("errorAccess.html").forward(request, response);
	int sum_quantity = 0;
	int sum_price = 0;
%>
<fmt:setLocale value="ja_JP" />
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<meta name="author" content="Taihei Yoshimoto">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 15">
<meta name=Originator content="Microsoft Word 15">
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>i-learning</o:Author>
  <o:LastAuthor>i-learning</o:LastAuthor>
  <o:Revision>97</o:Revision>
  <o:TotalTime>405</o:TotalTime>
  <o:Created>2017-05-16T03:01:00Z</o:Created>
  <o:LastSaved>2017-05-16T07:38:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Words>160</o:Words>
  <o:Characters>913</o:Characters>
  <o:Lines>7</o:Lines>
  <o:Paragraphs>2</o:Paragraphs>
  <o:CharactersWithSpaces>1071</o:CharactersWithSpaces>
  <o:Version>15.00</o:Version>
 </o:DocumentProperties>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Print</w:View>
  <w:Zoom>170</w:Zoom>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:DrawingGridHorizontalSpacing>5.25 pt</w:DrawingGridHorizontalSpacing>
  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>
  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>JA</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:SpaceForUL/>
   <w:BalanceSingleByteDoubleByteWidth/>
   <w:DoNotLeaveBackslashAlone/>
   <w:ULTrailSpace/>
   <w:DoNotExpandShiftReturn/>
   <w:AdjustLineHeightInTable/>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
   <w:UseFELayout/>
  </w:Compatibility>
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"ＭＳ 明朝";
	panose-1:2 2 6 9 4 2 5 8 3 4;
	mso-font-alt:"MS Mincho";
	mso-font-charset:128;
	mso-generic-font-family:roman;
	mso-font-pitch:fixed;
	mso-font-signature:-536870145 1791491579 18 0 131231 0;}
@font-face
	{font-family:Century;
	panose-1:2 4 6 4 5 5 5 2 3 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:647 0 0 0 159 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:"ＭＳ Ｐゴシック";
	panose-1:2 11 6 0 7 2 5 8 2 4;
	mso-font-charset:128;
	mso-generic-font-family:modern;
	mso-font-pitch:variable;
	mso-font-signature:-536870145 1791491579 18 0 131231 0;}
@font-face
	{font-family:"\@ＭＳ 明朝";
	panose-1:2 2 6 9 4 2 5 8 3 4;
	mso-font-charset:128;
	mso-generic-font-family:roman;
	mso-font-pitch:fixed;
	mso-font-signature:-536870145 1791491579 18 0 131231 0;}
@font-face
	{font-family:"\@ＭＳ Ｐゴシック";
	panose-1:2 11 6 0 7 2 5 8 2 4;
	mso-font-charset:128;
	mso-generic-font-family:modern;
	mso-font-pitch:variable;
	mso-font-signature:-536870145 1791491579 18 0 131231 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0mm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"ＭＳ 明朝";
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Century;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
h1
	{mso-style-priority:9;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-link:"見出し 1 \(文字\)";
	mso-margin-top-alt:auto;
	margin-right:0mm;
	mso-margin-bottom-alt:auto;
	margin-left:0mm;
	mso-pagination:widow-orphan;
	mso-outline-level:1;
	font-size:24.0pt;
	font-family:"ＭＳ Ｐゴシック";
	mso-bidi-font-family:"ＭＳ Ｐゴシック";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"ヘッダー \(文字\)";
	margin:0mm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	tab-stops:center 212.6pt right 425.2pt;
	layout-grid-mode:char;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"ＭＳ 明朝";
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Century;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"フッター \(文字\)";
	margin:0mm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	tab-stops:center 212.6pt right 425.2pt;
	layout-grid-mode:char;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"ＭＳ 明朝";
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Century;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
a:link, span.MsoHyperlink
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:purple;
	text-decoration:underline;
	text-underline:single;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	margin-top:0mm;
	margin-right:0mm;
	margin-bottom:0mm;
	margin-left:42.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0mm;
	mso-para-margin-right:0mm;
	mso-para-margin-bottom:0mm;
	mso-para-margin-left:4.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:"ＭＳ 明朝";
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Century;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
span.1
	{mso-style-name:"見出し 1 \(文字\)";
	mso-style-priority:9;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:"見出し 1";
	mso-ansi-font-size:12.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Arial",sans-serif;
	mso-ascii-font-family:Arial;
	mso-ascii-theme-font:major-latin;
	mso-fareast-font-family:"ＭＳ ゴシック";
	mso-fareast-theme-font:major-fareast;
	mso-hansi-font-family:Arial;
	mso-hansi-theme-font:major-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:major-bidi;
	mso-font-kerning:1.0pt;}
span.a
	{mso-style-name:"ヘッダー \(文字\)";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:ヘッダー;}
span.a0
	{mso-style-name:"フッター \(文字\)";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:フッター;}
p.print, li.print, div.print
	{mso-style-name:print;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0mm;
	mso-margin-bottom-alt:auto;
	margin-left:0mm;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"ＭＳ Ｐゴシック";
	mso-bidi-font-family:"ＭＳ Ｐゴシック";
	display:none;
	mso-hide:all;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-hansi-font-family:Century;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:0pt;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:0mm 0mm 0mm 0mm;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:18.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:標準の表;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0mm 5.4pt 0mm 5.4pt;
	mso-para-margin:0mm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Century",serif;}
table.MsoTableGrid
	{mso-style-name:"表 \(格子\)";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-priority:39;
	mso-style-unhide:no;
	border:solid windowtext 1.0pt;
	mso-border-alt:solid windowtext .5pt;
	mso-padding-alt:0mm 5.4pt 0mm 5.4pt;
	mso-border-insideh:.5pt solid windowtext;
	mso-border-insidev:.5pt solid windowtext;
	mso-para-margin:0mm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Century",serif;
	mso-ascii-font-family:Century;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Century;
	mso-hansi-theme-font:minor-latin;
	mso-font-kerning:1.0pt;}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026">
  <v:textbox inset="5.85pt,.7pt,5.85pt,.7pt"/>
 </o:shapedefaults></xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
<style type="text/css" media="print">
	@print{
		size:A4;
		margin:0;
	}
	#print{
		display:none;
	}
</style>
<style type="text/css">
	a, a:visited, a:link{
		color:white;
		text-decoration:none;
	}
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<h1 id="print">注文受付票コード: <%= order_view.getOrder_id() %><%-- 注文受付票コード --%></h1>
<body lang=JA link=blue vlink=purple style='tab-interval:42.0pt;text-justify-trim:
punctuation'>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 align=left
 width=769 style='border-collapse:collapse;mso-table-layout-alt:fixed;
 border:none;mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;
 mso-table-lspace:7.1pt;margin-left:4.85pt;mso-table-rspace:7.1pt;margin-right:
 4.85pt;mso-table-anchor-vertical:page;mso-table-anchor-horizontal:margin;
 mso-table-left:center;mso-table-top:49.5pt;mso-padding-alt:0mm 5.4pt 0mm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:19.05pt'>
  <td width=360 colspan=15 style='width:269.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><b
  style='mso-bidi-font-weight:normal'><span style='font-size:12.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>はるみ通信販売</span></b><span
  style='font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>＜＜注文受付票＞＞</span><span lang=EN-US
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=65 colspan=3 style='width:49.05pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid windowtext 1.5pt;mso-border-top-alt:windowtext 1.5pt;
  mso-border-left-alt:windowtext 1.5pt;mso-border-bottom-alt:windowtext .5pt;
  mso-border-right-alt:#BFBFBF .5pt;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>受注担当者</span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=83 colspan=4 style='width:62.55pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-top-alt:windowtext 1.5pt;
  mso-border-left-alt:#BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext .5pt;
  mso-border-right-alt:windowtext .5pt;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getOrder_staff() %><%-- 受注担当者 --%>
  </span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=65 colspan=3 style='width:48.9pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-top-alt:windowtext 1.5pt;
  mso-border-left-alt:#BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext .5pt;
  mso-border-right-alt:#BFBFBF .5pt;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>注文受付</span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=88 colspan=4 style='width:66.0pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-top-alt:windowtext 1.5pt;
  mso-border-left-alt:#BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext .5pt;
  mso-border-right-alt:windowtext .5pt;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;mso-font-kerning:0pt'>
  <fmt:formatDate value="<%= order_view.getOrder_date() %>" dateStyle="full" /><%-- 注文受付、注文日 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=66 colspan=3 style='width:49.6pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-bottom-alt:solid windowtext .5pt;
  mso-border-right-alt:solid #BFBFBF .5pt;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:5.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>コード</span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=41 style='width:30.8pt;border-top:solid windowtext 1.5pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-top-alt:windowtext 1.5pt;
  mso-border-left-alt:#BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext .5pt;
  mso-border-right-alt:windowtext 1.5pt;mso-border-style-alt:solid;padding:
  0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt;mso-font-kerning:
  0pt'>
  <%= order_view.getOrder_id() %><%-- 注文受付票コード --%>
  <o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:19.05pt'>
  <td width=360 colspan=15 style='width:269.65pt;border-top:none;border-left:
  solid windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
  solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;mso-border-alt:
  solid windowtext 1.5pt;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin;mso-font-kerning:0pt'>ご依頼主</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin;mso-font-kerning:0pt'>（協賛企業名・会員氏名・会員番号・連絡先番号は必ず確認し記入する）</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=236 colspan=11 style='width:176.9pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin;mso-font-kerning:0pt'>お届先</span><span
  lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=3 style='width:49.6pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin;mso-font-kerning:0pt'>届先区分</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width=107 colspan=4 style='width:80.4pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>
  <%= order_view.getShipping_category() %><%-- 届先区分 --%>
  </span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;
  mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:4.3pt'>
  <td width=17 rowspan=4 style='width:12.55pt;border-top:none;border-left:solid windowtext 1.5pt;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:.5pt;mso-border-left-alt:
  1.5pt;mso-border-bottom-alt:1.5pt;mso-border-right-alt:.5pt;mso-border-color-alt:
  windowtext;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:
  4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=68 colspan=4 style='width:51.35pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>協賛企業名</span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=93 colspan=2 style='width:70.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getCompany_name() %><%-- 協賛企業名 --%>
  </span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=54 colspan=2 style='width:40.8pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:4.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>企業コード</span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=37 colspan=2 style='width:27.45pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt;mso-font-kerning:
  0pt'>
  <%= order_view.getCompany_code() %><%-- 企業コード --%>
  <o:p></o:p></span></p>
  </td>
  <td width=37 colspan=2 style='width:27.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:8.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>所属</span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=53 colspan=2 style='width:39.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-top-alt:windowtext .5pt;mso-border-left-alt:#BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:windowtext .5pt;mso-border-right-alt:windowtext 1.5pt;
  mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>
  <%= order_view.getJob() %><%-- 所属 --%>
  </span><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=23 rowspan=4 style='width:17.45pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-top-alt:.5pt;mso-border-left-alt:1.5pt;mso-border-bottom-alt:1.5pt;
  mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=120 colspan=5 valign=top style='width:90.05pt;border:none;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>〒
  <%= order_view.getShipping_zip_code() %><%-- 届先郵便番号 --%>
  </span><o:p></o:p></span></p>
  </td>
  <td width=266 colspan=12 rowspan=2 style='width:199.4pt;border:none;
  border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:4.3pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>
  <%= order_view.getShipping_address_00() %><%-- 届先住所 右上 --%>
  </span><span lang=EN-US
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:7.45pt'>
  <td width=68 colspan=4 style='width:51.35pt;border:none;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-right-alt:solid #BFBFBF .5pt;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;padding:0mm 5.4pt 0mm 5.4pt;height:7.45pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:5.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>フリガナ</span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=93 colspan=2 style='width:70.0pt;border:none;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-right-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:7.45pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:5.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getMember_furigana() %><%-- フリガナ --%>
  </span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=54 colspan=2 rowspan=2 style='width:40.8pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:7.45pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>会員番号</span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=127 colspan=6 rowspan=2 style='width:94.95pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-top-alt:windowtext .5pt;mso-border-left-alt:#BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:windowtext .5pt;mso-border-right-alt:windowtext 1.5pt;
  mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:7.45pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'>
  <%= order_view.getMember_number() %><%-- 会員番号 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=120 colspan=5 style='width:90.05pt;border:none;mso-border-left-alt:
  solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:7.45pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;height:2.7pt'>
  <td width=68 colspan=4 style='width:51.35pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:2.7pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>会員氏名</span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=93 colspan=2 style='width:70.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:2.7pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getMember_name() %><%-- 会員氏名 --%>
  </span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=146 colspan=7 style='width:109.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:2.7pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>
  <%= order_view.getShipping_address_01() %><%-- 届先住所 左下 --%>
  </span><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=3 style='width:49.65pt;border-top:solid windowtext 1.0pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:dotted windowtext .5pt;mso-border-top-alt:solid windowtext;
  mso-border-left-alt:dotted windowtext;mso-border-bottom-alt:solid windowtext;
  mso-border-right-alt:solid #BFBFBF;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;mso-border-width-alt:.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:2.7pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>留守の時</span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=132 colspan=6 style='width:99.2pt;border-top:solid windowtext 1.0pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:none;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:2.7pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getShipping_if_out() %><%-- 届先留守の時 --%>
  </span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=41 style='width:30.8pt;border-top:solid windowtext 1.0pt;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-bottom-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:2.7pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>様</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;height:19.05pt'>
  <td width=68 colspan=4 style='width:51.35pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:windowtext .5pt;mso-border-left-alt:windowtext .5pt;
  mso-border-bottom-alt:windowtext 1.5pt;mso-border-right-alt:#BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:5.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>連絡先電話番号</span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=93 colspan=2 style='width:70.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-top-alt:windowtext .5pt;mso-border-left-alt:#BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:windowtext 1.5pt;mso-border-right-alt:windowtext .5pt;
  mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:7.0pt;
  mso-bidi-font-size:11.0pt'>
  <%= order_view.getMember_phone_number() %><%-- 連絡先電話番号 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=54 colspan=2 style='width:40.8pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:windowtext .5pt;mso-border-left-alt:windowtext .5pt;
  mso-border-bottom-alt:windowtext 1.5pt;mso-border-right-alt:#BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>区分</span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=127 colspan=6 style='width:94.95pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getCategory() %><%-- 区分 --%>
  </span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=42 colspan=2 style='width:31.6pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>氏名</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=83 colspan=4 style='width:62.55pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
  <%= order_view.getShipping_name() %><%-- 届先氏名 --%>
  </span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=21 style='width:15.65pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext 1.5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>様</span><span
  lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=3 style='width:49.65pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext 1.5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>電話番号</span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=173 colspan=7 style='width:130.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'>
  <%= order_view.getShipping_phone_number() %><%-- 届先電話番号 --%>
  <o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;height:19.05pt'>
  <td width=769 colspan=33 valign=top style='width:576.55pt;border:none;
  border-bottom:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=left style='text-align:left;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'>(</span><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>注意</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>) </span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>色・柄・サイズを指定する商品は記入もれのないように確認してください。</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;height:19.05pt'>


  <td width=28 colspan=3 rowspan=<%= order_view_items.length + 2 %> style='width:21.25pt;border-top:none;
  border-left:solid windowtext 1.5pt;border-bottom:solid windowtext 1.5pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-top-alt:.5pt;mso-border-left-alt:1.5pt;mso-border-bottom-alt:1.5pt;
  mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>ご注文商品</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=86 colspan=3 style='width:64.15pt;border:none;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>商品番号</span><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=152 colspan=4 rowspan=2 valign=bottom style='width:114.15pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>商品名</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=93 colspan=5 style='width:70.1pt;border:none;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:8.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>商品区分</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 rowspan=2 valign=bottom style='width:43.45pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>単価</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=57 colspan=3 rowspan=2 valign=bottom style='width:42.7pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>数量</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=4 rowspan=2 valign=bottom style='width:49.8pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>金額</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=114 colspan=4 rowspan=2 valign=bottom style='width:85.4pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>補足</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=114 colspan=5 style='width:85.55pt;border:none;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>発注担当記入欄</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;height:19.05pt'>
  <td width=28 style='width:21.3pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;mso-border-right-themecolor:
  background1;mso-border-right-themeshade:191;mso-border-left-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-bottom-alt:solid windowtext .5pt;
  mso-border-right-alt:solid #BFBFBF .5pt;mso-border-right-themecolor:background1;
  mso-border-right-themeshade:191;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin;mso-font-kerning:
  0pt'>号</span><span lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=28 style='width:21.35pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>頁</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=29 style='width:21.5pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;mso-border-left-alt:
  solid #BFBFBF .5pt;mso-border-left-themecolor:background1;mso-border-left-themeshade:
  191;mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-bottom-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'>No.<o:p></o:p></span></p>
  </td>
  <td width=28 colspan=2 style='width:21.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>色</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=28 colspan=2 style='width:21.3pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>柄</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=37 style='width:27.75pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:4.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>サイズ</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=57 colspan=3 style='width:42.65pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  mso-border-left-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
  mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>発注先</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=57 colspan=2 style='width:42.9pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-left-alt:solid #BFBFBF .5pt;mso-border-left-themecolor:background1;
  mso-border-left-themeshade:191;mso-border-left-alt:solid #BFBFBF .5pt;
  mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:7.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>発送日</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <% int count = 0;
 	for(OrderViewItem item : order_view_items){
 %>
		<tr style='mso-yfti-irow:9;height:19.05pt'>
		<td width=28 valign=center style='width:21.3pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getItem_number_00() > 0) out.println(item.getItem_number_00()); %><%-- 号 --%>
		<o:p></o:p></span></p>
		</td>
		<td width=28 valign=center style='width:21.35pt;border-top:none;border-left:
		none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-top-alt:windowtext;mso-border-left-alt:#BFBFBF;mso-border-left-themecolor:
		background1;mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext;
		mso-border-right-alt:#BFBFBF;mso-border-right-themecolor:background1;
		mso-border-right-themeshade:191;mso-border-style-alt:solid;mso-border-width-alt:
		.5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getItem_number_01() > -1) out.println(item.getItem_number_01()); %><%-- 頁 --%>
		<o:p></o:p></span></p>
		</td>
		<td width=29 valign=center style='width:21.5pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getItem_number_02() > -1) out.println(item.getItem_number_02()); %><%-- No. --%>
		<o:p></o:p></span></p>
		</td>
		<td width=152 colspan=4 style='width:114.15pt;border-top:none;border-left:
		none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=left style='text-align:left;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
		11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
		minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
		mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>
		<%= item.getItem_name() %><%-- 商品名 --%>
		</span><span
		lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
		</td>
		<td width=28 colspan=2 style='width:21.05pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid #BFBFBF .5pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<%= item.getColor() %><%-- 色 --%>
		<o:p></o:p></span></p>
		</td>
		<td width=28 colspan=2 style='width:21.3pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-top-alt:windowtext;mso-border-left-alt:#BFBFBF;mso-border-left-themecolor:
		background1;mso-border-left-themeshade:191;mso-border-bottom-alt:windowtext;
		mso-border-right-alt:#BFBFBF;mso-border-right-themecolor:background1;
		mso-border-right-themeshade:191;mso-border-style-alt:solid;mso-border-width-alt:
		.5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<%= item.getPattern() %><%-- 柄 --%>
		<o:p></o:p></span></p>
		</td>
		<td width=37 style='width:27.75pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=center style='text-align:center;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
 		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<%= item.getSize() %><%-- サイズ --%>
		<o:p></o:p></span></p>
		</td>
		<td width=58 colspan=2 style='width:43.45pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=right style='text-align:right;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getUnit_price() > 0){ %>
		<fmt:formatNumber value="<%= item.getUnit_price() %>" /><%-- 単価 --%>
		<% } %>
		<o:p></o:p></span></p>
		</td>
		<td width=57 colspan=3 style='width:42.7pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=right style='text-align:right;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getQuantity() > 0){ %>
		<fmt:formatNumber value="<%= item.getQuantity() %>" /><% sum_quantity += item.getQuantity(); %><%-- 数量 --%>
		<% } %>
		<o:p></o:p></span></p>
		</td>
		<td width=66 colspan=4 style='width:49.8pt;border-top:none;border-left:none;
		border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=right style='text-align:right;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<% if(item.getQuantity() > 0 && item.getUnit_price() > 0){ %>
		<fmt:formatNumber value="<%= item.getUnit_price() * item.getQuantity() %>" /><% sum_price += item.getUnit_price() * item.getQuantity(); %><%-- 金額 --%>
		<% } %>
		<o:p></o:p></span></p>
		</td>
		<td width=114 colspan=4 valign=top style='width:85.4pt;border-top:none;
		border-left:none;border-bottom:solid windowtext <%= (count < order_view_items.length - 1)? 1.0: 1.5 %>pt;border-right:solid windowtext 1.5pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
		mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
		padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=left style='text-align:left;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'>
		<%= item.getSupplement() %><%-- 補足 --%>
		<o:p></o:p></span></p>
		</td>
		<td width=57 colspan=3 valign=top style='width:42.65pt;border-top:none;
		border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid #BFBFBF 1.0pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
		mso-border-top-alt:windowtext .5pt;mso-border-left-alt:windowtext 1.5pt;
		mso-border-bottom-alt:windowtext .5pt;mso-border-right-alt:#BFBFBF .5pt;
		mso-border-right-themecolor:background1;mso-border-right-themeshade:191;
		mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=left style='text-align:left;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
		</td>
		<td width=57 colspan=2 valign=top style='width:42.9pt;border-top:none;
		border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
		mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid #BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-top-alt:windowtext .5pt;mso-border-left-alt:#BFBFBF .5pt;
		mso-border-left-themecolor:background1;mso-border-left-themeshade:191;
		mso-border-bottom-alt:windowtext .5pt;mso-border-right-alt:windowtext 1.5pt;
		mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
		<p class=MsoNormal align=left style='text-align:left;mso-element:frame;
		mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
		page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
		49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
		mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
		</td>
		</tr>
 <%
 	count++;
 	}
 %>
 <tr style='mso-yfti-irow:14;height:19.05pt'>
  <td width=360 colspan=15 style='width:269.65pt;border:solid windowtext 1.5pt;
  border-top:none;mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'>(</span><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>太線枠内、注文受付時に記入、日付は西暦で記入する</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>)</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 style='width:43.45pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-alt:solid windowtext 1.5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>合計</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=57 colspan=3 style='width:42.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:1.5pt;mso-border-left-alt:.5pt;mso-border-bottom-alt:1.5pt;
  mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'>
  <fmt:formatNumber value="<%= sum_quantity %>" /><%-- 合計数量 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=66 colspan=4 style='width:49.8pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'>
  <fmt:formatNumber value="<%= sum_price %>" /><%-- 合計金額 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=228 colspan=9 valign=top style='width:170.95pt;border:none;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  8.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>ボーナス控除の場合は、</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:8.0pt'>3%</span><span
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>手数料を加える。</span><span lang=EN-US
  style='font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:15;height:19.05pt'>
  <td width=57 colspan=4 style='width:42.55pt;border-top:none;border-left:solid windowtext 1.5pt;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-top-alt:1.5pt;
  mso-border-left-alt:1.5pt;mso-border-bottom-alt:.5pt;mso-border-right-alt:
  .5pt;mso-border-color-alt:windowtext;mso-border-style-alt:solid;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>お支払方法</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=57 colspan=2 style='width:42.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>分割</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'>
  &nbsp;
  <% if(order_view.getPayment_category() == 2) out.println(order_view.getDivision()); %><%-- 分割回数 --%>
  &nbsp;
  </span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>回</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=2 style='width:49.85pt;border:none;mso-border-top-alt:
  solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;padding:
  0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>振込先銀行</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=179 colspan=7 style='width:134.4pt;border:none;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>あかね銀行　西成支店</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 style='width:43.45pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=57 colspan=3 style='width:42.7pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=66 colspan=4 style='width:49.8pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=228 colspan=9 valign=bottom style='width:170.95pt;border:none;
  border-bottom:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:8.0pt'>発送が遅れる商品は別途請求する。<o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:16;height:19.05pt'>
  <td width=19 colspan=2 rowspan=4 style='width:14.15pt;border-top:none;
  border-left:solid windowtext 1.5pt;border-bottom:solid windowtext 1.5pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-top-alt:.5pt;mso-border-left-alt:1.5pt;mso-border-bottom-alt:1.5pt;
  mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=95 colspan=4 style='width:71.25pt;border:none;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>区分</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=2 style='width:49.85pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=left style='text-align:left;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=7 valign=top style='width:134.4pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'>(</span><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>普</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>) 231-456738<o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 style='width:43.45pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-top-alt:1.5pt;mso-border-left-alt:1.5pt;mso-border-bottom-alt:
  .5pt;mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>発注</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=55 colspan=2 style='width:41.3pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日付</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=68 colspan=5 style='width:51.2pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-top-alt:solid windowtext 1.5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;word-break:break-all;
  mso-element:frame;mso-element-frame-hspace:7.1pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>年</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>月</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=73 colspan=3 style='width:55.1pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:7.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>担当者</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=154 colspan=6 style='width:115.85pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext 1.5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:1.5pt;mso-border-left-alt:.5pt;mso-border-bottom-alt:.5pt;
  mso-border-right-alt:1.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:4.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>ボーナス控除手数料</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:17;height:19.05pt'>
  <td width=95 colspan=4 style='width:71.25pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>
  <%
  	if(order_view.getPayment_category() == 1) out.println("①");
  	else out.println("1");
  %><%-- 支払区分 銀行振込 --%>
  </span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'> 銀行振込</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=2 style='width:49.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>振込元銀行</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=179 colspan=7 style='width:134.4pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>
  <%= order_view.getFrom_bank() %><%-- 振込元銀行 --%>
  <o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 rowspan=2 style='width:43.45pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>請求</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=55 colspan=2 style='width:41.3pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>区分</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=142 colspan=8 style='width:106.3pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:8.0pt'>K. </span><span
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>控除台帳記入</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><br>
  F. </span><span style='font-size:6.0pt;mso-bidi-font-size:8.0pt;font-family:
  "ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;
  mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>振込請求書作成</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=63 colspan=3 style='width:47.25pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>請求合計額</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=91 colspan=3 style='width:68.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span lang=EN-US style='font-size:6.0pt;
  mso-bidi-font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:18;height:19.05pt'>
  <td width=95 colspan=4 style='width:71.25pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>
  <%
  	if(order_view.getPayment_category() == 2) out.println("②");
  	else out.println("2");
  %><%-- 支払区分 給与控除 --%>
  </span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt'> </span><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'> 給与控除</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=2 style='width:49.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>控除年月</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=179 colspan=7 style='width:134.4pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='text-align:right;mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>
  <% if(order_view.getPayment_category() == 2) {%>
  <fmt:formatDate value="<%= order_view.getDeduction_date() %>" pattern="yyyy年MM月分より控除する"  /><%-- 給与控除 控除年月 --%>
  <% } else out.println("年　月分より控除する");%>
  </span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=55 colspan=2 style='width:41.3pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日付</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=68 colspan=5 style='width:51.2pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>年</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><span
  style='mso-spacerun:yes'>　　</span></span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>月</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=73 colspan=3 style='width:55.1pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:7.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>担当者</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=63 colspan=3 style='width:47.25pt;border:none;border-bottom:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>支払期日</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=91 colspan=3 style='width:68.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>年</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><span
  style='mso-spacerun:yes'>　　</span></span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>月</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:19;height:19.05pt'>
  <td width=95 colspan=4 style='width:71.25pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-bottom-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>
  <%
  	if(order_view.getPayment_category() == 3) out.println("③");
  	else out.println("3");
  %><%-- 支払区分 ボーナス控除 --%>
  </span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'> ボーナス控除</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=66 colspan=2 style='width:49.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-bottom-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>控除年月</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=179 colspan=7 style='width:134.4pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='text-align:right;text-indent:24.0pt;mso-char-indent-count:4.0;
  mso-element:frame;mso-element-frame-hspace:7.1pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>
  <% if(order_view.getPayment_category() == 3) {%>
  <fmt:formatDate value="<%= order_view.getDeduction_date() %>" pattern="yyyy年MM月分より控除する" /><%-- ボーナス控除 控除年月 --%>
  <% } else out.println("年　月分より控除する");%>
  </span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=58 colspan=2 style='width:43.45pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext 1.5pt;
  mso-border-top-alt:.5pt;mso-border-left-alt:1.5pt;mso-border-bottom-alt:1.5pt;
  mso-border-right-alt:.5pt;mso-border-color-alt:windowtext;mso-border-style-alt:
  solid;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:9.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>入金</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=55 colspan=2 style='width:41.3pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日付</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=68 colspan=5 style='width:51.2pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-bottom-alt:solid windowtext 1.5pt;mso-border-right-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>年</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><span
  style='mso-spacerun:yes'>　　</span></span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>月</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日</span><span lang=EN-US style='font-size:
  9.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
  <td width=73 colspan=3 style='width:55.1pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;mso-border-bottom-alt:solid windowtext 1.5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:7.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>担当者</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=63 colspan=3 style='width:47.25pt;border:none;border-bottom:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:5.0pt;mso-bidi-font-size:8.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>未入金督促日付</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
  <td width=91 colspan=3 style='width:68.6pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.5pt;border-right:solid windowtext 1.5pt;
  mso-border-top-alt:solid windowtext .5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=right style='text-align:right;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'><span style='font-size:6.0pt;mso-bidi-font-size:
  11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:Century;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:"ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Century;mso-hansi-theme-font:minor-latin'>年</span><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><span
  style='mso-spacerun:yes'>　　</span></span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>月</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'><span style='mso-spacerun:yes'>　　</span></span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>日</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:20;height:19.05pt'>
  <td width=360 colspan=15 valign=top style='width:269.65pt;border:none;
  mso-border-top-alt:solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal style='text-indent:24.0pt;mso-char-indent-count:4.0;
  mso-element:frame;mso-element-frame-hspace:7.1pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  lang=EN-US style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>(</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>お支払方法区分</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>&lt;1,2,3&gt;</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>のいずれかを○印で囲む</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>)<o:p></o:p></span></p>
  </td>
  <td width=409 colspan=18 style='width:306.9pt;border:none;mso-border-top-alt:
  solid windowtext 1.5pt;padding:0mm 5.4pt 0mm 5.4pt;height:19.05pt'>
  <p class=MsoNormal style='mso-element:frame;mso-element-frame-hspace:7.1pt;
  mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-left:center;mso-element-top:49.5pt;mso-height-rule:exactly'><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>・</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'>(</span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>正</span><span lang=EN-US style='font-size:
  6.0pt;mso-bidi-font-size:11.0pt'>) </span><span style='font-size:6.0pt;
  mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;mso-ascii-font-family:
  Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:"ＭＳ 明朝";
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>受注担当</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>~</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>発注担当</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>~</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>請求担当保管　・</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>(</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>お得意様控え</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>) </span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>受注担当</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>~</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>発注担当</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>~</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>請求担当</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'>~</span><span
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt;font-family:"ＭＳ 明朝",serif;
  mso-ascii-font-family:Century;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
  "ＭＳ 明朝";mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Century;
  mso-hansi-theme-font:minor-latin'>お得意様</span><span lang=EN-US
  style='font-size:6.0pt;mso-bidi-font-size:11.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:21;mso-yfti-lastrow:yes;height:19.05pt'>
  <td width=769 colspan=33 style='width:576.75pt;border:none;padding:0mm 5.4pt 0mm 5.4pt;
  height:19.05pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:7.1pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:
  49.5pt;mso-height-rule:exactly'>

	<br>
	&nbsp;
	<a href="#" id="print" class="btn btn-primary" onClick="window.print();">印刷</a>
	<a href="ordersearchresult.jsp" id="print" class="btn btn-warning">戻る</a>
	<a href="/" id="print" class="btn btn-warning">メインメニューに戻る</a>

</p>
  </td>
 </tr>
 <![if !supportMisalignedColumns]>
 <tr height=0>
  <td width=17 style='border:none'></td>
  <td width=2 style='border:none'></td>
  <td width=9 style='border:none'></td>
  <td width=28 style='border:none'></td>
  <td width=28 style='border:none'></td>
  <td width=29 style='border:none'></td>
  <td width=64 style='border:none'></td>
  <td width=2 style='border:none'></td>
  <td width=52 style='border:none'></td>
  <td width=33 style='border:none'></td>
  <td width=3 style='border:none'></td>
  <td width=25 style='border:none'></td>
  <td width=12 style='border:none'></td>
  <td width=16 style='border:none'></td>
  <td width=37 style='border:none'></td>
  <td width=23 style='border:none'></td>
  <td width=35 style='border:none'></td>
  <td width=7 style='border:none'></td>
  <td width=47 style='border:none'></td>
  <td width=2 style='border:none'></td>
  <td width=28 style='border:none'></td>
  <td width=5 style='border:none'></td>
  <td width=24 style='border:none'></td>
  <td width=12 style='border:none'></td>
  <td width=32 style='border:none'></td>
  <td width=22 style='border:none'></td>
  <td width=19 style='border:none'></td>
  <td width=40 style='border:none'></td>
  <td width=7 style='border:none'></td>
  <td width=16 style='border:none'></td>
  <td width=34 style='border:none'></td>
  <td width=16 style='border:none'></td>
  <td width=41 style='border:none'></td>
 </tr>
 <![endif]>
</table>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:"ＭＳ Ｐゴシック";mso-bidi-font-family:
"ＭＳ Ｐゴシック";mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>
