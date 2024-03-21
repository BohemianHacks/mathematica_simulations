(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    138728,       3483]
NotebookOptionsPosition[    134131,       3341]
NotebookOutlinePosition[    136815,       3407]
CellTagsIndexPosition[    136740,       3402]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Pressure-Composition Diagrams (P-x-y)", "BookChapterTitle",
 CellChangeTimes->{{3.621618635735944*^9, 3.6216186516088514`*^9}}],

Cell[CellGroupData[{

Cell["Raoult\[CloseCurlyQuote]s Law", "Section",
 CellChangeTimes->{{3.6216187248950434`*^9, 3.6216187290242796`*^9}}],

Cell[TextData[{
 "For a more detailed explanation of Raoult\[CloseCurlyQuote]s law, please \
view ",
 ButtonBox["Raoult\[CloseCurlyQuote]s Law Explanation",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=Adr9_2LnQdw"], None},
  ButtonNote->"https://www.youtube.com/watch?v=Adr9_2LnQdw"],
 ". "
}], "Text",
 CellChangeTimes->{
  3.6216187484023876`*^9, {3.621619192612795*^9, 3.621619197024048*^9}}],

Cell["\<\
Raoult\[CloseCurlyQuote]s law is used to calculate the bubble point (BP) and \
dew point (DP) cures of a mixture in vapor liquid equilibrium. The equations \
for these curves are shown below:\
\>", "Text",
 CellChangeTimes->{
  3.6216187484023876`*^9, {3.621619192612795*^9, 3.621619193708858*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["P", "BP"], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], TraditionalForm]], "Equation",
 CellChangeTimes->{{3.6216192119539013`*^9, 3.621619237651371*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["P", "DP"], "=", 
   FractionBox["1", 
    RowBox[{
     FractionBox[
      SubscriptBox["y", "1"], 
      SubsuperscriptBox["P", "1", "sat"]], "+", 
     FractionBox[
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], 
      SubsuperscriptBox["P", "2", "sat"]]}]]}], TraditionalForm]], "Equation",
 CellChangeTimes->{{3.6216192464168725`*^9, 3.6216192727093763`*^9}}],

Cell[CellGroupData[{

Cell["Derivation of Raoult\[CloseCurlyQuote]s Law:", "Subsection",
 CellDingbat->"\[LightBulb]",
 CellChangeTimes->{{3.6216193432374105`*^9, 3.6216193549820824`*^9}, {
  3.621619450089522*^9, 3.6216194506335535`*^9}, {3.621619947251958*^9, 
  3.62161994833102*^9}}],

Cell["Raoult\[CloseCurlyQuote]s law states that for a binary mixture:", "Text",
 CellChangeTimes->{{3.6213551336149154`*^9, 3.6213551586353464`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     SubscriptBox["x", "2"], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], 
  TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.6213551758043284`*^9, 3.6213552064040785`*^9}, {
  3.621619622158364*^9, 3.6216196492879157`*^9}}],

Cell[TextData[{
 "Equation (1) can be rewritten to eliminate the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "2"], TraditionalForm]]],
 " term."
}], "Text",
 CellChangeTimes->{{3.621355213480483*^9, 3.6213552313905077`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], 
  TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.6213552415420885`*^9, 3.6213552676085796`*^9}, {
  3.621619633068988*^9, 3.621619651550045*^9}}],

Cell[TextData[{
 "The Antoine equation is used to get the saturation pressures of each \
component (",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "1", "sat"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "2", "sat"], TraditionalForm]]],
 ")."
}], "Text",
 CellChangeTimes->{{3.621355275639039*^9, 3.6213553434019146`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubscriptBox["log", "10"], "(", 
    SubsuperscriptBox["P", "i", "sat"], ")"}], "=", 
   RowBox[{"A", "-", 
    FractionBox["B", 
     RowBox[{"T", "+", "C"}]]}]}], TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.621355348298195*^9, 3.621355373468634*^9}, {
  3.6216196671589375`*^9, 3.621619695837578*^9}}],

Cell["\<\
In equation (3) A, B, and C are constants specific to each component. Thir \
values can be found in tabulated data.\
\>", "Text",
 CellChangeTimes->{{3.6213554305198975`*^9, 3.621355464948867*^9}, 
   3.621355546096508*^9}],

Cell[TextData[{
 "For the bubble point (BP) calculation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["K", "i"], " ", 
      SubscriptBox["x", "i"]}]}], "=", "1"}], TraditionalForm]]],
 " is used to find the BP pressure. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["K", "i"], TraditionalForm]]],
 " is caled the ",
 StyleBox["K-ratio",
  FontSlant->"Italic"],
 " of component ",
 StyleBox["i",
  FontSlant->"Italic"],
 "; according to Raoult\[CloseCurlyQuote]s law, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["K", "i"], TraditionalForm]]],
 " is the ratio of the component partial pressure to the total pressure ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["K", "i"], "=", 
    FractionBox[
     SubsuperscriptBox["P", "i", "sat"], "P"]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.6213555599743013`*^9, 3.62135566571235*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"1", "=", 
   RowBox[{
    RowBox[{
     FractionBox[
      SubsuperscriptBox["P", "1", "sat"], "P"], " ", 
     SubscriptBox["x", "1"]}], "+", 
    RowBox[{
     FractionBox[
      SubsuperscriptBox["P", "2", "sat"], "P"], " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.6213556907397814`*^9, 3.621355739901593*^9}, {
  3.6216196758814363`*^9, 3.6216196933894377`*^9}}],

Cell["\<\
Multiplying equation (4) through by P will return equation (1).\
\>", "Text",
 CellChangeTimes->{{3.6213557622208695`*^9, 3.6213557841471233`*^9}}],

Cell[TextData[{
 "For the dew point (DP) calculation, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["y", "i"], "/", 
      SubscriptBox["K", "i"]}]}], "=", "1"}], TraditionalForm]]],
 " is used to calculate the DP pressure."
}], "Text",
 CellChangeTimes->{{3.6213557948047333`*^9, 3.6213558338889685`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["y", "1"], 
     FractionBox["P", 
      SubsuperscriptBox["P", "1", "sat"]]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], ")"}], " ", 
     FractionBox["P", 
      SubsuperscriptBox["P", "2", "sat"]]}]}], "=", "1"}], 
  TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.621355841209388*^9, 3.621355876905429*^9}, {
  3.621619681487757*^9, 3.621619691341321*^9}}],

Cell["\<\
Rearraanging equation (5) to solve for pressure as a function of the molar \
composition in the vapor phase (of the more volatile component, 1) is the DP \
pressure.\
\>", "Text",
 CellChangeTimes->{{3.621355886833997*^9, 3.62135596259233*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   FractionBox["1", 
    RowBox[{
     FractionBox[
      SubscriptBox["y", "1"], 
      SubsuperscriptBox["P", "1", "sat"]], "+", 
     FractionBox[
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], 
      SubsuperscriptBox["P", "2", "sat"]]}]]}], 
  TraditionalForm]], "EquationNumbered",
 CellChangeTimes->{{3.6213559720228696`*^9, 3.621356012255171*^9}, {
  3.6216196865770483`*^9, 3.621619689857236*^9}}]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Mapping a P-x-y Diagram", "Section",
 CellChangeTimes->{{3.6216199976328397`*^9, 3.6216200048182507`*^9}}],

