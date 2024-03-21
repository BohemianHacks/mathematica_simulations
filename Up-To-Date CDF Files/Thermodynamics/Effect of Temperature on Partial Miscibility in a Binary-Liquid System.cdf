(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.2' *)

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
NotebookDataLength[     75282,       1718]
NotebookOptionsPosition[     68477,       1581]
NotebookOutlinePosition[     70628,       1636]
CellTagsIndexPosition[     70300,       1624]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Effect of Temperature on Partial Miscibility in a Binary-Liquid System\
\>", "DemoTitle",ExpressionUUID->"9efa1ca7-483a-4b63-aa32-0477ced04418"],

Cell["", "InitializationSection",ExpressionUUID->"fc9375ae-24a3-4a3a-895e-79748f3e308c"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"24717b7c-d0bc-4d22-a420-0f3c7671164c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "a", ",", "b", ",", "R", ",", "Gibbs", ",", "sol", ",", "x1", ",", "x2",
        ",", "y1", ",", "y2", ",", "tangent", ",", "min1", ",", "min2", ",", 
       "condition", ",", "q", ",", "beaker", ",", "plot"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"a", "=", "7500"}], ";", 
      RowBox[{"b", "=", "1000"}], ";", 
      RowBox[{"R", "=", "8.314"}], " ", ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"J", "/", "mol"}], "/", "K"}], "*)"}], " ", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Gibbs", " ", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{"x", "*", 
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", 
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", "*", 
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"2", "*", "x"}]}], ")"}]}]}], ")"}]}], "+", 
        RowBox[{"R", "*", "T", "*", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"x", "*", 
            RowBox[{"Log", "[", "x", "]"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "x"}], ")"}], 
            RowBox[{"Log", "[", 
             RowBox[{"1", "-", "x"}], "]"}]}]}], ")"}]}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"sol", "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Y1", "\[Equal]", 
             RowBox[{"Gibbs", "[", "X1", "]"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"Y2", "\[Equal]", 
             RowBox[{"Gibbs", "[", "X2", "]"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"Gibbs", "'"}], "[", "X1", "]"}], "\[Equal]", 
             RowBox[{
              RowBox[{"Gibbs", "'"}], "[", "X2", "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"Gibbs", "'"}], "[", "X1", "]"}], "\[Equal]", 
             FractionBox[
              RowBox[{"Y2", "-", "Y1"}], 
              RowBox[{"X2", "-", "X1"}]]}]}], "\[IndentingNewLine]", "}"}], 
          ",", 
          RowBox[{"{", 
           RowBox[{"X1", ",", "0.001"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"X2", ",", "0.999"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Y1", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Y2", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X1", "/.", "sol"}]}], ";", 
      RowBox[{"x2", "=", 
       RowBox[{"X2", "/.", "sol"}]}], ";", 
      RowBox[{"y1", "=", 
       RowBox[{"Y1", "/.", "sol"}]}], ";", 
      RowBox[{"y2", "=", 
       RowBox[{"Y2", "/.", "sol"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"tangent", "[", "x_", "]"}], ":=", 
       RowBox[{"y1", "+", 
        RowBox[{
         RowBox[{
          RowBox[{"Gibbs", "'"}], "[", "x1", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{"x", "-", "x1"}], ")"}]}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"min1", "=", 
       RowBox[{"x", "/.", 
        RowBox[{"Last", "[", 
         RowBox[{"FindMinimum", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Gibbs", "[", "x", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"x", ">", "0"}], ",", " ", 
               RowBox[{"x", "<", "1"}]}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0.0001"}], "}"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"min2", "=", " ", 
       RowBox[{"x", "/.", 
        RowBox[{"Last", "[", 
         RowBox[{"FindMinimum", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Gibbs", "[", "x", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"x", ">", "0"}], ",", " ", 
               RowBox[{"x", "<", "1"}]}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0.9999"}], "}"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"condition", "=", 
       RowBox[{"T", "\[GreaterEqual]", "450"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"q", "=", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{"z", "<", "x1"}], ",", "0", ",", 
         RowBox[{"z", ">", "x2"}], ",", "1", ",", 
         RowBox[{"x1", "\[LessEqual]", "z", "\[LessEqual]", "x2"}], ",", 
         FractionBox[
          RowBox[{"z", "-", "x1"}], 
          RowBox[{"x2", "-", "x1"}]]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"beaker", "=", 
       RowBox[{"Graphics3D", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"EdgeForm", "@", "None"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"condition", "\[Or]", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"condition", "\[Equal]", "False"}], "\[And]", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"z", "<", "x1"}], "\[Or]", 
                   RowBox[{"z", ">", "x2"}]}], ")"}]}], ")"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Opacity", "[", 
                 RowBox[{"0.8", ",", 
                  RowBox[{"Blend", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"Blue", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}], ",", 
                    "0.5"}], "]"}]}], "]"}], ",", 
                RowBox[{"Cylinder", " ", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "}"}], ",", 
                  " ", "0.75"}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Framed", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"z", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                    "18", ",", "Black"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Small"}]}], "]"}], 
                  ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0", ",", "0.5"}], "}"}]}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Opacity", "[", 
                 RowBox[{"0.8", ",", "Blue"}], "]"}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"q", "<", "1"}], ",", 
                  RowBox[{"Cylinder", " ", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", " ", 
                    RowBox[{"1", "-", "q"}]}], "}"}]}], "}"}], ",", "0.75"}], 
                   "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Opacity", " ", "[", 
                 RowBox[{"0.8", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "]"}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"q", ">", "0"}], ",", 
                  RowBox[{"Cylinder", " ", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"1", "-", "q"}]}], "}"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", " ", "1"}], "}"}]}], "}"}], 
                    ",", " ", "0.75"}], "]"}]}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"q", "<", "1"}], ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"x1", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                    "18", ",", "Black"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Small"}]}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"0.5", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "q"}], ")"}]}]}], "}"}]}], "]"}]}], 
                 "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"q", ">", "0"}], ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"x2", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                    "18", ",", "Black"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Small"}]}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"1", "-", 
                    RowBox[{"0.5", "*", "q"}]}]}], "}"}]}], "]"}]}], "]"}]}], 
               "}"}]}], "\[IndentingNewLine]", "]"}]}], "}"}], "}"}], ",", 
         RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
         RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"200", ",", "425"}], "}"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "2"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"plot", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Gibbs", "[", "x", "]"}], ",", 
           RowBox[{"tangent", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "0.999"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Black"}], "}"}], ",", 
            RowBox[{"If", "[", 
             RowBox[{"condition", ",", "Transparent", ",", 
              RowBox[{"GrayLevel", "@", "0.5"}]}], "]"}]}], "}"}]}], ",", 
         RowBox[{"PlotRangePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"None", ",", 
            RowBox[{"Scaled", "@", "0.02"}]}], "}"}]}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
           "\"\<mole fraction\>\"", ",", 
            "\"\<change in Gibbs free energy (J/mol)\>\""}], "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"400", ",", "400"}], "}"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImagePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"80", ",", "15"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"50", ",", "10"}], "}"}]}], "}"}]}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{"condition", ",", 
              RowBox[{"{", "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.03"}], ",", "Blue", ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"x1", ",", "y1"}], "}"}]}], ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"x2", ",", "y2"}], "}"}]}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"PointSize", "@", "0.03"}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{"z", ",", 
               RowBox[{"Gibbs", "[", "z", "]"}]}], "}"}]}]}], 
           "\[IndentingNewLine]", "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "@", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{"plot", ",", "beaker"}], "}"}], "}"}]}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"T", ",", "275", ",", "\"\<temperature (K)\>\""}], "}"}], 
          ",", "275", ",", "525", ",", "5", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], " ", "}"}], "]"}], ",",
        "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"z", ",", "0.5", ",", "\"\<overall mole fraction\>\""}], 
           "}"}], ",", "0.01", ",", "0.99", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}]}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",ExpressionUUID->"014976e5-480e-4ffc-8e4d-f13bddf0e56d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 275, $CellContext`z$$ = 0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 275, "temperature (K)"}, 275, 525, 5}, {{
       Hold[$CellContext`z$$], 0.5, "overall mole fraction"}, 0.01, 0.99, 
      0.01}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {209., 216.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$108659$$ = 0, $CellContext`z$108660$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`T$$ = 275, $CellContext`z$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$108659$$, 0], 
        Hold[$CellContext`z$$, $CellContext`z$108660$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$, $CellContext`b$, $CellContext`R$, \
$CellContext`Gibbs$, $CellContext`sol$, $CellContext`x1$, $CellContext`x2$, \
$CellContext`y1$, $CellContext`y2$, $CellContext`tangent$, \
$CellContext`min1$, $CellContext`min2$, $CellContext`condition$, \
$CellContext`q$, $CellContext`beaker$, $CellContext`plot$}, $CellContext`a$ = 
         7500; $CellContext`b$ = 1000; $CellContext`R$ = 
         8.314; $CellContext`Gibbs$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`x$ (
             1 - $CellContext`x$)) ($CellContext`a$ + $CellContext`b$ (1 - 
              2 $CellContext`x$)) + ($CellContext`R$ $CellContext`T$$) \
($CellContext`x$ Log[$CellContext`x$] + (1 - $CellContext`x$) 
             Log[1 - $CellContext`x$]); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Y1 == $CellContext`Gibbs$[$CellContext`X1], \
$CellContext`Y2 == $CellContext`Gibbs$[$CellContext`X2], 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X1] == 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X2], 
             Derivative[
              1][$CellContext`Gibbs$][$CellContext`X1] == ($CellContext`Y2 - \
$CellContext`Y1)/($CellContext`X2 - $CellContext`X1)}, {$CellContext`X1, 
             0.001}, {$CellContext`X2, 0.999}, {$CellContext`Y1, 
             0}, {$CellContext`Y2, 0}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`X1, $CellContext`sol$]; $CellContext`x2$ = 
         ReplaceAll[$CellContext`X2, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`Y1, $CellContext`sol$]; $CellContext`y2$ = 
         ReplaceAll[$CellContext`Y2, $CellContext`sol$]; $CellContext`tangent$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`y1$ + 
          Derivative[
            1][$CellContext`Gibbs$][$CellContext`x1$] ($CellContext`x$ - \
$CellContext`x1$); $CellContext`min1$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.0001}]]]; $CellContext`min2$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.9999}]]]; $CellContext`condition$ = $CellContext`T$$ >= 
          450; $CellContext`q$ = 
         Which[$CellContext`z$$ < $CellContext`x1$, 
           0, $CellContext`z$$ > $CellContext`x2$, 
           1, $CellContext`x1$ <= $CellContext`z$$ <= $CellContext`x2$, \
($CellContext`z$$ - $CellContext`x1$)/($CellContext`x2$ - $CellContext`x1$)]; \
$CellContext`beaker$ = Graphics3D[{{
             EdgeForm[None], 
             If[
              Or[$CellContext`condition$, 
               And[$CellContext`condition$ == False, 
                
                Or[$CellContext`z$$ < $CellContext`x1$, $CellContext`z$$ > \
$CellContext`x2$]]], {
               Opacity[0.8, 
                Blend[{Blue, 
                  RGBColor[0, 0.6, 0]}, 0.5]], 
               Cylinder[{{0, 0, 0}, {0, 0, 1}}, 0.75], 
               Text[
                Framed[
                 Style[
                  Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`z$$, {2, 2}]}], 18, Black], 
                 Background -> White, FrameStyle -> None, FrameMargins -> 
                 Small], {0, 0, 0.5}]}, {
               Opacity[0.8, Blue], 
               If[$CellContext`q$ < 1, 
                Cylinder[{{0, 0, 0}, {0, 0, 1 - $CellContext`q$}}, 0.75]], 
               Opacity[0.8, 
                RGBColor[0, 0.6, 0]], 
               If[$CellContext`q$ > 0, 
                Cylinder[{{0, 0, 1 - $CellContext`q$}, {0, 0, 1}}, 0.75]], 
               If[$CellContext`q$ < 1, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x1$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 0.5 (1 - $CellContext`q$)}]], 
               If[$CellContext`q$ > 0, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x2$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 1 - 0.5 $CellContext`q$}]]}]}}, Boxed -> 
           False, ViewPoint -> Front, ImageSize -> {200, 425}, AspectRatio -> 
           2]; $CellContext`plot$ = Plot[{
            $CellContext`Gibbs$[$CellContext`x], 
            $CellContext`tangent$[$CellContext`x]}, {$CellContext`x, 0, 
            0.999}, PlotStyle -> {{Thick, Black}, 
             If[$CellContext`condition$, Transparent, 
              GrayLevel[0.5]]}, PlotRangePadding -> {None, 
             Scaled[0.02]}, Frame -> True, 
           FrameLabel -> {
            "mole fraction", "change in Gibbs free energy (J/mol)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
           Full, ImagePadding -> {{80, 15}, {50, 10}}, Epilog -> {
             If[$CellContext`condition$, {}, {
               PointSize[0.03], Blue, 
               Point[{$CellContext`x1$, $CellContext`y1$}], 
               RGBColor[0, 0.6, 0], 
               Point[{$CellContext`x2$, $CellContext`y2$}]}], 
             PointSize[0.03], 
             Point[{$CellContext`z$$, 
               $CellContext`Gibbs$[$CellContext`z$$]}]}]; 
        Grid[{{$CellContext`plot$, $CellContext`beaker$}}]], 
      "Specifications" :> {{{$CellContext`T$$, 275, "temperature (K)"}, 275, 
         525, 5, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         1}, {{$CellContext`z$$, 0.5, "overall mole fraction"}, 0.01, 0.99, 
         0.01, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {252., 259.}},
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
 CellID->140950684,ExpressionUUID->"250f97dc-9c51-4676-a4e3-64e20201d39f"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"eb7707dd-f405-4c40-91c9-b5b988fe15a0"],

Cell[TextData[StyleBox["This Demonstration plots the change in Gibbs free \
energy versus mole fraction of one component in a non-ideal binary mixture. \
Two liquid phases form when the Gibbs free energy is lower for the two phases \
than for one phase. A line that is tangent to the Gibbs free energy curve at \
two points (blue and green points) represents the Gibbs free energy change \
over the mole fraction range between the two points. The mole fractions at \
the blue and green points are the mole fractions of the two phases, and these \
mole fractions are shown on the container on the right. The size of each \
phase on the right is proportional to the amount of that phase, and these \
amounts are obtained from a mass balance (lever rule). Increasing the \
temperature with the slider decreases the range of partial miscibility. The \
slider on the right changes the overall mole fraction, and the black circle \
represents that mole fraction.",
 FontColor->GrayLevel[0]]], "ManipulateCaption",
 CellID->17131045,ExpressionUUID->"80e3aab7-2de0-464a-92a5-9cfc8d7bfb6f"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"1aa5a5fa-7f33-4af0-8938-1d4289dd99b3"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 275, $CellContext`z$$ = 0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 275, "temperature (K)"}, 275, 525, 5}, {{
       Hold[$CellContext`z$$], 0.5, "overall mole fraction"}, 0.01, 0.99, 
      0.01}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {209., 216.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$108714$$ = 0, $CellContext`z$108715$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`T$$ = 275, $CellContext`z$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$108714$$, 0], 
        Hold[$CellContext`z$$, $CellContext`z$108715$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$, $CellContext`b$, $CellContext`R$, \
$CellContext`Gibbs$, $CellContext`sol$, $CellContext`x1$, $CellContext`x2$, \
$CellContext`y1$, $CellContext`y2$, $CellContext`tangent$, \
$CellContext`min1$, $CellContext`min2$, $CellContext`condition$, \
$CellContext`q$, $CellContext`beaker$, $CellContext`plot$}, $CellContext`a$ = 
         7500; $CellContext`b$ = 1000; $CellContext`R$ = 
         8.314; $CellContext`Gibbs$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`x$ (
             1 - $CellContext`x$)) ($CellContext`a$ + $CellContext`b$ (1 - 
              2 $CellContext`x$)) + ($CellContext`R$ $CellContext`T$$) \
($CellContext`x$ Log[$CellContext`x$] + (1 - $CellContext`x$) 
             Log[1 - $CellContext`x$]); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Y1 == $CellContext`Gibbs$[$CellContext`X1], \
$CellContext`Y2 == $CellContext`Gibbs$[$CellContext`X2], 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X1] == 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X2], 
             Derivative[
              1][$CellContext`Gibbs$][$CellContext`X1] == ($CellContext`Y2 - \
$CellContext`Y1)/($CellContext`X2 - $CellContext`X1)}, {$CellContext`X1, 
             0.001}, {$CellContext`X2, 0.999}, {$CellContext`Y1, 
             0}, {$CellContext`Y2, 0}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`X1, $CellContext`sol$]; $CellContext`x2$ = 
         ReplaceAll[$CellContext`X2, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`Y1, $CellContext`sol$]; $CellContext`y2$ = 
         ReplaceAll[$CellContext`Y2, $CellContext`sol$]; $CellContext`tangent$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`y1$ + 
          Derivative[
            1][$CellContext`Gibbs$][$CellContext`x1$] ($CellContext`x$ - \
$CellContext`x1$); $CellContext`min1$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.0001}]]]; $CellContext`min2$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.9999}]]]; $CellContext`condition$ = $CellContext`T$$ >= 
          450; $CellContext`q$ = 
         Which[$CellContext`z$$ < $CellContext`x1$, 
           0, $CellContext`z$$ > $CellContext`x2$, 
           1, $CellContext`x1$ <= $CellContext`z$$ <= $CellContext`x2$, \
($CellContext`z$$ - $CellContext`x1$)/($CellContext`x2$ - $CellContext`x1$)]; \
$CellContext`beaker$ = Graphics3D[{{
             EdgeForm[None], 
             If[
              Or[$CellContext`condition$, 
               And[$CellContext`condition$ == False, 
                
                Or[$CellContext`z$$ < $CellContext`x1$, $CellContext`z$$ > \
$CellContext`x2$]]], {
               Opacity[0.8, 
                Blend[{Blue, 
                  RGBColor[0, 0.6, 0]}, 0.5]], 
               Cylinder[{{0, 0, 0}, {0, 0, 1}}, 0.75], 
               Text[
                Framed[
                 Style[
                  Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`z$$, {2, 2}]}], 18, Black], 
                 Background -> White, FrameStyle -> None, FrameMargins -> 
                 Small], {0, 0, 0.5}]}, {
               Opacity[0.8, Blue], 
               If[$CellContext`q$ < 1, 
                Cylinder[{{0, 0, 0}, {0, 0, 1 - $CellContext`q$}}, 0.75]], 
               Opacity[0.8, 
                RGBColor[0, 0.6, 0]], 
               If[$CellContext`q$ > 0, 
                Cylinder[{{0, 0, 1 - $CellContext`q$}, {0, 0, 1}}, 0.75]], 
               If[$CellContext`q$ < 1, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x1$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 0.5 (1 - $CellContext`q$)}]], 
               If[$CellContext`q$ > 0, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x2$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 1 - 0.5 $CellContext`q$}]]}]}}, Boxed -> 
           False, ViewPoint -> Front, ImageSize -> {200, 425}, AspectRatio -> 
           2]; $CellContext`plot$ = Plot[{
            $CellContext`Gibbs$[$CellContext`x], 
            $CellContext`tangent$[$CellContext`x]}, {$CellContext`x, 0, 
            0.999}, PlotStyle -> {{Thick, Black}, 
             If[$CellContext`condition$, Transparent, 
              GrayLevel[0.5]]}, PlotRangePadding -> {None, 
             Scaled[0.02]}, Frame -> True, 
           FrameLabel -> {
            "mole fraction", "change in Gibbs free energy (J/mol)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
           Full, ImagePadding -> {{80, 15}, {50, 10}}, Epilog -> {
             If[$CellContext`condition$, {}, {
               PointSize[0.03], Blue, 
               Point[{$CellContext`x1$, $CellContext`y1$}], 
               RGBColor[0, 0.6, 0], 
               Point[{$CellContext`x2$, $CellContext`y2$}]}], 
             PointSize[0.03], 
             Point[{$CellContext`z$$, 
               $CellContext`Gibbs$[$CellContext`z$$]}]}]; 
        Grid[{{$CellContext`plot$, $CellContext`beaker$}}]], 
      "Specifications" :> {{{$CellContext`T$$, 275, "temperature (K)"}, 275, 
         525, 5, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         1}, {{$CellContext`z$$, 0.5, "overall mole fraction"}, 0.01, 0.99, 
         0.01, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {252., 259.}},
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
 CellID->138454952,ExpressionUUID->"c052b4aa-a6f6-4d1f-b96b-ae7fde5e9df1"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"58522834-e7ca-43a2-87ce-2b0745130ec8"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 405, $CellContext`z$$ = 0.38, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 405, "temperature (K)"}, 275, 525, 5}, {{
       Hold[$CellContext`z$$], 0.38, "overall mole fraction"}, 0.01, 0.99, 
      0.01}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {209., 216.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$108769$$ = 0, $CellContext`z$108770$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`T$$ = 405, $CellContext`z$$ = 0.38}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$108769$$, 0], 
        Hold[$CellContext`z$$, $CellContext`z$108770$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$, $CellContext`b$, $CellContext`R$, \
$CellContext`Gibbs$, $CellContext`sol$, $CellContext`x1$, $CellContext`x2$, \
$CellContext`y1$, $CellContext`y2$, $CellContext`tangent$, \
$CellContext`min1$, $CellContext`min2$, $CellContext`condition$, \
$CellContext`q$, $CellContext`beaker$, $CellContext`plot$}, $CellContext`a$ = 
         7500; $CellContext`b$ = 1000; $CellContext`R$ = 
         8.314; $CellContext`Gibbs$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`x$ (
             1 - $CellContext`x$)) ($CellContext`a$ + $CellContext`b$ (1 - 
              2 $CellContext`x$)) + ($CellContext`R$ $CellContext`T$$) \
($CellContext`x$ Log[$CellContext`x$] + (1 - $CellContext`x$) 
             Log[1 - $CellContext`x$]); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Y1 == $CellContext`Gibbs$[$CellContext`X1], \
$CellContext`Y2 == $CellContext`Gibbs$[$CellContext`X2], 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X1] == 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X2], 
             Derivative[
              1][$CellContext`Gibbs$][$CellContext`X1] == ($CellContext`Y2 - \
$CellContext`Y1)/($CellContext`X2 - $CellContext`X1)}, {$CellContext`X1, 
             0.001}, {$CellContext`X2, 0.999}, {$CellContext`Y1, 
             0}, {$CellContext`Y2, 0}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`X1, $CellContext`sol$]; $CellContext`x2$ = 
         ReplaceAll[$CellContext`X2, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`Y1, $CellContext`sol$]; $CellContext`y2$ = 
         ReplaceAll[$CellContext`Y2, $CellContext`sol$]; $CellContext`tangent$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`y1$ + 
          Derivative[
            1][$CellContext`Gibbs$][$CellContext`x1$] ($CellContext`x$ - \
$CellContext`x1$); $CellContext`min1$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.0001}]]]; $CellContext`min2$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.9999}]]]; $CellContext`condition$ = $CellContext`T$$ >= 
          450; $CellContext`q$ = 
         Which[$CellContext`z$$ < $CellContext`x1$, 
           0, $CellContext`z$$ > $CellContext`x2$, 
           1, $CellContext`x1$ <= $CellContext`z$$ <= $CellContext`x2$, \
($CellContext`z$$ - $CellContext`x1$)/($CellContext`x2$ - $CellContext`x1$)]; \
$CellContext`beaker$ = Graphics3D[{{
             EdgeForm[None], 
             If[
              Or[$CellContext`condition$, 
               And[$CellContext`condition$ == False, 
                
                Or[$CellContext`z$$ < $CellContext`x1$, $CellContext`z$$ > \
$CellContext`x2$]]], {
               Opacity[0.8, 
                Blend[{Blue, 
                  RGBColor[0, 0.6, 0]}, 0.5]], 
               Cylinder[{{0, 0, 0}, {0, 0, 1}}, 0.75], 
               Text[
                Framed[
                 Style[
                  Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`z$$, {2, 2}]}], 18, Black], 
                 Background -> White, FrameStyle -> None, FrameMargins -> 
                 Small], {0, 0, 0.5}]}, {
               Opacity[0.8, Blue], 
               If[$CellContext`q$ < 1, 
                Cylinder[{{0, 0, 0}, {0, 0, 1 - $CellContext`q$}}, 0.75]], 
               Opacity[0.8, 
                RGBColor[0, 0.6, 0]], 
               If[$CellContext`q$ > 0, 
                Cylinder[{{0, 0, 1 - $CellContext`q$}, {0, 0, 1}}, 0.75]], 
               If[$CellContext`q$ < 1, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x1$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 0.5 (1 - $CellContext`q$)}]], 
               If[$CellContext`q$ > 0, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x2$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 1 - 0.5 $CellContext`q$}]]}]}}, Boxed -> 
           False, ViewPoint -> Front, ImageSize -> {200, 425}, AspectRatio -> 
           2]; $CellContext`plot$ = Plot[{
            $CellContext`Gibbs$[$CellContext`x], 
            $CellContext`tangent$[$CellContext`x]}, {$CellContext`x, 0, 
            0.999}, PlotStyle -> {{Thick, Black}, 
             If[$CellContext`condition$, Transparent, 
              GrayLevel[0.5]]}, PlotRangePadding -> {None, 
             Scaled[0.02]}, Frame -> True, 
           FrameLabel -> {
            "mole fraction", "change in Gibbs free energy (J/mol)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
           Full, ImagePadding -> {{80, 15}, {50, 10}}, Epilog -> {
             If[$CellContext`condition$, {}, {
               PointSize[0.03], Blue, 
               Point[{$CellContext`x1$, $CellContext`y1$}], 
               RGBColor[0, 0.6, 0], 
               Point[{$CellContext`x2$, $CellContext`y2$}]}], 
             PointSize[0.03], 
             Point[{$CellContext`z$$, 
               $CellContext`Gibbs$[$CellContext`z$$]}]}]; 
        Grid[{{$CellContext`plot$, $CellContext`beaker$}}]], 
      "Specifications" :> {{{$CellContext`T$$, 405, "temperature (K)"}, 275, 
         525, 5, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         1}, {{$CellContext`z$$, 0.38, "overall mole fraction"}, 0.01, 0.99, 
         0.01, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {252., 259.}},
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
 CellID->729526653,ExpressionUUID->"edbdbbae-e751-4e57-8d71-0274ea37fc36"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 500, $CellContext`z$$ = 0.6, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 500, "temperature (K)"}, 275, 525, 5}, {{
       Hold[$CellContext`z$$], 0.6, "overall mole fraction"}, 0.01, 0.99, 
      0.01}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {209., 216.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$108824$$ = 0, $CellContext`z$108825$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`T$$ = 500, $CellContext`z$$ = 0.6}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$108824$$, 0], 
        Hold[$CellContext`z$$, $CellContext`z$108825$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`a$, $CellContext`b$, $CellContext`R$, \
$CellContext`Gibbs$, $CellContext`sol$, $CellContext`x1$, $CellContext`x2$, \
$CellContext`y1$, $CellContext`y2$, $CellContext`tangent$, \
$CellContext`min1$, $CellContext`min2$, $CellContext`condition$, \
$CellContext`q$, $CellContext`beaker$, $CellContext`plot$}, $CellContext`a$ = 
         7500; $CellContext`b$ = 1000; $CellContext`R$ = 
         8.314; $CellContext`Gibbs$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`x$ (
             1 - $CellContext`x$)) ($CellContext`a$ + $CellContext`b$ (1 - 
              2 $CellContext`x$)) + ($CellContext`R$ $CellContext`T$$) \
($CellContext`x$ Log[$CellContext`x$] + (1 - $CellContext`x$) 
             Log[1 - $CellContext`x$]); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Y1 == $CellContext`Gibbs$[$CellContext`X1], \
$CellContext`Y2 == $CellContext`Gibbs$[$CellContext`X2], 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X1] == 
             Derivative[1][$CellContext`Gibbs$][$CellContext`X2], 
             Derivative[
              1][$CellContext`Gibbs$][$CellContext`X1] == ($CellContext`Y2 - \
$CellContext`Y1)/($CellContext`X2 - $CellContext`X1)}, {$CellContext`X1, 
             0.001}, {$CellContext`X2, 0.999}, {$CellContext`Y1, 
             0}, {$CellContext`Y2, 0}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`X1, $CellContext`sol$]; $CellContext`x2$ = 
         ReplaceAll[$CellContext`X2, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`Y1, $CellContext`sol$]; $CellContext`y2$ = 
         ReplaceAll[$CellContext`Y2, $CellContext`sol$]; $CellContext`tangent$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`y1$ + 
          Derivative[
            1][$CellContext`Gibbs$][$CellContext`x1$] ($CellContext`x$ - \
$CellContext`x1$); $CellContext`min1$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.0001}]]]; $CellContext`min2$ = ReplaceAll[$CellContext`x, 
           Last[
            FindMinimum[{
              $CellContext`Gibbs$[$CellContext`x], {$CellContext`x > 
               0, $CellContext`x < 1}}, {$CellContext`x, 
              0.9999}]]]; $CellContext`condition$ = $CellContext`T$$ >= 
          450; $CellContext`q$ = 
         Which[$CellContext`z$$ < $CellContext`x1$, 
           0, $CellContext`z$$ > $CellContext`x2$, 
           1, $CellContext`x1$ <= $CellContext`z$$ <= $CellContext`x2$, \
($CellContext`z$$ - $CellContext`x1$)/($CellContext`x2$ - $CellContext`x1$)]; \
$CellContext`beaker$ = Graphics3D[{{
             EdgeForm[None], 
             If[
              Or[$CellContext`condition$, 
               And[$CellContext`condition$ == False, 
                
                Or[$CellContext`z$$ < $CellContext`x1$, $CellContext`z$$ > \
$CellContext`x2$]]], {
               Opacity[0.8, 
                Blend[{Blue, 
                  RGBColor[0, 0.6, 0]}, 0.5]], 
               Cylinder[{{0, 0, 0}, {0, 0, 1}}, 0.75], 
               Text[
                Framed[
                 Style[
                  Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`z$$, {2, 2}]}], 18, Black], 
                 Background -> White, FrameStyle -> None, FrameMargins -> 
                 Small], {0, 0, 0.5}]}, {
               Opacity[0.8, Blue], 
               If[$CellContext`q$ < 1, 
                Cylinder[{{0, 0, 0}, {0, 0, 1 - $CellContext`q$}}, 0.75]], 
               Opacity[0.8, 
                RGBColor[0, 0.6, 0]], 
               If[$CellContext`q$ > 0, 
                Cylinder[{{0, 0, 1 - $CellContext`q$}, {0, 0, 1}}, 0.75]], 
               If[$CellContext`q$ < 1, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x1$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 0.5 (1 - $CellContext`q$)}]], 
               If[$CellContext`q$ > 0, 
                Text[
                 Framed[
                  Style[
                   Row[{
                    Style["x", Italic], " = ", 
                    NumberForm[$CellContext`x2$, {2, 2}]}], 18, Black], 
                  Background -> White, FrameStyle -> None, FrameMargins -> 
                  Small], {0, 0, 1 - 0.5 $CellContext`q$}]]}]}}, Boxed -> 
           False, ViewPoint -> Front, ImageSize -> {200, 425}, AspectRatio -> 
           2]; $CellContext`plot$ = Plot[{
            $CellContext`Gibbs$[$CellContext`x], 
            $CellContext`tangent$[$CellContext`x]}, {$CellContext`x, 0, 
            0.999}, PlotStyle -> {{Thick, Black}, 
             If[$CellContext`condition$, Transparent, 
              GrayLevel[0.5]]}, PlotRangePadding -> {None, 
             Scaled[0.02]}, Frame -> True, 
           FrameLabel -> {
            "mole fraction", "change in Gibbs free energy (J/mol)"}, 
           LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
           Full, ImagePadding -> {{80, 15}, {50, 10}}, Epilog -> {
             If[$CellContext`condition$, {}, {
               PointSize[0.03], Blue, 
               Point[{$CellContext`x1$, $CellContext`y1$}], 
               RGBColor[0, 0.6, 0], 
               Point[{$CellContext`x2$, $CellContext`y2$}]}], 
             PointSize[0.03], 
             Point[{$CellContext`z$$, 
               $CellContext`Gibbs$[$CellContext`z$$]}]}]; 
        Grid[{{$CellContext`plot$, $CellContext`beaker$}}]], 
      "Specifications" :> {{{$CellContext`T$$, 500, "temperature (K)"}, 275, 
         525, 5, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         1}, {{$CellContext`z$$, 0.6, "overall mole fraction"}, 0.01, 0.99, 
         0.01, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {252., 259.}},
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
 CellID->181355828,ExpressionUUID->"b528ac4e-8820-47d0-b6bb-1550ea9309d9"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"31b2e89a-4806-460d-bcaf-b32a1f9b7dcd"],

