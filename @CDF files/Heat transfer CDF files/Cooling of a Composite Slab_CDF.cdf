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
NotebookDataLength[     93197,       2161]
NotebookOptionsPosition[     85259,       2005]
NotebookOutlinePosition[     87410,       2060]
CellTagsIndexPosition[     87082,       2048]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Cooling of a Composite Slab", "DemoTitle",ExpressionUUID->"de94bc3f-3d33-467c-8578-1969c0abf7e7"],

Cell["", "InitializationSection",ExpressionUUID->"2659ab6e-9f1a-46c7-96b4-2adf8f3206b7"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"f2db5c75-d7dc-4a62-b420-220bea416769"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "u", "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"u", "=", 
       RowBox[{"NDSolveValue", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{
              SubscriptBox["\[PartialD]", "t"], 
              RowBox[{"\[CapitalTheta]", "[", 
               RowBox[{"t", ",", "\[Xi]"}], "]"}]}], "-", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"\[Xi]", "<", "\[Lambda]"}], ",", "\[Alpha]1", ",", 
                "\[Alpha]2"}], "]"}], 
              RowBox[{
               SubscriptBox["\[PartialD]", 
                RowBox[{"\[Xi]", ",", "\[Xi]"}]], 
               RowBox[{"\[CapitalTheta]", "[", 
                RowBox[{"t", ",", "\[Xi]"}], "]"}]}]}]}], "\[Equal]", 
            RowBox[{
             RowBox[{"NeumannValue", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "Bi1"}], " ", 
                RowBox[{"\[CapitalTheta]", "[", 
                 RowBox[{"t", ",", "\[Xi]"}], "]"}]}], ",", 
               RowBox[{"\[Xi]", "\[Equal]", "0"}]}], "]"}], "+", 
             RowBox[{"NeumannValue", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "Bi2"}], " ", 
                RowBox[{"\[CapitalTheta]", "[", 
                 RowBox[{"t", ",", "\[Xi]"}], "]"}]}], ",", 
               RowBox[{"\[Xi]", "\[Equal]", "1"}]}], "]"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"\[CapitalTheta]", "[", 
             RowBox[{"0", ",", "\[Xi]"}], "]"}], "\[Equal]", "1"}]}], 
          "\[IndentingNewLine]", "}"}], ",", "\[CapitalTheta]", ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", ",", "10"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Xi]", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"Method", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<MethodOfLines\>\"", ",", 
            RowBox[{
            "\"\<SpatialDiscretization\>\"", "\[Rule]", 
             "\"\<FiniteElement\>\""}]}], "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"u", "[", 
           RowBox[{"time", ",", "\[Xi]"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"\[Xi]", ",", "0", ",", "1"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Black"}], "}"}]}], ",", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.1"}], ",", "1.1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
          RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Frame", "\[Rule]", "True"}], ",", 
          RowBox[{"FrameTicks", "\[Rule]", "True"}], ",", 
          RowBox[{"FrameLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Row", "@", 
              RowBox[{"{", 
               RowBox[{"\"\<thickness = \>\"", ",", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                "\"\</\>\"", ",", 
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<L\>\"", ",", "Italic"}], "]"}]}], "}"}]}], ",", 
             RowBox[{"Row", "@", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Row", "@", 
                 RowBox[{"Riffle", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "#"}], 
                    "]"}], "&"}], "/@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<\>\"", ",", "\"\<\[Infinity]\>\""}], "}"}]}],
                    ",", "\"\<-\>\""}], "]"}]}], "/", 
                RowBox[{"Row", "@", 
                 RowBox[{"Riffle", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "#"}], 
                    "]"}], "&"}], "/@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<0\>\"", ",", "\"\<\[Infinity]\>\""}], 
                    "}"}]}], ",", "\"\<-\>\""}], "]"}]}]}], "}"}]}]}], 
            "}"}]}], ",", 
          RowBox[{"LabelStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
          RowBox[{"ImagePadding", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"80", ",", "10"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"50", ",", "10"}], "}"}]}], "}"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Epilog", "\[Rule]", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"\[Lambda]", ">", "0"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<A\>\"", ",", "22"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"0.5", "*", "\[Lambda]"}], ",", "0.05"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"\[Lambda]", "<", "1"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<B\>\"", ",", "22"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"\[Lambda]", "+", 
                    RowBox[{"0.5", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "\[Lambda]"}], ")"}]}]}], ",", "0.05"}],
                   "}"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
             "Thick", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "0.1"}], ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"1", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1.1", ",", "0"}], "}"}]}], "}"}], "]"}]}], 
            "\[IndentingNewLine]", "}"}]}]}], "]"}], ",", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"RectangleChart", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Lambda]", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"1", "-", "\[Lambda]"}], ",", "1"}], "}"}]}], "}"}], 
          ",", 
          RowBox[{"ChartStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", 
              RowBox[{"0.25", ",", "Yellow"}], "]"}], ",", 
             RowBox[{"Opacity", "[", 
              RowBox[{"0.25", ",", 
               RowBox[{"Darker", "@", "Green"}]}], "]"}]}], "}"}]}], ",", 
          RowBox[{"BarSpacing", "\[Rule]", "None"}], ",", 
          RowBox[{"Axes", "\[Rule]", "False"}], ",", 
          RowBox[{"ChartBaseStyle", "\[Rule]", 
           RowBox[{"EdgeForm", "@", "Black"}]}]}], "]"}], ",", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "@", "Black"}], ",", 
             RowBox[{"FaceForm", "@", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"0.75", ",", "1", ",", "1"}], "]"}]}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "0.1"}], ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1.1", ",", "1"}], "}"}]}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                   "\"\<\[Infinity]\>\""}], "]"}], ",", "22"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"#", ",", "0.5"}], "}"}]}], "]"}], "&"}], "/@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.05"}], ",", "1.05"}], "}"}]}]}], 
          "\[IndentingNewLine]", "}"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "380"}], "}"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"time", ",", "0", ",", "\"\<time (s)\>\""}], "}"}], ",", 
          "0", ",", "10", ",", "0.1", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Lambda]", ",", "0.4", ",", "\"\<thickness of A\>\""}], 
           "}"}], ",", "0", ",", "1", ",", "0.1", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Row", "@", 
        RowBox[{"{", 
         RowBox[{"\"\<thermal diffusivity (\>\"", ",", 
          RowBox[{"Superscript", "[", 
           RowBox[{"\"\<cm\>\"", ",", "2"}], "]"}], ",", "\"\</s):\>\""}], 
         "}"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Alpha]1", ",", "0.05", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<\[Alpha]\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<A\>\""}], "]"}]}], "}"}], ",", "0.005", ",", "1", ",", 
          "0.005", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Alpha]2", ",", "0.02", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<\[Alpha]\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<B\>\""}], "]"}]}], "}"}], ",", "0.005", ",", "1", ",", 
          "0.005", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{"\"\<Biot number:\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Bi1", ",", "1", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{"\"\<Bi\>\"", ",", "\"\<A\>\""}], "]"}]}], "}"}], ",", 
          "0.01", ",", "2", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Bi2", ",", "0.5", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{"\"\<Bi\>\"", ",", "\"\<B\>\""}], "]"}]}], "}"}], ",", 
          "0.01", ",", "2", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}]}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",ExpressionUUID->"419ef605-0922-412e-a986-522a82c62a24"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 1, $CellContext`Bi2$$ = 
    0.5, $CellContext`time$$ = 0, $CellContext`\[Alpha]1$$ = 
    0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 0.4, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 0, "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.4, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 1, 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 0.5, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6282$$ = 0, $CellContext`\[Lambda]$6283$$ = 
    0, $CellContext`\[Alpha]1$6284$$ = 0, $CellContext`\[Alpha]2$6285$$ = 
    0, $CellContext`Bi1$6286$$ = 0, $CellContext`Bi2$6287$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 1, $CellContext`Bi2$$ = 
        0.5, $CellContext`time$$ = 0, $CellContext`\[Alpha]1$$ = 
        0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 
        0.4}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6282$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6283$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6284$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6285$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6286$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6287$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 0, "time (s)"}, 0, 10, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.4, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 1, 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 0.5, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->103332542,ExpressionUUID->"fd5780ae-a7ac-4771-aa8e-c8f17dc3469a"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"8f93be49-6d88-4071-9877-4d75d767e4a0"],

Cell[TextData[{
 "This Demonstration shows the transient cooling of a composite slab, which \
consists of two layers (A, B) that can have different thermal diffusivities, \
thicknesses, and Biot numbers. The slab, which  initially is at a uniform \
temperature ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "0"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b6af001c-999b-4c78-a91a-f0799b7ce023"],
 ", is immersed at time ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "=", "0"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "5e023f2e-a8f2-49f4-8303-3dafe1aa6ee5"],
 " into a well-stirred, cooling bath that contains a fluid at constant \
temperature ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "\[Infinity]"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"9c58dab8-a53c-4f24-a4f7-d0f75e325e39"],
 ". The composite is infinitely long and tall, so only two sides are exposed \
to the cooling bath. The thermal diffusivities and Biot numbers for each \
layer are set with sliders, and the thickness of layer A is also set with a \
slider. Moving the time slider to the right shows the temperature profile at \
later times. "
}], "ManipulateCaption",
 CellID->63089936,ExpressionUUID->"2858db86-b64f-4477-a5d9-e512c176c059"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"98c9f5a6-1f25-4a0d-8a76-96a4a5b4696c"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 
    0.06999999999999999, $CellContext`Bi2$$ = 1.24, $CellContext`time$$ = 
    5.8, $CellContext`\[Alpha]1$$ = 0.05, $CellContext`\[Alpha]2$$ = 
    0.02, $CellContext`\[Lambda]$$ = 0.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 5.8, "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.2, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 0.06999999999999999, 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 1.24, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6365$$ = 0, $CellContext`\[Lambda]$6366$$ = 
    0, $CellContext`\[Alpha]1$6367$$ = 0, $CellContext`\[Alpha]2$6368$$ = 
    0, $CellContext`Bi1$6369$$ = 0, $CellContext`Bi2$6370$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 
        0.06999999999999999, $CellContext`Bi2$$ = 1.24, $CellContext`time$$ = 
        5.8, $CellContext`\[Alpha]1$$ = 0.05, $CellContext`\[Alpha]2$$ = 
        0.02, $CellContext`\[Lambda]$$ = 0.2}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6365$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6366$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6367$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6368$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6369$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6370$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 5.8, "time (s)"}, 0, 10, 
         0.1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.2, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 0.06999999999999999, 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 1.24, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->61594585,ExpressionUUID->"b572a2bc-3a93-4d5e-b5d3-2cbb24920dae"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"d2bc8bdb-139c-4f8d-9dfb-80c4377abade"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 1., $CellContext`Bi2$$ = 
    0.5, $CellContext`time$$ = 2., $CellContext`\[Alpha]1$$ = 
    0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 0.4, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 2., "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.4, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 1., 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 0.5, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6448$$ = 0, $CellContext`\[Lambda]$6449$$ = 
    0, $CellContext`\[Alpha]1$6450$$ = 0, $CellContext`\[Alpha]2$6451$$ = 
    0, $CellContext`Bi1$6452$$ = 0, $CellContext`Bi2$6453$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 1., $CellContext`Bi2$$ = 
        0.5, $CellContext`time$$ = 2., $CellContext`\[Alpha]1$$ = 
        0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 
        0.4}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6448$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6449$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6450$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6451$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6452$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6453$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 2., "time (s)"}, 0, 10, 0.1,
          Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.4, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 1., 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 0.5, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->864903319,ExpressionUUID->"2e5a3d48-722a-4b74-8008-2f23443268d6"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 1.8, $CellContext`Bi2$$ = 
    0.01, $CellContext`time$$ = 3.6, $CellContext`\[Alpha]1$$ = 
    0.47500000000000003`, $CellContext`\[Alpha]2$$ = 
    0.02, $CellContext`\[Lambda]$$ = 0.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 3.6, "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.2, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.47500000000000003`, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 1.8, 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 0.01, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6531$$ = 0, $CellContext`\[Lambda]$6532$$ = 
    0, $CellContext`\[Alpha]1$6533$$ = 0, $CellContext`\[Alpha]2$6534$$ = 
    0, $CellContext`Bi1$6535$$ = 0, $CellContext`Bi2$6536$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 1.8, $CellContext`Bi2$$ = 
        0.01, $CellContext`time$$ = 3.6, $CellContext`\[Alpha]1$$ = 
        0.47500000000000003`, $CellContext`\[Alpha]2$$ = 
        0.02, $CellContext`\[Lambda]$$ = 0.2}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6531$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6532$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6533$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6534$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6535$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6536$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 3.6, "time (s)"}, 0, 10, 
         0.1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.2, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 
          0.47500000000000003`, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 1.8, 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 0.01, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->364162480,ExpressionUUID->"63a54b08-44fb-4333-8454-fbb39b511ca7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 
    0.06999999999999999, $CellContext`Bi2$$ = 1.24, $CellContext`time$$ = 
    5.8, $CellContext`\[Alpha]1$$ = 0.05, $CellContext`\[Alpha]2$$ = 
    0.02, $CellContext`\[Lambda]$$ = 0.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 5.8, "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.2, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 0.06999999999999999, 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 1.24, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6614$$ = 0, $CellContext`\[Lambda]$6615$$ = 
    0, $CellContext`\[Alpha]1$6616$$ = 0, $CellContext`\[Alpha]2$6617$$ = 
    0, $CellContext`Bi1$6618$$ = 0, $CellContext`Bi2$6619$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 
        0.06999999999999999, $CellContext`Bi2$$ = 1.24, $CellContext`time$$ = 
        5.8, $CellContext`\[Alpha]1$$ = 0.05, $CellContext`\[Alpha]2$$ = 
        0.02, $CellContext`\[Lambda]$$ = 0.2}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6614$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6615$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6616$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6617$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6618$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6619$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 5.8, "time (s)"}, 0, 10, 
         0.1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.2, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 0.06999999999999999, 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 1.24, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->67915979,ExpressionUUID->"278a62c6-0283-4987-9f2e-1806d01f66e1"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi1$$ = 1.33, $CellContext`Bi2$$ = 
    0.26, $CellContext`time$$ = 0., $CellContext`\[Alpha]1$$ = 
    0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 0.8, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`time$$], 0., "time (s)"}, 0, 10, 0.1}, {{
       Hold[$CellContext`\[Lambda]$$], 0.8, "thickness of A"}, 0, 1, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]1$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005}, {{
       Hold[$CellContext`\[Alpha]2$$], 0.02, 
       Subscript[
        Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s):"}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi1$$], 1.33, 
       Subscript["Bi", "A"]}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`Bi2$$], 0.26, 
       Subscript["Bi", "B"]}, 0.01, 2, 0.01}, {
      Hold[
       Grid[{{"Biot number:", 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {187., 193.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`time$6697$$ = 0, $CellContext`\[Lambda]$6698$$ = 
    0, $CellContext`\[Alpha]1$6699$$ = 0, $CellContext`\[Alpha]2$6700$$ = 
    0, $CellContext`Bi1$6701$$ = 0, $CellContext`Bi2$6702$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi1$$ = 1.33, $CellContext`Bi2$$ = 
        0.26, $CellContext`time$$ = 0., $CellContext`\[Alpha]1$$ = 
        0.05, $CellContext`\[Alpha]2$$ = 0.02, $CellContext`\[Lambda]$$ = 
        0.8}, "ControllerVariables" :> {
        Hold[$CellContext`time$$, $CellContext`time$6697$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$6698$$, 0], 
        Hold[$CellContext`\[Alpha]1$$, $CellContext`\[Alpha]1$6699$$, 0], 
        Hold[$CellContext`\[Alpha]2$$, $CellContext`\[Alpha]2$6700$$, 0], 
        Hold[$CellContext`Bi1$$, $CellContext`Bi1$6701$$, 0], 
        Hold[$CellContext`Bi2$$, $CellContext`Bi2$6702$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$}, $CellContext`u$ = NDSolveValue[{D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`t] - 
             If[$CellContext`\[Xi] < $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]1$$, $CellContext`\[Alpha]2$$] D[
               $CellContext`\[CapitalTheta][$CellContext`t, \
$CellContext`\[Xi]], $CellContext`\[Xi], $CellContext`\[Xi]] == 
            NeumannValue[(-$CellContext`Bi1$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 0] + 
             NeumannValue[(-$CellContext`Bi2$$) \
$CellContext`\[CapitalTheta][$CellContext`t, $CellContext`\[Xi]], \
$CellContext`\[Xi] == 1], $CellContext`\[CapitalTheta][0, $CellContext`\[Xi]] == 
            1}, $CellContext`\[CapitalTheta], {$CellContext`t, 0, 
            10}, {$CellContext`\[Xi], 0, 1}, 
           Method -> {
            "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
        Show[
          Plot[
           $CellContext`u$[$CellContext`time$$, $CellContext`\[Xi]], \
{$CellContext`\[Xi], 0, 1}, PlotStyle -> {Thick, Black}, 
           PlotRange -> {{-0.1, 1.1}, {0, 1}}, PlotRangeClipping -> False, 
           Frame -> True, FrameTicks -> True, FrameLabel -> {
             Row[{"thickness = ", 
               Style["x", Italic], "/", 
               Style["L", Italic]}], 
             Row[{Row[
                 Riffle[
                  Map[Subscript[
                    Style["T", Italic], #]& , {"", "\[Infinity]"}], "-"]]/Row[
                Riffle[
                 Map[Subscript[
                   Style["T", Italic], #]& , {"0", "\[Infinity]"}], "-"]]}]}, 
           LabelStyle -> {17, Black}, ImagePadding -> {{80, 10}, {50, 10}}, 
           Epilog -> {
             If[$CellContext`\[Lambda]$$ > 0, 
              Text[
               Style["A", 22], {0.5 $CellContext`\[Lambda]$$, 0.05}]], 
             If[$CellContext`\[Lambda]$$ < 1, 
              Text[
               Style[
               "B", 22], {$CellContext`\[Lambda]$$ + 
                0.5 (1 - $CellContext`\[Lambda]$$), 0.05}]], Thick, 
             Line[{{-0.1, 0}, {0, 0}}], 
             Line[{{1, 0}, {1.1, 0}}]}], 
          
          RectangleChart[{{$CellContext`\[Lambda]$$, 1}, {
            1 - $CellContext`\[Lambda]$$, 1}}, ChartStyle -> {
             Opacity[0.25, Yellow], 
             Opacity[0.25, 
              Darker[Green]]}, BarSpacing -> None, Axes -> False, 
           ChartBaseStyle -> EdgeForm[Black]], 
          Graphics[{{
             EdgeForm[Black], 
             FaceForm[
              RGBColor[0.75, 1, 1]], 
             Rectangle[{-0.1, 0}, {0, 1}], 
             Rectangle[{1, 0}, {1.1, 1}]}, 
            Map[Text[
              Style[
               Subscript[
                Style["T", Italic], "\[Infinity]"], 22], {#, 0.5}]& , {-0.05, 
             1.05}]}], ImageSize -> {600, 380}]], 
      "Specifications" :> {{{$CellContext`time$$, 0., "time (s)"}, 0, 10, 0.1,
          Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`\[Lambda]$$, 0.8, "thickness of A"}, 0, 1, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}], {{$CellContext`\[Alpha]1$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "A"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`\[Alpha]2$$, 0.02, 
          Subscript[
           Style["\[Alpha]", Italic], "B"]}, 0.005, 1, 0.005, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s):"}], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`Bi1$$, 1.33, 
          Subscript["Bi", "A"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         5}, {{$CellContext`Bi2$$, 0.26, 
          Subscript["Bi", "B"]}, 0.01, 2, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 6}, 
        Grid[{{"Biot number:", 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {253., 260.}},
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
 CellID->811927951,ExpressionUUID->"440378dd-6f0e-44f1-98c2-30f5c093ca26"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"e1515398-64a7-49e7-92ba-a13f3382ac98"],

Cell["The heat equation describing this system is:", "DetailNotes",
 CellID->139525117,ExpressionUUID->"d7158bc9-2505-4be5-a2d8-c04e23070179"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "T"}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    RowBox[{"\[Alpha]", " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "T"}], 
      RowBox[{"\[PartialD]", 
       SuperscriptBox["x", "2"]}]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"dd5c3b0a-3f2f-4b03-beb0-c81d33776bdb"],
 ","
}], "DetailNotes",
 CellID->244644967,ExpressionUUID->"2654b548-66ad-486c-b5aa-2d2fa57b56cd"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"k", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", "T"}], 
       RowBox[{"\[PartialD]", "x"}]]}], "+", 
     RowBox[{"h", " ", 
      RowBox[{"(", 
       RowBox[{"T", "-", 
        SubscriptBox["T", "\[Infinity]"]}], ")"}]}]}], "=", "0"}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "ef1c54c7-2c6c-4034-8763-adf7b960c473"],
 ","
}], "DetailNotes",
 CellID->236066265,ExpressionUUID->"7b8ddaf2-cdab-473b-9fe8-87b4cdbe21f0"],

Cell[TextData[{
 "the boundary conditions at both ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "cb5a00e9-314a-4959-a738-836251bb7c9d"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "L"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "5d0b0375-e7e7-4412-9ec0-477113f8bbfc"],
 " is:"
}], "DetailNotes",
 CellID->59169893,ExpressionUUID->"0d1d9ef3-ad81-4492-9b52-60b26d034015"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"T", "(", 
     RowBox[{"0", ",", "x"}], ")"}], "=", 
    SubscriptBox["T", "0"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "fe423892-7ae1-4343-9258-522ab4c50966"],
 ","
}], "DetailNotes",
 CellID->77055256,ExpressionUUID->"41fd8d1d-9034-45f1-b4e4-2e4817f9622e"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "f6e1ce5b-67c6-44df-b3db-91041dd74bcd"],
 " is the space coordinate (cm), ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "ac904f14-6124-408a-806f-d83b9ad47605"],
 " is the thermal diffusivity (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["cm", "2"], "/", 
    StyleBox["s",
     FontSlant->"Plain"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "120160ba-42ba-405a-8c9c-77e3d5b2a701"],
 "), ",
 Cell[BoxData[
  FormBox["k", TraditionalForm]], "InlineMath",ExpressionUUID->
  "6837ebf2-c759-4e5d-b133-942ae091c1a7"],
 " is the thermal conductivity (W/[cm K]), and ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]], "InlineMath",ExpressionUUID->
  "f28373c3-3304-4657-aace-98ea9c57c917"],
 " is the heat transfer coefficient between the slab and the surrounding \
fluid (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"[", 
     RowBox[{
      StyleBox["W",
       FontSlant->"Plain"], " ", 
      SuperscriptBox["cm", "2"]}], "]"}], "/", 
    StyleBox["K",
     FontSlant->"Plain"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "fd438c03-8944-4185-94f6-40b17bd160e9"],
 ")."
}], "DetailNotes",
 CellID->316261692,ExpressionUUID->"8c523d6e-5c04-4b11-917b-00d1e2c7bf59"],

Cell["\<\
Dimensionless variables are introduced to solve the differential equation:\
\>", "DetailNotes",
 CellID->532961840,ExpressionUUID->"cac8aa26-ccb3-4f2d-9478-629070fdc438"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalTheta]", "=", 
    FractionBox[
     RowBox[{"T", "-", 
      SubscriptBox["T", "\[Infinity]"]}], 
     RowBox[{
      SubscriptBox["T", "0"], "-", 
      SubscriptBox["T", "\[Infinity]"]}]]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"1a59c9f0-66de-4289-93fe-67a1489136dd"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Xi]", "=", 
    RowBox[{"x", "/", "L"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"c1acc8f4-08a2-4383-b28f-19ccd3c33190"],
 "."
}], "DetailNotes",
 CellID->98364011,ExpressionUUID->"a88aa137-7ee6-444b-b974-69141806e5d8"],

Cell["The differential equation becomes:", "DetailNotes",
 CellID->530382782,ExpressionUUID->"64a2fed6-3e49-41cf-ab2c-f1973f40e54e"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "\[CapitalTheta]"}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    RowBox[{"\[Alpha]", " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "\[CapitalTheta]"}], 
      RowBox[{"\[PartialD]", 
       SuperscriptBox["\[Xi]", "2"]}]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f657f9f2-e4ad-43ce-9380-bf6715fa0b90"],
 ","
}], "DetailNotes",
 CellID->25640406,ExpressionUUID->"ebb3636d-0411-4b86-9090-c333c601c2bf"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{"\[PartialD]", "\[CapitalTheta]"}], 
      RowBox[{"\[PartialD]", "\[Xi]"}]], "+", 
     RowBox[{"Bi", " ", "\[CapitalTheta]"}]}], "=", "0"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"c1e1feee-9fa8-49f2-ad9a-aca1afef32db"],
 ","
}], "DetailNotes",
 CellID->229962029,ExpressionUUID->"43751169-faf7-4bfe-a171-d87ca4928108"],

Cell[TextData[{
 "at both ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Xi]", "=", "0"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"482b6e6c-9d2a-4559-8927-ff220f8e1d35"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Xi]", "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"a4da4ae3-947b-40ce-84cb-e6938fe5960f"],
 " with:"
}], "DetailNotes",
 CellID->257092479,ExpressionUUID->"0cc3a7a0-b3d6-4693-b6e8-c35c6299047a"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Alpha]", "=", 
    TagBox[GridBox[{
       {"\[Piecewise]", GridBox[{
          {
           SubscriptBox["\[Alpha]", 
            StyleBox["A",
             FontSlant->"Plain"]], 
           RowBox[{"\[Xi]", "\[LessEqual]", "\[Lambda]"}]},
          {
           SubscriptBox["\[Alpha]", 
            StyleBox["B",
             FontSlant->"Plain"]], 
           RowBox[{"\[Xi]", ">", "\[Lambda]"}]}
         },
         AllowedDimensions->{2, Automatic},
         Editable->True,
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{1.}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.84]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[0.4]}, 
             Offset[0.2]}, "RowsIndexed" -> {}},
         Selectable->True]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.35]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     "Piecewise",
     DeleteWithContents->True,
     Editable->False,
     SelectWithContents->True,
     Selectable->False]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "09183a25-dd21-43d1-94be-9a58317d50ac"],
 " "
}], "ManipulateCaption",
 CellID->1607310767,ExpressionUUID->"794a38e5-a17d-404c-8ac4-93b4bc89a601"],

Cell["and ", "ManipulateCaption",
 CellID->321856342,ExpressionUUID->"03e75219-0961-4212-8cac-d051c4b42280"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"Bi", "=", 
    TagBox[GridBox[{
       {"\[Piecewise]", GridBox[{
          {
           SubscriptBox["Bi", 
            StyleBox["A",
             FontSlant->"Plain"]], 
           RowBox[{"\[Xi]", "\[LessEqual]", "\[Lambda]"}]},
          {
           SubscriptBox["Bi", 
            StyleBox["B",
             FontSlant->"Plain"]], 
           RowBox[{"\[Xi]", ">", "\[Lambda]"}]}
         },
         AllowedDimensions->{2, Automatic},
         Editable->True,
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{1.}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.84]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[0.4]}, 
             Offset[0.2]}, "RowsIndexed" -> {}},
         Selectable->True]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.35]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     "Piecewise",
     DeleteWithContents->True,
     Editable->False,
     SelectWithContents->True,
     Selectable->False]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "229a6e31-e54b-49c6-9e13-5eb92fbf68b7"],
 ","
}], "ManipulateCaption",
 CellID->2141953458,ExpressionUUID->"9d385c0e-9a3a-40cb-b14d-d58a4062c300"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Bi", "=", 
    RowBox[{"h", " ", 
     RowBox[{"L", "/", "k"}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"455eae3e-b99d-4708-8b2f-2704c34839b1"],
 " is the Biot number, the ratio of internal resistance to conductive heat \
transfer in the slab to the external resistance of convective heat transfer \
from the slab to the surrounding fluid, ",
 Cell[BoxData[
  FormBox["\[Lambda]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "e2f04bae-3385-4f5d-a70f-af29f238bbda"],
 " is the dimensionless coordinate of separation between the two layers, and \
the subscripts ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "399458b2-191a-4d17-bc4f-523e9cdb7d54"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "9a3ca196-c6a3-41d8-a5d7-2ddd852409f0"],
 " refer to the thermal properties of the layers ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[LessEqual]", "\[Lambda]"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"f1ea37d3-1ae2-41c9-b278-8e0aa1029f16"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "\[Lambda]"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"381f2337-5eb8-41a6-8951-b5d3804dcf99"],
 ", respectively."
}], "DetailNotes",
 CellID->831182143,ExpressionUUID->"b9f418da-346b-479d-a04d-0f594bdce177"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"dc03ca78-d047-44fe-851b-550c1f2412ac"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"09780d2b-63eb-49f0-a52a-a41390034005"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"35e85ab4-7664-406f-a5da-c6cfd50bedaf"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "fab7b762-6576-4c8f-877c-19e1bb81d2c3"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"db23b049-6961-40e6-bfd6-99aad28a5edc"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"bb700e01-c382-4f0d-8657-14abd7d254a4"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"33fd3f30-81cd-4a84-97dc-3b5f1832edf6"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "455a9501-cbc5-48ca-8843-204da1ab5e9e"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"97149f4b-b1c2-4936-bbaa-\
b9905d40cd72"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"662e7f85-509b-4b4d-bbd5-130954e24520"]}],
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
  "SliderZoom",ExpressionUUID->"7f9c10e5-7b91-438b-a053-45d04cccc67a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "de72d004-8d82-4654-83ce-200dfe9ab196"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"befca34f-9c6d-468f-963e-b7d2e3e96341"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "0d476f6a-2a1b-456f-9eda-33431403503f"]}],
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
  "AutomaticAnimation",ExpressionUUID->"5afef757-7ac7-4f67-8693-44736a5ea666"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "29be5e9a-3dd7-446b-a42d-44b6d007eac6"]}],
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
  "BookmarkAnimation",ExpressionUUID->"89d35d56-8e49-4d7c-b0bc-711778906f9e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"421f4122-0c13-4452-9fd6-ae8987804b18"],

Cell["heat transfer", "SearchTerms",
 CellID->156224078,ExpressionUUID->"0d00a0b8-c037-4c1a-8391-cc8182421996"],

Cell["chemical engineering", "SearchTerms",
 CellID->977694103,ExpressionUUID->"8ad3914b-e4b5-421f-8d48-8c5d9236880d"],

Cell["mechanical engeering", "SearchTerms",
 CellID->258593490,ExpressionUUID->"7d828af8-299f-4477-8446-ee0d7410b033"],

Cell["biot number", "SearchTerms",
 CellID->7832044,ExpressionUUID->"e582c520-edf9-4606-b4ee-dd50a28e4e97"],

Cell["composite slab", "SearchTerms",
 CellID->377968509,ExpressionUUID->"0e0820ba-69da-4757-9ecd-327d58208469"],

Cell["thermal conductivity", "SearchTerms",
 CellID->583438005,ExpressionUUID->"f96ab16a-a756-4464-9a97-93fc21cb9c55"],

Cell["conduction", "SearchTerms",
 CellID->78844952,ExpressionUUID->"6735d4be-a1a6-4231-aba5-27404a9327b2"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"8d62ecc0-27e5-4039-b135-2c6c8d6db3d7"],

Cell[TextData[ButtonBox["Heat Generation and Conduction through Composite \
Walls",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
HeatGenerationAndConductionThroughCompositeWalls/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/\
HeatGenerationAndConductionThroughCompositeWalls/"]], "RelatedLinks",
 CellID->619485196,ExpressionUUID->"b8c39831-e3e2-4ae4-85c1-21db6331ae39"],

Cell[TextData[ButtonBox["Conduction through a Composite Wall",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/ConductionThroughACompositeWall/"], 
   None},
 ButtonNote->
  "http://demonstrations.wolfram.com/ConductionThroughACompositeWall/"]], \
"RelatedLinks",
 CellID->686968516,ExpressionUUID->"a983d3f1-3851-47b3-826e-2fdb5aada4c4"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"a0c75c9b-7f15-40ea-a0e1-a4658ecddce1"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Clay Gruesbeck",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Clay+Gruesbeck"]\
, None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Clay+Gruesbeck"]
}], "Author",ExpressionUUID->"cd49423c-e96f-4e89-8202-007261760192"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"],
 " and ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John%20L.%\
20Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John%20L.%20Falconer"]
}], "Author",
 CellID->355216655,ExpressionUUID->"a434a4cc-1063-4143-9b03-920a8f6eeac0"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 686},
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
  Cell[75744, 1745, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"35e85ab4-7664-406f-a5da-c6cfd50bedaf",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[76175, 1757, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"db23b049-6961-40e6-bfd6-99aad28a5edc",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[76978, 1778, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"33fd3f30-81cd-4a84-97dc-3b5f1832edf6",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[77438, 1793, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"97149f4b-b1c2-4936-bbaa-b9905d40cd72",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[78202, 1814, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"7f9c10e5-7b91-438b-a053-45d04cccc67a",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[79165, 1839, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"befca34f-9c6d-468f-963e-b7d2e3e96341",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[79593, 1852, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"5afef757-7ac7-4f67-8693-44736a5ea666",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[81181, 1888, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"89d35d56-8e49-4d7c-b0bc-711778906f9e",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 85740, 2021},
 {"RotateAndZoomIn3D", 85905, 2024},
 {"DragLocators", 86070, 2027},
 {"CreateAndDeleteLocators", 86241, 2030},
 {"SliderZoom", 86410, 2033},
 {"GamepadControls", 86571, 2036},
 {"AutomaticAnimation", 86740, 2039},
 {"BookmarkAnimation", 86912, 2042}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 103, 0, 74, "DemoTitle",ExpressionUUID->"de94bc3f-3d33-467c-8578-1969c0abf7e7"],
Cell[1616, 37, 88, 0, 275, "InitializationSection",ExpressionUUID->"2659ab6e-9f1a-46c7-96b4-2adf8f3206b7"],
Cell[CellGroupData[{
Cell[1729, 41, 84, 0, 189, "ManipulateSection",ExpressionUUID->"f2db5c75-d7dc-4a62-b420-220bea416769"],
Cell[CellGroupData[{
Cell[1838, 45, 13839, 333, 765, "Input",ExpressionUUID->"419ef605-0922-412e-a986-522a82c62a24"],
Cell[15680, 380, 7753, 159, 525, "Output",ExpressionUUID->"fd5780ae-a7ac-4771-aa8e-c8f17dc3469a",
 CellID->103332542]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[23482, 545, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"8f93be49-6d88-4071-9877-4d75d767e4a0"],
Cell[23576, 547, 1249, 26, 68, "ManipulateCaption",ExpressionUUID->"2858db86-b64f-4477-a5d9-e512c176c059",
 CellID->63089936]
}, Open  ]],
Cell[CellGroupData[{
Cell[24862, 578, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"98c9f5a6-1f25-4a0d-8a76-96a4a5b4696c"],
Cell[24948, 580, 7841, 160, 525, "Output",ExpressionUUID->"b572a2bc-3a93-4d5e-b5d3-2cbb24920dae",
 CellID->61594585]
}, Open  ]],
Cell[CellGroupData[{
Cell[32826, 745, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"d2bc8bdb-139c-4f8d-9dfb-80c4377abade"],
Cell[32912, 747, 7761, 159, 525, "Output",ExpressionUUID->"2e5a3d48-722a-4b74-8008-2f23443268d6",
 CellID->864903319],
Cell[40676, 908, 7853, 161, 525, "Output",ExpressionUUID->"63a54b08-44fb-4333-8454-fbb39b511ca7",
 CellID->364162480],
Cell[48532, 1071, 7841, 160, 525, "Output",ExpressionUUID->"278a62c6-0283-4987-9f2e-1806d01f66e1",
 CellID->67915979],
Cell[56376, 1233, 7773, 159, 525, "Output",ExpressionUUID->"440378dd-6f0e-44f1-98c2-30f5c093ca26",
 CellID->811927951]
}, Open  ]],
Cell[CellGroupData[{
Cell[64186, 1397, 81, 0, 335, "DetailsSection",ExpressionUUID->"e1515398-64a7-49e7-92ba-a13f3382ac98"],
Cell[64270, 1399, 142, 1, 22, "DetailNotes",ExpressionUUID->"d7158bc9-2505-4be5-a2d8-c04e23070179",
 CellID->139525117],
Cell[64415, 1402, 494, 15, 34, "DetailNotes",ExpressionUUID->"2654b548-66ad-486c-b5aa-2d2fa57b56cd",
 CellID->244644967],
Cell[64912, 1419, 525, 17, 33, "DetailNotes",ExpressionUUID->"7b8ddaf2-cdab-473b-9fe8-87b4cdbe21f0",
 CellID->236066265],
Cell[65440, 1438, 455, 13, 23, "DetailNotes",ExpressionUUID->"0d1d9ef3-ad81-4492-9b52-60b26d034015",
 CellID->59169893],
Cell[65898, 1453, 339, 10, 23, "DetailNotes",ExpressionUUID->"41fd8d1d-9034-45f1-b4e4-2e4817f9622e",
 CellID->77055256],
Cell[66240, 1465, 1357, 40, 45, "DetailNotes",ExpressionUUID->"8c523d6e-5c04-4b11-917b-00d1e2c7bf59",
 CellID->316261692],
Cell[67600, 1507, 180, 3, 22, "DetailNotes",ExpressionUUID->"cac8aa26-ccb3-4f2d-9478-629070fdc438",
 CellID->532961840],
Cell[67783, 1512, 631, 19, 37, "DetailNotes",ExpressionUUID->"a88aa137-7ee6-444b-b974-69141806e5d8",
 CellID->98364011],
Cell[68417, 1533, 132, 1, 22, "DetailNotes",ExpressionUUID->"64a2fed6-3e49-41cf-ab2c-f1973f40e54e",
 CellID->530382782],
Cell[68552, 1536, 525, 15, 35, "DetailNotes",ExpressionUUID->"ebb3636d-0411-4b86-9090-c333c601c2bf",
 CellID->25640406],
Cell[69080, 1553, 432, 12, 34, "DetailNotes",ExpressionUUID->"43751169-faf7-4bfe-a171-d87ca4928108",
 CellID->229962029],
Cell[69515, 1567, 442, 13, 23, "DetailNotes",ExpressionUUID->"0cc3a7a0-b3d6-4693-b6e8-c35c6299047a",
 CellID->257092479],
Cell[69960, 1582, 2040, 55, 39, "ManipulateCaption",ExpressionUUID->"794a38e5-a17d-404c-8ac4-93b4bc89a601",
 CellID->1607310767],
Cell[72003, 1639, 108, 1, 22, "ManipulateCaption",ExpressionUUID->"03e75219-0961-4212-8cac-d051c4b42280",
 CellID->321856342],
Cell[72114, 1642, 2022, 55, 39, "ManipulateCaption",ExpressionUUID->"9d385c0e-9a3a-40cb-b14d-d58a4062c300",
 CellID->2141953458],
Cell[74139, 1699, 1473, 39, 39, "DetailNotes",ExpressionUUID->"b9f418da-346b-479d-a04d-0f594bdce177",
 CellID->831182143]
}, Open  ]],
Cell[CellGroupData[{
Cell[75649, 1743, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"dc03ca78-d047-44fe-851b-550c1f2412ac"],
Cell[75744, 1745, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"35e85ab4-7664-406f-a5da-c6cfd50bedaf",
 CellTags->"ResizeImages"],
Cell[76175, 1757, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"db23b049-6961-40e6-bfd6-99aad28a5edc",
 CellTags->"RotateAndZoomIn3D"],
Cell[76978, 1778, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"33fd3f30-81cd-4a84-97dc-3b5f1832edf6",
 CellTags->"DragLocators"],
Cell[77438, 1793, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"97149f4b-b1c2-4936-bbaa-b9905d40cd72",
 CellTags->"CreateAndDeleteLocators"],
Cell[78202, 1814, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"7f9c10e5-7b91-438b-a053-45d04cccc67a",
 CellTags->"SliderZoom"],
Cell[79165, 1839, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"befca34f-9c6d-468f-963e-b7d2e3e96341",
 CellTags->"GamepadControls"],
Cell[79593, 1852, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"5afef757-7ac7-4f67-8693-44736a5ea666",
 CellTags->"AutomaticAnimation"],
Cell[81181, 1888, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"89d35d56-8e49-4d7c-b0bc-711778906f9e",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[82248, 1917, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"421f4122-0c13-4452-9fd6-ae8987804b18"],
Cell[82336, 1919, 111, 1, 22, "SearchTerms",ExpressionUUID->"0d00a0b8-c037-4c1a-8391-cc8182421996",
 CellID->156224078],
Cell[82450, 1922, 118, 1, 22, "SearchTerms",ExpressionUUID->"8ad3914b-e4b5-421f-8d48-8c5d9236880d",
 CellID->977694103],
Cell[82571, 1925, 118, 1, 22, "SearchTerms",ExpressionUUID->"7d828af8-299f-4477-8446-ee0d7410b033",
 CellID->258593490],
Cell[82692, 1928, 107, 1, 22, "SearchTerms",ExpressionUUID->"e582c520-edf9-4606-b4ee-dd50a28e4e97",
 CellID->7832044],
Cell[82802, 1931, 112, 1, 22, "SearchTerms",ExpressionUUID->"0e0820ba-69da-4757-9ecd-327d58208469",
 CellID->377968509],
Cell[82917, 1934, 118, 1, 22, "SearchTerms",ExpressionUUID->"f96ab16a-a756-4464-9a97-93fc21cb9c55",
 CellID->583438005],
Cell[83038, 1937, 107, 1, 22, "SearchTerms",ExpressionUUID->"6735d4be-a1a6-4231-aba5-27404a9327b2",
 CellID->78844952]
}, Open  ]],
Cell[CellGroupData[{
Cell[83182, 1943, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"8d62ecc0-27e5-4039-b135-2c6c8d6db3d7"],
Cell[83271, 1945, 425, 9, 22, "RelatedLinks",ExpressionUUID->"b8c39831-e3e2-4ae4-85c1-21db6331ae39",
 CellID->619485196],
Cell[83699, 1956, 372, 8, 22, "RelatedLinks",ExpressionUUID->"a983d3f1-3851-47b3-826e-2fdb5aada4c4",
 CellID->686968516]
}, Open  ]],
Cell[CellGroupData[{
Cell[84108, 1969, 80, 0, 141, "AuthorSection",ExpressionUUID->"a0c75c9b-7f15-40ea-a0e1-a4658ecddce1"],
Cell[84191, 1971, 354, 9, 22, "Author",ExpressionUUID->"cd49423c-e96f-4e89-8202-007261760192"],
Cell[84548, 1982, 683, 19, 22, "Author",ExpressionUUID->"a434a4cc-1063-4143-9b03-920a8f6eeac0",
 CellID->355216655]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature JuTtY#lPb7IOKAwR#jubweFr *)