Cell[TextData[{
 "The blue line represents the bubble-point, above this line at higher \
pressures both components are in the liquid phase. Likewise, the green line \
represents the dew-point, below this line both components are in the vapor \
phase. Inside the shaded region between the two curves is the 2-phase region. \
The amount of each phase that is present at a certain composition in the \
2-phase region is determined from the ",
 ButtonBox["lever rule",
  BaseStyle->"Hyperlink",
  ButtonData->"Lever Rule"],
 ". "
}], "Text",
 CellChangeTimes->{{3.6206625737281466`*^9, 3.620662649888503*^9}, {
  3.6206630439210405`*^9, 3.6206630762338886`*^9}, {3.620663310915312*^9, 
  3.620663350163556*^9}, {3.620664695438502*^9, 3.620664696411557*^9}, {
  3.6206647481075144`*^9, 3.6206647481075144`*^9}, {3.621352906438528*^9, 
  3.621352939887441*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "[", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"Psat1", ",", "Psat2", ",", "Px", ",", "Py"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Psat1", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.90565", "-", 
         FractionBox["1211.033", 
          RowBox[{"95", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"Psat2", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.65464", "-", 
         FractionBox["1344.8", 
          RowBox[{"95", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Px", "[", "x_", "]"}], "=", 
      RowBox[{
       RowBox[{"x", "*", "Psat1"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Py", "[", "x_", "]"}], "=", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["x", "Psat1"], "+", 
         FractionBox[
          RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
       RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Px", "[", "x", "]"}], ",", 
         RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"Frame", "\[Rule]", "True"}], ",", 
       RowBox[{"FrameLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], "]"}],
           ",", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], "}"}]}], 
       ",", 
       RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
       RowBox[{"AxesOrigin", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"0", ",", "100"}], "}"}]}], ",", 
       RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
       RowBox[{"PlotLegends", "\[Rule]", 
        RowBox[{"Placed", "[", 
         RowBox[{
          RowBox[{"LineLegend", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<bubble-point\>\"", ",", "15"}], "]"}], ",", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<dew-point\>\"", ",", "15"}], "]"}]}], "}"}], "]"}],
           ",", "Above"}], "]"}]}], ",", 
       RowBox[{"Filling", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", "2", "}"}], ",", 
            RowBox[{"Opacity", "[", 
             RowBox[{"0.1", ",", 
              RowBox[{"Blend", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Blue", ",", "Green"}], "}"}], ",", "0.5"}], "]"}]}],
              "]"}]}], "}"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"Epilog", "\[Rule]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<liquid\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.25", ",", "0.7"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<vapor\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.8", ",", "0.2"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<2-phase\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "0.35"}], "}"}], "]"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}]}]}], "]"}]}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.6205853262823205`*^9, 3.6205854759018784`*^9}, {
   3.6205855180152874`*^9, 3.6205855574175406`*^9}, {3.620585617144957*^9, 
   3.620585705092987*^9}, {3.6205865690304017`*^9, 3.6205866612206745`*^9}, {
   3.6205867138686857`*^9, 3.6205870139098473`*^9}, {3.6205871611432686`*^9, 
   3.620587248373258*^9}, 3.620587290617674*^9, {3.620587357804517*^9, 
   3.620587536745752*^9}, {3.6206624078596597`*^9, 3.620662460288658*^9}, {
   3.620662524168312*^9, 3.620662547084623*^9}, {3.6206627289730263`*^9, 
   3.6206628024552293`*^9}, {3.620662845102669*^9, 3.6206628605365515`*^9}, {
   3.6206629072382226`*^9, 3.620663021520759*^9}, {3.6206644348755984`*^9, 
   3.6206644425950403`*^9}, {3.620664485853514*^9, 3.620664496023096*^9}, {
   3.6207403226705036`*^9, 3.620740371057271*^9}, {3.620741328936059*^9, 
   3.620741380196991*^9}, {3.6213528036386485`*^9, 3.621352814735283*^9}}],

Cell[BoxData[
 FrameBox[
  TemplateBox[{GraphicsBox[
     GraphicsComplexBox[CompressedData["
1:eJxN1Pk/1PsewHFZEi1XsjREEdOlLKFTRJ93pISEQULpSLQYO1GWyEgxzHwr
2coWHY6L5JwoWaKoTPYlyZJ9/aKUOjXOvT/cz5wfXo/Xf/BUcPGyPsPPx8eX
8t/+d9Mz4y3VE7b7vhuvMk/sp4OrP0m5TrmFNu8gqmylvGHVrcOZc/P30bX0
xLe5tj7wuFnr0CH5ImRvRHv+NtwX7K/29tTGlqJe1ZIAuft+4PXQTy3pcznK
Dbl2T2vQHxZYnQ0rVlShHq5EgbxIIDTUvKxq0n+OaFMbNVoOX4RzwYfXHp+u
Q+GyVT75UUFQI6K1XECvRxIhcskO+cGQm13HlVF+jeYOLuxqGb8EIPUsi1bY
iHQMwx/Li4eAWn1v2UvVJqQWUbhE7AqFdqDN5s02o/OqNkUcnzDwEL3Q2qHZ
itYLlpj2J4XDm+5jz9bFt6HlrbX/cfS4ArSD9oPDw+2oyZ0r6SgSAb9kxB7L
UOpE7bW3516kRsAA92b72fAu9JfNuNAtvUgYOdyULVXbjey5iUzO20goTu4P
blHoQV29fJbnva5CTozAdZVL75Hmh72+MmujYPG0w6Tb0170bLF15S8ZUbD6
QLT1Q+k+RDdS7ixFDAgRG1kz6NSPrPPapNPbGbCmcjtf15EBJL6TVp7mFg0G
gUd/1n4fQJ9nmLd/Cl6DtPtx2VvTBpFordLwq6RrcNJWhyNi9hEd4ATSv+2J
gT86ztys/PIR2X9LttPvjAHdxmL+0cQhlG5AKZk8ex22GLst3jwwjEQe00x+
CN+AXTq72KWjwyjPZNIyOO0G9C8wX2UzRpDiD6tyEfVYmNa2YlC0RlHlsL/T
zzexQJ1Sm1zRNoriRz75ODnHQZ1SQKt3xBiKlFV/Lr8cBwntHaetlcZR/rm6
KPNbTCBp1Wz+unH0+7vtD5jUeCixlTTS9ZlAzWEWglov4iGbc/XuR/FJpKrP
adt/PAG+1jtdFn8+iXLVhftKvyXAALtqUcxzCoUpiNy/a8aCLy17KZHrplHd
Y31C6jYLvG8pVgdXTKOUcY5czTALpDmKYsMnZ1CsMtNFQYMNtI6CH5u4M+j8
J51jq4PYsOCc6dGbP4veOepNUOvZUHWqiLHOnEQuzXSdJTEC7mxevbi8TCJu
KMPM+TQBVyNig25QotCmo4kjW1Z6wXY4YSCcSyLNB9+qtusRUJ1au4tJ8Uc3
TJuS3vt6QoBl9KBoMIlePdX+zlYmYFBDJ1mgjUR3iCrGCwsC9Jq1iwmKKzJs
uLCwR8UTUrpTHsW5kEjqpaW0sSwBK8tMLjAqSDSc1psVdICAigeb6yMmSGQW
k3VW/DgB6roSOXcpNkheWC/dXdATCjblpB05RiJ9s/4ceSkCNv6wtjn4kESi
ihd2WiMC3k6pFBv2kchn7c6vUzQC8k9L9lV/JpGygETPnpMESK3uiH9EOYBi
qZmL3Hk6/LlPdX2hFYmamVR67AYCFOW7G3J/J9E915KlSn0CutcWKWV3k0jI
MqjS3oqAR4wUawWSRGXGjpk5jgRk7GedO/WdROzqRvHGUwSMFdq59FN0kNGf
7Rmvx+nwpMnDrM+CRBSN1837xQmgFskIdP1GojEhO6eAvQT03ps/2dZBIot5
WcV/WRJQJvUhzmqaRPxjXEEnBwJyWluzWV9J9P5X78BIZwLSio9oaP4kkclm
lSJJFwL+79lX29U7/unZ8cbJeLnjntizsr0eYRaDntgz2U0qH3tcvbBnmYtQ
qTTphT07Vuw/P468sWcdK6MNjGO8sWe7RWPXJr7zxp5NbNznELXDB3s2kqYr
wwnxwZ5tCywQN+jywZ5N2cRsE9bwxZ75Kbzvo8f4Ys9OpYamnpnxxZ45fJkV
Yh31w57l7tO8wKr0w55tEc4JC9P0x54JhHxyCE73x56pVybKOMkFYM8eFjqu
cEsKwJ5VPkVT2kqB2DMm02RVVGkg9mw+TPfR7P6L2LMxavbOfUMXsWcVc0Y5
CxFB2LP2i6VvnikHY89y7yz/cBkMxp6Z1tuXZ6dcwp55/NpQe9nrMvYsP8R0
7vWREOwZo6TLardqKPYswc5taebfYdizgfRPyaPUcOzZVrkQf8uNV7BnPVR1
9kDJFezZH3aKFtNHIrBnfJmyH3UFIrFnlLrWZb8nkdizuBqJNY0hV7FnroJc
ir5LFPZMX+1QlpE5A3uWKsn/sMElGntG5iuvc2Zfw55pWOuIkK9isGeXE9a7
3jO6gT2ryfjgrtkUiz1LMTwtNhvJxJ69qlxwt0hLwJ6x+c9eapxhYc82jLbv
/qdnmtqpBv2yntgzFJq0oS+DjT0T0DE9l/aTjj3zjqHaMIzZ2LPWoU6f9Xw8
z/Zz1GrZs3Ts2dgTMfc9FDb2TLrFiFhqYmPPLNFEu+ZOnmflodukxcfo2DN/
DYcKNwE29mxVYbKQeRkbe7Z4gsYJ38jzTEborxRlU55nAYZ5ebQhnme/CUU+
JZZY2LP48DYTZgEbe1YmznWANTzPZjpqCrMMeJ69n+NUlNvxPEscGmr0H+R5
1lqdMaz2iYU9M1ilVfUol40989M70UVdyfPM5FB5pvtunmdBE98i6ZY8zyq8
Z8xFTxDwN5mYvFE=
      "], {{{}, {}, {}, {}, {}, {}, {}, {
         EdgeForm[], 
         Directive[
          Opacity[0.1], 
          RGBColor[0., 0.5, 0.5]], 
         GraphicsGroupBox[{
           
           PolygonBox[{{78, 148, 142, 137, 133, 130, 128, 79, 80, 81, 82, 83, 
            84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 
            100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 
            113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 
            126, 149, 143, 138, 134, 131, 129, 150, 144, 139, 135, 132, 151, 
            145, 140, 136, 152, 146, 141, 153, 147, 154, 127, 50, 77, 70, 76, 
            64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 67, 73, 52, 54, 57, 61, 
            66, 72, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 
            35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 
            19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
            51, 53, 56, 60, 65, 71, 1}}]}]}, {}, {}}, {{}, {}, {}, {
         Directive[
          Opacity[1.], 
          AbsoluteThickness[1.6], 
          Thickness[Large], 
          RGBColor[0, 0, 1]], 
         LineBox[{1, 71, 65, 60, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
          12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
          29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 
          46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73, 67, 62, 58, 55, 74, 68, 
          63, 59, 75, 69, 64, 76, 70, 77, 50}]}, {
         Directive[
          Opacity[1.], 
          AbsoluteThickness[1.6], 
          Thickness[Large], 
          RGBColor[0, 1, 0]], 
         LineBox[{78, 148, 142, 137, 133, 130, 128, 79, 80, 81, 82, 83, 84, 
          85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 
          101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
          114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 
          149, 143, 138, 134, 131, 129, 150, 144, 139, 135, 132, 151, 145, 
          140, 136, 152, 146, 141, 153, 147, 154, 127}]}}}], {
     DisplayFunction -> Identity, AspectRatio -> 
      NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
      AxesLabel -> {None, None}, AxesOrigin -> {0., 100.}, DisplayFunction :> 
      Identity, Epilog -> {
        InsetBox[
         BoxData[
          FormBox[
           InterpretationBox[
            Cell[
             BoxData[
              FormBox[
               StyleBox["\"liquid\"", 18, 
                RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
             "InlineText"], 
            Text[
             Style["liquid", 18, 
              RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
         Scaled[{0.25, 0.7}]], 
        InsetBox[
         BoxData[
          FormBox[
           InterpretationBox[
            Cell[
             BoxData[
              FormBox[
               StyleBox["\"vapor\"", 18, 
                RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
             "InlineText"], 
            Text[
             Style["vapor", 18, 
              RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
         Scaled[{0.8, 0.2}]], 
        InsetBox[
         BoxData[
          FormBox[
           InterpretationBox[
            Cell[
             BoxData[
              FormBox[
               StyleBox["\"2-phase\"", 18, 
                RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
             "InlineText"], 
            Text[
             Style["2-phase", 18, 
              RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
         Scaled[{0.5, 0.35}]]}, Frame -> {{True, True}, {True, True}}, 
      FrameLabel -> {{
         FormBox[
          StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
          TraditionalForm], None}, {
         FormBox[
          StyleBox[
          "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
          TraditionalForm], None}}, 
      FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
      GridLines -> {None, None}, GridLinesStyle -> Directive[
        GrayLevel[0.5, 0.4]], ImageSize -> 500, LabelStyle -> GrayLevel[0], 
      Method -> {
       "DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None, 
        "AxesInFront" -> True}, PlotRange -> {{0, 1}, {100, 1400}}, 
      PlotRangeClipping -> True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
      Ticks -> {Automatic, Automatic}}],FormBox[
     FormBox[
      TemplateBox[{
        StyleBox["\"bubble-point\"", 15, StripOnInput -> False], 
        StyleBox["\"dew-point\"", 15, StripOnInput -> False]}, "LineLegend", 
       DisplayFunction -> (FormBox[
         StyleBox[
          StyleBox[
           PaneBox[
            TagBox[
             GridBox[{{
                TagBox[
                 GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large], 
                    RGBColor[0, 0, 1]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large], 
                    RGBColor[0, 0, 1]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large], 
                    RGBColor[0, 1, 0]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large], 
                    RGBColor[0, 1, 0]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                  GridBoxAlignment -> {
                   "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                  AutoDelete -> False, 
                  GridBoxDividers -> {
                   "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
              AutoDelete -> False, 
              GridBoxDividers -> {"Columns" -> {{None}}, "Rows" -> {{None}}}, 
              GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
              GridBoxSpacings -> {"Columns" -> {{0}}, "Rows" -> {{1}}}], 
             "Grid"], Alignment -> Left, AppearanceElements -> None, 
            ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
            "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
           GrayLevel[0], FontFamily -> "Arial"}, Background -> Automatic, 
          StripOnInput -> False], TraditionalForm]& ), 
       InterpretationFunction :> (RowBox[{"LineLegend", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{
                RowBox[{"Directive", "[", 
                  RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    RowBox[{"Thickness", "[", "Large", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0, 0, 1], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> RGBColor[0., 0., 0.6666666666666666], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "\[InvisibleSpace]"}], "RGBColor[0, 0, 1]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0, 0, 1]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0, 0, 1], Editable -> False, Selectable -> 
                    False]}], "]"}], ",", 
                RowBox[{"Directive", "[", 
                  RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    RowBox[{"Thickness", "[", "Large", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0, 1, 0], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> RGBColor[0., 0.6666666666666666, 0.], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "\[InvisibleSpace]"}], "RGBColor[0, 1, 0]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0, 1, 0]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0, 1, 0], Editable -> False, Selectable -> 
                    False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
              RowBox[{#, ",", #2}], "}"}], ",", 
            RowBox[{"LabelStyle", "\[Rule]", 
              InterpretationBox[
               ButtonBox[
                TooltipBox[
                 RowBox[{
                   GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    GrayLevel[0], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> GrayLevel[0.], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                   "\[InvisibleSpace]"}], "GrayLevel[0]"], Appearance -> None,
                 BaseStyle -> {}, BaselinePosition -> Baseline, 
                DefaultBaseStyle -> {}, ButtonFunction :> 
                With[{Typeset`box$ = EvaluationBox[]}, 
                  If[
                   Not[
                    AbsoluteCurrentValue["Deployed"]], 
                   SelectionMove[Typeset`box$, All, Expression]; 
                   FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                   FrontEnd`Private`$ColorSelectorInitialColor = GrayLevel[0]; 
                   FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                   MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["GrayLevelColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                Automatic, Method -> "Preemptive"], 
               GrayLevel[0], Editable -> False, Selectable -> False]}], ",", 
            RowBox[{"LegendLayout", "\[Rule]", "\"Row\""}]}], "]"}]& ), 
       Editable -> True], TraditionalForm], TraditionalForm]},
   "Legended",
   DisplayFunction->(GridBox[{{
       ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}, {
       TagBox[
        ItemBox[
         PaneBox[
          TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
          BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
        "SkipImageSizeLevel"]}}, 
     GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
     AutoDelete -> False, GridBoxItemSize -> Automatic, 
     BaselinePosition -> {2, 1}]& ),
   Editable->True,
   InterpretationFunction->(RowBox[{"Legended", "[", 
      RowBox[{#, ",", 
        RowBox[{"Placed", "[", 
          RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )],
  StripOnInput->False]], "Output",
 CellChangeTimes->{3.6216200380641522`*^9}]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Lever Rule", "Section",
 CellChangeTimes->{{3.621620064548667*^9, 3.6216200677958527`*^9}},
 CellTags->"Lever Rule"],

Cell[TextData[{
 "The lever rule is used to determine the relative amounts of liquid and \
vapor in the system. An explanation of the lever rule is shown in this",
 ButtonBox[" Screencast",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=celOhlEoQ9c"], None},
  ButtonNote->"https://www.youtube.com/watch?v=celOhlEoQ9c"],
 ".\n \nMouseover the plot below to see the points used in the lever rule \
calculations."
}], "Text",
 CellChangeTimes->{{3.620664756341985*^9, 3.6206648103490744`*^9}, {
  3.6206650250323534`*^9, 3.6206650689668665`*^9}, {3.6206655356785607`*^9, 
  3.6206655680204105`*^9}, {3.6207408349808064`*^9, 3.620740989798661*^9}, {
  3.6213504108797903`*^9, 3.621350421766413*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"liquid", " ", "amount", " ", "present", " ", "at", " ", 
    RowBox[{
     SubscriptBox["z", "1"], ":", "     ", 
     SuperscriptBox["f", "L"]}]}], "=", 
   FractionBox[
    RowBox[{
     SubscriptBox["y", "1"], "-", 
     SubscriptBox["z", "1"]}], 
    RowBox[{
     SubscriptBox["y", "1"], "-", 
     SubscriptBox["x", "1"]}]]}], TraditionalForm]], "Equation",
 CellChangeTimes->{{3.621620091821227*^9, 3.6216201135774717`*^9}, {
  3.6216201459113207`*^9, 3.621620186505643*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"vapor", " ", "amont", " ", "present", " ", "ar", " ", 
    RowBox[{
     SubscriptBox["z", "1"], ":", "      ", 
     SuperscriptBox["f", "V"]}]}], "=", 
   FractionBox[
    RowBox[{
     SubscriptBox["x", "1"], "-", 
     SubscriptBox["z", "1"]}], 
    RowBox[{
     SubscriptBox["x", "1"], "-", 
     SubscriptBox["y", "1"]}]]}], TraditionalForm]], "Equation",
 CellChangeTimes->{{3.621620193580047*^9, 3.6216202234847574`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "@", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "T", ",", "p", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", 
      "x1", ",", "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", 
      ",", "p3"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
     RowBox[{"p", "=", "550"}], ";", "\[IndentingNewLine]", 
     RowBox[{"Psat1", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.90565", "-", 
         FractionBox["1211.033", 
          RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"Psat2", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.65464", "-", 
         FractionBox["1344.8", 
          RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Px", "[", "x_", "]"}], "=", 
      RowBox[{
       RowBox[{"x", "*", "Psat1"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Py", "[", "x_", "]"}], "=", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["x", "Psat1"], "+", 
         FractionBox[
          RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
       RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
     RowBox[{"x1", "=", 
      RowBox[{"X", "/.", 
       RowBox[{"FindRoot", "[", 
        RowBox[{
         RowBox[{"p", "\[Equal]", 
          RowBox[{
           RowBox[{"X", "*", "Psat1"}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"y1", "=", 
      RowBox[{"Y", "/.", 
       RowBox[{"FindRoot", "[", 
        RowBox[{
         RowBox[{"p", "\[Equal]", 
          FractionBox["1", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["Y", "Psat1"], "+", 
             FractionBox[
              RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
         RowBox[{"{", 
          RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"leverx", "=", 
      RowBox[{"Which", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"x1", "<", "0.4", "<", "y1"}], ",", 
        FractionBox[
         RowBox[{"y1", "-", "0.4"}], 
         RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Px", "[", "0.4", "]"}], "\[LessEqual]", "p"}], ",", "1", 
        ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Py", "[", "0.4", "]"}], "\[GreaterEqual]", "p"}], ",", 
        "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"levery", "=", 
      RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"p1", "=", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Px", "[", "x", "]"}], ",", 
          RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
            "]"}], ",", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], "}"}]}],
         ",", 
        RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "0.05", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.4", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"p2", "=", 
      RowBox[{"Graphics", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.41", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.41", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Column", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"leverx", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<liquid\>\""}], 
                "}"}], ",", 
               RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
             "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"y1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Column", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"levery", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<vapor\>\""}], 
                "}"}], ",", 
               RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
             "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"p3", "=", 
      RowBox[{"Graphics", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.41", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.41", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<L\>\"", ",", "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"y1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "450"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<V\>\"", ",", "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "450"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(x\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x1", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"0.4", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(z\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.415", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"y1", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(y\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"y1", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Mouseover", "[", 
      RowBox[{
       RowBox[{"Show", "[", 
        RowBox[{"p1", ",", "p2"}], "]"}], ",", 
       RowBox[{"Show", "[", 
        RowBox[{"p1", ",", "p3"}], "]"}]}], "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6207393522509985`*^9, 3.620739366290802*^9}, {
  3.6207394034719286`*^9, 3.6207394393859825`*^9}, {3.620739498575368*^9, 
  3.620740204602751*^9}, {3.620740242406913*^9, 3.6207402856023836`*^9}, {
  3.6207403227005053`*^9, 3.620740331590014*^9}, {3.6207404687558594`*^9, 
  3.620740594894074*^9}, {3.620740634541342*^9, 3.6207408087183037`*^9}, {
  3.620741027438814*^9, 3.620741159819386*^9}, {3.6213528293411183`*^9, 
  3.62135283146924*^9}}],

Cell[BoxData[
 FrameBox[
  PaneSelectorBox[{False->
   GraphicsBox[{{{}, {}, 
      {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVxXk4lAkcAGChNKSVZTSpEeF5sI5ET0n9foUiEYYolpZuxlFYWpt1TGSM
zJeEppCjTRbJRlsZoaiMcxxpMrTjVl+UimXs7h/v82r7h7gdl5WRkXH6z//v
Pz7WUTfusWvebuWBTDETR8sO+YtpFmDzQJj3coyJVKXutPs0W2Dr589Kp5lo
sl2t6AbNHegKVrkn5YPRqn1LBUE7BnuaA2e2GQRj3fUGSw4tHFL2t2W9ORuM
CXHsqBRaIqw/mDm8cUUIHgsnaZdoGaD1A8H3oIbiygyH/I/ThZCUm9la7BGG
1e3m+/bRy8HLhlHfGnsWvRJE/Q3sKhAZVkZsKDyHIffOGWd9fgjFMUk3zYfC
cSa9p3nZMj70S9VK6ZRIbH76nN9mXQ+MybWmHQ4/4+loB+XDU40Qq8kPK0mM
wqcU86VSZhOoxWzIPlISjcUFjdJ1ei/h494Zy46x84jUJ7cYZS1gsSe2mq4a
g8ZNoprnhm1gHFf2jbD8FYXI+HDnQzucMXQvF4RdwCDFwM5us05YI1+5X5wV
i6/6PJ+sTuuCpU0Nf3gH/YaMvV5DEokQ2k5K1b0pcbg1j+2Zp9sDwoarH59d
j8NB6RXhqdhe+Md9bHmGVTwOO7QVUBv6wEuayRG0xmNFtji6Q7sfekUyLmdC
ErAoWe6Swfk3YPZ2x9l1yok4G3Bk4sQjETyZ7VyxNS8RlWwvut3TGACmjV5P
FbAwRmV41ZCPGNzudGnkClm4qtZIptdpEFQ3Mx7yTlzEnZEHFxvmB+Hze87V
Rfkk5BWmFmziDYFig67kRVYS+npYCCiO78BWEMmc25aMf3Yfv1L75R14zWUf
su5Jxu0tFbIjmX9D7k5a5cSpS7jR7sTsFVsJUKoZ9gsKKWhpYcmtGpHAHfsJ
l2heCopnOC8KWMOgs+D6kGLCxqktriya+QjUSsJ9Fl+xUX/SeGJZ1wikDX8K
8/FLxUbdiM7QuFGI1zSppy+l4mVhd4Cb7hiUnG5MPJDBQZJRx5VtHIO7r41u
c/TTsNJD3WZ72Di0X3CWN3+WhgWChBvvVCfA0FrQtfvwZfza5POLav0EFJso
DFTNXcZBLn9WJXgSLmhTCm84puOXjh20+NVT0FhtTVCvpmNohk5d9OMpyBkT
bHgqSUcNgY6KxPc9sPU4/tqmXGR0ly6sl76HM58sPJWiuDjjlx8kKvkAr72t
xvWbuMg/Ws5afYAE/3amxTcVAv9qC3IccCaBZvqyfbcqgQ92Ga4pcyWhnaPP
ZH9PYOn6Ip6TJwnWjuIiOpXAnL6c+6n+JFCfu2jYaRIY4XJxSDGahBePtsxz
9Qg0wh93KhSTYHZ7jm9kRaB++Tq53t9JGF1+yCdiB4E69L7m4rsk3DxW+a3W
msC1C27ue++RoKgTuNkNCFxRYx/IekyChCe6FWVL4JCpRbZcFwnXCD7rmTOB
opvTvl3dJDhPa+p850Jgn3K5bkEfCctdomq9XAlsnTSo2DNAQpjy5q+TDAIf
39ZqihsnwTH51inVwwTWUN+muk6RIDsqlfc5QuB9Vo6bNklCjZ13fpE3gSUB
6gN1n0nQk1Pr3+ZLYFFnZ0H6VxLe/BQaGe9HYN7u9NNH50ng1rWothwlkFfh
ZGq2SIK9lkG5uj+B17SUZpeWSJD+ynL0CyDwX9GTXW4=
        "]]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVznk4lAkcwHHMKiGPVBidhLZDJrRWNX6/UpGQW9lU66wnw8hQcq1jrHLN
+9ajHBVNbFmPI9qlNIgnKrMyZmIljPuaeVGqbYtt//g+n3+/+r6hrgFKCgoK
jt/6X/uA8Y6GCQ/rjx5q27P7WThW5unbT7eA7KGhNo6Uhdpqkswq+gGI2H//
vtsQC3dYrSq6SXeH2tjNOlpjLNz9yryCpPvDPqFJEyFnYUNe064MOgdoFvZn
87+yMCkh7eIVejIwzPOY/WtC0J9D0S/Tr8HxtsnMdcdDUOXa4cKZ2btQsyc4
zkkagn++MrO1XV8Oa9ZuGezxD8VjSb09TWnVUDiPAsPJUAytDDe58b4WvCo4
s+PAxjne61ZFxXqQLElhHkxlY2vjs/r2vU/BUjVtefbfbDwbdXj58elmmNC1
9k7eHoaNy8wWS1ktMJJvpSeMCcNifvOCntEL2BxZqsXsCkPUfnLHrawNptxT
Ny81PY8mLb01z7a2Q7j+mz5W6nkUo5v8vvwVnM6LzQuQncdg1XMiCUME3h/k
yryj4fiy2+uJRmYnFFszzvEE4eh26Jh0eFgMG5cWxcUxOPhDQZpXgeFroMW8
8466zcGBhaviM/FdsEOQrXdiXQSOHG7nazd1Q2XZT4qBNyKwIqc/qkO/BwSP
YcrcMBKLUmmXt1x6AxkZdirJ1ZE47+c9Gfi4F2bjrKrk+y6g2oEU10qdPhgz
5u+0HrqAMZoj6tIT/VA3Y1M0l3AR1QXbFLocB0B8ofrlE6MoZEYe/dr0eQCK
ry9+8ZVGYf7ddP6mfCnYtxyr5edewpMeFsJlRwYh+OfWpujQaHwoCbgq+DAI
JTH2My8cY9CqrUJpNHsIuA+6XCy3xuLGg4HzVw8MQ5Zn4CfZ93G4y2IXUT06
DAO33+WMGsdj/1zGcz53BDati+E46/6C0+YuXLrZKPQY7yAGHvyCxlMmk4qd
o/DQ08Bp2jEBmw0jROyEMVAoXDNoRUvELLHEz9VwHOjNosXwR4lIuTUQSs3j
kN64Sr0tJgkfeKy2sQqbAP/vFuh7fZORL0y6Oag1CXtNbO/YOHDxY8uJaK2n
k5C3Wqmy1TcFB4j6ec2QKaBKjDROEb/ih4499ESNaTB1tVhGPU9F9jWDhqi6
aYjOWuF/y+YK6ggNNIdPyqCx4G0Qoz0N3SSlX9YuyCB3v5+mPDED504VBveW
yOG5YC7IKT8L60+XczUcKCCUzlxqk/HwUXvwkT4nCkQNBcMm73j4h/XWFWUu
FNxTTnxMfuJh6dqifEcvCjim3nWBNAJzu3Or0n0pGHukGfQjncAI5xSpahQF
7FRjd+5BArehD3NpMQUQe2NlXwGBxuV6tK57FDBVzOqrigk0WN/dWvw7BZnx
nXYZpQTqfnF1P1RJgUpZjrJDDYFLauzOceso0OmwIT+1Eyg1tcihdX77G3od
tkKBxN5bsyc7JRSE7/bpMl5CYvfyckN+NwU1WgveqE7iX1NbKvb3UTDv4yaM
1yWx7rcNLQkTFDjDhJixk8Qa7bfpLtMU2NnWFgZZkljFzXXVpyiQSRrL7jBJ
LPFb3dfwngI95X9zjexJLBKJ+LyPFFyc+CeR5UxiwT7e2dOfKXgzI6yr9SQx
v8LRlPGVgjq2zEHVh8TrG9TmFxcpWDkqtjzlR+J/T8hgkQ==
        "]]}}, {
      {RGBColor[0, 0, 1], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.3316211884776062, 550}, {0.4, 550}}]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.4, 550}, {0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.3316211884776062, 550}, {0.3316211884776062, 590}, {
         0.39, 590}, {0.39, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.36581059423880313`, 590}, {0.36581059423880313`, 950}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.41, 550}, {0.41, 590}, {0.7095747292055791, 590}, {
         0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.5547873646027895, 590}, {0.5547873646027895, 950}}]}, 
      InsetBox[
       StyleBox[
        TagBox[GridBox[{
           {
            TemplateBox[{TagBox[
               InterpretationBox[
               "\"82.\"", 81.90814368594351, AutoDelete -> True], 
               NumberForm[#, 2]& ],"\"%\""},
             "RowDefault"]},
           {"\<\"liquid\"\>"}
          },
          DefaultBaseStyle->"Column",
          GridBoxAlignment->{"Columns" -> {{Center}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
         "Column"],
        StripOnInput->False,
        FontSize->16], {0.5547873646027895, 1050}], InsetBox[
       StyleBox[
        TagBox[GridBox[{
           {
            TemplateBox[{TagBox[
               InterpretationBox[
               "\"18.\"", 18.091856314056486`, AutoDelete -> True], 
               NumberForm[#, 2]& ],"\"%\""},
             "RowDefault"]},
           {"\<\"vapor\"\>"}
          },
          DefaultBaseStyle->"Column",
          GridBoxAlignment->{"Columns" -> {{Center}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
         "Column"],
        StripOnInput->False,
        FontSize->16], {0.36581059423880313`, 1050}]}},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0., 100.},
    DisplayFunction->Identity,
    Epilog->InsetBox[
      GraphicsBox[{
        PointSize[0.05], 
        PointBox[{0, 0}]}], {0.4, 550}],
    Frame->{{True, True}, {True, True}},
    FrameLabel->{{
       FormBox[
        StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
        TraditionalForm], None}, {
       FormBox[
        StyleBox[
        "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
        TraditionalForm], None}},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLines->{None, None},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    ImageSize->500,
    LabelStyle->GrayLevel[0],
    Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
    PlotRange->{{0, 1}, {100, 1400}},
    PlotRangeClipping->True,
    PlotRangePadding->{{0, 0}, {0, 0}},
    Ticks->{Automatic, Automatic}], True->
   GraphicsBox[{{{}, {}, 
      {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVxXk4lAkcAGChNKSVZTSpEeF5sI5ET0n9foUiEYYolpZuxlFYWpt1TGSM
zJeEppCjTRbJRlsZoaiMcxxpMrTjVl+UimXs7h/v82r7h7gdl5WRkXH6z//v
Pz7WUTfusWvebuWBTDETR8sO+YtpFmDzQJj3coyJVKXutPs0W2Dr589Kp5lo
sl2t6AbNHegKVrkn5YPRqn1LBUE7BnuaA2e2GQRj3fUGSw4tHFL2t2W9ORuM
CXHsqBRaIqw/mDm8cUUIHgsnaZdoGaD1A8H3oIbiygyH/I/ThZCUm9la7BGG
1e3m+/bRy8HLhlHfGnsWvRJE/Q3sKhAZVkZsKDyHIffOGWd9fgjFMUk3zYfC
cSa9p3nZMj70S9VK6ZRIbH76nN9mXQ+MybWmHQ4/4+loB+XDU40Qq8kPK0mM
wqcU86VSZhOoxWzIPlISjcUFjdJ1ei/h494Zy46x84jUJ7cYZS1gsSe2mq4a
g8ZNoprnhm1gHFf2jbD8FYXI+HDnQzucMXQvF4RdwCDFwM5us05YI1+5X5wV
i6/6PJ+sTuuCpU0Nf3gH/YaMvV5DEokQ2k5K1b0pcbg1j+2Zp9sDwoarH59d
j8NB6RXhqdhe+Md9bHmGVTwOO7QVUBv6wEuayRG0xmNFtji6Q7sfekUyLmdC
ErAoWe6Swfk3YPZ2x9l1yok4G3Bk4sQjETyZ7VyxNS8RlWwvut3TGACmjV5P
FbAwRmV41ZCPGNzudGnkClm4qtZIptdpEFQ3Mx7yTlzEnZEHFxvmB+Hze87V
Rfkk5BWmFmziDYFig67kRVYS+npYCCiO78BWEMmc25aMf3Yfv1L75R14zWUf
su5Jxu0tFbIjmX9D7k5a5cSpS7jR7sTsFVsJUKoZ9gsKKWhpYcmtGpHAHfsJ
l2heCopnOC8KWMOgs+D6kGLCxqktriya+QjUSsJ9Fl+xUX/SeGJZ1wikDX8K
8/FLxUbdiM7QuFGI1zSppy+l4mVhd4Cb7hiUnG5MPJDBQZJRx5VtHIO7r41u
c/TTsNJD3WZ72Di0X3CWN3+WhgWChBvvVCfA0FrQtfvwZfza5POLav0EFJso
DFTNXcZBLn9WJXgSLmhTCm84puOXjh20+NVT0FhtTVCvpmNohk5d9OMpyBkT
bHgqSUcNgY6KxPc9sPU4/tqmXGR0ly6sl76HM58sPJWiuDjjlx8kKvkAr72t
xvWbuMg/Ws5afYAE/3amxTcVAv9qC3IccCaBZvqyfbcqgQ92Ga4pcyWhnaPP
ZH9PYOn6Ip6TJwnWjuIiOpXAnL6c+6n+JFCfu2jYaRIY4XJxSDGahBePtsxz
9Qg0wh93KhSTYHZ7jm9kRaB++Tq53t9JGF1+yCdiB4E69L7m4rsk3DxW+a3W
msC1C27ue++RoKgTuNkNCFxRYx/IekyChCe6FWVL4JCpRbZcFwnXCD7rmTOB
opvTvl3dJDhPa+p850Jgn3K5bkEfCctdomq9XAlsnTSo2DNAQpjy5q+TDAIf
39ZqihsnwTH51inVwwTWUN+muk6RIDsqlfc5QuB9Vo6bNklCjZ13fpE3gSUB
6gN1n0nQk1Pr3+ZLYFFnZ0H6VxLe/BQaGe9HYN7u9NNH50ng1rWothwlkFfh
ZGq2SIK9lkG5uj+B17SUZpeWSJD+ynL0CyDwX9GTXW4=
        "]]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVznk4lAkcwHHMKiGPVBidhLZDJrRWNX6/UpGQW9lU66wnw8hQcq1jrHLN
+9ajHBVNbFmPI9qlNIgnKrMyZmIljPuaeVGqbYtt//g+n3+/+r6hrgFKCgoK
jt/6X/uA8Y6GCQ/rjx5q27P7WThW5unbT7eA7KGhNo6Uhdpqkswq+gGI2H//
vtsQC3dYrSq6SXeH2tjNOlpjLNz9yryCpPvDPqFJEyFnYUNe064MOgdoFvZn
87+yMCkh7eIVejIwzPOY/WtC0J9D0S/Tr8HxtsnMdcdDUOXa4cKZ2btQsyc4
zkkagn++MrO1XV8Oa9ZuGezxD8VjSb09TWnVUDiPAsPJUAytDDe58b4WvCo4
s+PAxjne61ZFxXqQLElhHkxlY2vjs/r2vU/BUjVtefbfbDwbdXj58elmmNC1
9k7eHoaNy8wWS1ktMJJvpSeMCcNifvOCntEL2BxZqsXsCkPUfnLHrawNptxT
Ny81PY8mLb01z7a2Q7j+mz5W6nkUo5v8vvwVnM6LzQuQncdg1XMiCUME3h/k
yryj4fiy2+uJRmYnFFszzvEE4eh26Jh0eFgMG5cWxcUxOPhDQZpXgeFroMW8
8466zcGBhaviM/FdsEOQrXdiXQSOHG7nazd1Q2XZT4qBNyKwIqc/qkO/BwSP
YcrcMBKLUmmXt1x6AxkZdirJ1ZE47+c9Gfi4F2bjrKrk+y6g2oEU10qdPhgz
5u+0HrqAMZoj6tIT/VA3Y1M0l3AR1QXbFLocB0B8ofrlE6MoZEYe/dr0eQCK
ry9+8ZVGYf7ddP6mfCnYtxyr5edewpMeFsJlRwYh+OfWpujQaHwoCbgq+DAI
JTH2My8cY9CqrUJpNHsIuA+6XCy3xuLGg4HzVw8MQ5Zn4CfZ93G4y2IXUT06
DAO33+WMGsdj/1zGcz53BDati+E46/6C0+YuXLrZKPQY7yAGHvyCxlMmk4qd
o/DQ08Bp2jEBmw0jROyEMVAoXDNoRUvELLHEz9VwHOjNosXwR4lIuTUQSs3j
kN64Sr0tJgkfeKy2sQqbAP/vFuh7fZORL0y6Oag1CXtNbO/YOHDxY8uJaK2n
k5C3Wqmy1TcFB4j6ec2QKaBKjDROEb/ih4499ESNaTB1tVhGPU9F9jWDhqi6
aYjOWuF/y+YK6ggNNIdPyqCx4G0Qoz0N3SSlX9YuyCB3v5+mPDED504VBveW
yOG5YC7IKT8L60+XczUcKCCUzlxqk/HwUXvwkT4nCkQNBcMm73j4h/XWFWUu
FNxTTnxMfuJh6dqifEcvCjim3nWBNAJzu3Or0n0pGHukGfQjncAI5xSpahQF
7FRjd+5BArehD3NpMQUQe2NlXwGBxuV6tK57FDBVzOqrigk0WN/dWvw7BZnx
nXYZpQTqfnF1P1RJgUpZjrJDDYFLauzOceso0OmwIT+1Eyg1tcihdX77G3od
tkKBxN5bsyc7JRSE7/bpMl5CYvfyckN+NwU1WgveqE7iX1NbKvb3UTDv4yaM
1yWx7rcNLQkTFDjDhJixk8Qa7bfpLtMU2NnWFgZZkljFzXXVpyiQSRrL7jBJ
LPFb3dfwngI95X9zjexJLBKJ+LyPFFyc+CeR5UxiwT7e2dOfKXgzI6yr9SQx
v8LRlPGVgjq2zEHVh8TrG9TmFxcpWDkqtjzlR+J/T8hgkQ==
        "]]}}, {
      {RGBColor[0, 0, 1], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.3316211884776062, 550}, {0.4, 550}}]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.4, 550}, {0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.3316211884776062, 550}, {0.3316211884776062, 590}, {
         0.39, 590}, {0.39, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.36581059423880313`, 590}, {0.36581059423880313`, 950}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.41, 550}, {0.41, 590}, {0.7095747292055791, 590}, {
         0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.5547873646027895, 590}, {0.5547873646027895, 950}}]}, 
      InsetBox[
       StyleBox["\<\"L\"\>",
        StripOnInput->False,
        FontSize->16], {0.5547873646027895, 1000}], InsetBox[
       StyleBox["\<\"V\"\>",
        StripOnInput->False,
        FontSize->16], {0.36581059423880313`, 1000}], 
      {PointSize[0.015], PointBox[{0.3316211884776062, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(x\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.3316211884776062, 550}, {-1, 1}], 
      {PointSize[0.015], PointBox[{0.4, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(z\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.415, 550}, {-1, 1}], 
      {PointSize[0.015], PointBox[{0.7095747292055791, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(y\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.7095747292055791, 550}, {-1, 1}]}},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0., 100.},
    DisplayFunction->Identity,
    Epilog->InsetBox[
      GraphicsBox[{
        PointSize[0.05], 
        PointBox[{0, 0}]}], {0.4, 550}],
    Frame->{{True, True}, {True, True}},
    FrameLabel->{{
       FormBox[
        StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
        TraditionalForm], None}, {
       FormBox[
        StyleBox[
        "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
        TraditionalForm], None}},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLines->{None, None},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    ImageSize->500,
    LabelStyle->GrayLevel[0],
    Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
    PlotRange->{{0, 1}, {100, 1400}},
    PlotRangeClipping->True,
    PlotRangePadding->{{0, 0}, {0, 0}},
    Ticks->{Automatic, Automatic}]}, Dynamic[
    CurrentValue["MouseOver"]],
   FrameMargins->0,
   ImageSize->Automatic],
  StripOnInput->False]], "Output",
 CellChangeTimes->{3.6216202377155714`*^9}]
}, {2}]],

Cell[CellGroupData[{

Cell["Concept Test", "Item1Exercise",
 CellChangeTimes->{{3.621620534010519*^9, 3.621620569226533*^9}, {
  3.6216213451659145`*^9, 3.6216213458779545`*^9}}],

Cell[TextData[{
 "Based on the ideal mixture in the above P-x-y diagram, use the lever rule \
to calculate the amount of liquid and vapor present for an overal molar \
composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["z", "1"], "=", "0.6"}], TraditionalForm]]],
 ". Note that the composition of component 1 in the liquid phase at constant \
pressure is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "1"], "=", "0.33"}], TraditionalForm]]],
 " and in the vapor phase, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", "1"], "=", "0.71"}], TraditionalForm]]],
 ". "
}], "Item2Exercise",
 CellChangeTimes->{{3.6213499310153437`*^9, 3.6213501742782574`*^9}, {
  3.621350243440213*^9, 3.621350246436385*^9}, {3.6216235826248894`*^9, 
  3.6216235839119635`*^9}},
 TextAlignment->Left]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Solution",
 FontWeight->"Bold"]], "Subsubsection",
 CellDingbat->"\[LightBulb]",
 CellChangeTimes->{{3.621620710993642*^9, 3.6216207129897556`*^9}, {
  3.621621128774537*^9, 3.6216211299166026`*^9}}],

Cell[TextData[{
 "The fraction of liquid present ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SuperscriptBox["f", "L"], ")"}], TraditionalForm]]],
 " is,\n\n\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["f", "L"], "=", 
    RowBox[{
     FractionBox["L", 
      RowBox[{"L", "+", "V"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{
        SubscriptBox["z", "1"], "-", 
        SubscriptBox["y", "1"]}], 
       RowBox[{
        SubscriptBox["x", "1"], "-", 
        SubscriptBox["y", "1"]}]], "=", 
      RowBox[{
       FractionBox[
        RowBox[{"0.6", "-", "0.71"}], 
        RowBox[{"0.33", "-", "0.71"}]], "=", 
       RowBox[{
       "0.29", "   ", "or", "  ", "29", "%", "   ", "liquid"}]}]}]}]}], 
   TraditionalForm]]],
 "\n\t\nThe fraction of vapor present ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SuperscriptBox["f", "V"], ")"}], TraditionalForm]]],
 " is,\n\n\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["f", "V"], "=", 
    RowBox[{
     FractionBox["V", 
      RowBox[{"L", "+", "V"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{
        SubscriptBox["z", "1"], "-", 
        SubscriptBox["x", "1"]}], 
       RowBox[{
        SubscriptBox["y", "1"], "-", 
        SubscriptBox["x", "1"]}]], "=", 
      RowBox[{
       FractionBox[
        RowBox[{"0.6", "-", "0.33"}], 
        RowBox[{"0.71", "-", "0.33"}]], "=", 
       RowBox[{"0.71", "   ", "or", "  ", "71", "%", "  ", "vapor"}]}]}]}]}], 
   TraditionalForm]]],
 "\n\t\nUse the Demonstration below to see how the amount of liquid and vapos \
present changes with overall compositon."
}], "Item2Exercise",
 CellChangeTimes->{{3.621620710993642*^9, 3.621620720488185*^9}},
 TextAlignment->Left],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "p", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", 
       "x1", ",", "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", 
       ",", "p3"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"p", "=", "550"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "comp", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "comp"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "comp", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "comp", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.05", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"comp", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"comp", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"comp", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"comp", ">", "0.33"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"x1", ",", "p"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x1", ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "-", "0.01"}], ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "-", "0.01"}], ",", "p"}], "}"}]}], "}"}], 
               "]"}]}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "40"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"comp", "<", "0.71"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "+", "0.01"}], ",", "p"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "+", "0.01"}], ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"y1", ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}]}], 
           "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"comp", "+", "y1"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "40"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"comp", "+", "y1"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"leverx", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<liquid\>\""}], 
                 "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
              "16"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", 
              RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"levery", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<vapor\>\""}], 
                 "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
              "16"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
              RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.003425", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"0.05", "+", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}]}], ",", 
                 "400"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", "p"}],
                 "}"}]}], "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
               "\"\<\!\(\*SuperscriptBox[\(f\), \
\(L\)]\)=\!\(\*FractionBox[\(L\), \(L + V\)]\)\>\"", ",", "16"}], "]"}], ",", 
              RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", "300"}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.003425", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "0.05"}], "+", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}]}], ",", 
                 "400"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", "p"}],
                 "}"}]}], "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
               "\"\<\!\(\*SuperscriptBox[\(f\), \
\(V\)]\)=\!\(\*FractionBox[\(V\), \(L + V\)]\)\>\"", ",", "16"}], "]"}], ",", 
              RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", "300"}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "\[IndentingNewLine]",
          "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"p1", ",", "p2", ",", "p3"}], "]"}]}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "comp", ",", "0.6", ",", 
       "\"\<overall molar composition (\!\(\*SubscriptBox[\(z\), \
\(1\)]\))\>\""}], "}"}], ",", "0.33", ",", "0.71", ",", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.6207393522509985`*^9, 3.620739366290802*^9}, {
   3.6207394034719286`*^9, 3.6207394393859825`*^9}, {3.620739498575368*^9, 
   3.620740204602751*^9}, {3.620740242406913*^9, 3.6207402856023836`*^9}, {
   3.6207403227005053`*^9, 3.620740331590014*^9}, {3.6207404687558594`*^9, 
   3.620740594894074*^9}, {3.620740634541342*^9, 3.6207408087183037`*^9}, {
   3.620741027438814*^9, 3.620741159819386*^9}, {3.621347865728216*^9, 
   3.621347875953801*^9}, {3.621347917452174*^9, 3.6213481136133947`*^9}, {
   3.621348147038306*^9, 3.621348166178401*^9}, {3.621348197430188*^9, 
   3.6213482974149075`*^9}, {3.6213483505829477`*^9, 
   3.6213483544671707`*^9}, {3.621349100549844*^9, 3.6213491350258155`*^9}, {
   3.6213492086980295`*^9, 3.621349237664686*^9}, {3.621349276733921*^9, 
   3.6213494327498446`*^9}, {3.6213494647176733`*^9, 3.62134964142678*^9}, {
   3.621349701359208*^9, 3.621349712526847*^9}, 3.621349767317981*^9, {
   3.621350437360305*^9, 3.6213504490859756`*^9}, 3.6213506948350315`*^9, {
   3.6213507657620883`*^9, 3.6213507725284758`*^9}, {3.6213528588628073`*^9, 
   3.6213528774888725`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = 0.6, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`comp$$], 0.6, 
       "overall molar composition (\!\(\*SubscriptBox[\(z\), \(1\)]\))"}, 
      0.33, 0.71, 0.01}}, Typeset`size$$ = {500., {159., 163.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`comp$4751$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = 0.6}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$4751$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`p$, $CellContext`Psat1$, \
$CellContext`Psat2$, $CellContext`Px$, $CellContext`Py$, $CellContext`x1$, \
$CellContext`y1$, $CellContext`leverx$, $CellContext`levery$, \
$CellContext`p1$, $CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`p$ = 550; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           
           FindRoot[$CellContext`p$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < $CellContext`comp$$ < $CellContext`y1$, \
($CellContext`y1$ - $CellContext`comp$$)/($CellContext`y1$ - \
$CellContext`x1$), $CellContext`Px$[$CellContext`comp$$] <= $CellContext`p$, 
           1, $CellContext`Py$[$CellContext`comp$$] >= $CellContext`p$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 500, Epilog -> Inset[
             Graphics[{
               PointSize[0.05], 
               
               Point[{0, 
                0}]}], {$CellContext`comp$$, $CellContext`p$}]]; \
$CellContext`p2$ = Graphics[{{Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$}, {$CellContext`comp$$, \
$CellContext`p$}}]}, {Thick, Dashed, Green, 
             
             Line[{{$CellContext`comp$$, $CellContext`p$}, {$CellContext`y1$, \
$CellContext`p$}}]}, 
            If[$CellContext`comp$$ > 0.33, {
              Thickness[0.0045], 
              
              Line[{{$CellContext`x1$, $CellContext`p$}, {$CellContext`x1$, \
$CellContext`p$ + 40}, {$CellContext`comp$$ - 0.01, $CellContext`p$ + 
                 40}, {$CellContext`comp$$ - 0.01, $CellContext`p$}}]}], {
             Thickness[0.0045], 
             
             Line[{{($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$ + 
                40}, {($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$ + 400}}]}, 
            If[$CellContext`comp$$ < 0.71, {
              Thickness[0.0045], 
              
              Line[{{$CellContext`comp$$ + 
                 0.01, $CellContext`p$}, {$CellContext`comp$$ + 
                 0.01, $CellContext`p$ + 
                 40}, {$CellContext`y1$, $CellContext`p$ + 
                 40}, {$CellContext`y1$, $CellContext`p$}}]}], {
             Thickness[0.0045], 
             
             Line[{{($CellContext`comp$$ + $CellContext`y1$)/
                2, $CellContext`p$ + 
                40}, {($CellContext`comp$$ + $CellContext`y1$)/
                2, $CellContext`p$ + 400}}]}, 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[$CellContext`leverx$ 100, 2], "%"}], "liquid"}, 
               Alignment -> Center], 
              16], {($CellContext`y1$ + $CellContext`comp$$)/
              2, $CellContext`p$ + 500}], 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[$CellContext`levery$ 100, 2], "%"}], "vapor"}, 
               Alignment -> Center], 
              16], {($CellContext`x1$ + $CellContext`comp$$)/
              2, $CellContext`p$ + 500}]}]; $CellContext`p3$ = Graphics[{{
             Thickness[0.003425], 
             
             Line[{{0.05 + ($CellContext`y1$ + $CellContext`comp$$)/2, 
                400}, {($CellContext`y1$ + $CellContext`comp$$)/
                2, $CellContext`p$}}]}, 
            Text[
             Framed[
              Style[
              "\!\(\*SuperscriptBox[\(f\), \(L\)]\)=\!\(\*FractionBox[\(L\), \
\(L + V\)]\)", 16], Background -> 
              White], {($CellContext`y1$ + $CellContext`comp$$)/2, 300}, {-1, 
             0}], {
             Thickness[0.003425], 
             
             Line[{{-0.05 + ($CellContext`x1$ + $CellContext`comp$$)/2, 
                400}, {($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$}}]}, 
            Text[
             Framed[
              Style[
              "\!\(\*SuperscriptBox[\(f\), \(V\)]\)=\!\(\*FractionBox[\(V\), \
\(L + V\)]\)", 16], Background -> 
              White], {($CellContext`x1$ + $CellContext`comp$$)/2, 300}, {1, 
             0}]}]; Show[$CellContext`p1$, $CellContext`p2$, \
$CellContext`p3$]], 
      "Specifications" :> {{{$CellContext`comp$$, 0.6, 
          "overall molar composition (\!\(\*SubscriptBox[\(z\), \(1\)]\))"}, 
         0.33, 0.71, 0.01, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{549., {204., 211.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6216209164683943`*^9}]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Changes in Pressure", "Section",
 CellChangeTimes->{{3.6216202898625546`*^9, 3.6216202945338216`*^9}}],

Cell[TextData[{
 "For an ideal mixture at a constant overall composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["z", "1"], "=", "0.5"}], ")"}], TraditionalForm]]],
 ", see how varying the pressure affects the amount of liquid and vapor \
present, and the composiaions in each phase."
}], "Text",
 CellChangeTimes->{{3.621353412741487*^9, 3.6213534440312767`*^9}, {
  3.621353474753034*^9, 3.62135352450688*^9}}],