Cell[TextData[{
 "For the non-ideal mixture modeled in this simulation, the change in Gibbs \
free energy when two components are mixed (",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", "G"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"a84807dc-f7da-4a4b-8b8d-7eb699cf9cfb"],
 " in units of J/mol) is:"
}], "DetailNotes",
 CellID->315459046,ExpressionUUID->"0a4154c1-db4d-4d1b-8650-dc5ef447961b"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", "G"}], "=", 
    RowBox[{
     RowBox[{"x", " ", 
      RowBox[{"(", 
       RowBox[{"1", "-", "x"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"a", "+", 
        RowBox[{"b", " ", 
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"2", " ", "x"}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"R", " ", "T", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"x", " ", "ln", " ", 
         RowBox[{"(", "x", ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], " ", "ln", " ", 
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}]}]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"89932833-a69a-481a-8b0e-cd88220e722b"],
 ","
}], "DetailNotes",
 CellID->58425116,ExpressionUUID->"06cb87cb-1be4-46be-acde-1be315b1e1ad"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "47c27b4a-9037-47b9-ba6b-9ffcef8db76d"],
 " is the mole fraction of one component in a binary mixture (",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "-", "x"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "a609fd9c-56ef-48d5-bbe1-81e042733ecc"],
 " is the mole fraction of the second component), ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]], "InlineMath",ExpressionUUID->
  "dd488a9d-30a7-4881-9f75-3d03230eb943"],
 " and ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]], "InlineMath",ExpressionUUID->
  "d766af13-5054-40c4-a968-32f9e45b27b4"],
 " are constants, ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]], "InlineMath",ExpressionUUID->
  "66b8f093-e390-4c09-aa3f-b9cd8ccacdb9"],
 " is the gas constant (J/[mol K]), and ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath",ExpressionUUID->
  "75736b0d-4403-4e3e-a455-4edf302b9a5f"],
 " is temperature (K)."
}], "DetailNotes",
 CellID->38296980,ExpressionUUID->"a2a1f752-94f5-4ba8-8553-06168a4ab022"],

