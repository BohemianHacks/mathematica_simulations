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
NotebookDataLength[     83185,       1981]
NotebookOptionsPosition[     75560,       1831]
NotebookOutlinePosition[     77706,       1886]
CellTagsIndexPosition[     77378,       1874]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Evaporative Cooling of Water", "DemoTitle",ExpressionUUID->"576784c9-c6d7-4f86-ad90-a3293f121880"],

Cell["", "InitializationSection",ExpressionUUID->"715beb0b-5c3e-4391-9ddc-15d0fe3661ae"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"dbd448dc-dcbe-41f9-96b3-690ea04b31a6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "mV", ",", "T1", ",", "\[CapitalDelta]Hv1", ",", "\[CapitalDelta]Hv2", 
       ",", "\[CapitalDelta]Hf", ",", "Cp", ",", "T2", ",", "mVs", ",", "mS", 
       ",", "mL", ",", "swirlycurl", ",", "p1", ",", "p2"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"mV", "=", 
       RowBox[{"vapor", "*", "go"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"T1", "=", "40"}], ";", 
      RowBox[{"(*", "\[Degree]C", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"\[CapitalDelta]Hv1", "=", 
       RowBox[{"-", "2450"}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"kJ", "/", "kg"}], "*)"}], 
      RowBox[{"\[CapitalDelta]Hv2", "=", 
       RowBox[{"-", "2500"}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"at", " ", "0", "\[Degree]C"}], "*)"}], 
      RowBox[{"\[CapitalDelta]Hf", "=", 
       RowBox[{"-", "334"}]}], ";", 
      RowBox[{"Cp", "=", "4.18"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"kJ", "/", "kg"}], "/", "\[Degree]C"}], "*)"}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"T2", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"T1", "\[LessEqual]", 
          RowBox[{
           FractionBox["\[CapitalDelta]Hv1", "Cp"], "*", 
           RowBox[{"Log", "[", 
            RowBox[{"1", "-", 
             RowBox[{"mV", "/", "10"}]}], "]"}]}]}], ",", "0", ",", 
         RowBox[{"T1", "-", 
          RowBox[{
           FractionBox["\[CapitalDelta]Hv1", "Cp"], "*", 
           RowBox[{"Log", "[", 
            RowBox[{"1", "-", 
             RowBox[{"mV", "/", "10"}]}], "]"}]}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"mVs", "=", 
       RowBox[{
        RowBox[{"10", "*", 
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"Exp", "[", 
            RowBox[{"T1", "*", 
             RowBox[{"Cp", "/", "\[CapitalDelta]Hv1"}]}], "]"}]}], ")"}]}], 
        "+", "0.0001"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"mS", "=", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"T2", "\[Equal]", "0"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"mV", "-", "mVs"}], ")"}], "*", 
           RowBox[{"\[CapitalDelta]Hv2", "/", "\[CapitalDelta]Hf"}]}], ",", 
          "0"}], "]"}], "+", "0.0001"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"mL", "=", 
       RowBox[{"10.0001", "-", "mS", "-", "mV"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"swirlycurl", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Arrowheads", "@", "0.35"}], ",", 
           RowBox[{"Thickness", "@", "0.06"}], ",", 
           RowBox[{"GrayLevel", "@", "0.45"}], ",", 
           RowBox[{"Rotate", "[", 
            RowBox[{
             RowBox[{"Arrow", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Cos", "[", "#", "]"}], ",", 
                  RowBox[{"Sin", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
               RowBox[{"Range", "[", 
                RowBox[{"0", ",", "5", ",", "0.1"}], "]"}]}], "]"}], ",", 
             RowBox[{"go", "*", "4", "*", "\[Pi]"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRangePadding", "\[Rule]", "0.1"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "60"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Graphics3D", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "0.4", "]"}], ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"mS", "+", "mL"}], ")"}], "/", "10"}]}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "2"}], "}"}]}], "}"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"RGBColor", "[", 
              RowBox[{"0.56", ",", "1", ",", "0.94"}], "]"}], ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", 
                  RowBox[{"mL", "/", "10"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"mL", "+", "mS"}], ")"}], "/", "10"}]}], "}"}]}], 
               "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"RGBColor", "[", 
              RowBox[{"0", ",", "0.32", ",", "0.72"}], "]"}], ",", 
             RowBox[{"Opacity", "[", "0.6", "]"}], ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", 
                  RowBox[{"mL", "/", "10"}]}], "}"}]}], "}"}], "]"}]}], "}"}],
            ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"Thick", ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"Line", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", "0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "0", ",", "2"}], "}"}]}], "}"}], "]"}], 
                 "&"}], "/@", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1"}], ",", "1"}], "}"}]}]}], "}"}], ","}], 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1.02"}], ",", "0", ",", 
                  RowBox[{"-", "0.05"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1.02"}], ",", "0", ",", "2"}], "}"}]}], "}"}],
               "]"}], ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "0", ",", "2"}], "}"}]}], "}"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"GrayLevel", "[", "0.4", "]"}], ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "2"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "2.15"}], "}"}]}], "}"}], "]"}], 
             ",", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"1.9", ",", "0", ",", "0.4"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"2.6", ",", "0", ",", "0.4"}], "}"}]}], "}"}], ",", 
               "0.1"}], "]"}], ",", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{"-", "0.2"}], ",", "2.15"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{"-", "0.2"}], ",", "3"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.9", ",", 
                   RowBox[{"-", "0.2"}], ",", "3"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.9", ",", 
                   RowBox[{"-", "0.2"}], ",", "0.4"}], "}"}]}], "}"}], ",", 
               "0.1"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"GrayLevel", "[", "0.9", "]"}], ",", 
             RowBox[{"Polygon", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"1.6", ",", 
                  RowBox[{"-", "0.05"}], ",", "0.15"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1.5", ",", 
                  RowBox[{"-", "0.05"}], ",", 
                  RowBox[{"-", "0.1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2.3", ",", 
                  RowBox[{"-", "0.05"}], ",", 
                  RowBox[{"-", "0.1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2.2", ",", 
                  RowBox[{"-", "0.05"}], ",", "0.15"}], "}"}]}], "}"}], "]"}],
              ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"1.9", ",", "0", ",", "0.4"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.9", ",", 
                   RowBox[{"-", "0.1"}], ",", "0.4"}], "}"}]}], "}"}], ",", 
               "0.425"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Column", "[", 
                RowBox[{
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"T2", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< \[Degree]C\>\""}], "}"}]}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"go", "\[Equal]", "0"}], ",", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<evaporate \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"vapor", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< kg of water\>\""}], "}"}]}], ",", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"mV", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< kg of water evaporated\>\""}], "}"}]}]}], "]"}]}], 
                  "\[IndentingNewLine]", "}"}], ",", "Center"}], "]"}], ",", 
               "18"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.95", ",", "0", ",", "3.4"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Inset", "[", 
            RowBox[{"swirlycurl", ",", 
             RowBox[{"{", 
              RowBox[{"1.9", ",", 
               RowBox[{"-", "0.15"}], ",", "0.4"}], "}"}]}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"Lighting", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{"\"\<Ambient\>\"", ",", " ", "LightGray"}], "}"}], 
           "}"}]}], ",", 
         RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
         RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"400", ",", "425"}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.1"}], ",", "2.7"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.1"}], ",", "3.5"}], "}"}]}], "}"}]}]}], "]"}]}],
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Graphics3D", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "@", "Black"}], ",", "\[IndentingNewLine]", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"0", ",", "0.3", ",", "0.8"}], "]"}], ",", 
             RowBox[{"Cuboid", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0", ",", "mL"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"0.4", ",", "1", ",", "0.9"}], "]"}], ",", 
             RowBox[{"Cuboid", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1.15", ",", "0", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2.15", ",", "0", ",", "mS"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"1", ",", "0.4", ",", "0.1"}], "]"}], ",", 
             RowBox[{"Cuboid", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2.3", ",", "0", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"3.3", ",", "0", ",", "mV"}], "}"}]}], "]"}]}], "}"}],
            ",", "\[IndentingNewLine]", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "0.1"}], ",", "0", ",", 
                RowBox[{"-", "0.01"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"3.4", ",", "0", ",", 
                RowBox[{"-", "0.01"}]}], "}"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<amount in each phase\>\"", ",", "18"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1.65", ",", "0", ",", "12"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"#1", ",", "18"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"#2", ",", "0", ",", 
                 RowBox[{"-", "0.4"}]}], "}"}]}], "]"}], "&"}], "@@@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\"\<liquid\>\"", ",", "0.5"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\"\<solid\>\"", ",", "1.65"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\"\<vapor\>\"", ",", "2.8"}], "}"}]}], "}"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"Column", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"#1", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\<kg\>\""}], "}"}], ",", "Center"}], "]"}], ",", 
                 "18"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"#2", ",", "0", ",", "#1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}], "&"}], "@@@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"mL", ",", "0.5"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"mS", ",", "1.65"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"mV", ",", "2.8"}], "}"}]}], "}"}]}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"175", ",", "425"}], "}"}]}], ",", 
         RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
         RowBox[{"ViewPoint", "\[Rule]", "Front"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "@", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{"p1", ",", "p2"}], "}"}], "}"}]}]}]}], "\[IndentingNewLine]",
     "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "vapor", ",", "1", ",", "\"\<mass to be evaporated (kg)\>\""}], 
           "}"}], ",", "0", ",", "1.75", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"go", ",", "0", ",", "\"\<turn on pump\>\""}], "}"}], ",", 
          "0", ",", "1", ",", "Trigger", ",", 
          RowBox[{"AnimationRate", "\[Rule]", "0.5"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}], "]"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",ExpressionUUID->"17162a46-0d71-490d-aa7a-e64c1b1557d4"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`go$$ = 0, $CellContext`vapor$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vapor$$], 1, "mass to be evaporated (kg)"}, 0, 1.75, 
      0.01}, {{
       Hold[$CellContext`go$$], 0, "turn on pump"}, 0, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {583., {209.5, 215.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`vapor$22498$$ = 0, $CellContext`go$22499$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`go$$ = 0, $CellContext`vapor$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`vapor$$, $CellContext`vapor$22498$$, 0], 
        Hold[$CellContext`go$$, $CellContext`go$22499$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`mV$, $CellContext`T1$, \
$CellContext`\[CapitalDelta]Hv1$, $CellContext`\[CapitalDelta]Hv2$, \
$CellContext`\[CapitalDelta]Hf$, $CellContext`Cp$, $CellContext`T2$, \
$CellContext`mVs$, $CellContext`mS$, $CellContext`mL$, \
$CellContext`swirlycurl$, $CellContext`p1$, $CellContext`p2$}, \
$CellContext`mV$ = $CellContext`vapor$$ $CellContext`go$$; $CellContext`T1$ = 
         40; $CellContext`\[CapitalDelta]Hv1$ = -2450; $CellContext`\
\[CapitalDelta]Hv2$ = -2500; $CellContext`\[CapitalDelta]Hf$ = -334; \
$CellContext`Cp$ = 4.18; $CellContext`T2$ = 
         If[$CellContext`T1$ <= \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
            Log[1 - $CellContext`mV$/10], 
           0, $CellContext`T1$ - \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
           Log[1 - $CellContext`mV$/10]]; $CellContext`mVs$ = 
         10 (1 - Exp[$CellContext`T1$ ($CellContext`Cp$/$CellContext`\
\[CapitalDelta]Hv1$)]) + 0.0001; $CellContext`mS$ = 
         If[$CellContext`T2$ == 
            0, ($CellContext`mV$ - $CellContext`mVs$) ($CellContext`\
\[CapitalDelta]Hv2$/$CellContext`\[CapitalDelta]Hf$), 0] + 
          0.0001; $CellContext`mL$ = 
         10.0001 - $CellContext`mS$ - $CellContext`mV$; \
$CellContext`swirlycurl$ = Graphics[{
            Arrowheads[0.35], 
            Thickness[0.06], 
            GrayLevel[0.45], 
            Rotate[
             Arrow[
              Map[{
                Cos[#], 
                Sin[#]}& , 
               Range[0, 5, 0.1]]], ($CellContext`go$$ 4) Pi]}, 
           PlotRange -> {{-1, 1}, {-1, 1}}, PlotRangePadding -> 0.1, 
           ImageSize -> 60]; $CellContext`p1$ = Graphics3D[{{
             Opacity[0.4], 
             
             Cylinder[{{0, 0, ($CellContext`mS$ + $CellContext`mL$)/10}, {0, 
               0, 2}}]}, {
             RGBColor[0.56, 1, 0.94], 
             
             Cylinder[{{0, 0, $CellContext`mL$/10}, {
               0, 0, ($CellContext`mL$ + $CellContext`mS$)/10}}]}, {
             RGBColor[0, 0.32, 0.72], 
             Opacity[0.6], 
             Cylinder[{{0, 0, 0}, {0, 0, $CellContext`mL$/10}}]}, {Thick, 
             Line[{{-1.02, 0, -0.05}, {-1.02, 0, 2}}], 
             Line[{{1, 0, 0}, {1, 0, 2}}]}, {
             GrayLevel[0.4], 
             Cylinder[{{0, 0, 2}, {0, 0, 2.15}}], 
             Tube[{{1.9, 0, 0.4}, {2.6, 0, 0.4}}, 0.1], 
             
             Tube[{{0, -0.2, 2.15}, {0, -0.2, 3}, {1.9, -0.2, 3}, {1.9, -0.2, 
               0.4}}, 0.1]}, {
             GrayLevel[0.9], 
             
             Polygon[{{1.6, -0.05, 0.15}, {1.5, -0.05, -0.1}, {
              2.3, -0.05, -0.1}, {2.2, -0.05, 0.15}}], 
             Cylinder[{{1.9, 0, 0.4}, {1.9, -0.1, 0.4}}, 0.425]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["T", Italic], " = ", 
                  NumberForm[$CellContext`T2$, {2, 0}], " \[Degree]C"}], 
                If[$CellContext`go$$ == 0, 
                 Row[{"evaporate ", 
                   NumberForm[$CellContext`vapor$$, {3, 2}], " kg of water"}], 
                 Row[{
                   NumberForm[$CellContext`mV$, {3, 2}], 
                   " kg of water evaporated"}]]}, Center], 18], {
             0.95, 0, 3.4}], 
            Inset[$CellContext`swirlycurl$, {1.9, -0.15, 0.4}]}, 
           Lighting -> {{"Ambient", LightGray}}, Boxed -> False, ViewPoint -> 
           Front, ImageSize -> {400, 425}, 
           PlotRange -> {{-1.1, 2.7}, {-1, 1}, {-0.1, 
             3.5}}]; $CellContext`p2$ = Graphics3D[{{
             EdgeForm[Black], 
             RGBColor[0, 0.3, 0.8], 
             Cuboid[{0, 0, 0}, {1, 0, $CellContext`mL$}], 
             RGBColor[0.4, 1, 0.9], 
             Cuboid[{1.15, 0, 0}, {2.15, 0, $CellContext`mS$}], 
             RGBColor[1, 0.4, 0.1], 
             Cuboid[{2.3, 0, 0}, {3.3, 0, $CellContext`mV$}]}, 
            Line[{{-0.1, 0, -0.01}, {3.4, 0, -0.01}}], 
            Text[
             Style["amount in each phase", 18], {1.65, 0, 12}], 
            Apply[Text[
              Style[#, 18], {#2, 0, -0.4}]& , {{"liquid", 0.5}, {
              "solid", 1.65}, {"vapor", 2.8}}, {1}], 
            Apply[Text[
              Style[
               Column[{
                 NumberForm[#, {3, 2}], "kg"}, Center], 18], {#2, 0, #}, {
              0, -1}]& , {{$CellContext`mL$, 0.5}, {$CellContext`mS$, 
               1.65}, {$CellContext`mV$, 2.8}}, {1}]}, AspectRatio -> Full, 
           ImageSize -> {175, 425}, Boxed -> False, ViewPoint -> Front]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`vapor$$, 1, 
          "mass to be evaporated (kg)"}, 0, 1.75, 0.01, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`go$$, 0, "turn on pump"}, 0, 1, ControlType -> 
         Trigger, AnimationRate -> 0.5, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{632., {256., 262.}},
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
 CellID->250243073,ExpressionUUID->"28290307-fa44-4c99-b5dc-0d2e5be77b4d"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"8618c4bc-4658-491e-a0f5-3f0a1827684f"],

Cell["\<\
This Demonstration simulates the behavior when the vapor above a liquid is \
quickly removed from a tank by a pump. First, use the slider to select the \
mass of water to evaporate. Then, click the play button \"turn on pump\" to \
turn on a vacuum pump that removes water vapor from a well-insulated tank \
that initially contains 10 kg of liquid water at 40 \[Degree]C. Water \
evaporates because the pump decreases the water partial pressure below its \
saturation pressure. The energy to evaporate the water is obtained by cooling \
the remaining liquid water, and then freezing some of the liquid when the \
temperature reaches 0 \[Degree]C. The bar graph on the right shows the \
amounts of liquid and solid water in the tank and the amount of vapor that \
evaporated. In the tank, the remaining liquid is blue and the solid is light \
blue. The amounts of each phase are determined using unsteady-state mass and \
energy balances. To observe the behavior when a different amount evaporates, \
first click reset.\
\>", "ManipulateCaption",ExpressionUUID->"ca2b32cc-f454-4a45-8de8-\
7f3062a0df6e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"ec1d3cd0-ba2e-48b3-aa41-ce0edd83de6a"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`go$$ = 0., $CellContext`vapor$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vapor$$], 1, "mass to be evaporated (kg)"}, 0, 1.75, 
      0.01}, {{
       Hold[$CellContext`go$$], 0., "turn on pump"}, 0, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {583., {209.5, 215.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`vapor$22553$$ = 0, $CellContext`go$22554$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`go$$ = 0., $CellContext`vapor$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`vapor$$, $CellContext`vapor$22553$$, 0], 
        Hold[$CellContext`go$$, $CellContext`go$22554$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`mV$, $CellContext`T1$, \
$CellContext`\[CapitalDelta]Hv1$, $CellContext`\[CapitalDelta]Hv2$, \
$CellContext`\[CapitalDelta]Hf$, $CellContext`Cp$, $CellContext`T2$, \
$CellContext`mVs$, $CellContext`mS$, $CellContext`mL$, \
$CellContext`swirlycurl$, $CellContext`p1$, $CellContext`p2$}, \
$CellContext`mV$ = $CellContext`vapor$$ $CellContext`go$$; $CellContext`T1$ = 
         40; $CellContext`\[CapitalDelta]Hv1$ = -2450; $CellContext`\
\[CapitalDelta]Hv2$ = -2500; $CellContext`\[CapitalDelta]Hf$ = -334; \
$CellContext`Cp$ = 4.18; $CellContext`T2$ = 
         If[$CellContext`T1$ <= \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
            Log[1 - $CellContext`mV$/10], 
           0, $CellContext`T1$ - \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
           Log[1 - $CellContext`mV$/10]]; $CellContext`mVs$ = 
         10 (1 - Exp[$CellContext`T1$ ($CellContext`Cp$/$CellContext`\
\[CapitalDelta]Hv1$)]) + 0.0001; $CellContext`mS$ = 
         If[$CellContext`T2$ == 
            0, ($CellContext`mV$ - $CellContext`mVs$) ($CellContext`\
\[CapitalDelta]Hv2$/$CellContext`\[CapitalDelta]Hf$), 0] + 
          0.0001; $CellContext`mL$ = 
         10.0001 - $CellContext`mS$ - $CellContext`mV$; \
$CellContext`swirlycurl$ = Graphics[{
            Arrowheads[0.35], 
            Thickness[0.06], 
            GrayLevel[0.45], 
            Rotate[
             Arrow[
              Map[{
                Cos[#], 
                Sin[#]}& , 
               Range[0, 5, 0.1]]], ($CellContext`go$$ 4) Pi]}, 
           PlotRange -> {{-1, 1}, {-1, 1}}, PlotRangePadding -> 0.1, 
           ImageSize -> 60]; $CellContext`p1$ = Graphics3D[{{
             Opacity[0.4], 
             
             Cylinder[{{0, 0, ($CellContext`mS$ + $CellContext`mL$)/10}, {0, 
               0, 2}}]}, {
             RGBColor[0.56, 1, 0.94], 
             
             Cylinder[{{0, 0, $CellContext`mL$/10}, {
               0, 0, ($CellContext`mL$ + $CellContext`mS$)/10}}]}, {
             RGBColor[0, 0.32, 0.72], 
             Opacity[0.6], 
             Cylinder[{{0, 0, 0}, {0, 0, $CellContext`mL$/10}}]}, {Thick, 
             Line[{{-1.02, 0, -0.05}, {-1.02, 0, 2}}], 
             Line[{{1, 0, 0}, {1, 0, 2}}]}, {
             GrayLevel[0.4], 
             Cylinder[{{0, 0, 2}, {0, 0, 2.15}}], 
             Tube[{{1.9, 0, 0.4}, {2.6, 0, 0.4}}, 0.1], 
             
             Tube[{{0, -0.2, 2.15}, {0, -0.2, 3}, {1.9, -0.2, 3}, {1.9, -0.2, 
               0.4}}, 0.1]}, {
             GrayLevel[0.9], 
             
             Polygon[{{1.6, -0.05, 0.15}, {1.5, -0.05, -0.1}, {
              2.3, -0.05, -0.1}, {2.2, -0.05, 0.15}}], 
             Cylinder[{{1.9, 0, 0.4}, {1.9, -0.1, 0.4}}, 0.425]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["T", Italic], " = ", 
                  NumberForm[$CellContext`T2$, {2, 0}], " \[Degree]C"}], 
                If[$CellContext`go$$ == 0, 
                 Row[{"evaporate ", 
                   NumberForm[$CellContext`vapor$$, {3, 2}], " kg of water"}], 
                 Row[{
                   NumberForm[$CellContext`mV$, {3, 2}], 
                   " kg of water evaporated"}]]}, Center], 18], {
             0.95, 0, 3.4}], 
            Inset[$CellContext`swirlycurl$, {1.9, -0.15, 0.4}]}, 
           Lighting -> {{"Ambient", LightGray}}, Boxed -> False, ViewPoint -> 
           Front, ImageSize -> {400, 425}, 
           PlotRange -> {{-1.1, 2.7}, {-1, 1}, {-0.1, 
             3.5}}]; $CellContext`p2$ = Graphics3D[{{
             EdgeForm[Black], 
             RGBColor[0, 0.3, 0.8], 
             Cuboid[{0, 0, 0}, {1, 0, $CellContext`mL$}], 
             RGBColor[0.4, 1, 0.9], 
             Cuboid[{1.15, 0, 0}, {2.15, 0, $CellContext`mS$}], 
             RGBColor[1, 0.4, 0.1], 
             Cuboid[{2.3, 0, 0}, {3.3, 0, $CellContext`mV$}]}, 
            Line[{{-0.1, 0, -0.01}, {3.4, 0, -0.01}}], 
            Text[
             Style["amount in each phase", 18], {1.65, 0, 12}], 
            Apply[Text[
              Style[#, 18], {#2, 0, -0.4}]& , {{"liquid", 0.5}, {
              "solid", 1.65}, {"vapor", 2.8}}, {1}], 
            Apply[Text[
              Style[
               Column[{
                 NumberForm[#, {3, 2}], "kg"}, Center], 18], {#2, 0, #}, {
              0, -1}]& , {{$CellContext`mL$, 0.5}, {$CellContext`mS$, 
               1.65}, {$CellContext`mV$, 2.8}}, {1}]}, AspectRatio -> Full, 
           ImageSize -> {175, 425}, Boxed -> False, ViewPoint -> Front]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`vapor$$, 1, 
          "mass to be evaporated (kg)"}, 0, 1.75, 0.01, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`go$$, 0., "turn on pump"}, 0, 1, ControlType -> 
         Trigger, AnimationRate -> 0.5, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{632., {256., 262.}},
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
 CellID->37242462,ExpressionUUID->"df622b4d-f340-4ea7-9926-b6615e47995e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"e752cd83-2b4c-4159-9fd0-2f0a32c945a9"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`go$$ = 0., $CellContext`vapor$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vapor$$], 1, "mass to be evaporated (kg)"}, 0, 1.75, 
      0.01}, {{
       Hold[$CellContext`go$$], 0., "turn on pump"}, 0, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {583., {209.5, 215.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`vapor$22608$$ = 0, $CellContext`go$22609$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`go$$ = 0., $CellContext`vapor$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`vapor$$, $CellContext`vapor$22608$$, 0], 
        Hold[$CellContext`go$$, $CellContext`go$22609$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`mV$, $CellContext`T1$, \
$CellContext`\[CapitalDelta]Hv1$, $CellContext`\[CapitalDelta]Hv2$, \
$CellContext`\[CapitalDelta]Hf$, $CellContext`Cp$, $CellContext`T2$, \
$CellContext`mVs$, $CellContext`mS$, $CellContext`mL$, \
$CellContext`swirlycurl$, $CellContext`p1$, $CellContext`p2$}, \
$CellContext`mV$ = $CellContext`vapor$$ $CellContext`go$$; $CellContext`T1$ = 
         40; $CellContext`\[CapitalDelta]Hv1$ = -2450; $CellContext`\
\[CapitalDelta]Hv2$ = -2500; $CellContext`\[CapitalDelta]Hf$ = -334; \
$CellContext`Cp$ = 4.18; $CellContext`T2$ = 
         If[$CellContext`T1$ <= \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
            Log[1 - $CellContext`mV$/10], 
           0, $CellContext`T1$ - \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
           Log[1 - $CellContext`mV$/10]]; $CellContext`mVs$ = 
         10 (1 - Exp[$CellContext`T1$ ($CellContext`Cp$/$CellContext`\
\[CapitalDelta]Hv1$)]) + 0.0001; $CellContext`mS$ = 
         If[$CellContext`T2$ == 
            0, ($CellContext`mV$ - $CellContext`mVs$) ($CellContext`\
\[CapitalDelta]Hv2$/$CellContext`\[CapitalDelta]Hf$), 0] + 
          0.0001; $CellContext`mL$ = 
         10.0001 - $CellContext`mS$ - $CellContext`mV$; \
$CellContext`swirlycurl$ = Graphics[{
            Arrowheads[0.35], 
            Thickness[0.06], 
            GrayLevel[0.45], 
            Rotate[
             Arrow[
              Map[{
                Cos[#], 
                Sin[#]}& , 
               Range[0, 5, 0.1]]], ($CellContext`go$$ 4) Pi]}, 
           PlotRange -> {{-1, 1}, {-1, 1}}, PlotRangePadding -> 0.1, 
           ImageSize -> 60]; $CellContext`p1$ = Graphics3D[{{
             Opacity[0.4], 
             
             Cylinder[{{0, 0, ($CellContext`mS$ + $CellContext`mL$)/10}, {0, 
               0, 2}}]}, {
             RGBColor[0.56, 1, 0.94], 
             
             Cylinder[{{0, 0, $CellContext`mL$/10}, {
               0, 0, ($CellContext`mL$ + $CellContext`mS$)/10}}]}, {
             RGBColor[0, 0.32, 0.72], 
             Opacity[0.6], 
             Cylinder[{{0, 0, 0}, {0, 0, $CellContext`mL$/10}}]}, {Thick, 
             Line[{{-1.02, 0, -0.05}, {-1.02, 0, 2}}], 
             Line[{{1, 0, 0}, {1, 0, 2}}]}, {
             GrayLevel[0.4], 
             Cylinder[{{0, 0, 2}, {0, 0, 2.15}}], 
             Tube[{{1.9, 0, 0.4}, {2.6, 0, 0.4}}, 0.1], 
             
             Tube[{{0, -0.2, 2.15}, {0, -0.2, 3}, {1.9, -0.2, 3}, {1.9, -0.2, 
               0.4}}, 0.1]}, {
             GrayLevel[0.9], 
             
             Polygon[{{1.6, -0.05, 0.15}, {1.5, -0.05, -0.1}, {
              2.3, -0.05, -0.1}, {2.2, -0.05, 0.15}}], 
             Cylinder[{{1.9, 0, 0.4}, {1.9, -0.1, 0.4}}, 0.425]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["T", Italic], " = ", 
                  NumberForm[$CellContext`T2$, {2, 0}], " \[Degree]C"}], 
                If[$CellContext`go$$ == 0, 
                 Row[{"evaporate ", 
                   NumberForm[$CellContext`vapor$$, {3, 2}], " kg of water"}], 
                 Row[{
                   NumberForm[$CellContext`mV$, {3, 2}], 
                   " kg of water evaporated"}]]}, Center], 18], {
             0.95, 0, 3.4}], 
            Inset[$CellContext`swirlycurl$, {1.9, -0.15, 0.4}]}, 
           Lighting -> {{"Ambient", LightGray}}, Boxed -> False, ViewPoint -> 
           Front, ImageSize -> {400, 425}, 
           PlotRange -> {{-1.1, 2.7}, {-1, 1}, {-0.1, 
             3.5}}]; $CellContext`p2$ = Graphics3D[{{
             EdgeForm[Black], 
             RGBColor[0, 0.3, 0.8], 
             Cuboid[{0, 0, 0}, {1, 0, $CellContext`mL$}], 
             RGBColor[0.4, 1, 0.9], 
             Cuboid[{1.15, 0, 0}, {2.15, 0, $CellContext`mS$}], 
             RGBColor[1, 0.4, 0.1], 
             Cuboid[{2.3, 0, 0}, {3.3, 0, $CellContext`mV$}]}, 
            Line[{{-0.1, 0, -0.01}, {3.4, 0, -0.01}}], 
            Text[
             Style["amount in each phase", 18], {1.65, 0, 12}], 
            Apply[Text[
              Style[#, 18], {#2, 0, -0.4}]& , {{"liquid", 0.5}, {
              "solid", 1.65}, {"vapor", 2.8}}, {1}], 
            Apply[Text[
              Style[
               Column[{
                 NumberForm[#, {3, 2}], "kg"}, Center], 18], {#2, 0, #}, {
              0, -1}]& , {{$CellContext`mL$, 0.5}, {$CellContext`mS$, 
               1.65}, {$CellContext`mV$, 2.8}}, {1}]}, AspectRatio -> Full, 
           ImageSize -> {175, 425}, Boxed -> False, ViewPoint -> Front]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`vapor$$, 1, 
          "mass to be evaporated (kg)"}, 0, 1.75, 0.01, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`go$$, 0., "turn on pump"}, 0, 1, ControlType -> 
         Trigger, AnimationRate -> 0.5, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{632., {256., 262.}},
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
 CellID->395291732,ExpressionUUID->"86adf1de-90bf-4a2b-8543-009f113bb808"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`go$$ = 1., $CellContext`vapor$$ = 1.75, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vapor$$], 1.75, "mass to be evaporated (kg)"}, 0, 
      1.75, 0.01}, {{
       Hold[$CellContext`go$$], 1., "turn on pump"}, 0, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {583., {209.5, 215.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`vapor$22663$$ = 0, $CellContext`go$22664$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`go$$ = 1., $CellContext`vapor$$ = 1.75}, 
      "ControllerVariables" :> {
        Hold[$CellContext`vapor$$, $CellContext`vapor$22663$$, 0], 
        Hold[$CellContext`go$$, $CellContext`go$22664$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`mV$, $CellContext`T1$, \
$CellContext`\[CapitalDelta]Hv1$, $CellContext`\[CapitalDelta]Hv2$, \
$CellContext`\[CapitalDelta]Hf$, $CellContext`Cp$, $CellContext`T2$, \
$CellContext`mVs$, $CellContext`mS$, $CellContext`mL$, \
$CellContext`swirlycurl$, $CellContext`p1$, $CellContext`p2$}, \
$CellContext`mV$ = $CellContext`vapor$$ $CellContext`go$$; $CellContext`T1$ = 
         40; $CellContext`\[CapitalDelta]Hv1$ = -2450; $CellContext`\
\[CapitalDelta]Hv2$ = -2500; $CellContext`\[CapitalDelta]Hf$ = -334; \
$CellContext`Cp$ = 4.18; $CellContext`T2$ = 
         If[$CellContext`T1$ <= \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
            Log[1 - $CellContext`mV$/10], 
           0, $CellContext`T1$ - \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
           Log[1 - $CellContext`mV$/10]]; $CellContext`mVs$ = 
         10 (1 - Exp[$CellContext`T1$ ($CellContext`Cp$/$CellContext`\
\[CapitalDelta]Hv1$)]) + 0.0001; $CellContext`mS$ = 
         If[$CellContext`T2$ == 
            0, ($CellContext`mV$ - $CellContext`mVs$) ($CellContext`\
\[CapitalDelta]Hv2$/$CellContext`\[CapitalDelta]Hf$), 0] + 
          0.0001; $CellContext`mL$ = 
         10.0001 - $CellContext`mS$ - $CellContext`mV$; \
$CellContext`swirlycurl$ = Graphics[{
            Arrowheads[0.35], 
            Thickness[0.06], 
            GrayLevel[0.45], 
            Rotate[
             Arrow[
              Map[{
                Cos[#], 
                Sin[#]}& , 
               Range[0, 5, 0.1]]], ($CellContext`go$$ 4) Pi]}, 
           PlotRange -> {{-1, 1}, {-1, 1}}, PlotRangePadding -> 0.1, 
           ImageSize -> 60]; $CellContext`p1$ = Graphics3D[{{
             Opacity[0.4], 
             
             Cylinder[{{0, 0, ($CellContext`mS$ + $CellContext`mL$)/10}, {0, 
               0, 2}}]}, {
             RGBColor[0.56, 1, 0.94], 
             
             Cylinder[{{0, 0, $CellContext`mL$/10}, {
               0, 0, ($CellContext`mL$ + $CellContext`mS$)/10}}]}, {
             RGBColor[0, 0.32, 0.72], 
             Opacity[0.6], 
             Cylinder[{{0, 0, 0}, {0, 0, $CellContext`mL$/10}}]}, {Thick, 
             Line[{{-1.02, 0, -0.05}, {-1.02, 0, 2}}], 
             Line[{{1, 0, 0}, {1, 0, 2}}]}, {
             GrayLevel[0.4], 
             Cylinder[{{0, 0, 2}, {0, 0, 2.15}}], 
             Tube[{{1.9, 0, 0.4}, {2.6, 0, 0.4}}, 0.1], 
             
             Tube[{{0, -0.2, 2.15}, {0, -0.2, 3}, {1.9, -0.2, 3}, {1.9, -0.2, 
               0.4}}, 0.1]}, {
             GrayLevel[0.9], 
             
             Polygon[{{1.6, -0.05, 0.15}, {1.5, -0.05, -0.1}, {
              2.3, -0.05, -0.1}, {2.2, -0.05, 0.15}}], 
             Cylinder[{{1.9, 0, 0.4}, {1.9, -0.1, 0.4}}, 0.425]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["T", Italic], " = ", 
                  NumberForm[$CellContext`T2$, {2, 0}], " \[Degree]C"}], 
                If[$CellContext`go$$ == 0, 
                 Row[{"evaporate ", 
                   NumberForm[$CellContext`vapor$$, {3, 2}], " kg of water"}], 
                 Row[{
                   NumberForm[$CellContext`mV$, {3, 2}], 
                   " kg of water evaporated"}]]}, Center], 18], {
             0.95, 0, 3.4}], 
            Inset[$CellContext`swirlycurl$, {1.9, -0.15, 0.4}]}, 
           Lighting -> {{"Ambient", LightGray}}, Boxed -> False, ViewPoint -> 
           Front, ImageSize -> {400, 425}, 
           PlotRange -> {{-1.1, 2.7}, {-1, 1}, {-0.1, 
             3.5}}]; $CellContext`p2$ = Graphics3D[{{
             EdgeForm[Black], 
             RGBColor[0, 0.3, 0.8], 
             Cuboid[{0, 0, 0}, {1, 0, $CellContext`mL$}], 
             RGBColor[0.4, 1, 0.9], 
             Cuboid[{1.15, 0, 0}, {2.15, 0, $CellContext`mS$}], 
             RGBColor[1, 0.4, 0.1], 
             Cuboid[{2.3, 0, 0}, {3.3, 0, $CellContext`mV$}]}, 
            Line[{{-0.1, 0, -0.01}, {3.4, 0, -0.01}}], 
            Text[
             Style["amount in each phase", 18], {1.65, 0, 12}], 
            Apply[Text[
              Style[#, 18], {#2, 0, -0.4}]& , {{"liquid", 0.5}, {
              "solid", 1.65}, {"vapor", 2.8}}, {1}], 
            Apply[Text[
              Style[
               Column[{
                 NumberForm[#, {3, 2}], "kg"}, Center], 18], {#2, 0, #}, {
              0, -1}]& , {{$CellContext`mL$, 0.5}, {$CellContext`mS$, 
               1.65}, {$CellContext`mV$, 2.8}}, {1}]}, AspectRatio -> Full, 
           ImageSize -> {175, 425}, Boxed -> False, ViewPoint -> Front]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`vapor$$, 1.75, 
          "mass to be evaporated (kg)"}, 0, 1.75, 0.01, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`go$$, 1., "turn on pump"}, 0, 1, ControlType -> 
         Trigger, AnimationRate -> 0.5, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{632., {256., 262.}},
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
 CellID->391055665,ExpressionUUID->"81891859-39b9-4190-aad8-118a0fca0ea0"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`go$$ = 1., $CellContext`vapor$$ = 0.66, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vapor$$], 0.66, "mass to be evaporated (kg)"}, 0, 
      1.75, 0.01}, {{
       Hold[$CellContext`go$$], 1., "turn on pump"}, 0, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {583., {209.5, 215.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`vapor$22718$$ = 0, $CellContext`go$22719$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`go$$ = 1., $CellContext`vapor$$ = 0.66}, 
      "ControllerVariables" :> {
        Hold[$CellContext`vapor$$, $CellContext`vapor$22718$$, 0], 
        Hold[$CellContext`go$$, $CellContext`go$22719$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`mV$, $CellContext`T1$, \
$CellContext`\[CapitalDelta]Hv1$, $CellContext`\[CapitalDelta]Hv2$, \
$CellContext`\[CapitalDelta]Hf$, $CellContext`Cp$, $CellContext`T2$, \
$CellContext`mVs$, $CellContext`mS$, $CellContext`mL$, \
$CellContext`swirlycurl$, $CellContext`p1$, $CellContext`p2$}, \
$CellContext`mV$ = $CellContext`vapor$$ $CellContext`go$$; $CellContext`T1$ = 
         40; $CellContext`\[CapitalDelta]Hv1$ = -2450; $CellContext`\
\[CapitalDelta]Hv2$ = -2500; $CellContext`\[CapitalDelta]Hf$ = -334; \
$CellContext`Cp$ = 4.18; $CellContext`T2$ = 
         If[$CellContext`T1$ <= \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
            Log[1 - $CellContext`mV$/10], 
           0, $CellContext`T1$ - \
($CellContext`\[CapitalDelta]Hv1$/$CellContext`Cp$) 
           Log[1 - $CellContext`mV$/10]]; $CellContext`mVs$ = 
         10 (1 - Exp[$CellContext`T1$ ($CellContext`Cp$/$CellContext`\
\[CapitalDelta]Hv1$)]) + 0.0001; $CellContext`mS$ = 
         If[$CellContext`T2$ == 
            0, ($CellContext`mV$ - $CellContext`mVs$) ($CellContext`\
\[CapitalDelta]Hv2$/$CellContext`\[CapitalDelta]Hf$), 0] + 
          0.0001; $CellContext`mL$ = 
         10.0001 - $CellContext`mS$ - $CellContext`mV$; \
$CellContext`swirlycurl$ = Graphics[{
            Arrowheads[0.35], 
            Thickness[0.06], 
            GrayLevel[0.45], 
            Rotate[
             Arrow[
              Map[{
                Cos[#], 
                Sin[#]}& , 
               Range[0, 5, 0.1]]], ($CellContext`go$$ 4) Pi]}, 
           PlotRange -> {{-1, 1}, {-1, 1}}, PlotRangePadding -> 0.1, 
           ImageSize -> 60]; $CellContext`p1$ = Graphics3D[{{
             Opacity[0.4], 
             
             Cylinder[{{0, 0, ($CellContext`mS$ + $CellContext`mL$)/10}, {0, 
               0, 2}}]}, {
             RGBColor[0.56, 1, 0.94], 
             
             Cylinder[{{0, 0, $CellContext`mL$/10}, {
               0, 0, ($CellContext`mL$ + $CellContext`mS$)/10}}]}, {
             RGBColor[0, 0.32, 0.72], 
             Opacity[0.6], 
             Cylinder[{{0, 0, 0}, {0, 0, $CellContext`mL$/10}}]}, {Thick, 
             Line[{{-1.02, 0, -0.05}, {-1.02, 0, 2}}], 
             Line[{{1, 0, 0}, {1, 0, 2}}]}, {
             GrayLevel[0.4], 
             Cylinder[{{0, 0, 2}, {0, 0, 2.15}}], 
             Tube[{{1.9, 0, 0.4}, {2.6, 0, 0.4}}, 0.1], 
             
             Tube[{{0, -0.2, 2.15}, {0, -0.2, 3}, {1.9, -0.2, 3}, {1.9, -0.2, 
               0.4}}, 0.1]}, {
             GrayLevel[0.9], 
             
             Polygon[{{1.6, -0.05, 0.15}, {1.5, -0.05, -0.1}, {
              2.3, -0.05, -0.1}, {2.2, -0.05, 0.15}}], 
             Cylinder[{{1.9, 0, 0.4}, {1.9, -0.1, 0.4}}, 0.425]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["T", Italic], " = ", 
                  NumberForm[$CellContext`T2$, {2, 0}], " \[Degree]C"}], 
                If[$CellContext`go$$ == 0, 
                 Row[{"evaporate ", 
                   NumberForm[$CellContext`vapor$$, {3, 2}], " kg of water"}], 
                 Row[{
                   NumberForm[$CellContext`mV$, {3, 2}], 
                   " kg of water evaporated"}]]}, Center], 18], {
             0.95, 0, 3.4}], 
            Inset[$CellContext`swirlycurl$, {1.9, -0.15, 0.4}]}, 
           Lighting -> {{"Ambient", LightGray}}, Boxed -> False, ViewPoint -> 
           Front, ImageSize -> {400, 425}, 
           PlotRange -> {{-1.1, 2.7}, {-1, 1}, {-0.1, 
             3.5}}]; $CellContext`p2$ = Graphics3D[{{
             EdgeForm[Black], 
             RGBColor[0, 0.3, 0.8], 
             Cuboid[{0, 0, 0}, {1, 0, $CellContext`mL$}], 
             RGBColor[0.4, 1, 0.9], 
             Cuboid[{1.15, 0, 0}, {2.15, 0, $CellContext`mS$}], 
             RGBColor[1, 0.4, 0.1], 
             Cuboid[{2.3, 0, 0}, {3.3, 0, $CellContext`mV$}]}, 
            Line[{{-0.1, 0, -0.01}, {3.4, 0, -0.01}}], 
            Text[
             Style["amount in each phase", 18], {1.65, 0, 12}], 
            Apply[Text[
              Style[#, 18], {#2, 0, -0.4}]& , {{"liquid", 0.5}, {
              "solid", 1.65}, {"vapor", 2.8}}, {1}], 
            Apply[Text[
              Style[
               Column[{
                 NumberForm[#, {3, 2}], "kg"}, Center], 18], {#2, 0, #}, {
              0, -1}]& , {{$CellContext`mL$, 0.5}, {$CellContext`mS$, 
               1.65}, {$CellContext`mV$, 2.8}}, {1}]}, AspectRatio -> Full, 
           ImageSize -> {175, 425}, Boxed -> False, ViewPoint -> Front]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`vapor$$, 0.66, 
          "mass to be evaporated (kg)"}, 0, 1.75, 0.01, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`go$$, 1., "turn on pump"}, 0, 1, ControlType -> 
         Trigger, AnimationRate -> 0.5, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{632., {256., 262.}},
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
 CellID->125125322,ExpressionUUID->"67c2a642-21d1-4d8a-b11e-ccadc98f347d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"f7504c7b-b5eb-4aa8-bf4b-b911796e11a3"],

Cell[TextData[{
 "10 kg of liquid water are cooled from an initial temperature of 40 \
\[Degree]C. An energy balance is used to determine the final temperature ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "a16cc285-898d-4326-9403-418f1d5c7227"],
 ":"
}], "DetailNotes",
 CellID->54133411,ExpressionUUID->"e518904a-680d-496a-a2db-5bfe2e9cea44"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["m", 
      StyleBox["L",
       FontSlant->"Plain"]], " ", "Cp", " ", 
     RowBox[{"\[DifferentialD]", "T"}]}], "=", 
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
     SubscriptBox["H", "1"], " ", 
     RowBox[{"\[DifferentialD]", 
      SubscriptBox["m", 
       StyleBox["V",
        FontSlant->"Plain"]]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f4f392ab-66d5-4e82-b6c6-eedeeff3d613"],
 ","
}], "DetailNotes",
 CellID->21542933,ExpressionUUID->"faab7f98-61d3-4900-b0ac-caaa620fd685"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]], "InlineMath",ExpressionUUID->
  "61502036-a0f8-438a-b180-caa117461362"],
 " is the liquid heat capacity (kJ/[kg \[Degree]C]), ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
    SubscriptBox["H", "1"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "e98c1e29-4e96-4bcd-b106-a16e338ae9d1"],
 " is the heat of vaporization at 20 \[Degree]C (average of initial \
temperature and 0 \[Degree]C) in kJ/kg and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "1ab518ed-b7e1-47a4-8bc1-88d7e89eab70"],
 " is in \[Degree]C."
}], "DetailNotes",
 Deletable->True,
 CellID->65928512,ExpressionUUID->"b88b1cdc-8eef-45b3-b9f4-205f483bc0d0"],

Cell[TextData[{
 "The amount of liquid ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", 
    StyleBox["L",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "6e828468-c102-44b4-98b2-62b6813a9200"],
 " is 10 kg minus the amount of water vaporized ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", 
    StyleBox["V",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "1bb7823e-8530-4830-89d7-549d6333e9b5"],
 " (both in kg):"
}], "DetailNotes",
 CellID->479155190,ExpressionUUID->"20d4f64e-714c-48c8-ac34-593b59d92d50"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"10", "-", 
       SubscriptBox["m", 
        StyleBox["V",
         FontSlant->"Plain"]]}], ")"}], " ", "Cp", " ", 
     RowBox[{"\[DifferentialD]", "\[InvisibleSpace]", "T"}]}], "=", 
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
     SubscriptBox["H", "1"], " ", 
     RowBox[{"\[DifferentialD]", 
      SubscriptBox["m", 
       StyleBox["V",
        FontSlant->"Plain"]]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"6602c352-f835-4325-a350-5fc97199a75a"],
 "."
}], "DetailNotes",
 CellID->225256790,ExpressionUUID->"f20a090a-7af2-4b35-b9aa-858826c6cb21"],

Cell[TextData[{
 "Integrating between the initial conditions (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", 
     StyleBox["L",
      FontSlant->"Plain"]], "=", "10"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"bf5290fc-4ecb-4f2b-aa24-1c42163dd766"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", 
     StyleBox["V",
      FontSlant->"Plain"]], "=", "0"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"7185fb21-710f-4e89-a05d-ae5fd3f5678b"],
 ") and the final conditions yields:"
}], "DetailNotes",
 CellID->206469221,ExpressionUUID->"bcb8ff30-94aa-4b47-a62b-7e9e45ccdb94"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     FractionBox["Cp", 
      RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
       SubscriptBox["H", "1"]}]], " ", 
     RowBox[{
      SubsuperscriptBox["\[Integral]", "40", 
       SubscriptBox["T", "2"]], 
      RowBox[{"\[DifferentialD]", "T"}]}]}], "=", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      SubscriptBox["m", 
       StyleBox["V",
        FontSlant->"Plain"]]], 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"10", "-", 
         SubscriptBox["m", 
          StyleBox["V",
           FontSlant->"Plain"]]}], ")"}], 
       RowBox[{"-", "1"}]], 
      RowBox[{"\[DifferentialD]", 
       SubscriptBox["m", 
        StyleBox["V",
         FontSlant->"Plain"]]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"02a9200d-6806-4bf6-aeb5-27eb5d6d56e3"],
 ","
}], "DetailNotes",
 CellID->97831786,ExpressionUUID->"cd1ce7bd-a8ef-4e78-ba17-fd7131f1e79b"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     FractionBox["Cp", 
      RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
       SubscriptBox["H", "1"]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["T", "2"], "-", "40"}], ")"}]}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "ln"}], " ", 
       RowBox[{"(", 
        RowBox[{"10", "-", 
         SubscriptBox["m", 
          StyleBox["V",
           FontSlant->"Plain"]]}], ")"}]}], 
      SubsuperscriptBox["\[VerticalSeparator]", "0", 
       SubscriptBox["m", 
        StyleBox["V",
         FontSlant->"Plain"]]]}], "=", 
     RowBox[{
      RowBox[{"-", "ln"}], " ", 
      RowBox[{"(", 
       FractionBox["10", 
        RowBox[{"10", "-", 
         SubscriptBox["m", 
          StyleBox["V",
           FontSlant->"Plain"]]}]], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"bb643021-2330-4ff5-93f0-5eac76cc0f5f"],
 "."
}], "DetailNotes",
 CellID->183737327,ExpressionUUID->"4b1dfbe1-4471-44bb-b56c-b982bf7c02ab"],

Cell["\<\
Thus the final temperature for a given amount of water vaporized is:\
\>", "DetailNotes",
 CellID->41727624,ExpressionUUID->"632f49c3-e39d-44db-a85b-d1e92a4a06d9"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "2"], "=", 
    RowBox[{"40", "-", 
     RowBox[{
      FractionBox[
       RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
        SubscriptBox["H", "1"]}], "Cp"], " ", "ln", " ", 
      RowBox[{"(", 
       FractionBox["10", 
        RowBox[{"10", "-", 
         SubscriptBox["m", 
          StyleBox["V",
           FontSlant->"Plain"]]}]], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"b7131a63-e6b0-4d60-ac45-c96a81d87ae6"],
 ",",
 " ",
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "2"], "\[LessEqual]", 
    RowBox[{"0", "\[ThickSpace]", "\[Degree]C"}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"ae38a4cc-e66d-4822-b90a-aaf07993e786"],
 "."
}], "DetailNotes",
 CellID->149676056,ExpressionUUID->"46f33d7b-200e-41df-9b41-5d4bcb50d9e4"],

Cell["\<\
When 0.66 kg of water vaporizes, the liquid temperature is 0 \[Degree]C and \
additional vaporization freezes some of the remaining liquid. An energy \
balance at 0 \[Degree]C determines the amount of liquid that forms solid ice:\
\>", "DetailNotes",
 CellID->246735213,ExpressionUUID->"45fd9eda-b8cc-4b2c-b779-e63609d6ec12"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["m", 
      StyleBox["S",
       FontSlant->"Plain"]], " ", "\[CapitalDelta]", "\[InvisibleSpace]", 
     SuperscriptBox["H", 
      StyleBox["f",
       FontSlant->"Plain"]]}], "=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["m", 
        StyleBox["V",
         FontSlant->"Plain"]], "-", "0.66"}], ")"}], " ", "\[CapitalDelta]", 
     "\[InvisibleSpace]", 
     SubscriptBox["H", "2"]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"7d9e7f0b-40b9-4824-8235-844e3b97c7f5"],
 "."
}], "DetailNotes",
 CellID->140137194,ExpressionUUID->"88d4068d-520f-48cf-ad96-781959b3dc5f"],

Cell[TextData[{
 "Here ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", 
    StyleBox["S",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "daf7cfcb-cb35-4d0e-9ef3-0f558548cef6"],
 " is the mass of ice formed (kg), ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
    SuperscriptBox["H", 
     StyleBox["f",
      FontSlant->"Plain"]]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "23254d4d-dfc4-496e-81e7-d258afa7b05c"],
 " is the heat of fusion (kJ/kg) and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
    SubscriptBox["H", "2"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "13f810bd-5f1c-43f7-b9c4-1c533205fa59"],
 " is the heat of vaporization at 0 \[Degree]C (kJ/kg)."
}], "DetailNotes",
 CellID->303648350,ExpressionUUID->"c2c54919-3a3d-4812-b958-406a99468ce3"],

Cell["\<\
The screencast video at [1] explains how to use this Demonstration.\
\>", "DetailNotes",
 CellID->82592343,ExpressionUUID->"f8f1889b-eac4-4ed4-86fd-92bc97ec4352"],

Cell["Reference", "DetailNotes",
 CellID->79232883,ExpressionUUID->"64d9c9a5-8a74-4c82-9e94-ccabb2c4e148"],

Cell[TextData[{
 "[1] ",
 StyleBox["Evaporative Cooling of Water",
  FontSlant->"Italic"],
 " [Video]",
 ". (Sep 1, 2016) ",
 ButtonBox["www.colorado.edu/learncheme/thermodynamics/\
EvaporativeCoolingWater.html",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.colorado.edu/learncheme/thermodynamics/\
EvaporativeCoolingWater.html"], None},
  ButtonNote->
   "http://www.colorado.edu/learncheme/thermodynamics/EvaporativeCoolingWater.\
html"],
 "."
}], "DetailNotes",
 CellID->99824296,ExpressionUUID->"58d95979-0f31-410b-a3d1-a5156fe5d287"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"5c7c45a3-b443-43b1-9e71-3ed0e8662cf6"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"8d1614f4-b78b-4209-aabb-f81da275d1b6"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"1d097d1d-601e-4281-a609-6a1e9d07993d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "33daa03b-61a2-4623-bbb4-cb2fb71adfd0"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"8ec8dd2b-9d6e-44ae-a82f-c5648f282fc7"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"02a87734-5d07-49f0-88d5-cd73afb96701"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"b323d277-274c-465d-931a-f043ac0a0aee"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "30751772-4646-4f1b-842d-4241721305a7"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"b5dbe677-11b1-4b50-8dfc-\
987226db3559"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"c9c961f4-94cc-4fad-9b94-ce9863e038c3"]}],
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
  "SliderZoom",ExpressionUUID->"37b660a5-4632-41fd-b50d-7bc10ba44a4e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "089b7552-fe2e-4d08-8e42-1f4b34a22bcc"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"51af1bd6-7897-4444-bbe9-62cef3b85001"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "017afc2f-b97f-40a7-94b3-ddf8416f8150"]}],
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
  "AutomaticAnimation",ExpressionUUID->"92b9a6b8-0bf7-45f7-ba4e-56aafa45dc3d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "83d301e6-0a8c-45d9-b21c-0f1192c05d70"]}],
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
  "BookmarkAnimation",ExpressionUUID->"49add42b-3d15-4256-973f-daecbcafde5f"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"a3bcc43c-497f-4add-b263-d612671ecf1b"],

Cell["chemical engineering", "SearchTerms",
 CellID->564285450,ExpressionUUID->"fa81a5d6-0fec-4cbe-86d0-8acbc457eb08"],

Cell["physical chemistry", "SearchTerms",
 CellID->227442325,ExpressionUUID->"786b7bb8-fb62-4a6b-9b5b-b720f54098d8"],

Cell["thermodynamics", "SearchTerms",
 CellID->921360687,ExpressionUUID->"dc839a2e-93d6-4460-84a4-af651b024f9d"],

Cell["first law", "SearchTerms",
 CellID->589946172,ExpressionUUID->"aa54dd08-6693-4523-8226-263451666365"],

Cell["energy balance", "SearchTerms",
 CellID->358759997,ExpressionUUID->"afcc60c1-b59c-4fce-bc6c-f77587a30802"],

Cell["mass balance", "SearchTerms",
 CellID->234270827,ExpressionUUID->"74bf3617-078d-44d7-a38b-cf5131816060"],

Cell["mechanical engineering", "SearchTerms",
 CellID->75947430,ExpressionUUID->"97e8fd4a-a7e0-4358-9310-01294a0494e8"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"1c2e3c2c-b273-434f-85a1-88186c6d0893"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"97242f48-4b74-4504-983a-6dd87279cc5a"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael+L.+\
Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael+L.+Baumann"]
}], "Author",
 CellID->31372289,ExpressionUUID->"91286256-9278-4ee3-9b68-2c992e4ba125"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John+L.+\
Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John+L.+Falconer"]
}], "Author",
 CellID->344056814,ExpressionUUID->"61ea500e-cf2e-4731-a5aa-2a89e4edf9dd"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613,ExpressionUUID->"2afba227-d9e6-4c98-b177-f9934521eca6"]
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
  Cell[66949, 1597, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"1d097d1d-601e-4281-a609-6a1e9d07993d",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[67380, 1609, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"8ec8dd2b-9d6e-44ae-a82f-c5648f282fc7",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[68183, 1630, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"b323d277-274c-465d-931a-f043ac0a0aee",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[68643, 1645, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"b5dbe677-11b1-4b50-8dfc-987226db3559",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[69407, 1666, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"37b660a5-4632-41fd-b50d-7bc10ba44a4e",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[70370, 1691, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"51af1bd6-7897-4444-bbe9-62cef3b85001",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[70798, 1704, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"92b9a6b8-0bf7-45f7-ba4e-56aafa45dc3d",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[72386, 1740, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"49add42b-3d15-4256-973f-daecbcafde5f",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 76036, 1847},
 {"RotateAndZoomIn3D", 76201, 1850},
 {"DragLocators", 76366, 1853},
 {"CreateAndDeleteLocators", 76537, 1856},
 {"SliderZoom", 76706, 1859},
 {"GamepadControls", 76867, 1862},
 {"AutomaticAnimation", 77036, 1865},
 {"BookmarkAnimation", 77208, 1868}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 104, 0, 74, "DemoTitle",ExpressionUUID->"576784c9-c6d7-4f86-ad90-a3293f121880"],
Cell[1617, 37, 88, 0, 275, "InitializationSection",ExpressionUUID->"715beb0b-5c3e-4391-9ddc-15d0fe3661ae"],
Cell[CellGroupData[{
Cell[1730, 41, 84, 0, 189, "ManipulateSection",ExpressionUUID->"dbd448dc-dcbe-41f9-96b3-690ea04b31a6"],
Cell[CellGroupData[{
Cell[1839, 45, 18957, 466, 998, "Input",ExpressionUUID->"17162a46-0d71-490d-aa7a-e64c1b1557d4"],
Cell[20799, 513, 6959, 145, 530, "Output",ExpressionUUID->"28290307-fa44-4c99-b5dc-0d2e5be77b4d",
 CellID->250243073]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[27804, 664, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"8618c4bc-4658-491e-a0f5-3f0a1827684f"],
Cell[27898, 666, 1112, 16, 97, "ManipulateCaption",ExpressionUUID->"ca2b32cc-f454-4a45-8de8-7f3062a0df6e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29047, 687, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"ec1d3cd0-ba2e-48b3-aa41-ce0edd83de6a"],
Cell[29133, 689, 6962, 145, 530, "Output",ExpressionUUID->"df622b4d-f340-4ea7-9926-b6615e47995e",
 CellID->37242462]
}, Open  ]],
Cell[CellGroupData[{
Cell[36132, 839, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"e752cd83-2b4c-4159-9fd0-2f0a32c945a9"],
Cell[36218, 841, 6963, 145, 530, "Output",ExpressionUUID->"86adf1de-90bf-4a2b-8543-009f113bb808",
 CellID->395291732],
Cell[43184, 988, 6975, 145, 530, "Output",ExpressionUUID->"81891859-39b9-4190-aad8-118a0fca0ea0",
 CellID->391055665],
Cell[50162, 1135, 6975, 145, 530, "Output",ExpressionUUID->"67c2a642-21d1-4d8a-b11e-ccadc98f347d",
 CellID->125125322]
}, Open  ]],
Cell[CellGroupData[{
Cell[57174, 1285, 81, 0, 339, "DetailsSection",ExpressionUUID->"f7504c7b-b5eb-4aa8-bf4b-b911796e11a3"],
Cell[57258, 1287, 405, 9, 23, "DetailNotes",ExpressionUUID->"e518904a-680d-496a-a2db-5bfe2e9cea44",
 CellID->54133411],
Cell[57666, 1298, 598, 18, 23, "DetailNotes",ExpressionUUID->"faab7f98-61d3-4900-b0ac-caaa620fd685",
 CellID->21542933],
Cell[58267, 1318, 799, 20, 23, "DetailNotes",ExpressionUUID->"b88b1cdc-8eef-45b3-b9f4-205f483bc0d0",
 CellID->65928512],
Cell[59069, 1340, 574, 17, 23, "DetailNotes",ExpressionUUID->"20d4f64e-714c-48c8-ac34-593b59d92d50",
 CellID->479155190],
Cell[59646, 1359, 680, 20, 23, "DetailNotes",ExpressionUUID->"f20a090a-7af2-4b35-b9aa-858826c6cb21",
 CellID->225256790],
Cell[60329, 1381, 628, 19, 23, "DetailNotes",ExpressionUUID->"bcb8ff30-94aa-4b47-a62b-7e9e45ccdb94",
 CellID->206469221],
Cell[60960, 1402, 985, 32, 39, "DetailNotes",ExpressionUUID->"cd1ce7bd-a8ef-4e78-ba17-fd7131f1e79b",
 CellID->97831786],
Cell[61948, 1436, 1055, 35, 42, "DetailNotes",ExpressionUUID->"4b1dfbe1-4471-44bb-b56c-b982bf7c02ab",
 CellID->183737327],
Cell[63006, 1473, 173, 3, 22, "DetailNotes",ExpressionUUID->"632f49c3-e39d-44db-a85b-d1e92a4a06d9",
 CellID->41727624],
Cell[63182, 1478, 874, 28, 42, "DetailNotes",ExpressionUUID->"46f33d7b-200e-41df-9b41-5d4bcb50d9e4",
 CellID->149676056],
Cell[64059, 1508, 335, 5, 37, "DetailNotes",ExpressionUUID->"45fd9eda-b8cc-4b2c-b779-e63609d6ec12",
 CellID->246735213],
Cell[64397, 1515, 692, 22, 23, "DetailNotes",ExpressionUUID->"88d4068d-520f-48cf-ad96-781959b3dc5f",
 CellID->140137194],
Cell[65092, 1539, 883, 24, 23, "DetailNotes",ExpressionUUID->"c2c54919-3a3d-4812-b958-406a99468ce3",
 CellID->303648350],
Cell[65978, 1565, 172, 3, 22, "DetailNotes",ExpressionUUID->"f8f1889b-eac4-4ed4-86fd-92bc97ec4352",
 CellID->82592343],
Cell[66153, 1570, 106, 1, 22, "DetailNotes",ExpressionUUID->"64d9c9a5-8a74-4c82-9e94-ccabb2c4e148",
 CellID->79232883],
Cell[66262, 1573, 555, 17, 22, "DetailNotes",ExpressionUUID->"58d95979-0f31-410b-a3d1-a5156fe5d287",
 CellID->99824296]
}, Open  ]],
Cell[CellGroupData[{
Cell[66854, 1595, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"5c7c45a3-b443-43b1-9e71-3ed0e8662cf6"],
Cell[66949, 1597, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"1d097d1d-601e-4281-a609-6a1e9d07993d",
 CellTags->"ResizeImages"],
Cell[67380, 1609, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"8ec8dd2b-9d6e-44ae-a82f-c5648f282fc7",
 CellTags->"RotateAndZoomIn3D"],
Cell[68183, 1630, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"b323d277-274c-465d-931a-f043ac0a0aee",
 CellTags->"DragLocators"],
Cell[68643, 1645, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"b5dbe677-11b1-4b50-8dfc-987226db3559",
 CellTags->"CreateAndDeleteLocators"],
Cell[69407, 1666, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"37b660a5-4632-41fd-b50d-7bc10ba44a4e",
 CellTags->"SliderZoom"],
Cell[70370, 1691, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"51af1bd6-7897-4444-bbe9-62cef3b85001",
 CellTags->"GamepadControls"],
Cell[70798, 1704, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"92b9a6b8-0bf7-45f7-ba4e-56aafa45dc3d",
 CellTags->"AutomaticAnimation"],
Cell[72386, 1740, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"49add42b-3d15-4256-973f-daecbcafde5f",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[73453, 1769, 85, 0, 158, "SearchTermsSection",ExpressionUUID->"a3bcc43c-497f-4add-b263-d612671ecf1b"],
Cell[73541, 1771, 118, 1, 22, "SearchTerms",ExpressionUUID->"fa81a5d6-0fec-4cbe-86d0-8acbc457eb08",
 CellID->564285450],
Cell[73662, 1774, 116, 1, 22, "SearchTerms",ExpressionUUID->"786b7bb8-fb62-4a6b-9b5b-b720f54098d8",
 CellID->227442325],
Cell[73781, 1777, 112, 1, 22, "SearchTerms",ExpressionUUID->"dc839a2e-93d6-4460-84a4-af651b024f9d",
 CellID->921360687],
Cell[73896, 1780, 107, 1, 22, "SearchTerms",ExpressionUUID->"aa54dd08-6693-4523-8226-263451666365",
 CellID->589946172],
Cell[74006, 1783, 112, 1, 22, "SearchTerms",ExpressionUUID->"afcc60c1-b59c-4fce-bc6c-f77587a30802",
 CellID->358759997],
Cell[74121, 1786, 110, 1, 22, "SearchTerms",ExpressionUUID->"74bf3617-078d-44d7-a38b-cf5131816060",
 CellID->234270827],
Cell[74234, 1789, 119, 1, 22, "SearchTerms",ExpressionUUID->"97e8fd4a-a7e0-4358-9310-01294a0494e8",
 CellID->75947430]
}, Open  ]],
Cell[74368, 1793, 86, 0, 143, "RelatedLinksSection",ExpressionUUID->"1c2e3c2c-b273-434f-85a1-88186c6d0893"],
Cell[CellGroupData[{
Cell[74479, 1797, 80, 0, 129, "AuthorSection",ExpressionUUID->"97242f48-4b74-4504-983a-6dd87279cc5a"],
Cell[74562, 1799, 385, 10, 22, "Author",ExpressionUUID->"91286256-9278-4ee3-9b68-2c992e4ba125",
 CellID->31372289],
Cell[74950, 1811, 393, 10, 22, "Author",ExpressionUUID->"61ea500e-cf2e-4731-a5aa-2a89e4edf9dd",
 CellID->344056814],
Cell[75346, 1823, 186, 4, 22, "Author",ExpressionUUID->"2afba227-d9e6-4c98-b177-f9934521eca6",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zv0IcKeF0ShGnC1tcsnJ#8P7 *)