Cell[CellGroupData[{

Cell["Effect on Liquid and Vapor Amounts (Lever Rule)", "Subsection",
 CellChangeTimes->{{3.621620368853072*^9, 3.621620384527969*^9}}],

Cell["\<\
As pressure increases at constant composition, the binary mixture is \
compressed and thus goes from the vapor phase to liquid phase. \
\>", "Text",
 CellChangeTimes->{
  3.62135480675222*^9, {3.6213564667871685`*^9, 3.62135647554867*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", "x1", ",", 
       "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", ",", "p3"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "0.5", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "0.5"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "0.5", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "0.5", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "450"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.09", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"BarChart", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"leverx", ",", "levery"}], "}"}], ",", 
         RowBox[{"ChartStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", "Green"}], "}"}]}], ",", 
         RowBox[{"ChartLayout", "\[Rule]", "\"\<Stacked\>\""}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"100", ",", "290"}], "}"}]}], ",", 
         RowBox[{"ChartLabels", "\[Rule]", 
          RowBox[{"Placed", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "leverx"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % L\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "levery"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % V\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}]}], "}"}], 
            ",", "Center"}], "]"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"leverx", "\[Equal]", "1"}], "\[Or]", 
            RowBox[{"levery", "\[Equal]", "1"}]}], ",", 
           RowBox[{"Text", "[", "\"\<\>\"", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"x1", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
             "}"}]}], "]"}], "\[IndentingNewLine]", "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Row", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{"p1", ",", "p3"}], "]"}], ",", 
         RowBox[{"Show", "[", "p2", "]"}]}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "530", ",", "\"\<pressure (mm Hg)\>\""}], "}"}], ",", 
     "200", ",", "1000", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{
  3.6206644563708277`*^9, {3.620664506260681*^9, 3.6206645069327197`*^9}, {
   3.620665610917864*^9, 3.6206656332481413`*^9}, {3.6206656902254004`*^9, 
   3.62066578060657*^9}, {3.6206661031000156`*^9, 3.620666158649193*^9}, {
   3.620666225127995*^9, 3.620666263433186*^9}, {3.6206666897195683`*^9, 
   3.620666781587823*^9}, {3.6206670710043764`*^9, 3.6206671944724383`*^9}, {
   3.6206672346407356`*^9, 3.6206673139402714`*^9}, {3.6206673516014256`*^9, 
   3.620667391501708*^9}, {3.620740322724507*^9, 3.6207403316020145`*^9}, {
   3.6207403869011774`*^9, 3.620740399026871*^9}, {3.621030104187394*^9, 
   3.6210302631624866`*^9}, 3.6210303059469337`*^9, {3.6213539577016573`*^9, 
   3.62135405339513*^9}, {3.6213540870380545`*^9, 3.6213542115741777`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = 530, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], 530, "pressure (mm Hg)"}, 200, 1000, 5}}, 
    Typeset`size$$ = {550., {143., 148.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`p$2286$$ =
     0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`p$$ = 530}, 
      "ControllerVariables" :> {
        Hold[$CellContext`p$$, $CellContext`p$2286$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat1$, $CellContext`Psat2$, \
$CellContext`Px$, $CellContext`Py$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`leverx$, $CellContext`levery$, $CellContext`p1$, \
$CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           FindRoot[$CellContext`p$$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < 
           0.5 < $CellContext`y1$, ($CellContext`y1$ - 
            0.5)/($CellContext`y1$ - $CellContext`x1$), $CellContext`Px$[
            0.5] <= $CellContext`p$$, 
           1, $CellContext`Py$[0.5] >= $CellContext`p$$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 450, Epilog -> Inset[
             Graphics[{
               PointSize[0.09], 
               Point[{0, 0}]}], {0.5, $CellContext`p$$}]]; $CellContext`p2$ = 
         BarChart[{$CellContext`leverx$, $CellContext`levery$}, 
           ChartStyle -> {Blue, Green}, ChartLayout -> "Stacked", AspectRatio -> 
           Full, ImageSize -> {100, 290}, ChartLabels -> Placed[{
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`leverx$, {3, 0}], " % L"}], 15, 
                Bold], Background -> White], 
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`levery$, {3, 0}], " % V"}], 15, 
                Bold], Background -> White]}, Center]]; $CellContext`p3$ = 
         Graphics[{
            If[
             Or[$CellContext`leverx$ == 1, $CellContext`levery$ == 1], 
             Text[""], {{Thick, Dashed, Blue, 
               
               Line[{{$CellContext`x1$, $CellContext`p$$}, {
                 0.5, $CellContext`p$$}}]}, {Thick, Dashed, Green, 
               
               Line[{{0.5, $CellContext`p$$}, {$CellContext`y1$, \
$CellContext`p$$}}]}}]}]; Row[{
           Show[$CellContext`p1$, $CellContext`p3$], 
           Show[$CellContext`p2$]}]], 
      "Specifications" :> {{{$CellContext`p$$, 530, "pressure (mm Hg)"}, 200, 
         1000, 5, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{599., {188., 195.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6216204079483085`*^9}]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Effect on Molar Composition in the Liquid and Vapor Phases", \
"Subsection",
 CellChangeTimes->{{3.621620426847389*^9, 3.6216204385530586`*^9}}],

Cell[CellGroupData[{

Cell["Concept Test", "Item1Exercise",
 CellChangeTimes->{{3.6216213291259966`*^9, 3.6216213425797663`*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 "A piston-cylinder system contains components A and B in vapor-liquid \
equilibrium (VLE). Assume the solution and gas are ideal, with ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "A"], "=", "0.25"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", "A"], "=", "0.5"}], TraditionalForm]]],
 ". A small weight is added to the piston, while temperature is help \
constant. What happens to the system as pressure increases?"
}], "Item2Exercise",
 CellChangeTimes->{{3.6213573412081823`*^9, 3.621357523045583*^9}, {
  3.621623667271731*^9, 3.6216236672767315`*^9}},
 TextAlignment->Left],

Cell[TextData[{
 "A. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " increases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " decreases\nB. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " increases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increases\nC. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " decreases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " decreases\nD. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " decreases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increases"
}], "Item2Exercise",
 CellChangeTimes->{{3.6213573412081823`*^9, 3.621357523045583*^9}, {
  3.621623667271731*^9, 3.6216236684357977`*^9}},
 TextAlignment->Left]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "@", 
  RowBox[{"Graphics3D", "[", 
   RowBox[{
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Opacity", "[", "0.3", "]"}], ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "2"}], "}"}]}], "}"}], ",", "0.75"}],
          "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"Gray", ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "1.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "1.75"}], "}"}]}], "}"}], ",", 
          "0.75"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Lighter", "[", 
         RowBox[{"Blue", ",", "0.6"}], "]"}], ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0.55"}], "}"}]}], "}"}], ",", 
          "0.75"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"FaceForm", "[", "Black", "]"}], ",", 
        RowBox[{"Cuboid", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "0.25"}], ",", "0", ",", "2.25"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.25", ",", "0", ",", "2.65"}], "}"}]}], "]"}]}], "}"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Thickness", "[", "0.02", "]"}], ",", 
        RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
        RowBox[{"Arrow", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "2.25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "1.85"}], "}"}]}], "}"}], "]"}]}], 
       "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<vapor\>\"", ",", 
              "\"\<\!\(\*SubscriptBox[\(y\), \(A\)]\) = 0.5\>\""}], "}"}], 
            ",", 
            RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", "18"}], 
         "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "1."}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<liquid\>\"", ",", 
              "\"\<\!\(\*SubscriptBox[\(x\), \(A\)]\) = 0.25\>\""}], "}"}], 
            ",", 
            RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", "18"}], 
         "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0.15"}], "}"}]}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], ",", 
    RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
    RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
    RowBox[{"Lighting", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"\"\<Ambient\>\"", ",", "LightGray"}], "}"}], "}"}]}], ",", 
    RowBox[{"ImageSize", "\[Rule]", "150"}]}], "]"}]}]], "Input"],