Cell[TextData[{
 "The ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", "G"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"74a66f3e-26bd-4c28-9ef5-f7eca0b227da"],
 " of mixing is composed of two parts. The Gibbs free energy of mixing for an \
ideal solution is:"
}], "DetailNotes",
 CellID->569469960,ExpressionUUID->"5a60145d-9b30-4591-a70a-8e1fe0ea7d17"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
     SuperscriptBox["G", 
      StyleBox["is",
       FontSlant->"Plain"]]}], "=", 
    RowBox[{"R", " ", "T", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"x", " ", "ln", " ", 
        RowBox[{"(", "x", ")"}]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}], " ", "ln", " ", 
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}]}]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath",
  InitializationCell->True,ExpressionUUID->
  "6709a042-b112-4ca2-8ecb-f8ce16090f20"],
 "."
}], "DetailNotes",
 CellID->94544615,ExpressionUUID->"acdfedf0-4628-41a6-92d6-515ab394023b"],

Cell["\<\
The empirical term that models non-ideal behavior is the excess Gibbs free \
energy:\
\>", "DetailNotes",
 CellID->507476432,ExpressionUUID->"59b55cc0-e17f-4b38-b4e9-24ffb76059ad"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["G", 
     StyleBox["E",
      FontSlant->"Plain"]], "=", 
    RowBox[{"x", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "x"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{"a", "+", 
       RowBox[{"b", " ", 
        RowBox[{"(", 
         RowBox[{"1", "-", 
          RowBox[{"2", " ", "x"}]}], ")"}]}]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"ccde7a2b-252f-412d-b6cc-e3eb9dca6f9e"],
 "."
}], "DetailNotes",
 CellID->282467022,ExpressionUUID->"13d63401-a50a-41b0-bff8-9ce6a1abe798"],

