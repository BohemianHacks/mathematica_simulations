(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     69433,       1571]
NotebookOptionsPosition[     63606,       1451]
NotebookOutlinePosition[     65752,       1506]
CellTagsIndexPosition[     65424,       1494]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Lever Rule Applied to the Benzene-Toluene Vapor Pressure Diagram\
\>", "DemoTitle",ExpressionUUID->"242bbd53-0723-472a-871a-bb183e8478e5"],

Cell["", "InitializationSection",ExpressionUUID->"81dcabc5-8742-471c-bf4b-17c2df8fdcbc"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"6cff0793-1138-41df-b4f7-af7fd3da869f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "z", ",", "P", ",", "pstarA", ",", "pstarB", ",", "pTotalLiquid", ",", 
       "pTotalVapor", ",", "xA", ",", "yA", ",", "lever", ",", "colL", ",", 
       "colV", ",", "plot", ",", "barchart"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"z", "=", 
       RowBox[{"point", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ";", 
      RowBox[{"P", "=", 
       RowBox[{"point", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"pstarA", "=", "9.9"}], ";", 
      RowBox[{"(*", " ", 
       RowBox[{
       "vp", " ", "in", " ", "kPa", " ", "of", " ", "benzene", " ", "at", " ",
         "20", "\:02daC"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"pstarB", "=", "2.9"}], ";", "  ", 
      RowBox[{"(*", " ", 
       RowBox[{
       "vp", " ", "in", " ", "kPa", " ", "of", " ", "toluene", " ", "at", " ",
         "20", "\:02daC"}], " ", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"pTotalLiquid", "[", "x_", "]"}], ":=", 
       RowBox[{"pstarB", "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"pstarA", "-", "pstarB"}], ")"}], "*", "x"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"pTotalVapor", "[", "y_", " ", "]"}], ":=", 
       FractionBox[
        RowBox[{"(", 
         RowBox[{"pstarA", " ", "*", "pstarB"}], ")"}], 
        RowBox[{"(", 
         RowBox[{"pstarA", " ", "+", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"pstarB", "-", "pstarA"}], ")"}], "*", "y"}]}], ")"}]]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"xA", "=", 
       RowBox[{"N", "[", " ", 
        FractionBox[
         RowBox[{
          RowBox[{"-", "pstarB"}], "+", "P"}], 
         RowBox[{"pstarA", "-", "pstarB"}]], " ", "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"yA", "=", 
       RowBox[{"N", "[", " ", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "pstarA"}], " ", "pstarB"}], "+", 
          RowBox[{"pstarA", "*", "P"}]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"pstarA", "-", "pstarB"}], ")"}], "*", "P"}]], " ", 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"lever", "=", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{"P", "<", 
          RowBox[{"pTotalVapor", "[", "z", "]"}]}], ",", "0", ",", 
         RowBox[{"P", ">", 
          RowBox[{"pTotalLiquid", "[", "z", "]"}]}], ",", "1", ",", 
         RowBox[{
          RowBox[{"pTotalVapor", "[", "z", "]"}], "\[LessEqual]", "P", 
          "\[LessEqual]", 
          RowBox[{"pTotalLiquid", "[", "z", "]"}]}], ",", 
         FractionBox[
          RowBox[{"yA", "-", "z"}], 
          RowBox[{"yA", "-", "xA"}]]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"colL", "=", "Blue"}], ";", 
      RowBox[{"colV", "=", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"plot", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pTotalLiquid", "[", "x", "]"}], ",", 
           RowBox[{"pTotalVapor", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "colL"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "colV"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2.5", ",", "10"}], "}"}]}], "}"}]}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
           "\"\<mole fraction benzene\>\"", ",", "\"\<pressure (kPa)\>\""}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"450", ",", "400"}], "}"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", 
            RowBox[{"PointSize", "@", "0.027"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"xA", "\[LessEqual]", "z", "\[LessEqual]", "yA"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{"point", ",", 
                   RowBox[{"{", 
                    RowBox[{"yA", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"xA", ",", "P"}], "}"}]}], ",", 
                "\[IndentingNewLine]", "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{"point", ",", 
                   RowBox[{"{", 
                    RowBox[{"xA", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"yA", ",", "P"}], "}"}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Thickness", "@", "0.008"}], ",", "Dotted", ",", 
                "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xA", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xA", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                "\[IndentingNewLine]", "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"yA", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"yA", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                "\[IndentingNewLine]", "Black", ",", 
                RowBox[{"Point", "@", "point"}]}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Thickness", "@", "0.008"}], ",", "Dotted", ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"P", ">", 
                   RowBox[{"pTotalLiquid", "[", "z", "]"}]}], ",", "colL", 
                  ",", "colV"}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{"point", ",", 
                   RowBox[{"{", 
                    RowBox[{"z", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Point", "@", "point"}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<liquid\>\"", ",", "17", ",", 
                RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.2", ",", "9"}], "}"}]}], "]"}], ",", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<vapor\>\"", ",", "17", ",", 
                RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.8", ",", "3"}], "}"}]}], "]"}]}], 
           "\[IndentingNewLine]", "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"barchart", "=", 
       RowBox[{"BarChart", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"lever", ",", 
           RowBox[{"1", "-", "lever"}]}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0.5", ",", "1.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
         RowBox[{"ChartStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"colL", ",", "colV"}], "}"}]}], ",", 
         RowBox[{"ChartLayout", "\[Rule]", "\"\<Stacked\>\""}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<\>\"", ",", "\"\<liquid and vapor amounts \>\""}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"150", ",", "400"}], "}"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"lever", ">", "0"}], ",", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"P", ">", 
                    RowBox[{"pTotalLiquid", "[", "z", "]"}]}], ",", "z", ",", 
                    "xA"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                  "17", ",", "White"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", 
                  RowBox[{"0.5", "*", "lever"}]}], "}"}]}], "]"}]}], "]"}], 
            ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"1", "-", "lever"}], ">", "0"}], ",", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<y\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"P", "<", 
                    RowBox[{"pTotalVapor", "[", "z", "]"}]}], ",", "z", ",", 
                    "yA"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                  "17", ",", "White"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", 
                  RowBox[{"lever", "+", 
                   RowBox[{"0.5", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "lever"}], ")"}]}]}]}], "}"}]}], 
               "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "@", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{"plot", ",", "barchart"}], "}"}], "}"}]}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"point", ",", 
        RowBox[{"{", 
         RowBox[{"0.5", ",", "5"}], "}"}]}], "}"}], ",", "Locator", ",", 
      RowBox[{"Appearance", "\[Rule]", "None"}]}], "}"}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",ExpressionUUID->"32540fe0-8835-4f86-\