Cell[BoxData[
 FrameBox[
  Graphics3DBox[{
    {Opacity[0.3], CylinderBox[{{0, 0, 0}, {0, 0, 2}}, 0.75]}, 
    {GrayLevel[0.5], CylinderBox[{{0, 0, 1.5}, {0, 0, 1.75}}, 0.75]}, 
    {RGBColor[0.6, 0.6, 1.], CylinderBox[{{0, 0, 0}, {0, 0, 0.55}}, 0.75]}, 
    {FaceForm[GrayLevel[0]], CuboidBox[{-0.25, 0, 2.25}, {0.25, 0, 2.65}]}, 
    {Thickness[0.02], Arrowheads[0.05], 
     Arrow3DBox[{{0, 0, 2.25}, {0, 0, 1.85}}]}, Text3DBox[
     StyleBox[
      TagBox[GridBox[{
         {"\<\"vapor\"\>"},
         {"\<\"\\!\\(\\*SubscriptBox[\\(y\\), \\(A\\)]\\) = 0.5\"\>"}
        },
        DefaultBaseStyle->"Column",
        GridBoxAlignment->{"Columns" -> {{Center}}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
       "Column"],
      StripOnInput->False,
      FontSize->18], {0, 0, 1.}], Text3DBox[
     StyleBox[
      TagBox[GridBox[{
         {"\<\"liquid\"\>"},
         {"\<\"\\!\\(\\*SubscriptBox[\\(x\\), \\(A\\)]\\) = 0.25\"\>"}
        },
        DefaultBaseStyle->"Column",
        GridBoxAlignment->{"Columns" -> {{Center}}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
       "Column"],
      StripOnInput->False,
      FontSize->18], {0, 0, 0.15}]},
   Boxed->False,
   ImageSize->150,
   Lighting->{{"Ambient", 
      GrayLevel[0.85]}},
   ViewPoint->{0., -2., 0.},
   ViewVertical->{0., 0., 1.}],
  StripOnInput->False]], "Output",
 CellChangeTimes->{3.6216237200197477`*^9}]
}, {2}]],

Cell[CellGroupData[{

Cell["Solution", "Subsubsection",
 CellDingbat->"\[LightBulb]",
 CellChangeTimes->{{3.6216249444317803`*^9, 3.6216249460408726`*^9}}],

Cell[TextData[{
 "B. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increase. For a complete solution, view this ",
 ButtonBox["Screencast.",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=AtwjIoO8ykk"], None},
  ButtonNote->"https://www.youtube.com/watch?v=AtwjIoO8ykk"]
}], "Item2Exercise",
 CellChangeTimes->{3.6216250362910347`*^9},
 TextAlignment->Left],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", "x1", ",", 
       "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", ",", "p3"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "0.5", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "0.5"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "0.5", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "0.5", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.055", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Blue", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", "530"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Green", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.5", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "530"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Blue", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "100"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Green", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "100"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Gray", ",", 
            RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
            RowBox[{"Point", "[", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "530"}], "}"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.5", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x1", ",", "100"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "100"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"p", "\[Equal]", "530"}], ",", 
            RowBox[{"Text", "@", "\"\<\>\""}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Thick", ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0.310296", ",", "150"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x1", ",", "150"}], "}"}]}], "}"}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Thick", ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0.688999", ",", "150"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"y1", ",", "150"}], "}"}]}], "}"}], "]"}]}], 
               "}"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"p1", ",", "p3"}], "]"}]}]}], "\[IndentingNewLine]", "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "600", ",", "\"\<pressure (mm Hg)\>\""}], "}"}], ",", 
     "400", ",", "705", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.6210982563531265`*^9, 3.6210982944443054`*^9}, {
   3.6210984526653547`*^9, 3.6210985660178385`*^9}, {3.621098624043157*^9, 
   3.621098645442381*^9}, {3.621098693990158*^9, 3.6210987118541794`*^9}, {
   3.6210987461561413`*^9, 3.6210987667643204`*^9}, {3.6210987991241713`*^9, 
   3.621098877851674*^9}, {3.621098919623063*^9, 3.621099121540612*^9}, 
   3.621099158838746*^9, {3.6210992601485405`*^9, 3.621099434016485*^9}, {
   3.621281916120079*^9, 3.6212819203573213`*^9}, {3.6216250655967107`*^9, 
   3.621625067561823*^9}, {3.621625351930088*^9, 3.621625352625128*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = 600, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], 600, "pressure (mm Hg)"}, 400, 705, 5}}, 
    Typeset`size$$ = {500., {159., 163.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`p$9335$$ =
     0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`p$$ = 600}, 
      "ControllerVariables" :> {
        Hold[$CellContext`p$$, $CellContext`p$9335$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat1$, $CellContext`Psat2$, \
$CellContext`Px$, $CellContext`Py$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`leverx$, $CellContext`levery$, $CellContext`p1$, \
$CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           FindRoot[$CellContext`p$$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < 
           0.5 < $CellContext`y1$, ($CellContext`y1$ - 
            0.5)/($CellContext`y1$ - $CellContext`x1$), $CellContext`Px$[
            0.5] <= $CellContext`p$$, 
           1, $CellContext`Py$[0.5] >= $CellContext`p$$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 500, Epilog -> Inset[
             Graphics[{
               PointSize[0.055], 
               Point[{0, 0}]}], {0.5, $CellContext`p$$}]]; $CellContext`p3$ = 
         Graphics[{{Thick, Dashed, 
             Blend[{Blue, Gray}, 0.65], 
             Line[{{0.310296, 530}, {0.5, 530}}]}, {Thick, Dashed, 
             Blend[{Green, Gray}, 0.65], 
             Line[{{0.5, 530}, {0.688999, 530}}]}, {Thick, Dashed, 
             Blend[{Blue, Gray}, 0.65], 
             Line[{{0.310296, 530}, {0.310296, 100}}]}, {Thick, Dashed, 
             Blend[{Green, Gray}, 0.65], 
             Line[{{0.688999, 530}, {0.688999, 100}}]}, {Gray, 
             PointSize[0.02], 
             Point[{0.5, 530}]}, {Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$$}, {
               0.5, $CellContext`p$$}}]}, {Thick, Dashed, Green, 
             
             Line[{{0.5, $CellContext`p$$}, {$CellContext`y1$, \
$CellContext`p$$}}]}, {Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$$}, {$CellContext`x1$, 
                100}}]}, {Thick, Dashed, Green, 
             
             Line[{{$CellContext`y1$, $CellContext`p$$}, {$CellContext`y1$, 
                100}}]}, 
            If[$CellContext`p$$ == 530, 
             Text[""], {{Thick, 
               Arrow[{{0.310296, 150}, {$CellContext`x1$, 150}}]}, {Thick, 
               Arrow[{{0.688999, 150}, {$CellContext`y1$, 150}}]}}]}]; 
        Show[$CellContext`p1$, $CellContext`p3$]], 
      "Specifications" :> {{{$CellContext`p$$, 600, "pressure (mm Hg)"}, 400, 
         705, 5, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{549., {204., 211.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6216250702979794`*^9, 3.621625353841197*^9}]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
WindowMargins->{{-8, Automatic}, {Automatic, -8}},
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (September 9, 2014)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "NB.nb"]], 
   Cell[
    StyleData["EquationNumbered"], FontFamily -> "Arial", FontSize -> 16, 
    FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Subsection"], TextJustification -> 0.25, FontFamily -> "Arial",
     FontSize -> 17, FontWeight -> "Bold", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item1Exercise"], FontFamily -> "Arial", FontSize -> 16, 
    FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Solution"], FontFamily -> "Arial", FontSize -> 14, FontWeight -> 
    "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Subsubsubsection"], TextJustification -> 0.], 
   Cell[
    StyleData["Subsubsection"], TextAlignment -> Left], 
   Cell[
    StyleData["Item2Exercise"], CellDingbat -> None, TextAlignment -> -0.5, 
    FontFamily -> "Arial Narrow", FontSize -> 16, FontWeight -> "Plain", 
    FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item2Exercise"], FontFamily -> "Arial Narrow", FontSize -> 16, 
    FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item2Exercise"], TextAlignment -> Left, FontFamily -> 
    "Arial Narrow", FontSize -> 16, FontWeight -> "Plain", FontSlant -> 
    "Plain", FontVariations -> {
     "StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item2Exercise"], TextAlignment -> Left, FontFamily -> "Arial", 
    FontSize -> 16, FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}]}, 
  WindowSize -> {628, 566}, 
  WindowMargins -> {{2, Automatic}, {Automatic, 28}}, Visible -> False, 
  FrontEndVersion -> 
  "10.0 for Microsoft Windows (64-bit) (September 9, 2014)", StyleDefinitions -> 
  "PrivateStylesheetFormatting.nb"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "Lever Rule"->{
  Cell[34616, 848, 122, 2, 59, "Section",
   CellTags->"Lever Rule"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"Lever Rule", 136646, 3396}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 133, 1, 130, "BookChapterTitle"],