Cell[TextData[{
 "For this system, the mixture separates into two liquid phases over some \
range of composition; each phase contains both components. Phase separation \
occurs if the two phases have a lower Gibbs free energy than a single phase. \
This means if a linear combination of the Gibbs free energies of the two \
phases (determined in the graph by a line tangent to the curve at two points) \
is lower than the Gibbs free energy of the mixture, then phase separation \
occurs. As the temperature increases, the range of compositions where phase \
separation occurs decreases. Mathematically, the two points where the tangent \
line intersects the curve are the mole fractions where the derivative of ",
 Cell[BoxData[
  FormBox["G", TraditionalForm]], "InlineMath",ExpressionUUID->
  "98b60024-e063-4894-97f9-71c4d48809b4"],
 " with respect to ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "749a02c3-968e-4b44-ba30-b3f7a19d25d5"],
 " is same. "
}], "DetailNotes",
 CellID->56993877,ExpressionUUID->"434c79cd-c654-4032-8a6b-a12c1f48cb35"],

Cell["References", "DetailNotes",
 CellID->565466099,ExpressionUUID->"63a1c02c-6989-4f34-a94e-c2c85baf2555"],

Cell[TextData[{
 "[1] S. R. Logan, \[OpenCurlyDoubleQuote]The Behavior of a Pair of Partially \
Miscible Liquids,\[CloseCurlyDoubleQuote]\[NonBreakingSpace]",
 StyleBox["Journal of Chemical Education",
  FontSlant->"Italic"],
 ", ",
 StyleBox["75",
  FontWeight->"Bold"],
 "(3), 1998 p. 339. ",
 ButtonBox["doi:10.1021/ed075p339",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://dx.doi.org/10.1021/ed075p339"], 
    "http://dx.doi.org/10.1021/ed075p339"},
  ButtonNote->"http://dx.doi.org/10.1021/ed075p339"],
 "."
}], "DetailNotes",
 CellID->461256639,ExpressionUUID->"2fcbf38d-f07a-4018-a42a-c94e5a872478"],