844c-a87b72b71efb"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`point$$ = {0.5, 5}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`point$$], {0.5, 5}}, Automatic}}, Typeset`size$$ = {
    608., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`point$$ = {0.5, 5}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`z$, $CellContext`P$, $CellContext`pstarA$, \
$CellContext`pstarB$, $CellContext`pTotalLiquid$, $CellContext`pTotalVapor$, \
$CellContext`xA$, $CellContext`yA$, $CellContext`lever$, $CellContext`colL$, \
$CellContext`colV$, $CellContext`plot$, $CellContext`barchart$}, \
$CellContext`z$ = Part[$CellContext`point$$, 1]; $CellContext`P$ = 
         Part[$CellContext`point$$, 2]; $CellContext`pstarA$ = 
         9.9; $CellContext`pstarB$ = 2.9; $CellContext`pTotalLiquid$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pstarB$ + ($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`x$; $CellContext`pTotalVapor$[
           Pattern[$CellContext`y$, 
            
            Blank[]]] := $CellContext`pstarA$ \
($CellContext`pstarB$/($CellContext`pstarA$ + ($CellContext`pstarB$ - \
$CellContext`pstarA$) $CellContext`y$)); $CellContext`xA$ = 
         N[(-$CellContext`pstarB$ + $CellContext`P$)/($CellContext`pstarA$ - \
$CellContext`pstarB$)]; $CellContext`yA$ = 
         N[((-$CellContext`pstarA$) $CellContext`pstarB$ + \
$CellContext`pstarA$ $CellContext`P$)/(($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`P$)]; $CellContext`lever$ = 
         Which[$CellContext`P$ < $CellContext`pTotalVapor$[$CellContext`z$], 
           0, $CellContext`P$ > $CellContext`pTotalLiquid$[$CellContext`z$], 
           1, $CellContext`pTotalVapor$[$CellContext`z$] <= $CellContext`P$ <= \
$CellContext`pTotalLiquid$[$CellContext`z$], ($CellContext`yA$ - \
$CellContext`z$)/($CellContext`yA$ - $CellContext`xA$)]; $CellContext`colL$ = 
         Blue; $CellContext`colV$ = RGBColor[0, 0.6, 0]; $CellContext`plot$ = 
         Plot[{
            $CellContext`pTotalLiquid$[$CellContext`x], 
            $CellContext`pTotalVapor$[$CellContext`x]}, {$CellContext`x, 0, 
            1}, PlotStyle -> {{Thick, $CellContext`colL$}, {
             Thick, $CellContext`colV$}}, PlotRange -> {{0, 1}, {2.5, 10}}, 
           Frame -> True, 
           FrameLabel -> {"mole fraction benzene", "pressure (kPa)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {450, 400}, AspectRatio -> 
           Full, Epilog -> {Thick, 
             PointSize[0.027], 
             
             If[$CellContext`xA$ <= $CellContext`z$ <= $CellContext`yA$, {
              Dashed, $CellContext`colL$, 
               
               Line[{$CellContext`point$$, {$CellContext`yA$, \
$CellContext`P$}}], 
               Point[{$CellContext`xA$, $CellContext`P$}], $CellContext`colV$, 
               
               Line[{$CellContext`point$$, {$CellContext`xA$, \
$CellContext`P$}}], 
               Point[{$CellContext`yA$, $CellContext`P$}], 
               Thickness[0.008], Dotted, $CellContext`colL$, 
               
               Line[{{$CellContext`xA$, $CellContext`P$}, {$CellContext`xA$, 
                  0}}], $CellContext`colV$, 
               
               Line[{{$CellContext`yA$, $CellContext`P$}, {$CellContext`yA$, 
                  0}}], Black, 
               Point[$CellContext`point$$]}, {
               Thickness[0.008], Dotted, 
               
               If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`colL$, \
$CellContext`colV$], 
               Line[{$CellContext`point$$, {$CellContext`z$, 0}}], 
               Point[$CellContext`point$$]}], 
             Text[
              Style["liquid", 17, 
               GrayLevel[0.4]], {0.2, 9}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.4]], {0.8, 3}]}]; $CellContext`barchart$ = 
         BarChart[{$CellContext`lever$, 1 - $CellContext`lever$}, 
           PlotRange -> {{0.5, 1.5}, {0, 1}}, PlotRangePadding -> None, 
           ChartStyle -> {$CellContext`colL$, $CellContext`colV$}, 
           ChartLayout -> "Stacked", Frame -> True, 
           FrameLabel -> {"", "liquid and vapor amounts "}, 
           LabelStyle -> {17, Black}, ImageSize -> {150, 400}, AspectRatio -> 
           Full, Epilog -> {
             If[$CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["x", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`z$, \
$CellContext`xA$], {2, 2}]}], 17, White], {1, 0.5 $CellContext`lever$}]], 
             If[1 - $CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["y", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ < \
$CellContext`pTotalVapor$[$CellContext`z$], $CellContext`z$, \
$CellContext`yA$], {2, 2}]}], 17, White], {
               1, $CellContext`lever$ + 0.5 (1 - $CellContext`lever$)}]]}]; 
        Grid[{{$CellContext`plot$, $CellContext`barchart$}}]], 
      "Specifications" :> {{{$CellContext`point$$, {0.5, 5}}, Automatic, 
         ControlType -> Locator, Appearance -> None}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {230., 236.}},
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
 CellID->115701162,ExpressionUUID->"b3c9f1e5-8773-4369-a41d-949431b138d8"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"510671a2-f6cf-4994-9fa0-2f05a3b01146"],

Cell["\<\
A vapor pressure diagram shows the regions of phase stability for a \
two-component mixture as a function of pressure and composition at a fixed \
temperature. Since benzene and toluene form a nearly ideal solution, the \
vapor pressure diagram for this mixture can be calculated from the vapor \
pressures of the two pure substances at a given temperature. When the \
pressure and composition of the mixture are at a point inside the region \
bounded by the blue and green lines, both phases can coexist. At all other \
combinations of pressure and composition, only one phase, either liquid or \
vapor, is stable. In the vapor pressure diagram for a benzene-toluene mixture \
at 20\:02daC shown above, the solid blue line indicates the composition of \
the liquid and the solid green line indicates the composition of the vapor. \
For a point inside the two-phase region, the compositions of the two phases \
are determined by drawing horizontal lines (here shown dashed) to the blue \
liquid composition line and the green vapor composition line. These are \
called \"tie lines\" or \"levers\". The lever rule is used to calculate the \
relative amounts of the two phases, which are shown on the bar graph on the \
right. The compositions of the two phases are indicated by dotted lines on \
the phase diagram and numerically at the top of the bar graph. Clcik and drag \
the black point to change the pressure and benzene mole fraction.\
\>", "ManipulateCaption",ExpressionUUID->"8ec57f5f-4fbd-413f-9326-\
f3571a033550"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"c409d892-8ff3-45a9-85a0-99e4635d1902"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`point$$ = {0.5, 5}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`point$$], {0.5, 5}}, Automatic}}, Typeset`size$$ = {
    608., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`point$$ = {0.5, 5}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`z$, $CellContext`P$, $CellContext`pstarA$, \
$CellContext`pstarB$, $CellContext`pTotalLiquid$, $CellContext`pTotalVapor$, \
$CellContext`xA$, $CellContext`yA$, $CellContext`lever$, $CellContext`colL$, \
$CellContext`colV$, $CellContext`plot$, $CellContext`barchart$}, \
$CellContext`z$ = Part[$CellContext`point$$, 1]; $CellContext`P$ = 
         Part[$CellContext`point$$, 2]; $CellContext`pstarA$ = 
         9.9; $CellContext`pstarB$ = 2.9; $CellContext`pTotalLiquid$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pstarB$ + ($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`x$; $CellContext`pTotalVapor$[
           Pattern[$CellContext`y$, 
            
            Blank[]]] := $CellContext`pstarA$ \
($CellContext`pstarB$/($CellContext`pstarA$ + ($CellContext`pstarB$ - \
$CellContext`pstarA$) $CellContext`y$)); $CellContext`xA$ = 
         N[(-$CellContext`pstarB$ + $CellContext`P$)/($CellContext`pstarA$ - \