Cell[CellGroupData[{
Cell[1644, 40, 118, 1, 59, "Section"],
Cell[1765, 43, 434, 11, 26, "Text"],
Cell[2202, 56, 308, 6, 26, "Text"],
Cell[2513, 64, 426, 13, 38, "Equation"],
Cell[2942, 79, 426, 13, 70, "Equation"],
Cell[CellGroupData[{
Cell[3393, 96, 265, 4, 37, "Subsection"],
Cell[3661, 102, 149, 1, 26, "Text"],
Cell[3813, 105, 411, 12, 38, "EquationNumbered"],
Cell[4227, 119, 230, 7, 26, "Text"],
Cell[4460, 128, 464, 14, 38, "EquationNumbered"],
Cell[4927, 144, 368, 12, 57, "Text"],
Cell[5298, 158, 371, 10, 54, "EquationNumbered"],
Cell[5672, 170, 233, 5, 47, "Text"],
Cell[5908, 177, 910, 32, 84, "Text"],
Cell[6821, 211, 516, 16, 58, "EquationNumbered"],
Cell[7340, 229, 157, 3, 26, "Text"],
Cell[7500, 234, 357, 11, 26, "Text"],
Cell[7860, 247, 505, 16, 61, "EquationNumbered"],
Cell[8368, 265, 254, 5, 47, "Text"],
Cell[8625, 272, 462, 14, 70, "EquationNumbered"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[9136, 292, 112, 1, 59, "Section"],
Cell[9251, 295, 855, 16, 68, "Text"],
Cell[CellGroupData[{
Cell[10131, 315, 5942, 147, 437, "Input"],
Cell[16076, 464, 18494, 378, 380, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34616, 848, 122, 2, 59, "Section",
 CellTags->"Lever Rule"],
Cell[34741, 852, 732, 14, 68, "Text"],
Cell[35476, 868, 529, 15, 54, "Equation"],
Cell[36008, 885, 477, 14, 54, "Equation"],
Cell[CellGroupData[{
Cell[36510, 903, 17472, 461, 1298, "Input"],
Cell[53985, 1366, 13181, 275, 349, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[67200, 1646, 156, 2, 23, "Item1Exercise"],
Cell[67359, 1650, 829, 24, 44, "Item2Exercise"]
}, Open  ]],
Cell[CellGroupData[{
Cell[68225, 1679, 223, 4, 25, "Subsubsection"],
Cell[68451, 1685, 1737, 60, 213, "Item2Exercise"],
Cell[CellGroupData[{
Cell[70213, 1749, 15898, 400, 1238, "Input"],
Cell[86114, 2151, 7379, 153, 432, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[93551, 2311, 108, 1, 59, "Section"],
Cell[93662, 2314, 449, 11, 28, "Text"],
Cell[CellGroupData[{
Cell[94136, 2329, 135, 1, 37, "Subsection"],
Cell[94274, 2332, 249, 5, 26, "Text"],
Cell[CellGroupData[{
Cell[94548, 2341, 9761, 241, 894, "Input"],
Cell[104312, 2584, 5048, 100, 400, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[109406, 2690, 150, 2, 37, "Subsection"],
Cell[CellGroupData[{
Cell[109581, 2696, 107, 1, 23, "Item1Exercise"],
Cell[CellGroupData[{
Cell[109713, 2701, 659, 17, 44, "Item2Exercise"],
Cell[110375, 2720, 911, 37, 86, "Item2Exercise"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[111335, 2763, 3700, 103, 252, "Input"],
Cell[115038, 2868, 1487, 40, 291, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[116559, 2913, 133, 2, 25, "Subsubsection"],
Cell[116695, 2917, 509, 17, 23, "Item2Exercise"],
Cell[CellGroupData[{
Cell[117229, 2938, 11546, 291, 874, "Input"],
Cell[128778, 3231, 5292, 103, 432, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Ixpqam5sAWeH3AKPxsFOan8p *)
