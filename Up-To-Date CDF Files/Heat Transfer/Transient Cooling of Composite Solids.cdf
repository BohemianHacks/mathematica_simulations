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
NotebookDataLength[     45539,       1112]
NotebookOptionsPosition[     40267,       1006]
NotebookOutlinePosition[     42410,       1061]
CellTagsIndexPosition[     42082,       1049]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Transient Cooling of Composite Solids", "DemoTitle",ExpressionUUID->"caa119ac-9c42-4c90-8b1d-3b1d8d24fa8d"],

Cell["", "InitializationSection",ExpressionUUID->"2238ffaf-93ae-46bc-a707-11674d285c7e"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"65163ab5-d013-4cee-85c9-ea9658a4e396"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T0", ",", "T\[Infinity]", ",", "eqns", ",", "soln", ",", "u", ",", "v",
        ",", "w", ",", "rectangle", ",", "slab", ",", "cylinder", ",", 
       "sphere"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T0", "=", "1"}], ";", 
      RowBox[{"T\[Infinity]", "=", "0"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Do", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{
         RowBox[{"eqns", "=", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               SubscriptBox["\[PartialD]", "t"], 
               RowBox[{"T", "[", 
                RowBox[{"z", ",", "t"}], "]"}]}], "-", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"z", "\[LessEqual]", "\[Lambda]"}], ",", "\[Alpha]i",
                  ",", "\[Alpha]o"}], "]"}], 
               FractionBox["1", 
                SuperscriptBox["z", 
                 RowBox[{"n", "-", "1"}]]], 
               RowBox[{
                SubscriptBox["\[PartialD]", "z"], 
                RowBox[{"(", 
                 RowBox[{
                  SuperscriptBox["z", 
                   RowBox[{"n", "-", "1"}]], 
                  RowBox[{
                   SubscriptBox["\[PartialD]", "z"], 
                   RowBox[{"T", "[", 
                    RowBox[{"z", ",", "t"}], "]"}]}]}], ")"}]}]}]}], "==", 
             " ", 
             RowBox[{
              RowBox[{"NeumannValue", "[", 
               RowBox[{"0", ",", 
                RowBox[{"z", "\[Equal]", "1*^-6"}]}], "]"}], "+", 
              "\[IndentingNewLine]", 
              RowBox[{"NeumannValue", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", "Bi"}], " ", 
                 RowBox[{"T", "[", 
                  RowBox[{"z", ",", "t"}], "]"}]}], ",", 
                RowBox[{"z", "\[Equal]", "1"}]}], "]"}]}]}], ",", 
            RowBox[{
             RowBox[{"T", "[", 
              RowBox[{"z", ",", "0"}], "]"}], "\[Equal]", "T0"}]}], 
           "\[IndentingNewLine]", "}"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"soln", "=", 
          RowBox[{"NDSolveValue", "[", 
           RowBox[{"eqns", ",", "T", ",", 
            RowBox[{"{", 
             RowBox[{"z", ",", "1*^-6", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"t", ",", "0", ",", "10"}], "}"}], ",", 
            RowBox[{"Method", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<MethodOfLines\>\"", ",", 
               RowBox[{
               "\"\<SpatialDiscretization\>\"", "\[Rule]", 
                "\"\<FiniteElement\>\""}]}], "}"}]}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Which", "[", 
          RowBox[{
           RowBox[{"n", "==", "1"}], ",", 
           RowBox[{"u", "=", "soln"}], ",", 
           RowBox[{"n", "==", "2"}], ",", 
           RowBox[{"v", "=", "soln"}], ",", 
           RowBox[{"n", "==", "3"}], ",", 
           RowBox[{"w", "=", "soln"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"n", ",", "3"}], "}"}]}], "]"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"rectangle", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"EdgeForm", "@", "Thick"}], ",", 
          RowBox[{"FaceForm", "@", 
           RowBox[{"Opacity", "[", 
            RowBox[{"0.15", ",", 
             RowBox[{"Darker", "@", "Green"}]}], "]"}]}], ",", 
          RowBox[{"Rectangle", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"\[Lambda]", ",", "1"}], "}"}]}], "]"}], ",", 
          RowBox[{"FaceForm", "@", 
           RowBox[{"Opacity", "[", 
            RowBox[{"0.2", ",", "Yellow"}], "]"}]}], ",", 
          RowBox[{"Rectangle", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Lambda]", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", "1"}], "}"}]}], "]"}]}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", " ", 
      RowBox[{"slab", "=", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"u", "[", 
             RowBox[{"z", ",", "time"}], "]"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"z", ",", "1*^-6", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Black"}], "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<slab\>\"", ",", "18"}], "]"}], ",", 
              RowBox[{"Background", "\[Rule]", "White"}], ",", 
              RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
              RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", 
              RowBox[{"u", "[", 
               RowBox[{"0.5", ",", "time"}], "]"}]}], "}"}]}], "]"}], "]"}]}],
         "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"cylinder", "=", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"v", "[", 
              RowBox[{"z", ",", "time"}], "]"}], ",", "v"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"z", ",", "1*^-6", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<cylinder\>\"", ",", "18", ",", "Blue"}], "]"}], 
              ",", 
              RowBox[{"Background", "\[Rule]", "White"}], ",", 
              RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
              RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.2", ",", 
              RowBox[{"v", "[", 
               RowBox[{"0.2", ",", "time"}], "]"}]}], "}"}]}], "]"}], "]"}]}],
         "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"sphere", "=", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"w", "[", 
             RowBox[{"z", ",", "time"}], "]"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"z", ",", "1*^-6", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Purple"}], "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<sphere\>\"", ",", "18", ",", "Purple"}], "]"}], 
              ",", 
              RowBox[{"Background", "\[Rule]", "White"}], ",", 
              RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
              RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.8", ",", 
              RowBox[{"w", "[", 
               RowBox[{"0.8", ",", "time"}], "]"}]}], "}"}]}], "]"}], "]"}]}],
         "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"rectangle", ",", 
        RowBox[{"Switch", "[", 
         RowBox[{"MB", ",", "1", ",", "slab", ",", "2", ",", 
          RowBox[{"Show", "[", 
           RowBox[{"cylinder", ",", "sphere"}], "]"}]}], "]"}], ",", 
        RowBox[{"Axes", "\[Rule]", "False"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"MB", "\[Equal]", "1"}], ",", 
             "\"\<distance from surface\>\"", ",", "\"\<radius\>\""}], "]"}], 
           ",", "\"\<temperature \>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "385"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"50", ",", "15"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"50", ",", "10"}], "}"}]}], "}"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"MB", ",", "1", ",", "\"\<plot temperature vs.\>\""}], 
           "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"1", "\[Rule]", "\"\< distance from surface \>\""}], ",", 
            RowBox[{"2", "\[Rule]", "\"\< radius \>\""}]}], "}"}], ",", 
          "Setter"}], "}"}], "]"}], ",", 
       RowBox[{"Spacer", "@", "15"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"time", ",", "2", ",", "\"\<time (s)\>\""}], "}"}], ",", 
          "0.1", ",", "10", ",", "0.1", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}]}], "\[IndentingNewLine]", "}"}], "}"}]}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Bi", ",", "0.5", ",", "\"\<Biot number\>\""}], "}"}], ",",
           "0.01", ",", "2", ",", "0.01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Lambda]", ",", "0.4", ",", "\"\<thickness\>\""}], "}"}],
           ",", "0", ",", "0.9", ",", "0.1", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}]}], "\[IndentingNewLine]", "}"}], "}"}]}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Row", "@", 
        RowBox[{"{", 
         RowBox[{"\"\<thermal diffusivity (\>\"", ",", 
          RowBox[{"Superscript", "[", 
           RowBox[{"\"\<cm\>\"", ",", "2"}], "]"}], ",", "\"\</s)\>\""}], 
         "}"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Alpha]i", ",", "0.05", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<\[Alpha]\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<i\>\""}], "]"}]}], "}"}], ",", "0.05", ",", "1", ",", 
          "0.05", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Alpha]o", ",", "0.05", ",", 
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<\[Alpha]\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<o\>\""}], "]"}]}], "}"}], ",", "0.05", ",", "1", ",", 
          "0.05", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}]}], "\[IndentingNewLine]", "}"}], "}"}]}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",ExpressionUUID->"d05c09b0-0949-4660-\