Cell[TextData[{
 "[2] J. P. Erikson, \[OpenCurlyDoubleQuote]Partially Miscible \
Water-Triethylamine Solutions and Their Temperature Dependence,\
\[CloseCurlyDoubleQuote]\[NonBreakingSpace]",
 StyleBox["Journal of Chemical Education",
  FontSlant->"Italic"],
 ", ",
 StyleBox["94",
  FontWeight->"Bold"],
 "(1), 2017 pp. 75\[Dash]78. ",
 ButtonBox["doi:10.1021/acs.jchemed.6b00489",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://dx.doi.org/10.1021/acs.jchemed.6b00489"], 
    "http://dx.doi.org/10.1021/acs.jchemed.6b00489"},
  ButtonNote->"http://dx.doi.org/10.1021/acs.jchemed.6b00489"],
 "."
}], "DetailNotes",
 CellID->700494410,ExpressionUUID->"d2b1fea5-a3d1-4642-b159-0ac080b70b4e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"050b85a6-39be-497f-91a7-5591bd755ae2"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"16dca438-8aec-476a-b2b4-30a59d16f0ce"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"37783c9e-1581-499e-9abd-b0684d7556c8"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "48d336fa-bd77-4215-ace4-92292ab057c3"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"b7b55bdb-8b6c-48c8-b183-4a091946dc9a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"b2ae1f1f-9f8f-41c2-855f-37233d4a0a8f"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"c2fab865-6665-44e5-904e-d25b7e495907"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "627af9c3-5189-497c-9dd1-2c294a1f8fb1"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"4de38519-015b-48b4-84d2-\
9e9884292fdf"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"09c01918-efc0-42b2-aac9-18d1265f61a2"]}],
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
  "SliderZoom",ExpressionUUID->"87f3c197-8f20-4f06-8606-ac281516a514"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "6b6f1d62-355e-4e18-8c62-947954a76954"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"7b5c1fcf-3980-4f3a-a7d1-6b1a82f33e4e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "e0dde2d8-b871-4081-a62a-6b48bdb72b21"]}],
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
  "AutomaticAnimation",ExpressionUUID->"7477f433-08ac-4e58-8320-da8dde0749f4"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "2fc99470-f7e7-417a-bf32-23d25e947a33"]}],
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
  "BookmarkAnimation",ExpressionUUID->"ab166bb2-b755-4ca2-9780-77c024be49df"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"ec82aac2-73ed-4f89-aec0-45e8793ce5c6"],