$CellContext`pstarB$)]; $CellContext`yA$ = 
         N[((-$CellContext`pstarA$) $CellContext`pstarB$ + \
$CellContext`pstarA$ $CellContext`P$)/(($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`P$)]; $CellContext`lever$ = 
         Which[$CellContext`P$ < $CellContext`pTotalVapor$[$CellContext`z$], 
           0, $CellContext`P$ > $CellContext`pTotalLiquid$[$CellContext`z$], 
           1, $CellContext`pTotalVapor$[$CellContext`z$] <= $CellContext`P$ <= \
$CellContext`pTotalLiquid$[$CellContext`z$], ($CellContext`yA$ - \
$CellContext`z$)/($CellContext`yA$ - $CellContext`xA$)]; $CellContext`colL$ = 
         Blue; $CellContext`colV$ = RGBColor[0, 0.6, 0]; $CellContext`plot$ = 
         Plot[{
            $CellContext`pTotalLiquid$[$CellContext`x], 
            $CellContext`pTotalVapor$[$CellContext`x]}, {$CellContext`x, 0, 
            1}, PlotStyle -> {{Thick, $CellContext`colL$}, {
             Thick, $CellContext`colV$}}, PlotRange -> {{0, 1}, {2.5, 10}}, 
           Frame -> True, 
           FrameLabel -> {"mole fraction benzene", "pressure (kPa)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {450, 400}, AspectRatio -> 
           Full, Epilog -> {Thick, 
             PointSize[0.027], 
             
             If[$CellContext`xA$ <= $CellContext`z$ <= $CellContext`yA$, {
              Dashed, $CellContext`colL$, 
               
               Line[{$CellContext`point$$, {$CellContext`yA$, \
$CellContext`P$}}], 
               Point[{$CellContext`xA$, $CellContext`P$}], $CellContext`colV$, 
               
               Line[{$CellContext`point$$, {$CellContext`xA$, \
$CellContext`P$}}], 
               Point[{$CellContext`yA$, $CellContext`P$}], 
               Thickness[0.008], Dotted, $CellContext`colL$, 
               
               Line[{{$CellContext`xA$, $CellContext`P$}, {$CellContext`xA$, 
                  0}}], $CellContext`colV$, 
               
               Line[{{$CellContext`yA$, $CellContext`P$}, {$CellContext`yA$, 
                  0}}], Black, 
               Point[$CellContext`point$$]}, {
               Thickness[0.008], Dotted, 
               
               If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`colL$, \
$CellContext`colV$], 
               Line[{$CellContext`point$$, {$CellContext`z$, 0}}], 
               Point[$CellContext`point$$]}], 
             Text[
              Style["liquid", 17, 
               GrayLevel[0.4]], {0.2, 9}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.4]], {0.8, 3}]}]; $CellContext`barchart$ = 
         BarChart[{$CellContext`lever$, 1 - $CellContext`lever$}, 
           PlotRange -> {{0.5, 1.5}, {0, 1}}, PlotRangePadding -> None, 
           ChartStyle -> {$CellContext`colL$, $CellContext`colV$}, 
           ChartLayout -> "Stacked", Frame -> True, 
           FrameLabel -> {"", "liquid and vapor amounts "}, 
           LabelStyle -> {17, Black}, ImageSize -> {150, 400}, AspectRatio -> 
           Full, Epilog -> {
             If[$CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["x", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`z$, \