a02e-eaa92cdd38d4"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Bi$$ = 0.5, $CellContext`MB$$ = 
    1, $CellContext`time$$ = 2, $CellContext`\[Alpha]i$$ = 
    0.05, $CellContext`\[Alpha]o$$ = 0.05, $CellContext`\[Lambda]$$ = 0.4, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`MB$$], 1, "plot temperature vs."}, {
      1 -> " distance from surface ", 2 -> " radius "}}, {{
       Hold[$CellContext`time$$], 2, "time (s)"}, 0.1, 10, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Spacer[15], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`Bi$$], 0.5, "Biot number"}, 0.01, 2, 0.01}, {{
       Hold[$CellContext`\[Lambda]$$], 0.4, "thickness"}, 0, 0.9, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Alpha]i$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "i"]}, 0.05, 1, 0.05}, {{
       Hold[$CellContext`\[Alpha]o$$], 0.05, 
       Subscript[
        Style["\[Alpha]", Italic], "o"]}, 0.05, 1, 0.05}, {
      Hold[
       Grid[{{
          Row[{"thermal diffusivity (", 
            Superscript["cm", 2], "/s)"}], 
          Manipulate`Place[5], 
          Manipulate`Place[6]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {189., 196.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`MB$4007$$ = False, $CellContext`time$4008$$ = 
    0, $CellContext`Bi$4009$$ = 0, $CellContext`\[Lambda]$4010$$ = 
    0, $CellContext`\[Alpha]i$4011$$ = 0, $CellContext`\[Alpha]o$4012$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Bi$$ = 0.5, $CellContext`MB$$ = 
        1, $CellContext`time$$ = 2, $CellContext`\[Alpha]i$$ = 
        0.05, $CellContext`\[Alpha]o$$ = 0.05, $CellContext`\[Lambda]$$ = 
        0.4}, "ControllerVariables" :> {
        Hold[$CellContext`MB$$, $CellContext`MB$4007$$, False], 
        Hold[$CellContext`time$$, $CellContext`time$4008$$, 0], 
        Hold[$CellContext`Bi$$, $CellContext`Bi$4009$$, 0], 
        Hold[$CellContext`\[Lambda]$$, $CellContext`\[Lambda]$4010$$, 0], 
        Hold[$CellContext`\[Alpha]i$$, $CellContext`\[Alpha]i$4011$$, 0], 
        Hold[$CellContext`\[Alpha]o$$, $CellContext`\[Alpha]o$4012$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T0$, $CellContext`T\[Infinity]$, \
$CellContext`eqns$, $CellContext`soln$, $CellContext`u$, $CellContext`v$, \
$CellContext`w$, $CellContext`rectangle$, $CellContext`slab$, \
$CellContext`cylinder$, $CellContext`sphere$}, $CellContext`T0$ = 
         1; $CellContext`T\[Infinity]$ = 0; Do[$CellContext`eqns$ = {D[
                $CellContext`T[$CellContext`z, $CellContext`t], \
$CellContext`t] - (
               If[$CellContext`z <= $CellContext`\[Lambda]$$, $CellContext`\
\[Alpha]i$$, $CellContext`\[Alpha]o$$] (
                1/$CellContext`z^($CellContext`n - 1))) 
              D[$CellContext`z^($CellContext`n - 1) D[
                  $CellContext`T[$CellContext`z, $CellContext`t], \
$CellContext`z], $CellContext`z] == 
             NeumannValue[0, $CellContext`z == Rational[1, 1000000]] + 
              NeumannValue[(-$CellContext`Bi$$) \
$CellContext`T[$CellContext`z, $CellContext`t], $CellContext`z == 
                1], $CellContext`T[$CellContext`z, 
               0] == $CellContext`T0$}; $CellContext`soln$ = 
           NDSolveValue[$CellContext`eqns$, $CellContext`T, {$CellContext`z, 
              Rational[1, 1000000], 1}, {$CellContext`t, 0, 10}, 
             Method -> {
              "MethodOfLines", "SpatialDiscretization" -> "FiniteElement"}]; 
          Which[$CellContext`n == 
            1, $CellContext`u$ = $CellContext`soln$, $CellContext`n == 
            2, $CellContext`v$ = $CellContext`soln$, $CellContext`n == 
            3, $CellContext`w$ = $CellContext`soln$], {$CellContext`n, 
           3}]; $CellContext`rectangle$ = Graphics[{
            EdgeForm[Thick], 
            FaceForm[
             Opacity[0.15, 
              Darker[Green]]], 
            Rectangle[{0, 0}, {$CellContext`\[Lambda]$$, 1}], 
            FaceForm[
             Opacity[0.2, Yellow]], 
            
            Rectangle[{$CellContext`\[Lambda]$$, 0}, {1, 
             1}]}]; $CellContext`slab$ = Show[
           Plot[{
             $CellContext`u$[$CellContext`z, $CellContext`time$$]}, \
{$CellContext`z, 
             Rational[1, 1000000], 1}, PlotStyle -> {Thick, Black}], 
           Graphics[
            Text[
             Framed[
              Style["slab", 18], Background -> White, FrameStyle -> None, 
              FrameMargins -> Tiny], {0.5, 
              $CellContext`u$[
              0.5, $CellContext`time$$]}]]]; $CellContext`cylinder$ = Show[
           Plot[{
             $CellContext`v$[$CellContext`z, $CellContext`time$$], \
$CellContext`v$}, {$CellContext`z, 
             Rational[1, 1000000], 1}, PlotStyle -> {Thick, Blue}], 
           Graphics[
            Text[
             Framed[
              Style["cylinder", 18, Blue], Background -> White, FrameStyle -> 
              None, FrameMargins -> Tiny], {0.2, 
              $CellContext`v$[
              0.2, $CellContext`time$$]}]]]; $CellContext`sphere$ = Show[
           Plot[{
             $CellContext`w$[$CellContext`z, $CellContext`time$$]}, \
{$CellContext`z, 
             Rational[1, 1000000], 1}, PlotStyle -> {Thick, Purple}], 
           Graphics[
            Text[
             Framed[
              Style["sphere", 18, Purple], Background -> White, FrameStyle -> 
              None, FrameMargins -> Tiny], {0.8, 
              $CellContext`w$[0.8, $CellContext`time$$]}]]]; 
        Show[$CellContext`rectangle$, 
          Switch[$CellContext`MB$$, 1, $CellContext`slab$, 2, 
           Show[$CellContext`cylinder$, $CellContext`sphere$]], Axes -> False,
           PlotRange -> {{0, 1}, {0, 1}}, PlotRangePadding -> None, Frame -> 
          True, FrameLabel -> {
            If[$CellContext`MB$$ == 1, "distance from surface", "radius"], 
            "temperature "}, LabelStyle -> {17, Black}, 
          ImageSize -> {600, 385}, AspectRatio -> Full, 
          ImagePadding -> {{50, 15}, {50, 10}}]], 
      "Specifications" :> {{{$CellContext`MB$$, 1, "plot temperature vs."}, {
         1 -> " distance from surface ", 2 -> " radius "}, ControlType -> 
         Setter, ControlPlacement -> 
         1}, {{$CellContext`time$$, 2, "time (s)"}, 0.1, 10, 0.1, ImageSize -> 
         Small, Appearance -> "Labeled", ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Spacer[15], 
           Manipulate`Place[2]}}], {{$CellContext`Bi$$, 0.5, "Biot number"}, 
         0.01, 2, 0.01, ImageSize -> Small, Appearance -> "Labeled", 
         ControlPlacement -> 
         3}, {{$CellContext`\[Lambda]$$, 0.4, "thickness"}, 0, 0.9, 0.1, 
         ImageSize -> Small, Appearance -> "Labeled", ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[3], 
           Manipulate`Place[4]}}], {{$CellContext`\[Alpha]i$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "i"]}, 0.05, 1, 0.05, ImageSize -> 
         Small, Appearance -> "Labeled", ControlPlacement -> 
         5}, {{$CellContext`\[Alpha]o$$, 0.05, 
          Subscript[
           Style["\[Alpha]", Italic], "o"]}, 0.05, 1, 0.05, ImageSize -> 
         Small, Appearance -> "Labeled", ControlPlacement -> 6}, 
        Grid[{{
           Row[{"thermal diffusivity (", 
             Superscript["cm", 2], "/s)"}], 
           Manipulate`Place[5], 
           Manipulate`Place[6]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {255., 262.}},
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
 CellID->479503480,ExpressionUUID->"5bb0d180-a32f-48bf-a5ba-4d1e708cf408"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"1d2ebf56-c2ae-4ad8-9696-db5b34481eaf"],

Cell["\<\
This Demonstration illustrates the transient cooling of a composite solid \
(slab, cylinder, or sphere) that is suddenly immersed in a cooling bath. The \
slab consists of two parallel layers, while the cylinder and sphere consist \
of two concentric layers. The individual layers have different thermal \
properties and are in perfect thermal contact with one another.\
\>", "ManipulateCaption",
 CellID->685182713,ExpressionUUID->"16b72a43-1a71-465f-a426-7a0358355a64"]
}, Open  ]],

Cell["", "ThumbnailSection",ExpressionUUID->"bc3c7ba5-c205-4748-ac9b-9a05891421c2"],

Cell["", "SnapshotsSection",ExpressionUUID->"20b18e43-3ea4-4490-b578-ad0387b178ae"],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"7d9c565b-96b2-45a9-86dd-1921303832a7"],

Cell[TextData[{
 "The composite body is initially at a uniform dimensionless temperature ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "0"], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"272b5c49-1740-4c37-b7b8-1e63f98b0725"],
 "; at time ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "\[GreaterEqual]", "0"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f1fbc5f0-545b-4ab5-9b73-89a650cf95c1"],
 ", it is then immersed in a fluid in a well-stirred, insulated tank at \
constant temperature ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "\[Infinity]"], "=", "0"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"57f796df-0ad1-47b2-b3b3-a1252b20324f"],
 "."
}], "ManipulateCaption",
 CellID->1172550134,ExpressionUUID->"d91df248-db49-4dc2-96e1-cc52825dbba5"],

Cell["The equation describing this system is:", "ManipulateCaption",
 CellID->224834113,ExpressionUUID->"560034f2-50bc-4e7f-8819-b36ed802aaef"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "T"}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    FormBox[
     RowBox[{
      FractionBox["\[Alpha]", 
       SuperscriptBox["z", 
        RowBox[{"n", "-", "1"}]]], 
      RowBox[{
       FractionBox["\[PartialD]", 
        RowBox[{"\[PartialD]", "z"}]], 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["z", 
          RowBox[{"n", "-", "1"}]], 
         FractionBox[
          RowBox[{"\[PartialD]", "T"}], 
          RowBox[{"\[PartialD]", "z"}]]}], ")"}]}]}],
     TraditionalForm]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "6759ce1b-44a3-458f-939a-9b20ad4ba8b3"],
 ", "
}], "ManipulateCaption",
 CellID->156781664,ExpressionUUID->"b43617fd-21cc-4311-a831-d7dfd851a486"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath",ExpressionUUID->
  "23374e99-18a6-4bc8-943d-3d632bf4a559"],
 " is the dimensionless temperature, and ",
 Cell[BoxData[
  FormBox["z", TraditionalForm]], "InlineMath",ExpressionUUID->
  "72467402-fd89-4d93-9b39-77b447ed2b8a"],
 " is the dimensionless distance. Here ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"n", "=", "1"}], ",", "2", ",", "3"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"09f8af97-003b-48d5-8ed3-b7f28c84c780"],
 " applies to a rectangle, cylinder, or sphere. The equation is solved with \
initial condition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"T", "(", 
     RowBox[{"z", ",", "0"}], ")"}], "=", "1"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"37b58931-8665-4a90-a6af-09b2922cf40a"],
 " and boundary conditions:"
}], "ManipulateCaption",
 CellID->66991979,ExpressionUUID->"2f5f308a-c149-4734-9a77-be22632857c1"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "T"}], 
     RowBox[{"\[PartialD]", "z"}]], "=", "0"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"761f10da-73fe-4d7d-a895-79d92bd2a8e6"],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"z", "=", "0"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "386d205b-c079-479c-8fb5-78b421aa2015"],
 ","
}], "ManipulateCaption",
 CellID->687463497,ExpressionUUID->"52337942-c8ff-455a-8963-c8798d6b5be6"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{"\[PartialD]", "T"}], 
      RowBox[{"\[PartialD]", "z"}]], "+", 
     RowBox[{"Bi", " ", "T"}]}], "=", "0"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"9bf138a3-c32b-4d60-bd38-6da82a2b2cdb"],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"z", "=", "1"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "c6f81d07-cf8e-437c-9da9-8eb4c7fb2ef8"],
 ","
}], "ManipulateCaption",
 CellID->155126208,ExpressionUUID->"af78df99-fd84-4625-b68b-be77041e1c24"],

Cell[TextData[{
 Cell[BoxData[
  FormBox["Bi", TraditionalForm]], "InlineMath",ExpressionUUID->
  "19aff4ec-812d-4206-bb90-992baa214305"],
 " is the Biot number, the ratio of internal resistance to conductive heat \
transfer in the solid to the external resistance of convective heat transfer \
of the solid to the surrounding fluid, and"
}], "ManipulateCaption",
 CellID->261256499,ExpressionUUID->"ddf81409-2f5a-426e-914d-626401d61e71"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    TagBox[GridBox[{
       {"\[Piecewise]", GridBox[{
          {
           SubscriptBox["\[Alpha]", 
            StyleBox["i",
             FontSlant->"Plain"]], 
           RowBox[{"z", "\[LessEqual]", "\[Lambda]"}]},
          {
           SubscriptBox["\[Alpha]", 
            StyleBox["o",
             FontSlant->"Plain"]], 
           RowBox[{"z", ">", "\[Lambda]"}]}
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
  "99b431e5-ca23-4dce-924e-01c5aaeffb60"],
 ","
}], "ManipulateCaption",
 CellID->219991180,ExpressionUUID->"3533cd20-05e2-4849-a616-4df2f4bf0729"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "867162e9-c859-4417-a0e6-9aa48573d3cb"],
 " is the thermal diffusivity, ",
 Cell[BoxData[
  FormBox["\[Lambda]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "c2a293fd-8054-47f5-885f-67940b8bd40e"],
 " is the dimensionless line of separation between the two layers, and the \
subscripts ",
 Cell[BoxData[
  FormBox[
   StyleBox["i",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",
  FontSlant->"Italic",ExpressionUUID->"cb3c223e-2b86-4f43-aec1-6641fb6ded3d"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["o",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "c2705fb0-ef40-4e28-bcf3-e620c4078232"],
 " refer to thermal properties of the inner and outer layers. "
}], "ManipulateCaption",
 CellID->1572405773,ExpressionUUID->"5d25d6ce-8538-40d3-9fc3-de23e9a40408"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"bb4ba8a9-54fb-4821-95b8-6d1b6270a5d4"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"48d102a0-774d-47ca-9d79-bef6fd5631cf"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"b94d8219-dace-4d76-9c33-265d248add59"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "fe401ca4-07b5-4657-a2f5-85d45a7e77c0"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"de5e0264-8843-41d5-b18c-ec7bb32c24b9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"6438df8b-6884-4c5b-bcb5-6ae7a058ecd7"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"3fe946d0-24a6-4b17-a159-2a8c08f1d54a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "bfd2f82c-07c0-4c56-a610-4c150b316948"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"284619d4-5360-4dd3-9b7e-\
3b74830e747a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"143110b7-5aa2-4ef6-a1da-e9604b3a431f"]}],
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
  "SliderZoom",ExpressionUUID->"dd67e9c1-8b0d-4cd5-8b3f-d261d3f1c271"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "6c3539bc-fee3-4b51-940b-c8feaf153a30"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"24ae1228-8fa8-4f73-bfe7-6de07a1ec0d1"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "a25fa1f7-d021-474b-bbd4-5da57daddd93"]}],
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
  "AutomaticAnimation",ExpressionUUID->"0528dc8a-c078-4316-ac91-ebd389add0b8"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "81ab6d8b-8930-4093-9203-498e7b7d2a7e"]}],
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
  "BookmarkAnimation",ExpressionUUID->"76aed31c-a9b2-4107-acca-5198b07ee1a7"]
}, Open  ]],

Cell["", "SearchTermsSection",ExpressionUUID->"e017a0f3-bedc-458f-84e8-ce2620810b09"],

Cell["", "RelatedLinksSection",ExpressionUUID->"a7a3b56e-17c6-47c3-9f8f-cb1946325c16"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"4383b883-ee3c-4665-8f4b-4bfb8eb6de7f"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Clay Gruesbeck",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Clay+Gruesbeck"]\
, None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Clay+Gruesbeck"]
}], "Author",ExpressionUUID->"f41c501a-1191-4254-be03-ac929aa91103"],

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
 CellID->519730246,ExpressionUUID->"1e6cf1b4-a025-4cde-b87d-f6ea1e8b1373"]
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
  Cell[32435, 794, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"b94d8219-dace-4d76-9c33-265d248add59",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[32866, 806, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"de5e0264-8843-41d5-b18c-ec7bb32c24b9",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[33669, 827, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"3fe946d0-24a6-4b17-a159-2a8c08f1d54a",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[34129, 842, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"284619d4-5360-4dd3-9b7e-3b74830e747a",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[34893, 863, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"dd67e9c1-8b0d-4cd5-8b3f-d261d3f1c271",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[35856, 888, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"24ae1228-8fa8-4f73-bfe7-6de07a1ec0d1",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[36284, 901, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"0528dc8a-c078-4316-ac91-ebd389add0b8",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[37872, 937, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"76aed31c-a9b2-4107-acca-5198b07ee1a7",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 40748, 1022},
 {"RotateAndZoomIn3D", 40912, 1025},
 {"DragLocators", 41076, 1028},
 {"CreateAndDeleteLocators", 41246, 1031},
 {"SliderZoom", 41414, 1034},
 {"GamepadControls", 41574, 1037},
 {"AutomaticAnimation", 41742, 1040},
 {"BookmarkAnimation", 41913, 1043}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 113, 0, 74, "DemoTitle",ExpressionUUID->"caa119ac-9c42-4c90-8b1d-3b1d8d24fa8d"],
Cell[1626, 37, 88, 0, 275, "InitializationSection",ExpressionUUID->"2238ffaf-93ae-46bc-a707-11674d285c7e"],
Cell[CellGroupData[{
Cell[1739, 41, 84, 0, 189, "ManipulateSection",ExpressionUUID->"65163ab5-d013-4cee-85c9-ea9658a4e396"],
Cell[CellGroupData[{
Cell[1848, 45, 13598, 331, 1024, "Input",ExpressionUUID->"d05c09b0-0949-4660-a02e-eaa92cdd38d4"],
Cell[15449, 378, 8728, 175, 529, "Output",ExpressionUUID->"5bb0d180-a32f-48bf-a5ba-4d1e708cf408",
 CellID->479503480]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[24223, 559, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"1d2ebf56-c2ae-4ad8-9696-db5b34481eaf"],
Cell[24317, 561, 481, 7, 37, "ManipulateCaption",ExpressionUUID->"16b72a43-1a71-465f-a426-7a0358355a64",
 CellID->685182713]
}, Open  ]],
Cell[24813, 571, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"bc3c7ba5-c205-4748-ac9b-9a05891421c2"],
Cell[24899, 573, 83, 0, 130, "SnapshotsSection",ExpressionUUID->"20b18e43-3ea4-4490-b578-ad0387b178ae"],
Cell[CellGroupData[{
Cell[25007, 577, 81, 0, 245, "DetailsSection",ExpressionUUID->"7d9c565b-96b2-45a9-86dd-1921303832a7"],
Cell[25091, 579, 820, 21, 23, "ManipulateCaption",ExpressionUUID->"d91df248-db49-4dc2-96e1-cc52825dbba5",
 CellID->1172550134],
Cell[25914, 602, 143, 1, 22, "ManipulateCaption",ExpressionUUID->"560034f2-50bc-4e7f-8819-b36ed802aaef",
 CellID->224834113],
Cell[26060, 605, 805, 26, 33, "ManipulateCaption",ExpressionUUID->"b43617fd-21cc-4311-a831-d7dfd851a486",
 CellID->156781664],
Cell[26868, 633, 966, 25, 38, "ManipulateCaption",ExpressionUUID->"2f5f308a-c149-4734-9a77-be22632857c1",
 CellID->66991979],
Cell[27837, 660, 506, 15, 33, "ManipulateCaption",ExpressionUUID->"52337942-c8ff-455a-8963-c8798d6b5be6",
 CellID->687463497],
Cell[28346, 677, 561, 17, 33, "ManipulateCaption",ExpressionUUID->"af78df99-fd84-4625-b68b-be77041e1c24",
 CellID->155126208],
Cell[28910, 696, 438, 8, 23, "ManipulateCaption",ExpressionUUID->"ddf81409-2f5a-426e-914d-626401d61e71",
 CellID->261256499],
Cell[29351, 706, 2024, 55, 39, "ManipulateCaption",ExpressionUUID->"3533cd20-05e2-4849-a616-4df2f4bf0729",
 CellID->219991180],
Cell[31378, 763, 925, 24, 23, "ManipulateCaption",ExpressionUUID->"5d25d6ce-8538-40d3-9fc3-de23e9a40408",
 CellID->1572405773]
}, Open  ]],
Cell[CellGroupData[{
Cell[32340, 792, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"bb4ba8a9-54fb-4821-95b8-6d1b6270a5d4"],
Cell[32435, 794, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"b94d8219-dace-4d76-9c33-265d248add59",
 CellTags->"ResizeImages"],
Cell[32866, 806, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"de5e0264-8843-41d5-b18c-ec7bb32c24b9",
 CellTags->"RotateAndZoomIn3D"],
Cell[33669, 827, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"3fe946d0-24a6-4b17-a159-2a8c08f1d54a",
 CellTags->"DragLocators"],
Cell[34129, 842, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"284619d4-5360-4dd3-9b7e-3b74830e747a",
 CellTags->"CreateAndDeleteLocators"],
Cell[34893, 863, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"dd67e9c1-8b0d-4cd5-8b3f-d261d3f1c271",
 CellTags->"SliderZoom"],
Cell[35856, 888, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"24ae1228-8fa8-4f73-bfe7-6de07a1ec0d1",
 CellTags->"GamepadControls"],
Cell[36284, 901, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"0528dc8a-c078-4316-ac91-ebd389add0b8",
 CellTags->"AutomaticAnimation"],
Cell[37872, 937, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"76aed31c-a9b2-4107-acca-5198b07ee1a7",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[38917, 964, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"e017a0f3-bedc-458f-84e8-ce2620810b09"],
Cell[39005, 966, 86, 0, 129, "RelatedLinksSection",ExpressionUUID->"a7a3b56e-17c6-47c3-9f8f-cb1946325c16"],
Cell[CellGroupData[{
Cell[39116, 970, 80, 0, 129, "AuthorSection",ExpressionUUID->"4383b883-ee3c-4665-8f4b-4bfb8eb6de7f"],
Cell[39199, 972, 354, 9, 22, "Author",ExpressionUUID->"f41c501a-1191-4254-be03-ac929aa91103"],
Cell[39556, 983, 683, 19, 22, "Author",ExpressionUUID->"1e6cf1b4-a025-4cde-b87d-f6ea1e8b1373",
 CellID->519730246]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature OvpWSjBSepccoCw6tRg5sf3t *)