Cell["partial miscibility", "SearchTerms",
 CellID->763654881,ExpressionUUID->"1b5973fc-c326-4166-899f-5a2e7e851371"],

Cell["chemical engineering", "SearchTerms",
 CellID->511780871,ExpressionUUID->"d434c549-920e-45a4-87ba-f384dcfbdf16"],

Cell["phase equilibria", "SearchTerms",
 CellID->50118293,ExpressionUUID->"3ff3a454-32a2-471c-9e24-9b04faf21320"],

Cell["thermodynamics", "SearchTerms",
 CellID->60675028,ExpressionUUID->"5255728a-5caa-4437-955f-5cb7ce97bc53"],

Cell["separations", "SearchTerms",
 CellID->308831476,ExpressionUUID->"506814b0-e5ea-465a-b47f-8698a041222e"],

Cell["Gibbs free energy", "SearchTerms",
 CellID->314883561,ExpressionUUID->"2ed2b3bb-3020-4fab-877a-e97e51252b69"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"f0b87e52-8bba-4cf6-815d-8684ed1115a7"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"06b45287-7a13-453b-b6b4-a2bc3f7d7366"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Kaiyuan Tang",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Kaiyuan+Tang"], 
    None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Kaiyuan+Tang"]
}], "Author",
 CellID->93304733,ExpressionUUID->"15858967-b3a3-4565-91d4-a7feb5ea5313"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael+L.+\
Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael+L.+Baumann"],
 " and ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John+L.+\
Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John+L.+Falconer"],
 " "
}], "Author",
 CellID->763253334,ExpressionUUID->"b0efb732-f756-4b48-b037-e9fe6edefac0"],