$CellContext`xA$], {2, 2}]}], 17, White], {1, 0.5 $CellContext`lever$}]], 
             If[1 - $CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["y", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ < \
$CellContext`pTotalVapor$[$CellContext`z$], $CellContext`z$, \
$CellContext`yA$], {2, 2}]}], 17, White], {
               1, $CellContext`lever$ + 0.5 (1 - $CellContext`lever$)}]]}]; 
        Grid[{{$CellContext`plot$, $CellContext`barchart$}}]], 
      "Specifications" :> {{{$CellContext`point$$, {0.5, 5}}, Automatic, 
         ControlType -> Locator, Appearance -> None}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {230., 236.}},
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
 CellID->296930304,ExpressionUUID->"9091f5b0-a086-4909-8b29-e9a8df6448ea"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"3066f2a3-9064-487f-942d-180fd7764bae"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`point$$ = {0.5545, 7.88}, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`point$$], {0.5545, 7.88}}, Automatic}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`point$$ = {0.5545, 7.88}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`z$, $CellContext`P$, $CellContext`pstarA$, \
$CellContext`pstarB$, $CellContext`pTotalLiquid$, $CellContext`pTotalVapor$, \
$CellContext`xA$, $CellContext`yA$, $CellContext`lever$, $CellContext`colL$, \
$CellContext`colV$, $CellContext`plot$, $CellContext`barchart$}, \
$CellContext`z$ = Part[$CellContext`point$$, 1]; $CellContext`P$ = 
         Part[$CellContext`point$$, 2]; $CellContext`pstarA$ = 
         9.9; $CellContext`pstarB$ = 2.9; $CellContext`pTotalLiquid$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pstarB$ + ($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`x$; $CellContext`pTotalVapor$[
           Pattern[$CellContext`y$, 
            
            Blank[]]] := $CellContext`pstarA$ \
($CellContext`pstarB$/($CellContext`pstarA$ + ($CellContext`pstarB$ - \
$CellContext`pstarA$) $CellContext`y$)); $CellContext`xA$ = 
         N[(-$CellContext`pstarB$ + $CellContext`P$)/($CellContext`pstarA$ - \
$CellContext`pstarB$)]; $CellContext`yA$ = 
         N[((-$CellContext`pstarA$) $CellContext`pstarB$ + \
$CellContext`pstarA$ $CellContext`P$)/(($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`P$)]; $CellContext`lever$ = 
         Which[$CellContext`P$ < $CellContext`pTotalVapor$[$CellContext`z$], 
           0, $CellContext`P$ > $CellContext`pTotalLiquid$[$CellContext`z$], 
           1, $CellContext`pTotalVapor$[$CellContext`z$] <= $CellContext`P$ <= \
$CellContext`pTotalLiquid$[$CellContext`z$], ($CellContext`yA$ - \
$CellContext`z$)/($CellContext`yA$ - $CellContext`xA$)]; $CellContext`colL$ = 
         Blue; $CellContext`colV$ = RGBColor[0, 0.6, 0]; $CellContext`plot$ = 
         Plot[{
            $CellContext`pTotalLiquid$[$CellContext`x], 
            $CellContext`pTotalVapor$[$CellContext`x]}, {$CellContext`x, 0, 
            1}, PlotStyle -> {{Thick, $CellContext`colL$}, {
             Thick, $CellContext`colV$}}, PlotRange -> {{0, 1}, {2.5, 10}}, 
           Frame -> True, 
           FrameLabel -> {"mole fraction benzene", "pressure (kPa)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {450, 400}, AspectRatio -> 
           Full, Epilog -> {Thick, 
             PointSize[0.027], 
             
             If[$CellContext`xA$ <= $CellContext`z$ <= $CellContext`yA$, {
              Dashed, $CellContext`colL$, 
               
               Line[{$CellContext`point$$, {$CellContext`yA$, \
$CellContext`P$}}], 
               Point[{$CellContext`xA$, $CellContext`P$}], $CellContext`colV$, 
               
               Line[{$CellContext`point$$, {$CellContext`xA$, \
$CellContext`P$}}], 
               Point[{$CellContext`yA$, $CellContext`P$}], 
               Thickness[0.008], Dotted, $CellContext`colL$, 
               
               Line[{{$CellContext`xA$, $CellContext`P$}, {$CellContext`xA$, 
                  0}}], $CellContext`colV$, 
               
               Line[{{$CellContext`yA$, $CellContext`P$}, {$CellContext`yA$, 
                  0}}], Black, 
               Point[$CellContext`point$$]}, {
               Thickness[0.008], Dotted, 
               
               If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`colL$, \
$CellContext`colV$], 
               Line[{$CellContext`point$$, {$CellContext`z$, 0}}], 
               Point[$CellContext`point$$]}], 
             Text[
              Style["liquid", 17, 
               GrayLevel[0.4]], {0.2, 9}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.4]], {0.8, 3}]}]; $CellContext`barchart$ = 
         BarChart[{$CellContext`lever$, 1 - $CellContext`lever$}, 
           PlotRange -> {{0.5, 1.5}, {0, 1}}, PlotRangePadding -> None, 
           ChartStyle -> {$CellContext`colL$, $CellContext`colV$}, 
           ChartLayout -> "Stacked", Frame -> True, 
           FrameLabel -> {"", "liquid and vapor amounts "}, 
           LabelStyle -> {17, Black}, ImageSize -> {150, 400}, AspectRatio -> 
           Full, Epilog -> {
             If[$CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["x", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`z$, \
$CellContext`xA$], {2, 2}]}], 17, White], {1, 0.5 $CellContext`lever$}]], 
             If[1 - $CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["y", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ < \
$CellContext`pTotalVapor$[$CellContext`z$], $CellContext`z$, \
$CellContext`yA$], {2, 2}]}], 17, White], {
               1, $CellContext`lever$ + 0.5 (1 - $CellContext`lever$)}]]}]; 
        Grid[{{$CellContext`plot$, $CellContext`barchart$}}]], 
      "Specifications" :> {{{$CellContext`point$$, {0.5545, 7.88}}, Automatic,
          ControlType -> Locator, Appearance -> None}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {230., 236.}},
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
 CellID->194454511,ExpressionUUID->"fdb20f56-195a-4eef-8ece-955724e7de8f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`point$$ = {0.404, 4.49}, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`point$$], {0.404, 4.49}}, Automatic}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`point$$ = {0.404, 4.49}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`z$, $CellContext`P$, $CellContext`pstarA$, \
$CellContext`pstarB$, $CellContext`pTotalLiquid$, $CellContext`pTotalVapor$, \
$CellContext`xA$, $CellContext`yA$, $CellContext`lever$, $CellContext`colL$, \
$CellContext`colV$, $CellContext`plot$, $CellContext`barchart$}, \
$CellContext`z$ = Part[$CellContext`point$$, 1]; $CellContext`P$ = 
         Part[$CellContext`point$$, 2]; $CellContext`pstarA$ = 
         9.9; $CellContext`pstarB$ = 2.9; $CellContext`pTotalLiquid$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pstarB$ + ($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`x$; $CellContext`pTotalVapor$[
           Pattern[$CellContext`y$, 
            
            Blank[]]] := $CellContext`pstarA$ \
($CellContext`pstarB$/($CellContext`pstarA$ + ($CellContext`pstarB$ - \
$CellContext`pstarA$) $CellContext`y$)); $CellContext`xA$ = 
         N[(-$CellContext`pstarB$ + $CellContext`P$)/($CellContext`pstarA$ - \
$CellContext`pstarB$)]; $CellContext`yA$ = 
         N[((-$CellContext`pstarA$) $CellContext`pstarB$ + \
$CellContext`pstarA$ $CellContext`P$)/(($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`P$)]; $CellContext`lever$ = 
         Which[$CellContext`P$ < $CellContext`pTotalVapor$[$CellContext`z$], 
           0, $CellContext`P$ > $CellContext`pTotalLiquid$[$CellContext`z$], 
           1, $CellContext`pTotalVapor$[$CellContext`z$] <= $CellContext`P$ <= \
$CellContext`pTotalLiquid$[$CellContext`z$], ($CellContext`yA$ - \
$CellContext`z$)/($CellContext`yA$ - $CellContext`xA$)]; $CellContext`colL$ = 
         Blue; $CellContext`colV$ = RGBColor[0, 0.6, 0]; $CellContext`plot$ = 
         Plot[{
            $CellContext`pTotalLiquid$[$CellContext`x], 
            $CellContext`pTotalVapor$[$CellContext`x]}, {$CellContext`x, 0, 
            1}, PlotStyle -> {{Thick, $CellContext`colL$}, {
             Thick, $CellContext`colV$}}, PlotRange -> {{0, 1}, {2.5, 10}}, 
           Frame -> True, 
           FrameLabel -> {"mole fraction benzene", "pressure (kPa)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {450, 400}, AspectRatio -> 
           Full, Epilog -> {Thick, 
             PointSize[0.027], 
             
             If[$CellContext`xA$ <= $CellContext`z$ <= $CellContext`yA$, {
              Dashed, $CellContext`colL$, 
               
               Line[{$CellContext`point$$, {$CellContext`yA$, \
$CellContext`P$}}], 
               Point[{$CellContext`xA$, $CellContext`P$}], $CellContext`colV$, 
               
               Line[{$CellContext`point$$, {$CellContext`xA$, \
$CellContext`P$}}], 
               Point[{$CellContext`yA$, $CellContext`P$}], 
               Thickness[0.008], Dotted, $CellContext`colL$, 
               
               Line[{{$CellContext`xA$, $CellContext`P$}, {$CellContext`xA$, 
                  0}}], $CellContext`colV$, 
               
               Line[{{$CellContext`yA$, $CellContext`P$}, {$CellContext`yA$, 
                  0}}], Black, 
               Point[$CellContext`point$$]}, {
               Thickness[0.008], Dotted, 
               
               If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`colL$, \
$CellContext`colV$], 
               Line[{$CellContext`point$$, {$CellContext`z$, 0}}], 
               Point[$CellContext`point$$]}], 
             Text[
              Style["liquid", 17, 
               GrayLevel[0.4]], {0.2, 9}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.4]], {0.8, 3}]}]; $CellContext`barchart$ = 
         BarChart[{$CellContext`lever$, 1 - $CellContext`lever$}, 
           PlotRange -> {{0.5, 1.5}, {0, 1}}, PlotRangePadding -> None, 
           ChartStyle -> {$CellContext`colL$, $CellContext`colV$}, 
           ChartLayout -> "Stacked", Frame -> True, 
           FrameLabel -> {"", "liquid and vapor amounts "}, 
           LabelStyle -> {17, Black}, ImageSize -> {150, 400}, AspectRatio -> 
           Full, Epilog -> {
             If[$CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["x", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`z$, \
$CellContext`xA$], {2, 2}]}], 17, White], {1, 0.5 $CellContext`lever$}]], 
             If[1 - $CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["y", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ < \
$CellContext`pTotalVapor$[$CellContext`z$], $CellContext`z$, \
$CellContext`yA$], {2, 2}]}], 17, White], {
               1, $CellContext`lever$ + 0.5 (1 - $CellContext`lever$)}]]}]; 
        Grid[{{$CellContext`plot$, $CellContext`barchart$}}]], 
      "Specifications" :> {{{$CellContext`point$$, {0.404, 4.49}}, Automatic, 
         ControlType -> Locator, Appearance -> None}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {230., 236.}},
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
 CellID->533746792,ExpressionUUID->"ce2958f6-6602-435c-80b5-c590e6ee28b3"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`point$$ = {0.8915000000000001, 5.45}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`point$$], {0.8915000000000001, 5.45}}, Automatic}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`point$$ = {0.8915000000000001, 5.45}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`z$, $CellContext`P$, $CellContext`pstarA$, \
$CellContext`pstarB$, $CellContext`pTotalLiquid$, $CellContext`pTotalVapor$, \
$CellContext`xA$, $CellContext`yA$, $CellContext`lever$, $CellContext`colL$, \
$CellContext`colV$, $CellContext`plot$, $CellContext`barchart$}, \
$CellContext`z$ = Part[$CellContext`point$$, 1]; $CellContext`P$ = 
         Part[$CellContext`point$$, 2]; $CellContext`pstarA$ = 
         9.9; $CellContext`pstarB$ = 2.9; $CellContext`pTotalLiquid$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pstarB$ + ($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`x$; $CellContext`pTotalVapor$[
           Pattern[$CellContext`y$, 
            
            Blank[]]] := $CellContext`pstarA$ \
($CellContext`pstarB$/($CellContext`pstarA$ + ($CellContext`pstarB$ - \
$CellContext`pstarA$) $CellContext`y$)); $CellContext`xA$ = 
         N[(-$CellContext`pstarB$ + $CellContext`P$)/($CellContext`pstarA$ - \
$CellContext`pstarB$)]; $CellContext`yA$ = 
         N[((-$CellContext`pstarA$) $CellContext`pstarB$ + \
$CellContext`pstarA$ $CellContext`P$)/(($CellContext`pstarA$ - \
$CellContext`pstarB$) $CellContext`P$)]; $CellContext`lever$ = 
         Which[$CellContext`P$ < $CellContext`pTotalVapor$[$CellContext`z$], 
           0, $CellContext`P$ > $CellContext`pTotalLiquid$[$CellContext`z$], 
           1, $CellContext`pTotalVapor$[$CellContext`z$] <= $CellContext`P$ <= \
$CellContext`pTotalLiquid$[$CellContext`z$], ($CellContext`yA$ - \
$CellContext`z$)/($CellContext`yA$ - $CellContext`xA$)]; $CellContext`colL$ = 
         Blue; $CellContext`colV$ = RGBColor[0, 0.6, 0]; $CellContext`plot$ = 
         Plot[{
            $CellContext`pTotalLiquid$[$CellContext`x], 
            $CellContext`pTotalVapor$[$CellContext`x]}, {$CellContext`x, 0, 
            1}, PlotStyle -> {{Thick, $CellContext`colL$}, {
             Thick, $CellContext`colV$}}, PlotRange -> {{0, 1}, {2.5, 10}}, 
           Frame -> True, 
           FrameLabel -> {"mole fraction benzene", "pressure (kPa)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {450, 400}, AspectRatio -> 
           Full, Epilog -> {Thick, 
             PointSize[0.027], 
             
             If[$CellContext`xA$ <= $CellContext`z$ <= $CellContext`yA$, {
              Dashed, $CellContext`colL$, 
               
               Line[{$CellContext`point$$, {$CellContext`yA$, \
$CellContext`P$}}], 
               Point[{$CellContext`xA$, $CellContext`P$}], $CellContext`colV$, 
               
               Line[{$CellContext`point$$, {$CellContext`xA$, \
$CellContext`P$}}], 
               Point[{$CellContext`yA$, $CellContext`P$}], 
               Thickness[0.008], Dotted, $CellContext`colL$, 
               
               Line[{{$CellContext`xA$, $CellContext`P$}, {$CellContext`xA$, 
                  0}}], $CellContext`colV$, 
               
               Line[{{$CellContext`yA$, $CellContext`P$}, {$CellContext`yA$, 
                  0}}], Black, 
               Point[$CellContext`point$$]}, {
               Thickness[0.008], Dotted, 
               
               If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`colL$, \
$CellContext`colV$], 
               Line[{$CellContext`point$$, {$CellContext`z$, 0}}], 
               Point[$CellContext`point$$]}], 
             Text[
              Style["liquid", 17, 
               GrayLevel[0.4]], {0.2, 9}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.4]], {0.8, 3}]}]; $CellContext`barchart$ = 
         BarChart[{$CellContext`lever$, 1 - $CellContext`lever$}, 
           PlotRange -> {{0.5, 1.5}, {0, 1}}, PlotRangePadding -> None, 
           ChartStyle -> {$CellContext`colL$, $CellContext`colV$}, 
           ChartLayout -> "Stacked", Frame -> True, 
           FrameLabel -> {"", "liquid and vapor amounts "}, 
           LabelStyle -> {17, Black}, ImageSize -> {150, 400}, AspectRatio -> 
           Full, Epilog -> {
             If[$CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["x", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ > \
$CellContext`pTotalLiquid$[$CellContext`z$], $CellContext`z$, \
$CellContext`xA$], {2, 2}]}], 17, White], {1, 0.5 $CellContext`lever$}]], 
             If[1 - $CellContext`lever$ > 0, 
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["y", Italic], "B"], " = ", 
                  NumberForm[
                   
                   If[$CellContext`P$ < \
$CellContext`pTotalVapor$[$CellContext`z$], $CellContext`z$, \
$CellContext`yA$], {2, 2}]}], 17, White], {
               1, $CellContext`lever$ + 0.5 (1 - $CellContext`lever$)}]]}]; 
        Grid[{{$CellContext`plot$, $CellContext`barchart$}}]], 
      "Specifications" :> {{{$CellContext`point$$, {0.8915000000000001, 
          5.45}}, Automatic, ControlType -> Locator, Appearance -> None}}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {230., 236.}},
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
 CellID->204045716,ExpressionUUID->"133fdd7e-9372-4213-8f6a-e87b93e47fc8"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"e7d4e730-d2e6-41d4-84d4-4619f85bd0aa"],

Cell[TextData[{
 "Benzene and toluene form a nearly ideal solution obeying Raoult's law ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["p", "A"], "=", 
     RowBox[{
      SubscriptBox["x", "A"], 
      SubsuperscriptBox["p", "A", "*"]}]}], ")"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"4b578090-b276-4d5d-9df9-4320198c406b"],
 " over the entire range of composition. Composition is usually expressed as \
a mole fraction but sometimes other units such as mole percent or mass \
percent are used. An \"",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "e0279cbe-2151-4a55-974a-53cd060d348a"],
 "\" usually indicates the mole fraction of the liquid phase, a \"",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "085440ba-28e8-45c5-9a2a-e3f63ee357eb"],
 "\" is used for the vapor phase, and a \"",
 Cell[BoxData[
  FormBox["z", TraditionalForm]], "InlineMath",ExpressionUUID->
  "f34c3b93-96bf-4b7d-ba49-740a180cf1af"],
 "\" for the total composition of all phases together. The amounts in the \
phases are calculated from the lever rule: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     SubscriptBox["n", "liquid"], 
     SubscriptBox["n", "vapor"]], "=", 
    FractionBox[
     SubscriptBox["l", "vapor"], 
     SubscriptBox["l", "liquid"]]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"dc45516c-fc4c-44e6-8334-158eee018030"],
 ". Here ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", "liquid"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"0b5d77a7-5ac0-45bd-b6da-03f4d4f5470e"],
 " is the moles of liquid phase, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", "vapor"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"888b21cc-927e-460f-baba-0d611f1ef401"],
 " is the moles of vapor phase, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["l", "vapor"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"52b87a94-e545-4709-bf8d-b09ddf215581"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["l", "liquid"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"50de7245-7e0d-4c60-bac4-6cee33dd5216"],
 " are the lengths of the levers indicated by dashed lines on the phase \
diagrams. The \"relative amount\" on the bar chart is calculated from ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    SubscriptBox["n", "liquid"], 
    RowBox[{
     SubscriptBox["n", "liquid"], "+", 
     SubscriptBox["n", "vapor"]}]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"072c2c78-bdf3-44d3-abbc-94294985a905"],
 " and  ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    SubscriptBox["n", "vapor"], 
    RowBox[{
     SubscriptBox["n", "liquid"], "+", 
     SubscriptBox["n", "vapor"]}]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"1cc0dfca-077f-45c2-908b-cf52b3d09d61"],
 "."
}], "DetailNotes",
 CellID->1164124033,ExpressionUUID->"031aa4b0-7479-40ef-b022-f0a2c187d3c7"],

Cell[TextData[{
 "Snapshot 1: when the overall composition ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["z", "Bz"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "cbc1a70b-8a03-4be3-95cf-216ae27f8616"],
 " is 0.23 and the pressure is 5.0 kPa, only the liquid phase is stable and \
its composition is 0.23"
}], "DetailNotes",
 CellID->1102797869,ExpressionUUID->"2d5a70ad-7c3f-4e2a-810f-30b408468114"],

Cell[TextData[{
 "Snapshot 2: when the overall composition ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["z", "Bz"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b0a5f4cd-64f3-4926-86ac-9055e2cddd5f"],
 " is 0.83 and the pressure is 5.0 kPa, only the vapor phase is stable and \
its composition is 0.83"
}], "DetailNotes",
 CellID->1939910673,ExpressionUUID->"ef21ac76-710e-47df-be15-b052e2c56227"],

Cell[TextData[{
 "Snapshot 3: when the overall composition ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["z", "Bz"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "d290f0c8-b854-42e5-a2eb-aa24817d9024"],
 " is 0.50 and the pressure is 5.0 kPa, both phases can coexist. The liquid \
phase has composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "Bz"], "=", "0.30"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f2a96e65-eb82-429d-bc65-7363985dfebb"],
 " and the vapor phase has composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", "Bz"], "=", "0.59"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"8706b8b1-47e7-492b-8054-64ff0b4745a8"],
 ". The liquid lever is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"0.50", "-", "0.30"}], "=", "0.20"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"36eba890-cc3b-4eb5-a08b-e77df5e83521"],
 " and the vapor lever is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"0.59", "-", "0.50"}], "=", "0.09"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"d5401888-5be8-4e8b-a410-a238f32da4be"],
 ". The relative amounts of the phases are then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"0.2", "/", "0.09"}], " ", "\[TildeTilde]", " ", 
    RowBox[{"2", "/", "1"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"167d1813-4e9d-406d-91e7-c871c5b426d1"],
 ". There are twice as many moles of vapor as moles of liquid as shown on the \
bar chart."
}], "DetailNotes",
 CellID->981952357,ExpressionUUID->"ee744ae7-14c0-4fd0-a51d-a59db5b58234"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"c5f65dc6-ac00-4c72-8908-a9a79847508e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"2b9f120a-6dae-4fbc-b278-2e8c93c42115"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"029a212f-f5fb-4253-9489-3b75aef93017"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "5a628aec-51d4-448c-bad3-6bf8b3784066"]}],
  RowBox[{
   "\"Drag a 3D graphic to rotate it. Starting the drag near the center \
tumbles\\nthe graphic; starting near a corner turns it parallel to the plane \
of the screen.\\nHold down \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" (or \"", 
    FrameBox[
    "Cmd", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" on Mac) and drag up and down to zoom.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "RotateAndZoomIn3D",ExpressionUUID->"02609908-5ef6-4f58-b290-1baf38d203de"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Drag Locators",ExpressionUUID->"23d0b87f-5369-466d-ad74-4460adb64114"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"b3ec962b-d586-4b6d-8e13-0150d516e7c0"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "31d9d6f4-bb5c-4739-a40d-01263f3a7d3b"]}],
  RowBox[{"\"Insert a new locator in the graphic by holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key\\nand clicking where you want it to be. Delete a locator by \
clicking it\\nwhile holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" key.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "CreateAndDeleteLocators",ExpressionUUID->"91333ed9-fba3-4bd8-9d35-\
c00fcf9cc1f2"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"3e6e7c35-7032-440f-bbc0-a0ca1952c6c4"]}],
  RowBox[{"\"Hold down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key while moving a slider to make fine adjustments in the slider \
value.\\nHold \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" and/or \"", 
    FrameBox[
    "Shift", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" at the same time as \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" to make ever finer adjustments.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "SliderZoom",ExpressionUUID->"5befcac6-2063-400f-aaf9-c346526423b6"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "d63221e9-2a60-43a5-8b55-5b29a619f043"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"077e6366-4219-44cb-ae46-8886cc97d7e9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "3d7dac3f-bf9e-49d8-9497-2408537bd4c3"]}],
  RowBox[{"\"Animate a slider in this Demonstration by clicking the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJzzTSzJSM1NLMlMTlRwL0osyMhMLlZwyy8CCjEzMjAwcIKwAgOI/R/IhBKc\n\
/4EAyGAG0f+nTZsGwgysIJIRKsWKLAXGIHFmEpUgLADxWUAkI24jZs+eTaEt\n\
IG+wQKRmzJgBlYf5lhEA30OqWA=="], "Graphics", ImageSize -> {9, 9}, ImageMargins -> 
      0, CellBaseline -> Baseline], BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"button\\nnext to the slider, and then clicking the play button that \
appears.\\nAnimate all controls by selecting \"", 
    StyleBox["Autorun", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "AutomaticAnimation",ExpressionUUID->"2f9fdd55-c6eb-4171-8a2f-6b7634f73560"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "c2054716-6414-473b-be9f-be5784624b10"]}],
  RowBox[{
   "\"See a prepared animation of this Demonstration by selecting\\n\"", 
    StyleBox["Animate Bookmarks", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "BookmarkAnimation",ExpressionUUID->"9e41bc65-ab5a-4042-9ad8-bf4d930ef715"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"bde8bde0-a38d-4ace-9606-68605bf22ac6"],

Cell["vapor pressure diagram", "SearchTerms",
 CellID->195758792,ExpressionUUID->"8949ac97-0d77-4324-a269-6eaad8d24064"],

Cell["phase diagram", "SearchTerms",
 CellID->1093623542,ExpressionUUID->"58dc4bf1-e337-48fc-a71f-32bebc9443d9"],

Cell["ideal solution", "SearchTerms",
 CellID->218335721,ExpressionUUID->"033347cd-1ba1-4ee5-8bee-537cbc19ae47"],

Cell["lever rule", "SearchTerms",
 CellID->1745868670,ExpressionUUID->"448f21a1-2130-45ba-a5a0-78eb417b2156"],

Cell["phase stability", "SearchTerms",
 CellID->1745667729,ExpressionUUID->"ef976f74-1909-4edb-97c0-f13d2e96b12d"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"bc672c8d-18fb-4ebe-ac8c-de22205082b1"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"12f2a866-3038-4070-9707-19a86e7e2dca"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Lisa M. Goss",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Lisa+M.+Goss"], 
    None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Lisa+M.+Goss"]
}], "Author",
 CellID->494036962,ExpressionUUID->"b85deb79-ac0b-4433-92da-e54e4628344a"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"]
}], "Author",
 CellID->91242435,ExpressionUUID->"a59764cd-961e-4e72-9934-883fbb9ada29"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 685},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.3 for Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[55417, 1228, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"029a212f-f5fb-4253-9489-3b75aef93017",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[55848, 1240, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"02609908-5ef6-4f58-b290-1baf38d203de",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[56651, 1261, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"b3ec962b-d586-4b6d-8e13-0150d516e7c0",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[57110, 1276, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"91333ed9-fba3-4bd8-9d35-c00fcf9cc1f2",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[57874, 1297, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"5befcac6-2063-400f-aaf9-c346526423b6",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[58837, 1322, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"077e6366-4219-44cb-ae46-8886cc97d7e9",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[59265, 1335, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"2f9fdd55-c6eb-4171-8a2f-6b7634f73560",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[60853, 1371, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"9e41bc65-ab5a-4042-9ad8-bf4d930ef715",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 64082, 1467},
 {"RotateAndZoomIn3D", 64247, 1470},
 {"DragLocators", 64412, 1473},
 {"CreateAndDeleteLocators", 64583, 1476},
 {"SliderZoom", 64752, 1479},
 {"GamepadControls", 64913, 1482},
 {"AutomaticAnimation", 65082, 1485},
 {"BookmarkAnimation", 65254, 1488}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 148, 2, 74, "DemoTitle",ExpressionUUID->"242bbd53-0723-472a-871a-bb183e8478e5"],
Cell[1661, 39, 88, 0, 275, "InitializationSection",ExpressionUUID->"81dcabc5-8742-471c-bf4b-17c2df8fdcbc"],
Cell[CellGroupData[{
Cell[1774, 43, 84, 0, 189, "ManipulateSection",ExpressionUUID->"6cff0793-1138-41df-b4f7-af7fd3da869f"],
Cell[CellGroupData[{
Cell[1883, 47, 12931, 314, 908, "Input",ExpressionUUID->"32540fe0-8835-4f86-844c-a87b72b71efb"],
Cell[14817, 363, 6595, 132, 478, "Output",ExpressionUUID->"b3c9f1e5-8773-4369-a41d-949431b138d8",
 CellID->115701162]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[21461, 501, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"510671a2-f6cf-4994-9fa0-2f05a3b01146"],
Cell[21555, 503, 1534, 21, 127, "ManipulateCaption",ExpressionUUID->"8ec57f5f-4fbd-413f-9326-f3571a033550"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23126, 529, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"c409d892-8ff3-45a9-85a0-99e4635d1902"],
Cell[23212, 531, 6595, 132, 478, "Output",ExpressionUUID->"9091f5b0-a086-4909-8b29-e9a8df6448ea",
 CellID->296930304]
}, Open  ]],
Cell[CellGroupData[{
Cell[29844, 668, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"3066f2a3-9064-487f-942d-180fd7764bae"],
Cell[29930, 670, 6619, 132, 478, "Output",ExpressionUUID->"fdb20f56-195a-4eef-8ece-955724e7de8f",
 CellID->194454511],
Cell[36552, 804, 6615, 132, 478, "Output",ExpressionUUID->"ce2958f6-6602-435c-80b5-c590e6ee28b3",
 CellID->533746792],
Cell[43170, 938, 6675, 133, 478, "Output",ExpressionUUID->"133fdd7e-9372-4213-8f6a-e87b93e47fc8",
 CellID->204045716]
}, Open  ]],
Cell[CellGroupData[{
Cell[49882, 1076, 81, 0, 339, "DetailsSection",ExpressionUUID->"e7d4e730-d2e6-41d4-84d4-4619f85bd0aa"],
Cell[49966, 1078, 2925, 78, 114, "DetailNotes",ExpressionUUID->"031aa4b0-7479-40ef-b022-f0a2c187d3c7",
 CellID->1164124033],
Cell[52894, 1158, 405, 9, 23, "DetailNotes",ExpressionUUID->"2d5a70ad-7c3f-4e2a-810f-30b408468114",
 CellID->1102797869],
Cell[53302, 1169, 404, 9, 23, "DetailNotes",ExpressionUUID->"ef21ac76-710e-47df-be15-b052e2c56227",
 CellID->1939910673],
Cell[53709, 1180, 1576, 41, 54, "DetailNotes",ExpressionUUID->"ee744ae7-14c0-4fd0-a51d-a59db5b58234",
 CellID->981952357]
}, Open  ]],
Cell[CellGroupData[{
Cell[55322, 1226, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"c5f65dc6-ac00-4c72-8908-a9a79847508e"],
Cell[55417, 1228, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"029a212f-f5fb-4253-9489-3b75aef93017",
 CellTags->"ResizeImages"],
Cell[55848, 1240, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"02609908-5ef6-4f58-b290-1baf38d203de",
 CellTags->"RotateAndZoomIn3D"],
Cell[56651, 1261, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"b3ec962b-d586-4b6d-8e13-0150d516e7c0",
 CellTags->"DragLocators"],
Cell[57110, 1276, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"91333ed9-fba3-4bd8-9d35-c00fcf9cc1f2",
 CellTags->"CreateAndDeleteLocators"],
Cell[57874, 1297, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"5befcac6-2063-400f-aaf9-c346526423b6",
 CellTags->"SliderZoom"],
Cell[58837, 1322, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"077e6366-4219-44cb-ae46-8886cc97d7e9",
 CellTags->"GamepadControls"],
Cell[59265, 1335, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"2f9fdd55-c6eb-4171-8a2f-6b7634f73560",
 CellTags->"AutomaticAnimation"],
Cell[60853, 1371, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"9e41bc65-ab5a-4042-9ad8-bf4d930ef715",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61920, 1400, 85, 0, 158, "SearchTermsSection",ExpressionUUID->"bde8bde0-a38d-4ace-9606-68605bf22ac6"],
Cell[62008, 1402, 120, 1, 22, "SearchTerms",ExpressionUUID->"8949ac97-0d77-4324-a269-6eaad8d24064",
 CellID->195758792],
Cell[62131, 1405, 112, 1, 22, "SearchTerms",ExpressionUUID->"58dc4bf1-e337-48fc-a71f-32bebc9443d9",
 CellID->1093623542],
Cell[62246, 1408, 112, 1, 22, "SearchTerms",ExpressionUUID->"033347cd-1ba1-4ee5-8bee-537cbc19ae47",
 CellID->218335721],
Cell[62361, 1411, 109, 1, 22, "SearchTerms",ExpressionUUID->"448f21a1-2130-45ba-a5a0-78eb417b2156",
 CellID->1745868670],
Cell[62473, 1414, 114, 1, 22, "SearchTerms",ExpressionUUID->"ef976f74-1909-4edb-97c0-f13d2e96b12d",
 CellID->1745667729]
}, Open  ]],
Cell[62602, 1418, 86, 0, 143, "RelatedLinksSection",ExpressionUUID->"bc672c8d-18fb-4ebe-ac8c-de22205082b1"],
Cell[CellGroupData[{
Cell[62713, 1422, 80, 0, 129, "AuthorSection",ExpressionUUID->"12f2a866-3038-4070-9707-19a86e7e2dca"],
Cell[62796, 1424, 371, 10, 22, "Author",ExpressionUUID->"b85deb79-ac0b-4433-92da-e54e4628344a",
 CellID->494036962],
Cell[63170, 1436, 408, 11, 22, "Author",ExpressionUUID->"a59764cd-961e-4e72-9934-883fbb9ada29",
 CellID->91242435]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature dx0eRYnysrw9EAwBW2DxVrtp *)