Cell["\<\
Department of Chemical and Biological Engineering, University of Colorado \
Boulder\
\>", "Author",
 CellID->116958169,ExpressionUUID->"2b2bca66-9ed9-4a56-8ae9-40c1218b1235"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.2 for Microsoft Windows (64-bit) (September 10, 2017)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[59720, 1341, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"37783c9e-1581-499e-9abd-b0684d7556c8",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[60151, 1353, 799, 19, 22, "ControlSuggestions",ExpressionUUID->"b7b55bdb-8b6c-48c8-b183-4a091946dc9a",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[60953, 1374, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"c2fab865-6665-44e5-904e-d25b7e495907",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[61413, 1389, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"4de38519-015b-48b4-84d2-9e9884292fdf",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[62177, 1410, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"87f3c197-8f20-4f06-8606-ac281516a514",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[63140, 1435, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"7b5c1fcf-3980-4f3a-a7d1-6b1a82f33e4e",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[63568, 1448, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"7477f433-08ac-4e58-8320-da8dde0749f4",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[65156, 1484, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"ab166bb2-b755-4ca2-9780-77c024be49df",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 68958, 1597},
 {"RotateAndZoomIn3D", 69123, 1600},
 {"DragLocators", 69288, 1603},
 {"CreateAndDeleteLocators", 69459, 1606},
 {"SliderZoom", 69628, 1609},
 {"GamepadControls", 69789, 1612},
 {"AutomaticAnimation", 69958, 1615},
 {"BookmarkAnimation", 70130, 1618}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 154, 2, 74, "DemoTitle",ExpressionUUID->"9efa1ca7-483a-4b63-aa32-0477ced04418"],
Cell[1667, 39, 88, 0, 275, "InitializationSection",ExpressionUUID->"fc9375ae-24a3-4a3a-895e-79748f3e308c"],
Cell[CellGroupData[{
Cell[1780, 43, 84, 0, 189, "ManipulateSection",ExpressionUUID->"24717b7c-d0bc-4d22-a420-0f3c7671164c"],
Cell[CellGroupData[{
Cell[1889, 47, 16429, 393, 1039, "Input",ExpressionUUID->"014976e5-480e-4ffc-8e4d-f13bddf0e56d"],
Cell[18321, 442, 8193, 163, 523, "Output",ExpressionUUID->"250f97dc-9c51-4676-a4e3-64e20201d39f",
 CellID->140950684]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[26560, 611, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"eb7707dd-f405-4c40-91c9-b5b988fe15a0"],
Cell[26654, 613, 1081, 14, 82, "ManipulateCaption",ExpressionUUID->"80e3aab7-2de0-464a-92a5-9cfc8d7bfb6f",
 CellID->17131045]
}, Open  ]],
Cell[CellGroupData[{
Cell[27772, 632, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"1aa5a5fa-7f33-4af0-8938-1d4289dd99b3"],
Cell[27858, 634, 8193, 163, 523, "Output",ExpressionUUID->"c052b4aa-a6f6-4d1f-b96b-ae7fde5e9df1",
 CellID->138454952]
}, Open  ]],
Cell[CellGroupData[{
Cell[36088, 802, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"58522834-e7ca-43a2-87ce-2b0745130ec8"],
Cell[36174, 804, 8197, 163, 523, "Output",ExpressionUUID->"edbdbbae-e751-4e57-8d71-0274ea37fc36",
 CellID->729526653],
Cell[44374, 969, 8193, 163, 523, "Output",ExpressionUUID->"b528ac4e-8820-47d0-b6bb-1550ea9309d9",
 CellID->181355828]
}, Open  ]],
Cell[CellGroupData[{
Cell[52604, 1137, 81, 0, 335, "DetailsSection",ExpressionUUID->"31b2e89a-4806-460d-bcaf-b32a1f9b7dcd"],
Cell[52688, 1139, 436, 9, 23, "DetailNotes",ExpressionUUID->"0a4154c1-db4d-4d1b-8650-dc5ef447961b",
 CellID->315459046],
Cell[53127, 1150, 930, 28, 23, "DetailNotes",ExpressionUUID->"06cb87cb-1be4-46be-acde-1be315b1e1ad",
 CellID->58425116],
Cell[54060, 1180, 1091, 28, 38, "DetailNotes",ExpressionUUID->"a2a1f752-94f5-4ba8-8553-06168a4ab022",
 CellID->38296980],
Cell[55154, 1210, 394, 9, 23, "DetailNotes",ExpressionUUID->"5a60145d-9b30-4591-a70a-8e1fe0ea7d17",
 CellID->569469960],
Cell[55551, 1221, 730, 23, 23, "DetailNotes",ExpressionUUID->"acdfedf0-4628-41a6-92d6-515ab394023b",
 CellID->94544615],
Cell[56284, 1246, 190, 4, 22, "DetailNotes",ExpressionUUID->"59b55cc0-e17f-4b38-b4e9-24ffb76059ad",
 CellID->507476432],
Cell[56477, 1252, 587, 19, 23, "DetailNotes",ExpressionUUID->"13d63401-a50a-41b0-bff8-9ce6a1abe798",
 CellID->282467022],
Cell[57067, 1273, 1086, 19, 68, "DetailNotes",ExpressionUUID->"434c79cd-c654-4032-8a6b-a12c1f48cb35",
 CellID->56993877],
Cell[58156, 1294, 108, 1, 22, "DetailNotes",ExpressionUUID->"63a1c02c-6989-4f34-a94e-c2c85baf2555",
 CellID->565466099],
Cell[58267, 1297, 618, 17, 22, "DetailNotes",ExpressionUUID->"2fcbf38d-f07a-4018-a42a-c94e5a872478",
 CellID->461256639],
Cell[58888, 1316, 700, 18, 22, "DetailNotes",ExpressionUUID->"d2b1fea5-a3d1-4642-b159-0ac080b70b4e",
 CellID->700494410]
}, Open  ]],
Cell[CellGroupData[{
Cell[59625, 1339, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"050b85a6-39be-497f-91a7-5591bd755ae2"],
Cell[59720, 1341, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"37783c9e-1581-499e-9abd-b0684d7556c8",
 CellTags->"ResizeImages"],
Cell[60151, 1353, 799, 19, 22, "ControlSuggestions",ExpressionUUID->"b7b55bdb-8b6c-48c8-b183-4a091946dc9a",
 CellTags->"RotateAndZoomIn3D"],
Cell[60953, 1374, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"c2fab865-6665-44e5-904e-d25b7e495907",
 CellTags->"DragLocators"],
Cell[61413, 1389, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"4de38519-015b-48b4-84d2-9e9884292fdf",
 CellTags->"CreateAndDeleteLocators"],
Cell[62177, 1410, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"87f3c197-8f20-4f06-8606-ac281516a514",
 CellTags->"SliderZoom"],
Cell[63140, 1435, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"7b5c1fcf-3980-4f3a-a7d1-6b1a82f33e4e",
 CellTags->"GamepadControls"],
Cell[63568, 1448, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"7477f433-08ac-4e58-8320-da8dde0749f4",
 CellTags->"AutomaticAnimation"],
Cell[65156, 1484, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"ab166bb2-b755-4ca2-9780-77c024be49df",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[66223, 1513, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"ec82aac2-73ed-4f89-aec0-45e8793ce5c6"],
Cell[66311, 1515, 117, 1, 22, "SearchTerms",ExpressionUUID->"1b5973fc-c326-4166-899f-5a2e7e851371",
 CellID->763654881],
Cell[66431, 1518, 118, 1, 22, "SearchTerms",ExpressionUUID->"d434c549-920e-45a4-87ba-f384dcfbdf16",
 CellID->511780871],
Cell[66552, 1521, 113, 1, 22, "SearchTerms",ExpressionUUID->"3ff3a454-32a2-471c-9e24-9b04faf21320",
 CellID->50118293],
Cell[66668, 1524, 111, 1, 22, "SearchTerms",ExpressionUUID->"5255728a-5caa-4437-955f-5cb7ce97bc53",
 CellID->60675028],
Cell[66782, 1527, 109, 1, 22, "SearchTerms",ExpressionUUID->"506814b0-e5ea-465a-b47f-8698a041222e",
 CellID->308831476],
Cell[66894, 1530, 115, 1, 22, "SearchTerms",ExpressionUUID->"2ed2b3bb-3020-4fab-877a-e97e51252b69",
 CellID->314883561]
}, Open  ]],
Cell[67024, 1534, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"f0b87e52-8bba-4cf6-815d-8684ed1115a7"],
Cell[CellGroupData[{
Cell[67135, 1538, 80, 0, 129, "AuthorSection",ExpressionUUID->"06b45287-7a13-453b-b6b4-a2bc3f7d7366"],
Cell[67218, 1540, 370, 10, 22, "Author",ExpressionUUID->"15858967-b3a3-4565-91d4-a7feb5ea5313",
 CellID->93304733],
Cell[67591, 1552, 671, 19, 22, "Author",ExpressionUUID->"b0efb732-f756-4b48-b037-e9fe6edefac0",
 CellID->763253334],
Cell[68265, 1573, 184, 4, 22, "Author",ExpressionUUID->"2b2bca66-9ed9-4a56-8ae9-40c1218b1235",
 CellID->116958169]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature GxTSJH@OpDwYvCKncGUrqxBD *)
