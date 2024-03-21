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
NotebookDataLength[    246825,       5226]
NotebookOptionsPosition[    240942,       5106]
NotebookOutlinePosition[    243104,       5161]
CellTagsIndexPosition[    242768,       5149]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Lever Rule for the Uranium-Titanium Solid-Liquid Phase Diagram\
\>", "DemoTitle",ExpressionUUID->"275a3698-3f5b-4fdb-a70e-107890fce465"],

Cell["", "InitializationSection",ExpressionUUID->"8e6c3c7c-cec5-4fea-891a-197f17e6f4ff"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"d4e3a640-5ae8-44df-8f6b-108ee739d918"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "Slope", ",", "Intercept", ",", "PhaseBoundary", ",", "pureTiU2x", ",", 
       "e1T", ",", "e2T", ",", "e1x", ",", "e2x", ",", "pureTiPoints", ",", 
       "pureUPoints", ",", "pureTiU2Points", ",", "e1Points", ",", "e2Points",
        ",", "pb1Points", ",", "pb2Points", ",", "pb3Points", ",", 
       "pb4Points", ",", "pb5Points", ",", "pb6Points", ",", "pb7Points", ",",
        "xfromT", ",", "Lever1Amount", ",", "Lever2Amount", ",", "GreenLever",
        ",", "RedLever", ",", "BlueLever", ",", "LiquidComp", ",", 
       "RedAmount", ",", "BlueAmount", ",", "OrangeLever", ",", "GreenAmount",
        ",", "OrangeAmount", ",", "p1", ",", "p2"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"Slope", "[", " ", 
        RowBox[{"x1_", ",", " ", "y1_", ",", " ", "x2_", ",", " ", "y2_"}], 
        " ", "]"}], " ", ":=", " ", 
       FractionBox[
        RowBox[{"(", 
         RowBox[{"y2", "-", "y1"}], ")"}], 
        RowBox[{"(", 
         RowBox[{"x2", "-", "x1"}], ")"}]]}], ";", 
      RowBox[{
       RowBox[{"Intercept", "[", " ", 
        RowBox[{"x1_", ",", " ", "y1_", ",", " ", "x2_", ",", " ", "y2_"}], 
        " ", "]"}], " ", ":=", " ", 
       FractionBox[
        RowBox[{
         RowBox[{"x1", " ", "y2"}], "-", 
         RowBox[{"x2", " ", "y1"}]}], 
        RowBox[{"x1", "-", "x2"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"PhaseBoundary", "[", " ", 
        RowBox[{"Points_", ",", " ", "x_"}], " ", "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Slope", "[", " ", 
           RowBox[{
            RowBox[{"Points", "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", 
            RowBox[{"Points", "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", 
            RowBox[{"Points", "[", 
             RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
            RowBox[{"Points", "[", 
             RowBox[{"[", "4", "]"}], "]"}]}], " ", "]"}], "*", "x"}], ")"}], 
        "+", " ", 
        RowBox[{"Intercept", "[", " ", 
         RowBox[{
          RowBox[{"Points", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "4", "]"}], "]"}]}], " ", "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"pureTiU2x", " ", "=", " ", 
       RowBox[{
        RowBox[{"N", "@", "2"}], "/", "3"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"e1T", "=", "655"}], ";", 
      RowBox[{"e2T", "=", "720"}], ";", 
      RowBox[{"e1x", "=", "0.28"}], ";", 
      RowBox[{"e2x", "=", "0.95"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"pureTiPoints", "=", 
       RowBox[{"{", 
        RowBox[{"0", ",", "882"}], "}"}]}], ";", 
      RowBox[{"pureUPoints", "=", 
       RowBox[{"{", 
        RowBox[{"1", ",", "770"}], "}"}]}], ";", 
      RowBox[{"pureTiU2Points", "=", 
       RowBox[{"{", 
        RowBox[{"pureTiU2x", ",", "890"}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"e1Points", "=", 
       RowBox[{"{", 
        RowBox[{"e1x", ",", "e1T"}], "}"}]}], ";", 
      RowBox[{"e2Points", "=", 
       RowBox[{"{", 
        RowBox[{"e2x", ",", "e2T"}], "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"pb1Points", "=", " ", 
       RowBox[{"Flatten", "[", 
        RowBox[{"{", 
         RowBox[{"pureTiPoints", ",", "e1Points"}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb2Points", "=", 
       RowBox[{"Flatten", "[", 
        RowBox[{"{", 
         RowBox[{"e1Points", ",", "pureTiU2Points"}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb3Points", "=", 
       RowBox[{"Flatten", "[", 
        RowBox[{"{", 
         RowBox[{"pureTiU2Points", ",", "e2Points"}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb4Points", "=", 
       RowBox[{"Flatten", "[", 
        RowBox[{"{", 
         RowBox[{"e2Points", ",", "pureUPoints"}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb5Points", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pureTiPoints", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{"e1Points", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", 
         RowBox[{"pureTiU2Points", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{"e1Points", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb6Points", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pureTiU2Points", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{"e2Points", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", 
         RowBox[{"pureUPoints", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{"e2Points", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"pb7Points", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pureTiU2Points", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", "0", ",", 
         RowBox[{"pureTiU2Points", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{"pureTiU2Points", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xfromT", "[", 
        RowBox[{"Points_", ",", "T_"}], "]"}], ":=", 
       FractionBox[
        RowBox[{"T", "-", 
         RowBox[{"Intercept", "[", 
          RowBox[{
           RowBox[{"Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
           RowBox[{"Points", "[", 
            RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
           RowBox[{"Points", "[", 
            RowBox[{"[", "4", "]"}], "]"}]}], " ", "]"}]}], 
        RowBox[{"Slope", "[", " ", 
         RowBox[{
          RowBox[{"Points", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
          RowBox[{"Points", "[", 
           RowBox[{"[", "4", "]"}], "]"}]}], " ", "]"}]]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Lever1Amount", "[", " ", 
        RowBox[{"Lever1_", ",", " ", "Lever2_"}], " ", "]"}], " ", ":=", " ", 
       FractionBox[
        RowBox[{"(", 
         FractionBox["Lever2", "Lever1"], ")"}], 
        RowBox[{"1", "+", 
         RowBox[{"(", 
          FractionBox["Lever2", "Lever1"], ")"}]}]]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Lever2Amount", "[", " ", 
        RowBox[{"Lever1_", ",", " ", "Lever2_"}], " ", "]"}], " ", ":=", " ", 
       RowBox[{"1", "-", 
        RowBox[{"Lever1Amount", "[", " ", 
         RowBox[{"Lever1", ",", " ", "Lever2"}], " ", "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb1Points", ",", " ", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb1Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"600", ",", "925"}], "}"}]}], "}"}]}], ",", " ", 
           RowBox[{"Frame", "\[Rule]", "True"}], ",", " ", 
           RowBox[{"FrameLabel", "\[Rule]", 
            RowBox[{"{", " ", 
             RowBox[{
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<mole fraction uranium \>\"", ",", 
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                   "\"\<U\>\""}], "]"}]}], "}"}]}], ",", 
              "\"\<temperature (\:02daC)\>\""}], "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"17", ",", "Black"}], "}"}]}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"400", ",", "400"}], "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"AspectRatio", "\[Rule]", " ", "Full"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb2Points", ",", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb2Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb2Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}]}], "  ", "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb3Points", ",", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb3Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb3Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}]}], "  ", "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb4Points", ",", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb4Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb4Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}]}], "  ", "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb5Points", ",", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb5Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb2Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}]}], "  ", "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", " ", 
          RowBox[{
           RowBox[{"PhaseBoundary", "[", " ", 
            RowBox[{"pb6Points", ",", "x"}], " ", "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"pb6Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"pb6Points", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", " ", "Black"}]}], "  ", "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", " ", 
          RowBox[{"Line", "[", " ", 
           RowBox[{"{", " ", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"pb7Points", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", 
               RowBox[{"pb7Points", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"pb7Points", "[", 
                RowBox[{"[", "3", "]"}], "]"}], ",", 
               RowBox[{"pb7Points", "[", 
                RowBox[{"[", "4", "]"}], "]"}]}], "}"}]}], " ", "}"}], " ", 
           "]"}], " ", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "@", "0.025"}], ",", " ", "Purple", ",", 
            RowBox[{"Point", "[", " ", 
             RowBox[{"{", 
              RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], 
          " ", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Which", "[", " ", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"PointX", " ", "\[Equal]", " ", "0"}], ")"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Graphics", "[", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.027"}], ",", "Blue", ",", 
                RowBox[{"Point", "[", " ", 
                 RowBox[{"{", 
                  RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
               "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Graphics", "[", " ", 
              RowBox[{"{", 
               RowBox[{"Dotted", ",", 
                RowBox[{"Thickness", "@", "0.007"}], ",", "Blue", ",", 
                RowBox[{"Line", "[", " ", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"PointX", ",", "0"}], "}"}]}], "}"}], " ", 
                 "]"}]}], " ", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
            " ", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"(", 
            RowBox[{"PointX", " ", "\[Equal]", " ", "1"}], ")"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Graphics", "[", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.027"}], ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                RowBox[{"Point", "[", " ", 
                 RowBox[{"{", 
                  RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
               "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Graphics", "[", " ", 
              RowBox[{"{", 
               RowBox[{"Dotted", ",", 
                RowBox[{"Thickness", "@", "0.007"}], ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                RowBox[{"Line", "[", " ", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"PointX", ",", " ", "0"}], "}"}]}], "}"}], " ", 
                 "]"}]}], " ", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
            " ", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"(", 
            RowBox[{"PointX", " ", "<", "  ", "pureTiU2x"}], ")"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Which", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"PointT", " ", "<", " ", "e1T"}], ")"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"PointSize", "@", "0.027"}], ",", "Blue", ",", 
                  RowBox[{"Point", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], 
                " ", "]"}], ",", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"PointSize", "@", "0.027"}], ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Point", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], "]"}]}], " ",
                  "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dashed", ",", "Blue", ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                   "]"}]}], " ", "}"}], " ", "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dotted", ",", 
                  RowBox[{"Thickness", "@", "0.007"}], ",", " ", "Blue", ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}]}], "}"}], " ", "]"}]}], 
                 " ", "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dashed", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}]}], "}"}], " ",
                    "]"}]}], " ", "}"}], " ", "]"}], ",", " ", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dotted", ",", 
                  RowBox[{"Thickness", "@", "0.007"}], ",", " ", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "0"}], "}"}]}], " ", "}"}], " ",
                    "]"}]}], " ", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
              " ", "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(", 
              RowBox[{"PointT", " ", "\[GreaterEqual]", " ", "e1T"}], ")"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"Which", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"PointX", " ", "<", " ", "e1x"}], ")"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Which", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "<", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", " ", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Blue", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], 
                    " ", "]"}], ",", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Magenta", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], " ", "]"}], 
                   ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "Blue", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Blue", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}]}], "}"}], " ", "]"}]}], 
                    " ", "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}]}], " ", "}"}], " ", "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}]}], " ", "}"}], " ", "]"}]}], " ", 
                    "}"}], " ", "]"}]}], "\[IndentingNewLine]", " ", "]"}], 
                 ",", "\[IndentingNewLine]", 
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", "  ", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Purple", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], " ", "}"}], 
                    " ", "]"}]}], " ", "}"}], " ", "]"}]}], 
                  "\[IndentingNewLine]", " ", "]"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"(", 
                RowBox[{"PointX", " ", "\[GreaterEqual]", " ", "e1x"}], ")"}],
                ",", "\[IndentingNewLine]", 
               RowBox[{"Which", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", " ", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Magenta", ",", 
                    RowBox[{"Point", "[", "  ", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], " ", "]"}], 
                   ",", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Point", "[", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", " ", "PointT"}], "}"}], "]"}]}],
                     " ", "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}]}], " ", "}"}], " ", "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", " ", "PointT"}], "}"}]}], " ", 
                    "}"}], " ", "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", " ", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", " ", "0"}], "}"}]}], " ", "}"}],
                     " ", "]"}]}], " ", "}"}], " ", "]"}]}], 
                  "\[IndentingNewLine]", " ", "]"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "<", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", "  ", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Purple", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], " ", "}"}], 
                    " ", "]"}]}], " ", "}"}], " ", "]"}]}], 
                  "\[IndentingNewLine]", " ", "]"}]}], "]"}]}], "]"}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"(", 
            RowBox[{"PointX", " ", "\[GreaterEqual]", "  ", "pureTiU2x"}], 
            ")"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Which", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"PointT", " ", "<", " ", "e2T"}], ")"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"PointSize", "@", "0.027"}], ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Point", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], "]"}]}], " ",
                  "}"}], " ", "]"}], ",", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"PointSize", "@", "0.027"}], ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                  RowBox[{"Point", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], 
                " ", "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dashed", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                   "]"}]}], " ", "}"}], " ", "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dotted", ",", 
                  RowBox[{"Thickness", "@", "0.007"}], ",", " ", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "0"}], "}"}]}], "}"}], " ", 
                   "]"}]}], " ", "}"}], " ", "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dashed", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "PointT"}], "}"}]}], "}"}], " ", 
                   "]"}]}], " ", "}"}], " ", "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", " ", 
                RowBox[{"{", 
                 RowBox[{"Dotted", ",", 
                  RowBox[{"Thickness", "@", "0.007"}], ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                  RowBox[{"Line", "[", " ", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], " ", "}"}], " ", 
                   "]"}]}], " ", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
              " ", "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(", 
              RowBox[{"PointT", " ", "\[GreaterEqual]", " ", "e2T"}], ")"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"Which", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"PointX", " ", "<", " ", "e2x"}], ")"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Which", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "<", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", " ", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], "]"}]}], " ",
                     "}"}], " ", "]"}], ",", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Magenta", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], " ", "]"}], 
                   ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", " ", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"pureTiU2x", ",", "0"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}]}], "}"}], " ", "]"}]}], " ", "}"}],
                     " ", "]"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "0"}], "}"}]}], " ", "}"}], " ", "]"}]}], " ", "}"}],
                     " ", "]"}]}], "\[IndentingNewLine]", " ", "]"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Purple", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], " ", "}"}], 
                    " ", "]"}]}], " ", "}"}], " ", "]"}]}], " ", 
                  "\[IndentingNewLine]", "]"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"(", 
                RowBox[{"PointX", " ", "\[GreaterEqual]", " ", "e2x"}], ")"}],
                ",", "\[IndentingNewLine]", 
               RowBox[{"Which", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Magenta", ",", 
                    RowBox[{"Point", "[", "  ", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], "]"}]}], " ", "}"}], " ", "]"}], 
                   ",", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                    RowBox[{"Point", "[", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", " ", "PointT"}], "}"}], "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}], 
                    ",", "0"}], "}"}]}], "}"}], " ", "]"}]}], " ", "}"}], " ",
                     "]"}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", " ", "PointT"}], "}"}]}], "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", " ", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0.4", ",", "0"}], "]"}], ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", " ", "PointT"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], " ", "}"}], " ", 
                    "]"}]}], " ", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
                  " ", "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"(", 
                  RowBox[{"PointX", " ", "<", " ", 
                   RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}]}], 
                  ")"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"PointSize", "@", "0.027"}], ",", "Purple", ",", 
                    RowBox[{"Point", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}], "]"}]}], " ", 
                    "}"}], " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"Graphics", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Magenta", ",", 
                    RowBox[{"Line", "[", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"PointX", ",", "PointT"}], "}"}]}], " ", "}"}], 
                    " ", "]"}]}], " ", "}"}], " ", "]"}]}], 
                  "\[IndentingNewLine]", " ", "]"}]}], "]"}]}], "]"}]}], 
            "]"}]}], "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Show", "[", " ", "\[IndentingNewLine]", 
        RowBox[{"BarChart", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Which", "[", " ", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"PointX", " ", "\[Equal]", " ", "0"}], ")"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"RedAmount", " ", "=", " ", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"BlueAmount", " ", "=", "1"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
               "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", ",", 
                "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", ")"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(", 
             RowBox[{"PointX", " ", "\[Equal]", " ", "1"}], ")"}], ",", " ", 
            "\[IndentingNewLine]", 
            RowBox[{"(", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"RedAmount", " ", "=", " ", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"BlueAmount", " ", "=", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"OrangeAmount", " ", "=", " ", "1"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
               "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", ",", 
                "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", ")"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(", 
             RowBox[{"PointX", " ", "<", "  ", "pureTiU2x"}], ")"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Which", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"PointT", " ", "<", " ", "e1T"}], ")"}], ",", " ", 
              "\[IndentingNewLine]", 
              RowBox[{"(", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"BlueLever", " ", "=", " ", 
                 RowBox[{"Abs", "[", " ", 
                  RowBox[{"0", "-", "PointX"}], " ", "]"}]}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"GreenLever", " ", "=", " ", 
                 RowBox[{"Abs", "[", " ", 
                  RowBox[{"PointX", "-", "pureTiU2x"}], "  ", "]"}]}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"RedAmount", " ", "=", " ", "0"}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"BlueAmount", " ", "=", " ", 
                 RowBox[{"Lever1Amount", "[", " ", 
                  RowBox[{"BlueLever", ",", " ", "GreenLever"}], " ", "]"}]}],
                 ";", "\[IndentingNewLine]", 
                RowBox[{"GreenAmount", " ", "=", "  ", 
                 RowBox[{"Lever2Amount", "[", " ", 
                  RowBox[{"BlueLever", ",", " ", "GreenLever"}], " ", "]"}]}],
                 ";", "\[IndentingNewLine]", 
                RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", ",",
                   "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", ")"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"(", 
               RowBox[{"PointT", " ", "\[GreaterEqual]", " ", "e1T"}], ")"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"Which", "[", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"PointX", " ", "<", " ", "e1x"}], ")"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Which", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "<", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"BlueLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"0", "-", "PointX"}], " ", "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"RedLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"PointX", "-", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    "  ", "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", 
                    RowBox[{"Lever1Amount", "[", " ", 
                    RowBox[{"BlueLever", ",", " ", "RedLever"}], "  ", 
                    "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"RedAmount", " ", "=", "  ", 
                    RowBox[{"Lever2Amount", "[", " ", 
                    RowBox[{"BlueLever", ",", " ", "RedLever"}], "  ", 
                    "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb1Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedAmount", " ", "=", " ", "1"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", "PointX"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}]}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"(", 
                 RowBox[{"PointX", " ", "\[GreaterEqual]", " ", "e1x"}], 
                 ")"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Which", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}], 
                    "-", "PointX"}], " ", "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"GreenLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"PointX", "-", " ", "pureTiU2x"}], "  ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"RedAmount", " ", "=", " ", 
                    RowBox[{"Lever1Amount", "[", " ", 
                    RowBox[{"RedLever", ",", "GreenLever"}], "  ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", 
                    RowBox[{"Lever2Amount", "[", " ", 
                    RowBox[{"RedLever", ",", " ", "GreenLever"}], " ", 
                    "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "<", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb2Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", "  ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedAmount", " ", "=", " ", "1"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", "PointX"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}]}], "]"}]}], "]"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(", 
             RowBox[{"PointX", " ", "\[GreaterEqual]", "  ", "pureTiU2x"}], 
             ")"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Which", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"PointT", " ", "<", " ", "e2T"}], ")"}], ",", " ", 
              "\[IndentingNewLine]", 
              RowBox[{"(", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"GreenLever", " ", "=", " ", 
                 RowBox[{"Abs", "[", " ", 
                  RowBox[{"pureTiU2x", "-", "PointX"}], " ", "]"}]}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"OrangeLever", " ", "=", " ", 
                 RowBox[{"Abs", "[", " ", 
                  RowBox[{"PointX", "-", "1"}], "  ", "]"}]}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"RedAmount", " ", "=", " ", "0"}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                "\[IndentingNewLine]", 
                RowBox[{"GreenAmount", " ", "=", " ", 
                 RowBox[{"Lever1Amount", "[", " ", 
                  RowBox[{"GreenLever", ",", " ", "OrangeLever"}], "]"}]}], 
                ";", "\[IndentingNewLine]", 
                RowBox[{"OrangeAmount", " ", "=", "  ", 
                 RowBox[{"Lever2Amount", "[", " ", 
                  RowBox[{"GreenLever", ",", " ", "OrangeLever"}], "]"}]}], 
                ";", "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", ",",
                   "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", ")"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"(", 
               RowBox[{"PointT", " ", "\[GreaterEqual]", " ", "e2T"}], ")"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"Which", "[", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"PointX", " ", "<", " ", "e2x"}], ")"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Which", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "<", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"GreenLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"pureTiU2x", "-", "PointX"}], " ", "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"RedLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"PointX", "-", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    " ", "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"RedAmount", " ", "=", " ", 
                    RowBox[{"Lever1Amount", "[", " ", 
                    RowBox[{"RedLever", ",", "GreenLever"}], "  ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", 
                    RowBox[{"Lever2Amount", "[", " ", 
                    RowBox[{"RedLever", ",", " ", "GreenLever"}], " ", 
                    "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb3Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedAmount", " ", "=", " ", "1"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", "PointX"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}]}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"(", 
                 RowBox[{"PointX", " ", "\[GreaterEqual]", " ", "e2x"}], 
                 ")"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Which", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "\[GreaterEqual]", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}], 
                    "-", "PointX"}], " ", "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"OrangeLever", " ", "=", " ", 
                    RowBox[{"Abs", "[", " ", 
                    RowBox[{"PointX", "-", " ", "1"}], " ", "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"RedAmount", " ", "=", " ", 
                    RowBox[{"Lever1Amount", "[", " ", 
                    RowBox[{"RedLever", ",", "OrangeLever"}], " ", "]"}]}], 
                    ";", "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", "  ", 
                    RowBox[{"Lever2Amount", "[", " ", 
                    RowBox[{"RedLever", ",", " ", "OrangeLever"}], " ", 
                    "]"}]}], ";", "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(", 
                   RowBox[{"PointX", " ", "<", " ", 
                    RowBox[{"xfromT", "[", " ", 
                    RowBox[{"pb4Points", ",", " ", "PointT"}], " ", "]"}]}], 
                   ")"}], ",", " ", "\[IndentingNewLine]", 
                  RowBox[{"(", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RedAmount", " ", "=", " ", "1"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"LiquidComp", " ", "=", " ", "PointX"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"BlueAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"GreenAmount", " ", "=", "  ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"OrangeAmount", " ", "=", " ", "0"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "RedAmount", ",", " ", "BlueAmount", ",", "GreenAmount", 
                    ",", "OrangeAmount"}], "}"}]}], "\[IndentingNewLine]", 
                   ")"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"ChartStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Magenta", ",", "Blue", ",", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"0", ",", "0.6", ",", "0"}], "]"}], ",", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"1", ",", "0.4", ",", "0"}], "]"}]}], "}"}]}], ",", 
          RowBox[{"ChartLabels", "\[Rule]", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"Rotate", "[", 
               RowBox[{"#", ",", 
                RowBox[{"45", "\[Degree]"}]}], "]"}], "&"}], "/@", 
             RowBox[{"{", 
              RowBox[{"\"\<liquid\>\"", ",", 
               RowBox[{"Subscript", "[", 
                RowBox[{"\"\<Ti\>\"", ",", "\"\<(s)\>\""}], "]"}], ",", 
               RowBox[{"Subscript", "[", 
                RowBox[{"\"\<TiU\>\"", ",", "\"\<2 (s)\>\""}], "]"}], ",", 
               "\"\<U\>\""}], "}"}]}], ")"}]}], ",", " ", 
          "\[IndentingNewLine]", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0.25", ",", "4.5"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
          RowBox[{"ImageSize", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"200", ",", "400"}], "}"}]}], ",", 
          RowBox[{"AspectRatio", " ", "\[Rule]", " ", "Full"}], ",", " ", 
          "\[IndentingNewLine]", 
          RowBox[{"ImageSize", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"100", ",", "200"}], "}"}]}], ",", 
          RowBox[{"Frame", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"True", ",", "None"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "None"}], "}"}]}], "}"}]}], ",", 
          RowBox[{"LabelStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<relative amounts\>\"", ",", "17"}], "]"}]}], ",", 
          RowBox[{"Epilog", "\[Rule]", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"RedAmount", ">", "0"}], ",", 
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
                    "\"\<U\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"LiquidComp", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                  "17"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "RedAmount"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "]"}], 
            "\[IndentingNewLine]", "}"}]}]}], "]"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "@", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{"p1", ",", "p2"}], "}"}], "}"}]}]}]}], "\[IndentingNewLine]",
     "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "PointX", ",", "0.49", ",", "\"\<uranium mole fraction\>\""}], 
           "}"}], ",", "0", ",", "1", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"PointT", ",", "675", ",", "\"\<temperature (K)\>\""}], 
           "}"}], ",", "600", ",", "925", ",", "1", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "}"}]}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",ExpressionUUID->"b4c12541-7869-4322-b444-5731d52988da"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`PointT$$ = 675, $CellContext`PointX$$ = 
    0.49, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`PointX$$], 0.49, "uranium mole fraction"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`PointT$$], 675, "temperature (K)"}, 600, 925, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`PointX$41701$$ = 0, $CellContext`PointT$41702$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`PointT$$ = 675, $CellContext`PointX$$ = 
        0.49}, "ControllerVariables" :> {
        Hold[$CellContext`PointX$$, $CellContext`PointX$41701$$, 0], 
        Hold[$CellContext`PointT$$, $CellContext`PointT$41702$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Slope$, $CellContext`Intercept$, \
$CellContext`PhaseBoundary$, $CellContext`pureTiU2x$, $CellContext`e1T$, \
$CellContext`e2T$, $CellContext`e1x$, $CellContext`e2x$, \
$CellContext`pureTiPoints$, $CellContext`pureUPoints$, \
$CellContext`pureTiU2Points$, $CellContext`e1Points$, $CellContext`e2Points$, \
$CellContext`pb1Points$, $CellContext`pb2Points$, $CellContext`pb3Points$, \
$CellContext`pb4Points$, $CellContext`pb5Points$, $CellContext`pb6Points$, \
$CellContext`pb7Points$, $CellContext`xfromT$, $CellContext`Lever1Amount$, \
$CellContext`Lever2Amount$, $CellContext`GreenLever$, $CellContext`RedLever$, \
$CellContext`BlueLever$, $CellContext`LiquidComp$, $CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`OrangeLever$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$, $CellContext`p1$, \
$CellContext`p2$}, $CellContext`Slope$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`y2 - $CellContext`y1)/($CellContext`x2 - \
$CellContext`x1); $CellContext`Intercept$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`x1 $CellContext`y2 - $CellContext`x2 \
$CellContext`y1)/($CellContext`x1 - $CellContext`x2); \
$CellContext`PhaseBoundary$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`Slope$[
             Part[$CellContext`Points$, 1], 
             Part[$CellContext`Points$, 2], 
             Part[$CellContext`Points$, 3], 
             
             Part[$CellContext`Points$, 
              4]] $CellContext`x$ + $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]]; $CellContext`pureTiU2x$ = 
         N[2]/3; $CellContext`e1T$ = 655; $CellContext`e2T$ = 
         720; $CellContext`e1x$ = 0.28; $CellContext`e2x$ = 
         0.95; $CellContext`pureTiPoints$ = {0, 
          882}; $CellContext`pureUPoints$ = {1, 
          770}; $CellContext`pureTiU2Points$ = {$CellContext`pureTiU2x$, 
           
           890}; $CellContext`e1Points$ = {$CellContext`e1x$, \
$CellContext`e1T$}; $CellContext`e2Points$ = {$CellContext`e2x$, \
$CellContext`e2T$}; $CellContext`pb1Points$ = 
         Flatten[{$CellContext`pureTiPoints$, $CellContext`e1Points$}]; \
$CellContext`pb2Points$ = 
         Flatten[{$CellContext`e1Points$, $CellContext`pureTiU2Points$}]; \
$CellContext`pb3Points$ = 
         Flatten[{$CellContext`pureTiU2Points$, $CellContext`e2Points$}]; \
$CellContext`pb4Points$ = 
         Flatten[{$CellContext`e2Points$, $CellContext`pureUPoints$}]; \
$CellContext`pb5Points$ = {
           Part[$CellContext`pureTiPoints$, 1], 
           Part[$CellContext`e1Points$, 2], 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e1Points$, 2]}; $CellContext`pb6Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e2Points$, 2], 
           Part[$CellContext`pureUPoints$, 1], 
           Part[$CellContext`e2Points$, 2]}; $CellContext`pb7Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 0, 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`pureTiU2Points$, 2]}; $CellContext`xfromT$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`T$, 
            Blank[]]] := ($CellContext`T$ - $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]])/$CellContext`Slope$[
           Part[$CellContext`Points$, 1], 
           Part[$CellContext`Points$, 2], 
           Part[$CellContext`Points$, 3], 
           Part[$CellContext`Points$, 4]]; $CellContext`Lever1Amount$[
           Pattern[$CellContext`Lever1, 
            Blank[]], 
           Pattern[$CellContext`Lever2, 
            Blank[]]] := $CellContext`Lever2 ($CellContext`Lever1^(-1)/(
           
           1 + $CellContext`Lever2/$CellContext`Lever1)); \
$CellContext`Lever2Amount$[
           Pattern[$CellContext`Lever1$, 
            Blank[]], 
           Pattern[$CellContext`Lever2$, 
            Blank[]]] := 
         1 - $CellContext`Lever1Amount$[$CellContext`Lever1$, \
$CellContext`Lever2$]; $CellContext`p1$ = Show[
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb1Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb1Points$, 1], 
             Part[$CellContext`pb1Points$, 3]}, PlotStyle -> Black, 
            PlotRange -> {{0, 1}, {600, 925}}, Frame -> True, FrameLabel -> {
              Row[{"mole fraction uranium ", 
                Subscript[
                 Style["x", Italic], "U"]}], "temperature (\:02daC)"}, 
            LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
            Full], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb2Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb2Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb3Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb3Points$, 1], 
             Part[$CellContext`pb3Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb4Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb4Points$, 1], 
             Part[$CellContext`pb4Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb5Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb5Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb6Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb6Points$, 1], 
             Part[$CellContext`pb6Points$, 3]}, PlotStyle -> Black], 
           Graphics[
            Line[{{
               Part[$CellContext`pb7Points$, 1], 
               Part[$CellContext`pb7Points$, 2]}, {
               Part[$CellContext`pb7Points$, 3], 
               Part[$CellContext`pb7Points$, 4]}}]], 
           Graphics[{
             PointSize[0.025], Purple, 
             Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
           Which[$CellContext`PointX$$ == 0, 
            Show[
             Graphics[{
               PointSize[0.027], Blue, 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], Blue, 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 0}}]}]], $CellContext`PointX$$ == 1, 
            Show[
             Graphics[{
               PointSize[0.027], 
               RGBColor[1, 0.4, 0], 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], 
               RGBColor[1, 0.4, 0], 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 
                  0}}]}]], $CellContext`PointX$$ < $CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e1T$, 
             Show[
              Graphics[{
                PointSize[0.027], Blue, 
                Point[{0, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, Blue, 
                
                Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], Blue, 
                Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}]], $CellContext`PointT$$ >= $CellContext`e1T$, 
             Which[$CellContext`PointX$$ < $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Blue, 
                  Point[{0, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Blue, 
                  
                  Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Blue, 
                  Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]], $CellContext`PointX$$ >= \
$CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e2T$, 
             Show[
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[1, 0.4, 0], 
                Point[{1, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[1, 0.4, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                  1, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[1, 0.4, 0], 
                
                Line[{{1, $CellContext`PointT$$}, {1, 
                  0}}]}]], $CellContext`PointT$$ >= $CellContext`e2T$, 
             Which[$CellContext`PointX$$ < $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], 
                    0}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[1, 0.4, 0], 
                  Point[{1, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], 0}}]}], 
                Graphics[{Dashed, 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    1, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{1, $CellContext`PointT$$}, {1, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]]]]; $CellContext`p2$ = Show[
           BarChart[
            
            Which[$CellContext`PointX$$ == 
             0, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              1; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ == 
             1, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              0; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              1; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e1T$, \
$CellContext`BlueLever$ = 
               Abs[0 - $CellContext`PointX$$]; $CellContext`GreenLever$ = 
               Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
               0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointT$$ >= \
$CellContext`e1T$, 
              Which[$CellContext`PointX$$ < $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`BlueLever$ = 
                 Abs[0 - $CellContext`PointX$$]; $CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$]; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`RedLever$]; \
$CellContext`RedAmount$ = $CellContext`Lever2Amount$[$CellContext`BlueLever$, \
$CellContext`RedLever$]; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$]; \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = $CellContext`Lever1Amount$[$CellContext`RedLever$, \
$CellContext`GreenLever$]; $CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]], \
$CellContext`PointX$$ >= $CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e2T$, \
$CellContext`GreenLever$ = 
               Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`OrangeLever$ = 
               Abs[$CellContext`PointX$$ - 1]; $CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = 
               0; $CellContext`GreenAmount$ = \
$CellContext`Lever1Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; {$CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`GreenAmount$, \
$CellContext`OrangeAmount$}, $CellContext`PointT$$ >= $CellContext`e2T$, 
              Which[$CellContext`PointX$$ < $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$]; \
$CellContext`OrangeLever$ = 
                 Abs[$CellContext`PointX$$ - 
                   1]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
{$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]]], 
            ChartStyle -> {Magenta, Blue, 
              RGBColor[0, 0.6, 0], 
              RGBColor[1, 0.4, 0]}, ChartLabels -> 
            Map[Rotate[#, 45 Degree]& , {"liquid", 
               Subscript["Ti", "(s)"], 
               Subscript["TiU", "2 (s)"], "U"}], 
            PlotRange -> {{0.25, 4.5}, {0, 1}}, ImageSize -> {200, 400}, 
            AspectRatio -> Full, ImageSize -> {100, 200}, 
            Frame -> {{True, None}, {True, None}}, LabelStyle -> {17, Black}, 
            PlotLabel -> Style["relative amounts", 17], Epilog -> {
              If[$CellContext`RedAmount$ > 0, 
               Text[
                Style[
                 Row[{
                   Subscript[
                    Style["x", Italic], "U"], " = ", 
                   NumberForm[$CellContext`LiquidComp$, {2, 2}]}], 17], {
                1, $CellContext`RedAmount$}, {0, -1}]]}]]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`PointX$$, 0.49, 
          "uranium mole fraction"}, 0, 1, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`PointT$$, 675, "temperature (K)"}, 600, 925, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {240., 246.}},
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
 CellID->482641568,ExpressionUUID->"8376a5d9-c218-4741-acd8-0e180569527a"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"68aa383b-f467-49a8-ae1f-f6e077076f78"],

Cell[TextData[{
 "A solid-liquid phase diagram for the uranium-titanium system shows the \
regions of phase stability as a function of the temperature and overall \
composition of the system. The phases are (1) a liquid mixture of uranium and \
titanium of variable composition, (2) solid uranium ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SubscriptBox[
     StyleBox["U",
      FontSlant->"Plain"], 
     RowBox[{"(", 
      StyleBox["s",
       FontSlant->"Plain"], ")"}]], ")"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"25faa6b4-434e-4bc7-9560-0c4e8a15f5fd"],
 ", (3) solid titanium ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SubscriptBox["Ti", 
     RowBox[{"(", 
      StyleBox["s",
       FontSlant->"Plain"], ")"}]], ")"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"871b2f03-cbb8-4e63-8e51-ff3a7d50e623"],
 ", and (4) a solid phase compound with the formula ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["TiU", 
    RowBox[{"2", 
     RowBox[{"(", 
      StyleBox["s",
       FontSlant->"Plain"], ")"}]}]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"d5536695-802c-449d-9adb-fa146691832a"],
 ". In this phase diagram, the phase boundaries are shown as solid black \
lines. The phase boundaries involving liquids are assumed to be a linear \
function of composition. When the temperature and composition are at a point \
above all the phase boundaries, only the liquid mixture is stable. At any \
point inside the phase boundaries, two phases are stable. The phases present, \
as well as their relative amounts, are shown in the bar graph on the right. \
When the liquid phase is present, its composition is found by drawing a \
horizontal line (here shown as a dashed magenta line) to the appropriate \
phase boundary. For a solid phase, a horizontal line is drawn (here shown \
dashed) to the vertical phase boundary corresponding to the pure solid. These \
horizontal lines are called \"tie lines\" or \"levers\". The lever rule is \
used to calculate the relative amounts of the two phases, which are shown on \
the bar graph on the right. The composition of the liquid phase is indicated \
by the red dotted line and numerically at the top of the bar graph. "
}], "ManipulateCaption",ExpressionUUID->"06c6542b-d0b6-4674-887a-\
b5dc85c40f55"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"aa47813c-c31d-45c0-959e-3acf0452e560"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`PointT$$ = 675, $CellContext`PointX$$ = 
    0.49, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`PointX$$], 0.49, "uranium mole fraction"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`PointT$$], 675, "temperature (K)"}, 600, 925, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`PointX$41772$$ = 0, $CellContext`PointT$41773$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`PointT$$ = 675, $CellContext`PointX$$ = 
        0.49}, "ControllerVariables" :> {
        Hold[$CellContext`PointX$$, $CellContext`PointX$41772$$, 0], 
        Hold[$CellContext`PointT$$, $CellContext`PointT$41773$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Slope$, $CellContext`Intercept$, \
$CellContext`PhaseBoundary$, $CellContext`pureTiU2x$, $CellContext`e1T$, \
$CellContext`e2T$, $CellContext`e1x$, $CellContext`e2x$, \
$CellContext`pureTiPoints$, $CellContext`pureUPoints$, \
$CellContext`pureTiU2Points$, $CellContext`e1Points$, $CellContext`e2Points$, \
$CellContext`pb1Points$, $CellContext`pb2Points$, $CellContext`pb3Points$, \
$CellContext`pb4Points$, $CellContext`pb5Points$, $CellContext`pb6Points$, \
$CellContext`pb7Points$, $CellContext`xfromT$, $CellContext`Lever1Amount$, \
$CellContext`Lever2Amount$, $CellContext`GreenLever$, $CellContext`RedLever$, \
$CellContext`BlueLever$, $CellContext`LiquidComp$, $CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`OrangeLever$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$, $CellContext`p1$, \
$CellContext`p2$}, $CellContext`Slope$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`y2 - $CellContext`y1)/($CellContext`x2 - \
$CellContext`x1); $CellContext`Intercept$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`x1 $CellContext`y2 - $CellContext`x2 \
$CellContext`y1)/($CellContext`x1 - $CellContext`x2); \
$CellContext`PhaseBoundary$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`Slope$[
             Part[$CellContext`Points$, 1], 
             Part[$CellContext`Points$, 2], 
             Part[$CellContext`Points$, 3], 
             
             Part[$CellContext`Points$, 
              4]] $CellContext`x$ + $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]]; $CellContext`pureTiU2x$ = 
         N[2]/3; $CellContext`e1T$ = 655; $CellContext`e2T$ = 
         720; $CellContext`e1x$ = 0.28; $CellContext`e2x$ = 
         0.95; $CellContext`pureTiPoints$ = {0, 
          882}; $CellContext`pureUPoints$ = {1, 
          770}; $CellContext`pureTiU2Points$ = {$CellContext`pureTiU2x$, 
           
           890}; $CellContext`e1Points$ = {$CellContext`e1x$, \
$CellContext`e1T$}; $CellContext`e2Points$ = {$CellContext`e2x$, \
$CellContext`e2T$}; $CellContext`pb1Points$ = 
         Flatten[{$CellContext`pureTiPoints$, $CellContext`e1Points$}]; \
$CellContext`pb2Points$ = 
         Flatten[{$CellContext`e1Points$, $CellContext`pureTiU2Points$}]; \
$CellContext`pb3Points$ = 
         Flatten[{$CellContext`pureTiU2Points$, $CellContext`e2Points$}]; \
$CellContext`pb4Points$ = 
         Flatten[{$CellContext`e2Points$, $CellContext`pureUPoints$}]; \
$CellContext`pb5Points$ = {
           Part[$CellContext`pureTiPoints$, 1], 
           Part[$CellContext`e1Points$, 2], 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e1Points$, 2]}; $CellContext`pb6Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e2Points$, 2], 
           Part[$CellContext`pureUPoints$, 1], 
           Part[$CellContext`e2Points$, 2]}; $CellContext`pb7Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 0, 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`pureTiU2Points$, 2]}; $CellContext`xfromT$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`T$, 
            Blank[]]] := ($CellContext`T$ - $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]])/$CellContext`Slope$[
           Part[$CellContext`Points$, 1], 
           Part[$CellContext`Points$, 2], 
           Part[$CellContext`Points$, 3], 
           Part[$CellContext`Points$, 4]]; $CellContext`Lever1Amount$[
           Pattern[$CellContext`Lever1, 
            Blank[]], 
           Pattern[$CellContext`Lever2, 
            Blank[]]] := $CellContext`Lever2 ($CellContext`Lever1^(-1)/(
           
           1 + $CellContext`Lever2/$CellContext`Lever1)); \
$CellContext`Lever2Amount$[
           Pattern[$CellContext`Lever1$, 
            Blank[]], 
           Pattern[$CellContext`Lever2$, 
            Blank[]]] := 
         1 - $CellContext`Lever1Amount$[$CellContext`Lever1$, \
$CellContext`Lever2$]; $CellContext`p1$ = Show[
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb1Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb1Points$, 1], 
             Part[$CellContext`pb1Points$, 3]}, PlotStyle -> Black, 
            PlotRange -> {{0, 1}, {600, 925}}, Frame -> True, FrameLabel -> {
              Row[{"mole fraction uranium ", 
                Subscript[
                 Style["x", Italic], "U"]}], "temperature (\:02daC)"}, 
            LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
            Full], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb2Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb2Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb3Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb3Points$, 1], 
             Part[$CellContext`pb3Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb4Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb4Points$, 1], 
             Part[$CellContext`pb4Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb5Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb5Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb6Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb6Points$, 1], 
             Part[$CellContext`pb6Points$, 3]}, PlotStyle -> Black], 
           Graphics[
            Line[{{
               Part[$CellContext`pb7Points$, 1], 
               Part[$CellContext`pb7Points$, 2]}, {
               Part[$CellContext`pb7Points$, 3], 
               Part[$CellContext`pb7Points$, 4]}}]], 
           Graphics[{
             PointSize[0.025], Purple, 
             Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
           Which[$CellContext`PointX$$ == 0, 
            Show[
             Graphics[{
               PointSize[0.027], Blue, 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], Blue, 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 0}}]}]], $CellContext`PointX$$ == 1, 
            Show[
             Graphics[{
               PointSize[0.027], 
               RGBColor[1, 0.4, 0], 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], 
               RGBColor[1, 0.4, 0], 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 
                  0}}]}]], $CellContext`PointX$$ < $CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e1T$, 
             Show[
              Graphics[{
                PointSize[0.027], Blue, 
                Point[{0, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, Blue, 
                
                Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], Blue, 
                Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}]], $CellContext`PointT$$ >= $CellContext`e1T$, 
             Which[$CellContext`PointX$$ < $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Blue, 
                  Point[{0, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Blue, 
                  
                  Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Blue, 
                  Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]], $CellContext`PointX$$ >= \
$CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e2T$, 
             Show[
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[1, 0.4, 0], 
                Point[{1, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[1, 0.4, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                  1, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[1, 0.4, 0], 
                
                Line[{{1, $CellContext`PointT$$}, {1, 
                  0}}]}]], $CellContext`PointT$$ >= $CellContext`e2T$, 
             Which[$CellContext`PointX$$ < $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], 
                    0}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[1, 0.4, 0], 
                  Point[{1, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], 0}}]}], 
                Graphics[{Dashed, 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    1, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{1, $CellContext`PointT$$}, {1, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]]]]; $CellContext`p2$ = Show[
           BarChart[
            
            Which[$CellContext`PointX$$ == 
             0, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              1; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ == 
             1, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              0; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              1; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e1T$, \
$CellContext`BlueLever$ = 
               Abs[0 - $CellContext`PointX$$]; $CellContext`GreenLever$ = 
               Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
               0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointT$$ >= \
$CellContext`e1T$, 
              Which[$CellContext`PointX$$ < $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`BlueLever$ = 
                 Abs[0 - $CellContext`PointX$$]; $CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$]; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`RedLever$]; \
$CellContext`RedAmount$ = $CellContext`Lever2Amount$[$CellContext`BlueLever$, \
$CellContext`RedLever$]; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$]; \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = $CellContext`Lever1Amount$[$CellContext`RedLever$, \
$CellContext`GreenLever$]; $CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]], \
$CellContext`PointX$$ >= $CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e2T$, \
$CellContext`GreenLever$ = 
               Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`OrangeLever$ = 
               Abs[$CellContext`PointX$$ - 1]; $CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = 
               0; $CellContext`GreenAmount$ = \
$CellContext`Lever1Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; {$CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`GreenAmount$, \
$CellContext`OrangeAmount$}, $CellContext`PointT$$ >= $CellContext`e2T$, 
              Which[$CellContext`PointX$$ < $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$]; \
$CellContext`OrangeLever$ = 
                 Abs[$CellContext`PointX$$ - 
                   1]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
{$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]]], 
            ChartStyle -> {Magenta, Blue, 
              RGBColor[0, 0.6, 0], 
              RGBColor[1, 0.4, 0]}, ChartLabels -> 
            Map[Rotate[#, 45 Degree]& , {"liquid", 
               Subscript["Ti", "(s)"], 
               Subscript["TiU", "2 (s)"], "U"}], 
            PlotRange -> {{0.25, 4.5}, {0, 1}}, ImageSize -> {200, 400}, 
            AspectRatio -> Full, ImageSize -> {100, 200}, 
            Frame -> {{True, None}, {True, None}}, LabelStyle -> {17, Black}, 
            PlotLabel -> Style["relative amounts", 17], Epilog -> {
              If[$CellContext`RedAmount$ > 0, 
               Text[
                Style[
                 Row[{
                   Subscript[
                    Style["x", Italic], "U"], " = ", 
                   NumberForm[$CellContext`LiquidComp$, {2, 2}]}], 17], {
                1, $CellContext`RedAmount$}, {0, -1}]]}]]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`PointX$$, 0.49, 
          "uranium mole fraction"}, 0, 1, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`PointT$$, 675, "temperature (K)"}, 600, 925, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {240., 246.}},
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
 CellID->35961750,ExpressionUUID->"439950cd-a782-4cbf-a2ee-a2262895b808"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"bfe84e51-0b0a-4c43-9f2a-f27ec3409160"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`PointT$$ = 750, $CellContext`PointX$$ = 
    0.8200000000000001, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`PointX$$], 0.8200000000000001, 
       "uranium mole fraction"}, 0, 1, 0.01}, {{
       Hold[$CellContext`PointT$$], 750, "temperature (K)"}, 600, 925, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`PointX$41835$$ = 0, $CellContext`PointT$41836$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`PointT$$ = 750, $CellContext`PointX$$ = 
        0.8200000000000001}, "ControllerVariables" :> {
        Hold[$CellContext`PointX$$, $CellContext`PointX$41835$$, 0], 
        Hold[$CellContext`PointT$$, $CellContext`PointT$41836$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Slope$, $CellContext`Intercept$, \
$CellContext`PhaseBoundary$, $CellContext`pureTiU2x$, $CellContext`e1T$, \
$CellContext`e2T$, $CellContext`e1x$, $CellContext`e2x$, \
$CellContext`pureTiPoints$, $CellContext`pureUPoints$, \
$CellContext`pureTiU2Points$, $CellContext`e1Points$, $CellContext`e2Points$, \
$CellContext`pb1Points$, $CellContext`pb2Points$, $CellContext`pb3Points$, \
$CellContext`pb4Points$, $CellContext`pb5Points$, $CellContext`pb6Points$, \
$CellContext`pb7Points$, $CellContext`xfromT$, $CellContext`Lever1Amount$, \
$CellContext`Lever2Amount$, $CellContext`GreenLever$, $CellContext`RedLever$, \
$CellContext`BlueLever$, $CellContext`LiquidComp$, $CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`OrangeLever$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$, $CellContext`p1$, \
$CellContext`p2$}, $CellContext`Slope$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`y2 - $CellContext`y1)/($CellContext`x2 - \
$CellContext`x1); $CellContext`Intercept$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`x1 $CellContext`y2 - $CellContext`x2 \
$CellContext`y1)/($CellContext`x1 - $CellContext`x2); \
$CellContext`PhaseBoundary$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`Slope$[
             Part[$CellContext`Points$, 1], 
             Part[$CellContext`Points$, 2], 
             Part[$CellContext`Points$, 3], 
             
             Part[$CellContext`Points$, 
              4]] $CellContext`x$ + $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]]; $CellContext`pureTiU2x$ = 
         N[2]/3; $CellContext`e1T$ = 655; $CellContext`e2T$ = 
         720; $CellContext`e1x$ = 0.28; $CellContext`e2x$ = 
         0.95; $CellContext`pureTiPoints$ = {0, 
          882}; $CellContext`pureUPoints$ = {1, 
          770}; $CellContext`pureTiU2Points$ = {$CellContext`pureTiU2x$, 
           
           890}; $CellContext`e1Points$ = {$CellContext`e1x$, \
$CellContext`e1T$}; $CellContext`e2Points$ = {$CellContext`e2x$, \
$CellContext`e2T$}; $CellContext`pb1Points$ = 
         Flatten[{$CellContext`pureTiPoints$, $CellContext`e1Points$}]; \
$CellContext`pb2Points$ = 
         Flatten[{$CellContext`e1Points$, $CellContext`pureTiU2Points$}]; \
$CellContext`pb3Points$ = 
         Flatten[{$CellContext`pureTiU2Points$, $CellContext`e2Points$}]; \
$CellContext`pb4Points$ = 
         Flatten[{$CellContext`e2Points$, $CellContext`pureUPoints$}]; \
$CellContext`pb5Points$ = {
           Part[$CellContext`pureTiPoints$, 1], 
           Part[$CellContext`e1Points$, 2], 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e1Points$, 2]}; $CellContext`pb6Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e2Points$, 2], 
           Part[$CellContext`pureUPoints$, 1], 
           Part[$CellContext`e2Points$, 2]}; $CellContext`pb7Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 0, 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`pureTiU2Points$, 2]}; $CellContext`xfromT$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`T$, 
            Blank[]]] := ($CellContext`T$ - $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]])/$CellContext`Slope$[
           Part[$CellContext`Points$, 1], 
           Part[$CellContext`Points$, 2], 
           Part[$CellContext`Points$, 3], 
           Part[$CellContext`Points$, 4]]; $CellContext`Lever1Amount$[
           Pattern[$CellContext`Lever1, 
            Blank[]], 
           Pattern[$CellContext`Lever2, 
            Blank[]]] := $CellContext`Lever2 ($CellContext`Lever1^(-1)/(
           
           1 + $CellContext`Lever2/$CellContext`Lever1)); \
$CellContext`Lever2Amount$[
           Pattern[$CellContext`Lever1$, 
            Blank[]], 
           Pattern[$CellContext`Lever2$, 
            Blank[]]] := 
         1 - $CellContext`Lever1Amount$[$CellContext`Lever1$, \
$CellContext`Lever2$]; $CellContext`p1$ = Show[
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb1Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb1Points$, 1], 
             Part[$CellContext`pb1Points$, 3]}, PlotStyle -> Black, 
            PlotRange -> {{0, 1}, {600, 925}}, Frame -> True, FrameLabel -> {
              Row[{"mole fraction uranium ", 
                Subscript[
                 Style["x", Italic], "U"]}], "temperature (\:02daC)"}, 
            LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
            Full], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb2Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb2Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb3Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb3Points$, 1], 
             Part[$CellContext`pb3Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb4Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb4Points$, 1], 
             Part[$CellContext`pb4Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb5Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb5Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb6Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb6Points$, 1], 
             Part[$CellContext`pb6Points$, 3]}, PlotStyle -> Black], 
           Graphics[
            Line[{{
               Part[$CellContext`pb7Points$, 1], 
               Part[$CellContext`pb7Points$, 2]}, {
               Part[$CellContext`pb7Points$, 3], 
               Part[$CellContext`pb7Points$, 4]}}]], 
           Graphics[{
             PointSize[0.025], Purple, 
             Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
           Which[$CellContext`PointX$$ == 0, 
            Show[
             Graphics[{
               PointSize[0.027], Blue, 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], Blue, 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 0}}]}]], $CellContext`PointX$$ == 1, 
            Show[
             Graphics[{
               PointSize[0.027], 
               RGBColor[1, 0.4, 0], 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], 
               RGBColor[1, 0.4, 0], 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 
                  0}}]}]], $CellContext`PointX$$ < $CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e1T$, 
             Show[
              Graphics[{
                PointSize[0.027], Blue, 
                Point[{0, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, Blue, 
                
                Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], Blue, 
                Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}]], $CellContext`PointT$$ >= $CellContext`e1T$, 
             Which[$CellContext`PointX$$ < $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Blue, 
                  Point[{0, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Blue, 
                  
                  Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Blue, 
                  Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]], $CellContext`PointX$$ >= \
$CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e2T$, 
             Show[
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[1, 0.4, 0], 
                Point[{1, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[1, 0.4, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                  1, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[1, 0.4, 0], 
                
                Line[{{1, $CellContext`PointT$$}, {1, 
                  0}}]}]], $CellContext`PointT$$ >= $CellContext`e2T$, 
             Which[$CellContext`PointX$$ < $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], 
                    0}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[1, 0.4, 0], 
                  Point[{1, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], 0}}]}], 
                Graphics[{Dashed, 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    1, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{1, $CellContext`PointT$$}, {1, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]]]]; $CellContext`p2$ = Show[
           BarChart[
            
            Which[$CellContext`PointX$$ == 
             0, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              1; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ == 
             1, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              0; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              1; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e1T$, \
$CellContext`BlueLever$ = 
               Abs[0 - $CellContext`PointX$$]; $CellContext`GreenLever$ = 
               Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
               0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointT$$ >= \
$CellContext`e1T$, 
              Which[$CellContext`PointX$$ < $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`BlueLever$ = 
                 Abs[0 - $CellContext`PointX$$]; $CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$]; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`RedLever$]; \
$CellContext`RedAmount$ = $CellContext`Lever2Amount$[$CellContext`BlueLever$, \
$CellContext`RedLever$]; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$]; \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = $CellContext`Lever1Amount$[$CellContext`RedLever$, \
$CellContext`GreenLever$]; $CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]], \
$CellContext`PointX$$ >= $CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e2T$, \
$CellContext`GreenLever$ = 
               Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`OrangeLever$ = 
               Abs[$CellContext`PointX$$ - 1]; $CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = 
               0; $CellContext`GreenAmount$ = \
$CellContext`Lever1Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; {$CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`GreenAmount$, \
$CellContext`OrangeAmount$}, $CellContext`PointT$$ >= $CellContext`e2T$, 
              Which[$CellContext`PointX$$ < $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$]; \
$CellContext`OrangeLever$ = 
                 Abs[$CellContext`PointX$$ - 
                   1]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
{$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]]], 
            ChartStyle -> {Magenta, Blue, 
              RGBColor[0, 0.6, 0], 
              RGBColor[1, 0.4, 0]}, ChartLabels -> 
            Map[Rotate[#, 45 Degree]& , {"liquid", 
               Subscript["Ti", "(s)"], 
               Subscript["TiU", "2 (s)"], "U"}], 
            PlotRange -> {{0.25, 4.5}, {0, 1}}, ImageSize -> {200, 400}, 
            AspectRatio -> Full, ImageSize -> {100, 200}, 
            Frame -> {{True, None}, {True, None}}, LabelStyle -> {17, Black}, 
            PlotLabel -> Style["relative amounts", 17], Epilog -> {
              If[$CellContext`RedAmount$ > 0, 
               Text[
                Style[
                 Row[{
                   Subscript[
                    Style["x", Italic], "U"], " = ", 
                   NumberForm[$CellContext`LiquidComp$, {2, 2}]}], 17], {
                1, $CellContext`RedAmount$}, {0, -1}]]}]]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`PointX$$, 0.8200000000000001, 
          "uranium mole fraction"}, 0, 1, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`PointT$$, 750, "temperature (K)"}, 600, 925, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {240., 246.}},
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
 CellID->429189346,ExpressionUUID->"9b5809bf-5435-4d6c-8c57-d9fae09d05cf"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`PointT$$ = 854, $CellContext`PointX$$ = 0.3,
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`PointX$$], 0.3, "uranium mole fraction"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`PointT$$], 854, "temperature (K)"}, 600, 925, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`PointX$41898$$ = 0, $CellContext`PointT$41899$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`PointT$$ = 854, $CellContext`PointX$$ = 
        0.3}, "ControllerVariables" :> {
        Hold[$CellContext`PointX$$, $CellContext`PointX$41898$$, 0], 
        Hold[$CellContext`PointT$$, $CellContext`PointT$41899$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Slope$, $CellContext`Intercept$, \
$CellContext`PhaseBoundary$, $CellContext`pureTiU2x$, $CellContext`e1T$, \
$CellContext`e2T$, $CellContext`e1x$, $CellContext`e2x$, \
$CellContext`pureTiPoints$, $CellContext`pureUPoints$, \
$CellContext`pureTiU2Points$, $CellContext`e1Points$, $CellContext`e2Points$, \
$CellContext`pb1Points$, $CellContext`pb2Points$, $CellContext`pb3Points$, \
$CellContext`pb4Points$, $CellContext`pb5Points$, $CellContext`pb6Points$, \
$CellContext`pb7Points$, $CellContext`xfromT$, $CellContext`Lever1Amount$, \
$CellContext`Lever2Amount$, $CellContext`GreenLever$, $CellContext`RedLever$, \
$CellContext`BlueLever$, $CellContext`LiquidComp$, $CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`OrangeLever$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$, $CellContext`p1$, \
$CellContext`p2$}, $CellContext`Slope$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`y2 - $CellContext`y1)/($CellContext`x2 - \
$CellContext`x1); $CellContext`Intercept$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`x1 $CellContext`y2 - $CellContext`x2 \
$CellContext`y1)/($CellContext`x1 - $CellContext`x2); \
$CellContext`PhaseBoundary$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`Slope$[
             Part[$CellContext`Points$, 1], 
             Part[$CellContext`Points$, 2], 
             Part[$CellContext`Points$, 3], 
             
             Part[$CellContext`Points$, 
              4]] $CellContext`x$ + $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]]; $CellContext`pureTiU2x$ = 
         N[2]/3; $CellContext`e1T$ = 655; $CellContext`e2T$ = 
         720; $CellContext`e1x$ = 0.28; $CellContext`e2x$ = 
         0.95; $CellContext`pureTiPoints$ = {0, 
          882}; $CellContext`pureUPoints$ = {1, 
          770}; $CellContext`pureTiU2Points$ = {$CellContext`pureTiU2x$, 
           
           890}; $CellContext`e1Points$ = {$CellContext`e1x$, \
$CellContext`e1T$}; $CellContext`e2Points$ = {$CellContext`e2x$, \
$CellContext`e2T$}; $CellContext`pb1Points$ = 
         Flatten[{$CellContext`pureTiPoints$, $CellContext`e1Points$}]; \
$CellContext`pb2Points$ = 
         Flatten[{$CellContext`e1Points$, $CellContext`pureTiU2Points$}]; \
$CellContext`pb3Points$ = 
         Flatten[{$CellContext`pureTiU2Points$, $CellContext`e2Points$}]; \
$CellContext`pb4Points$ = 
         Flatten[{$CellContext`e2Points$, $CellContext`pureUPoints$}]; \
$CellContext`pb5Points$ = {
           Part[$CellContext`pureTiPoints$, 1], 
           Part[$CellContext`e1Points$, 2], 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e1Points$, 2]}; $CellContext`pb6Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e2Points$, 2], 
           Part[$CellContext`pureUPoints$, 1], 
           Part[$CellContext`e2Points$, 2]}; $CellContext`pb7Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 0, 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`pureTiU2Points$, 2]}; $CellContext`xfromT$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`T$, 
            Blank[]]] := ($CellContext`T$ - $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]])/$CellContext`Slope$[
           Part[$CellContext`Points$, 1], 
           Part[$CellContext`Points$, 2], 
           Part[$CellContext`Points$, 3], 
           Part[$CellContext`Points$, 4]]; $CellContext`Lever1Amount$[
           Pattern[$CellContext`Lever1, 
            Blank[]], 
           Pattern[$CellContext`Lever2, 
            Blank[]]] := $CellContext`Lever2 ($CellContext`Lever1^(-1)/(
           
           1 + $CellContext`Lever2/$CellContext`Lever1)); \
$CellContext`Lever2Amount$[
           Pattern[$CellContext`Lever1$, 
            Blank[]], 
           Pattern[$CellContext`Lever2$, 
            Blank[]]] := 
         1 - $CellContext`Lever1Amount$[$CellContext`Lever1$, \
$CellContext`Lever2$]; $CellContext`p1$ = Show[
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb1Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb1Points$, 1], 
             Part[$CellContext`pb1Points$, 3]}, PlotStyle -> Black, 
            PlotRange -> {{0, 1}, {600, 925}}, Frame -> True, FrameLabel -> {
              Row[{"mole fraction uranium ", 
                Subscript[
                 Style["x", Italic], "U"]}], "temperature (\:02daC)"}, 
            LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
            Full], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb2Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb2Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb3Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb3Points$, 1], 
             Part[$CellContext`pb3Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb4Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb4Points$, 1], 
             Part[$CellContext`pb4Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb5Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb5Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb6Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb6Points$, 1], 
             Part[$CellContext`pb6Points$, 3]}, PlotStyle -> Black], 
           Graphics[
            Line[{{
               Part[$CellContext`pb7Points$, 1], 
               Part[$CellContext`pb7Points$, 2]}, {
               Part[$CellContext`pb7Points$, 3], 
               Part[$CellContext`pb7Points$, 4]}}]], 
           Graphics[{
             PointSize[0.025], Purple, 
             Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
           Which[$CellContext`PointX$$ == 0, 
            Show[
             Graphics[{
               PointSize[0.027], Blue, 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], Blue, 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 0}}]}]], $CellContext`PointX$$ == 1, 
            Show[
             Graphics[{
               PointSize[0.027], 
               RGBColor[1, 0.4, 0], 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], 
               RGBColor[1, 0.4, 0], 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 
                  0}}]}]], $CellContext`PointX$$ < $CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e1T$, 
             Show[
              Graphics[{
                PointSize[0.027], Blue, 
                Point[{0, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, Blue, 
                
                Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], Blue, 
                Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}]], $CellContext`PointT$$ >= $CellContext`e1T$, 
             Which[$CellContext`PointX$$ < $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Blue, 
                  Point[{0, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Blue, 
                  
                  Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Blue, 
                  Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]], $CellContext`PointX$$ >= \
$CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e2T$, 
             Show[
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[1, 0.4, 0], 
                Point[{1, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[1, 0.4, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                  1, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[1, 0.4, 0], 
                
                Line[{{1, $CellContext`PointT$$}, {1, 
                  0}}]}]], $CellContext`PointT$$ >= $CellContext`e2T$, 
             Which[$CellContext`PointX$$ < $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], 
                    0}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[1, 0.4, 0], 
                  Point[{1, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], 0}}]}], 
                Graphics[{Dashed, 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    1, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{1, $CellContext`PointT$$}, {1, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]]]]; $CellContext`p2$ = Show[
           BarChart[
            
            Which[$CellContext`PointX$$ == 
             0, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              1; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ == 
             1, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              0; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              1; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e1T$, \
$CellContext`BlueLever$ = 
               Abs[0 - $CellContext`PointX$$]; $CellContext`GreenLever$ = 
               Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
               0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointT$$ >= \
$CellContext`e1T$, 
              Which[$CellContext`PointX$$ < $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`BlueLever$ = 
                 Abs[0 - $CellContext`PointX$$]; $CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$]; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`RedLever$]; \
$CellContext`RedAmount$ = $CellContext`Lever2Amount$[$CellContext`BlueLever$, \
$CellContext`RedLever$]; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$]; \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = $CellContext`Lever1Amount$[$CellContext`RedLever$, \
$CellContext`GreenLever$]; $CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]], \
$CellContext`PointX$$ >= $CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e2T$, \
$CellContext`GreenLever$ = 
               Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`OrangeLever$ = 
               Abs[$CellContext`PointX$$ - 1]; $CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = 
               0; $CellContext`GreenAmount$ = \
$CellContext`Lever1Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; {$CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`GreenAmount$, \
$CellContext`OrangeAmount$}, $CellContext`PointT$$ >= $CellContext`e2T$, 
              Which[$CellContext`PointX$$ < $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$]; \
$CellContext`OrangeLever$ = 
                 Abs[$CellContext`PointX$$ - 
                   1]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
{$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]]], 
            ChartStyle -> {Magenta, Blue, 
              RGBColor[0, 0.6, 0], 
              RGBColor[1, 0.4, 0]}, ChartLabels -> 
            Map[Rotate[#, 45 Degree]& , {"liquid", 
               Subscript["Ti", "(s)"], 
               Subscript["TiU", "2 (s)"], "U"}], 
            PlotRange -> {{0.25, 4.5}, {0, 1}}, ImageSize -> {200, 400}, 
            AspectRatio -> Full, ImageSize -> {100, 200}, 
            Frame -> {{True, None}, {True, None}}, LabelStyle -> {17, Black}, 
            PlotLabel -> Style["relative amounts", 17], Epilog -> {
              If[$CellContext`RedAmount$ > 0, 
               Text[
                Style[
                 Row[{
                   Subscript[
                    Style["x", Italic], "U"], " = ", 
                   NumberForm[$CellContext`LiquidComp$, {2, 2}]}], 17], {
                1, $CellContext`RedAmount$}, {0, -1}]]}]]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`PointX$$, 0.3, 
          "uranium mole fraction"}, 0, 1, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`PointT$$, 854, "temperature (K)"}, 600, 925, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {240., 246.}},
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
 CellID->343266096,ExpressionUUID->"681ff6f9-4b79-437b-880c-c60af08c2279"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`PointT$$ = 725, $CellContext`PointX$$ = 
    0.12, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`PointX$$], 0.12, "uranium mole fraction"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`PointT$$], 725, "temperature (K)"}, 600, 925, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {608., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`PointX$41961$$ = 0, $CellContext`PointT$41962$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`PointT$$ = 725, $CellContext`PointX$$ = 
        0.12}, "ControllerVariables" :> {
        Hold[$CellContext`PointX$$, $CellContext`PointX$41961$$, 0], 
        Hold[$CellContext`PointT$$, $CellContext`PointT$41962$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Slope$, $CellContext`Intercept$, \
$CellContext`PhaseBoundary$, $CellContext`pureTiU2x$, $CellContext`e1T$, \
$CellContext`e2T$, $CellContext`e1x$, $CellContext`e2x$, \
$CellContext`pureTiPoints$, $CellContext`pureUPoints$, \
$CellContext`pureTiU2Points$, $CellContext`e1Points$, $CellContext`e2Points$, \
$CellContext`pb1Points$, $CellContext`pb2Points$, $CellContext`pb3Points$, \
$CellContext`pb4Points$, $CellContext`pb5Points$, $CellContext`pb6Points$, \
$CellContext`pb7Points$, $CellContext`xfromT$, $CellContext`Lever1Amount$, \
$CellContext`Lever2Amount$, $CellContext`GreenLever$, $CellContext`RedLever$, \
$CellContext`BlueLever$, $CellContext`LiquidComp$, $CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`OrangeLever$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$, $CellContext`p1$, \
$CellContext`p2$}, $CellContext`Slope$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`y2 - $CellContext`y1)/($CellContext`x2 - \
$CellContext`x1); $CellContext`Intercept$[
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]], 
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            
            Blank[]]] := ($CellContext`x1 $CellContext`y2 - $CellContext`x2 \
$CellContext`y1)/($CellContext`x1 - $CellContext`x2); \
$CellContext`PhaseBoundary$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`Slope$[
             Part[$CellContext`Points$, 1], 
             Part[$CellContext`Points$, 2], 
             Part[$CellContext`Points$, 3], 
             
             Part[$CellContext`Points$, 
              4]] $CellContext`x$ + $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]]; $CellContext`pureTiU2x$ = 
         N[2]/3; $CellContext`e1T$ = 655; $CellContext`e2T$ = 
         720; $CellContext`e1x$ = 0.28; $CellContext`e2x$ = 
         0.95; $CellContext`pureTiPoints$ = {0, 
          882}; $CellContext`pureUPoints$ = {1, 
          770}; $CellContext`pureTiU2Points$ = {$CellContext`pureTiU2x$, 
           
           890}; $CellContext`e1Points$ = {$CellContext`e1x$, \
$CellContext`e1T$}; $CellContext`e2Points$ = {$CellContext`e2x$, \
$CellContext`e2T$}; $CellContext`pb1Points$ = 
         Flatten[{$CellContext`pureTiPoints$, $CellContext`e1Points$}]; \
$CellContext`pb2Points$ = 
         Flatten[{$CellContext`e1Points$, $CellContext`pureTiU2Points$}]; \
$CellContext`pb3Points$ = 
         Flatten[{$CellContext`pureTiU2Points$, $CellContext`e2Points$}]; \
$CellContext`pb4Points$ = 
         Flatten[{$CellContext`e2Points$, $CellContext`pureUPoints$}]; \
$CellContext`pb5Points$ = {
           Part[$CellContext`pureTiPoints$, 1], 
           Part[$CellContext`e1Points$, 2], 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e1Points$, 2]}; $CellContext`pb6Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`e2Points$, 2], 
           Part[$CellContext`pureUPoints$, 1], 
           Part[$CellContext`e2Points$, 2]}; $CellContext`pb7Points$ = {
           Part[$CellContext`pureTiU2Points$, 1], 0, 
           Part[$CellContext`pureTiU2Points$, 1], 
           Part[$CellContext`pureTiU2Points$, 2]}; $CellContext`xfromT$[
           Pattern[$CellContext`Points$, 
            Blank[]], 
           Pattern[$CellContext`T$, 
            Blank[]]] := ($CellContext`T$ - $CellContext`Intercept$[
            Part[$CellContext`Points$, 1], 
            Part[$CellContext`Points$, 2], 
            Part[$CellContext`Points$, 3], 
            Part[$CellContext`Points$, 4]])/$CellContext`Slope$[
           Part[$CellContext`Points$, 1], 
           Part[$CellContext`Points$, 2], 
           Part[$CellContext`Points$, 3], 
           Part[$CellContext`Points$, 4]]; $CellContext`Lever1Amount$[
           Pattern[$CellContext`Lever1, 
            Blank[]], 
           Pattern[$CellContext`Lever2, 
            Blank[]]] := $CellContext`Lever2 ($CellContext`Lever1^(-1)/(
           
           1 + $CellContext`Lever2/$CellContext`Lever1)); \
$CellContext`Lever2Amount$[
           Pattern[$CellContext`Lever1$, 
            Blank[]], 
           Pattern[$CellContext`Lever2$, 
            Blank[]]] := 
         1 - $CellContext`Lever1Amount$[$CellContext`Lever1$, \
$CellContext`Lever2$]; $CellContext`p1$ = Show[
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb1Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb1Points$, 1], 
             Part[$CellContext`pb1Points$, 3]}, PlotStyle -> Black, 
            PlotRange -> {{0, 1}, {600, 925}}, Frame -> True, FrameLabel -> {
              Row[{"mole fraction uranium ", 
                Subscript[
                 Style["x", Italic], "U"]}], "temperature (\:02daC)"}, 
            LabelStyle -> {17, Black}, ImageSize -> {400, 400}, AspectRatio -> 
            Full], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb2Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb2Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb3Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb3Points$, 1], 
             Part[$CellContext`pb3Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb4Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb4Points$, 1], 
             Part[$CellContext`pb4Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb5Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb5Points$, 1], 
             Part[$CellContext`pb2Points$, 3]}, PlotStyle -> Black], 
           Plot[
            $CellContext`PhaseBoundary$[$CellContext`pb6Points$, \
$CellContext`x], {$CellContext`x, 
             Part[$CellContext`pb6Points$, 1], 
             Part[$CellContext`pb6Points$, 3]}, PlotStyle -> Black], 
           Graphics[
            Line[{{
               Part[$CellContext`pb7Points$, 1], 
               Part[$CellContext`pb7Points$, 2]}, {
               Part[$CellContext`pb7Points$, 3], 
               Part[$CellContext`pb7Points$, 4]}}]], 
           Graphics[{
             PointSize[0.025], Purple, 
             Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
           Which[$CellContext`PointX$$ == 0, 
            Show[
             Graphics[{
               PointSize[0.027], Blue, 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], Blue, 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 0}}]}]], $CellContext`PointX$$ == 1, 
            Show[
             Graphics[{
               PointSize[0.027], 
               RGBColor[1, 0.4, 0], 
               Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
             Graphics[{Dotted, 
               Thickness[0.007], 
               RGBColor[1, 0.4, 0], 
               
               Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, 
                  0}}]}]], $CellContext`PointX$$ < $CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e1T$, 
             Show[
              Graphics[{
                PointSize[0.027], Blue, 
                Point[{0, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, Blue, 
                
                Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], Blue, 
                Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}]], $CellContext`PointT$$ >= $CellContext`e1T$, 
             Which[$CellContext`PointX$$ < $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Blue, 
                  Point[{0, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Blue, 
                  
                  Line[{{0, $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Blue, 
                  Line[{{0, $CellContext`PointT$$}, {0, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], 0}, {
                    $CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]], $CellContext`PointX$$ >= \
$CellContext`pureTiU2x$, 
            Which[$CellContext`PointT$$ < $CellContext`e2T$, 
             Show[
              Graphics[{
                PointSize[0.027], 
                RGBColor[0, 0.6, 0], 
                Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
              Graphics[{
                PointSize[0.027], 
                RGBColor[1, 0.4, 0], 
                Point[{1, $CellContext`PointT$$}]}], 
              Graphics[{Dashed, 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[0, 0.6, 0], 
                
                Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
              Graphics[{Dashed, 
                RGBColor[1, 0.4, 0], 
                
                Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                  1, $CellContext`PointT$$}}]}], 
              Graphics[{Dotted, 
                Thickness[0.007], 
                RGBColor[1, 0.4, 0], 
                
                Line[{{1, $CellContext`PointT$$}, {1, 
                  0}}]}]], $CellContext`PointT$$ >= $CellContext`e2T$, 
             Which[$CellContext`PointX$$ < $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[0, 0.6, 0], 
                  Point[{$CellContext`pureTiU2x$, $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{Dashed, 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`PointX$$, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[0, 0.6, 0], 
                  
                  Line[{{$CellContext`pureTiU2x$, $CellContext`PointT$$}, \
{$CellContext`pureTiU2x$, 0}}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$], 
                    0}}]}]], $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, $CellContext`PointT$$}}]}]]], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
              
              Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Magenta, 
                  Point[{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}]}], 
                Graphics[{
                  PointSize[0.027], 
                  RGBColor[1, 0.4, 0], 
                  Point[{1, $CellContext`PointT$$}]}], 
                Graphics[{Dashed, Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  Line[{{
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], $CellContext`PointT$$}, {
                    $CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$], 0}}]}], 
                Graphics[{Dashed, 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{$CellContext`PointX$$, $CellContext`PointT$$}, {
                    1, $CellContext`PointT$$}}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], 
                  RGBColor[1, 0.4, 0], 
                  
                  Line[{{1, $CellContext`PointT$$}, {1, 
                    0}}]}]], $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], 
               Show[
                Graphics[{
                  PointSize[0.027], Purple, 
                  Point[{$CellContext`PointX$$, $CellContext`PointT$$}]}], 
                Graphics[{Dotted, 
                  Thickness[0.007], Magenta, 
                  
                  Line[{{$CellContext`PointX$$, 
                    0}, {$CellContext`PointX$$, \
$CellContext`PointT$$}}]}]]]]]]]; $CellContext`p2$ = Show[
           BarChart[
            
            Which[$CellContext`PointX$$ == 
             0, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              1; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ == 
             1, $CellContext`RedAmount$ = 0; $CellContext`BlueAmount$ = 
              0; $CellContext`GreenAmount$ = 0; $CellContext`OrangeAmount$ = 
              1; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e1T$, \
$CellContext`BlueLever$ = 
               Abs[0 - $CellContext`PointX$$]; $CellContext`GreenLever$ = 
               Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`BlueLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
               0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointT$$ >= \
$CellContext`e1T$, 
              Which[$CellContext`PointX$$ < $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`BlueLever$ = 
                 Abs[0 - $CellContext`PointX$$]; $CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb1Points$, \
$CellContext`PointT$$]; $CellContext`BlueAmount$ = \
$CellContext`Lever1Amount$[$CellContext`BlueLever$, $CellContext`RedLever$]; \
$CellContext`RedAmount$ = $CellContext`Lever2Amount$[$CellContext`BlueLever$, \
$CellContext`RedLever$]; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb1Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e1x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb2Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$]; \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`PointX$$ - $CellContext`pureTiU2x$]; \
$CellContext`RedAmount$ = $CellContext`Lever1Amount$[$CellContext`RedLever$, \
$CellContext`GreenLever$]; $CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb2Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]], \
$CellContext`PointX$$ >= $CellContext`pureTiU2x$, 
             
             Which[$CellContext`PointT$$ < $CellContext`e2T$, \
$CellContext`GreenLever$ = 
               Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`OrangeLever$ = 
               Abs[$CellContext`PointX$$ - 1]; $CellContext`RedAmount$ = 
               0; $CellContext`BlueAmount$ = 
               0; $CellContext`GreenAmount$ = \
$CellContext`Lever1Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`GreenLever$, \
$CellContext`OrangeLever$]; {$CellContext`RedAmount$, \
$CellContext`BlueAmount$, $CellContext`GreenAmount$, \
$CellContext`OrangeAmount$}, $CellContext`PointT$$ >= $CellContext`e2T$, 
              Which[$CellContext`PointX$$ < $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`GreenLever$ = 
                 Abs[$CellContext`pureTiU2x$ - $CellContext`PointX$$]; \
$CellContext`RedLever$ = 
                 Abs[$CellContext`PointX$$ - \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$]]; \
$CellContext`LiquidComp$ = $CellContext`xfromT$[$CellContext`pb3Points$, \
$CellContext`PointT$$]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`BlueAmount$ = 
                 0; $CellContext`GreenAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`GreenLever$]; \
$CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb3Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}], \
$CellContext`PointX$$ >= $CellContext`e2x$, 
               
               Which[$CellContext`PointX$$ >= \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedLever$ = 
                 Abs[$CellContext`xfromT$[$CellContext`pb4Points$, \
$CellContext`PointT$$] - $CellContext`PointX$$]; $CellContext`LiquidComp$ = \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$]; \
$CellContext`OrangeLever$ = 
                 Abs[$CellContext`PointX$$ - 
                   1]; $CellContext`RedAmount$ = \
$CellContext`Lever1Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = \
$CellContext`Lever2Amount$[$CellContext`RedLever$, $CellContext`OrangeLever$]; \
{$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}, $CellContext`PointX$$ < \
$CellContext`xfromT$[$CellContext`pb4Points$, $CellContext`PointT$$], \
$CellContext`RedAmount$ = 
                 1; $CellContext`LiquidComp$ = $CellContext`PointX$$; \
$CellContext`BlueAmount$ = 0; $CellContext`GreenAmount$ = 
                 0; $CellContext`OrangeAmount$ = 
                 0; {$CellContext`RedAmount$, $CellContext`BlueAmount$, \
$CellContext`GreenAmount$, $CellContext`OrangeAmount$}]]]], 
            ChartStyle -> {Magenta, Blue, 
              RGBColor[0, 0.6, 0], 
              RGBColor[1, 0.4, 0]}, ChartLabels -> 
            Map[Rotate[#, 45 Degree]& , {"liquid", 
               Subscript["Ti", "(s)"], 
               Subscript["TiU", "2 (s)"], "U"}], 
            PlotRange -> {{0.25, 4.5}, {0, 1}}, ImageSize -> {200, 400}, 
            AspectRatio -> Full, ImageSize -> {100, 200}, 
            Frame -> {{True, None}, {True, None}}, LabelStyle -> {17, Black}, 
            PlotLabel -> Style["relative amounts", 17], Epilog -> {
              If[$CellContext`RedAmount$ > 0, 
               Text[
                Style[
                 Row[{
                   Subscript[
                    Style["x", Italic], "U"], " = ", 
                   NumberForm[$CellContext`LiquidComp$, {2, 2}]}], 17], {
                1, $CellContext`RedAmount$}, {0, -1}]]}]]; 
        Grid[{{$CellContext`p1$, $CellContext`p2$}}]], 
      "Specifications" :> {{{$CellContext`PointX$$, 0.12, 
          "uranium mole fraction"}, 0, 1, 0.01, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`PointT$$, 725, "temperature (K)"}, 600, 925, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {240., 246.}},
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
 CellID->928507862,ExpressionUUID->"191c38af-dfc0-4ef3-95d8-6dfbd0ab4388"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"555bee56-4e01-4a29-96de-6bb9d6d5b8c6"],

Cell[TextData[{
 "\"Composition\" is usually expressed as a mole fraction but sometimes other \
units such as mole percent or mass percent are used. The amounts of the \
phases are calculated from the lever rule: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     SubscriptBox["n", 
      SubscriptBox["phase", "1"]], 
     SubscriptBox["n", 
      SubscriptBox["phase", "2"]]], "=", 
    FractionBox[
     SubscriptBox["l", 
      SubscriptBox["phase", "2"]], 
     SubscriptBox["l", 
      SubscriptBox["phase", "1"]]]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"441475c5-9505-41e7-9426-b9d55d60f535"],
 ". Here ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", 
    SubscriptBox["phase", "1"]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"5422f5b8-5883-415f-b2eb-1964d2eac913"],
 " represents the moles of one of the phases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", 
    SubscriptBox["phase", "2"]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"d4fc36b3-1340-4fac-bb09-27a9181679c6"],
 " represents the moles of the other phase, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["l", 
    SubscriptBox["phase", "1"]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"32a62828-d12f-4bd1-9107-5f177b05d236"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["l", 
    SubscriptBox["phase", "2"]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"7c1d4872-04c0-4bb5-bc97-a23969864f4d"],
 " are the lengths of the levers indicated by dashed lines on the phase \
diagrams. The \"relative amount\" on the bar chart is calculated from ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    SubscriptBox["n", 
     SubscriptBox["phase", "1"]], 
    RowBox[{
     SubscriptBox["n", 
      SubscriptBox["phase", "1"]], "+", 
     SubscriptBox["n", 
      SubscriptBox["phase", "2"]]}]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"ace2c90a-2a28-44af-9984-cd5c3812f5ae"],
 " and ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    SubscriptBox["n", 
     SubscriptBox["phase", "2"]], 
    RowBox[{
     SubscriptBox["n", 
      SubscriptBox["phase", "1"]], "+", 
     SubscriptBox["n", 
      SubscriptBox["phase", "2"]]}]], TraditionalForm]], "InlineMath",
  ExpressionUUID->"8042cfb9-660f-4bd0-a5d5-3ccb5b4ea867"],
 "."
}], "DetailNotes",
 CellID->1598860283,ExpressionUUID->"5e7832a8-7c83-42ca-843a-ac2f8d9bd661"],

Cell[TextData[{
 "Snapshot 1: when the overall composition of the system is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["U",
      FontSlant->"Plain"]], "=", "0.49"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f4fd4b71-b348-467c-83bf-3a92ffab43fd"],
 " and the temperature is 675\:02daC, two phases are stable: a liquid mixture \
of uranium and titanium of composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["U",
      FontSlant->"Plain"]], "=", "0.31"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3066ab19-8b68-409c-b252-1a1985d8e648"],
 ", and the solid compound ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["TiU", "2"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "2288beff-510a-4a65-bc19-2a2c2e2a6c62"],
 "; there are approximately equal amounts of these two phases"
}], "DetailNotes",
 CellID->626893536,ExpressionUUID->"def58413-3e03-4186-b008-fc49ad7e790c"],

Cell[TextData[{
 "Snapshot 2: when the overall composition of the system is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["U",
      FontSlant->"Plain"]], "=", "0.22"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3d41022f-1fde-478c-ba42-a138db0131f1"],
 " and the temperature is 625\:02daC, two phases are stable: solid titanium \
and solid ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["TiU", "2"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "899e6bea-7def-42d6-90c8-b88e64fa2cda"],
 "; there is approximately twice as much titanium as there is of the compound"
}], "DetailNotes",
 CellID->644887370,ExpressionUUID->"08e9d06d-75d5-48bb-86e6-28320c0482c5"],

Cell[TextData[{
 "Snapshot 3: when the overall composition of the system is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["U",
      FontSlant->"Plain"]], "=", "0.22"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"5273662b-07b3-4ab1-84ff-da8cd6972a91"],
 " and the temperature is 750\:02daC, only one phase is stable: a liquid \
mixture of uranium and titanium"
}], "DetailNotes",
 CellID->272061181,ExpressionUUID->"71c9f524-0eec-4a3f-83cd-c86409e773e6"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"3e680c5d-88cc-4baa-a79c-3a3412b70bcb"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"1fb7920b-6bff-4565-9db9-0adf35ea230a"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"6b52e507-817c-4678-b94f-a8bdd9bab619"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "30870276-b667-4079-986e-20a148e98ff3"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"1e4440e6-1f83-41f3-b9ca-79becc201985"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"6eb98ee9-4fb0-4aef-bd66-219605db8ef3"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"7e102a62-d4cd-4332-8b33-2958e914f2ed"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "47729a70-fe19-452e-8b52-7cbdf8ab1146"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"1bdf2dfc-8d3e-4fde-86b2-\
5223eea68768"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"3fe2cd38-d9e2-4758-9cd5-1828adb9a127"]}],
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
  "SliderZoom",ExpressionUUID->"5b206a76-f06a-4ae2-ad5e-581338cc1b84"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "d5cd0b9a-2b11-4bf7-bb36-1f4fdce0cbef"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"5afdeab7-f9d9-4d30-a63f-8f2c2f8ab944"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "d90a83d0-8a34-4f30-ac76-843485aa86d0"]}],
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
  "AutomaticAnimation",ExpressionUUID->"77d788c3-7d25-4abd-aa25-11e5a3ad7fd8"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "4c2a38f3-3734-4e7d-a6bb-db734ffeac99"]}],
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
  "BookmarkAnimation",ExpressionUUID->"d11b1a4d-a797-4a0b-809b-101a335733aa"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"226eb1ce-996b-4567-b691-eb5fc9daf0c0"],

Cell["phase diagram", "SearchTerms",
 CellID->1032209043,ExpressionUUID->"3dda4c7a-aa89-43b3-adfb-4dd3477767f5"],

Cell["lever rule", "SearchTerms",
 CellID->964485235,ExpressionUUID->"6bfe778a-8a73-40b6-b3bb-307096069b7b"],

Cell["liquid-solid phase diagram", "SearchTerms",
 CellID->896777089,ExpressionUUID->"57d0cbd9-9d11-4486-83fb-1c7fe4e4fc03"],

Cell["thermodynamics", "SearchTerms",
 CellID->284577676,ExpressionUUID->"093ab350-58a3-4255-a388-bea2f35beaa1"],

Cell["phase equilibrium", "SearchTerms",
 CellID->161073365,ExpressionUUID->"d673119e-8f87-48fd-bdf9-32bf6a18dc6e"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"8afa6f4c-2705-4f70-8589-e3ca9ff27f9b"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"bd91fe3e-663d-4567-888d-87365ea27c4e"],

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
 CellID->45752008,ExpressionUUID->"04cfaa97-735c-4b2c-a1b4-a4c10e802216"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael+L.+\
Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael+L.+Baumann"]
}], "Author",
 CellID->272342783,ExpressionUUID->"71612174-4dbd-4b32-b918-619485bd2439"]
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
  Cell[232758, 4884, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"6b52e507-817c-4678-b94f-a8bdd9bab619",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[233189, 4896, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"1e4440e6-1f83-41f3-b9ca-79becc201985",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[233992, 4917, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"7e102a62-d4cd-4332-8b33-2958e914f2ed",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[234452, 4932, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"1bdf2dfc-8d3e-4fde-86b2-5223eea68768",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[235216, 4953, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"5b206a76-f06a-4ae2-ad5e-581338cc1b84",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[236179, 4978, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"5afdeab7-f9d9-4d30-a63f-8f2c2f8ab944",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[236607, 4991, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"77d788c3-7d25-4abd-aa25-11e5a3ad7fd8",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[238195, 5027, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"d11b1a4d-a797-4a0b-809b-101a335733aa",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 241418, 5122},
 {"RotateAndZoomIn3D", 241584, 5125},
 {"DragLocators", 241750, 5128},
 {"CreateAndDeleteLocators", 241922, 5131},
 {"SliderZoom", 242092, 5134},
 {"GamepadControls", 242254, 5137},
 {"AutomaticAnimation", 242424, 5140},
 {"BookmarkAnimation", 242597, 5143}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 146, 2, 74, "DemoTitle",ExpressionUUID->"275a3698-3f5b-4fdb-a70e-107890fce465"],
Cell[1659, 39, 88, 0, 275, "InitializationSection",ExpressionUUID->"8e6c3c7c-cec5-4fea-891a-197f17e6f4ff"],
Cell[CellGroupData[{
Cell[1772, 43, 84, 0, 189, "ManipulateSection",ExpressionUUID->"d4e3a640-5ae8-44df-8f6b-108ee739d918"],
Cell[CellGroupData[{
Cell[1881, 47, 73933, 1533, 5301, "Input",ExpressionUUID->"b4c12541-7869-4322-b444-5731d52988da"],
Cell[75817, 1582, 29883, 617, 498, "Output",ExpressionUUID->"8376a5d9-c218-4741-acd8-0e180569527a",
 CellID->482641568]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[105746, 2205, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"68aa383b-f467-49a8-ae1f-f6e077076f78"],
Cell[105840, 2207, 2295, 48, 131, "ManipulateCaption",ExpressionUUID->"06c6542b-d0b6-4674-887a-b5dc85c40f55"]
}, Open  ]],
Cell[CellGroupData[{
Cell[108172, 2260, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"aa47813c-c31d-45c0-959e-3acf0452e560"],
Cell[108258, 2262, 29882, 617, 498, "Output",ExpressionUUID->"439950cd-a782-4cbf-a2ee-a2262895b808",
 CellID->35961750]
}, Open  ]],
Cell[CellGroupData[{
Cell[138177, 2884, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"bfe84e51-0b0a-4c43-9f2a-f27ec3409160"],
Cell[138263, 2886, 29940, 617, 498, "Output",ExpressionUUID->"9b5809bf-5435-4d6c-8c57-d9fae09d05cf",
 CellID->429189346],
Cell[168206, 3505, 29879, 617, 498, "Output",ExpressionUUID->"681ff6f9-4b79-437b-880c-c60af08c2279",
 CellID->343266096],
Cell[198088, 4124, 29883, 617, 498, "Output",ExpressionUUID->"191c38af-dfc0-4ef3-95d8-6dfbd0ab4388",
 CellID->928507862]
}, Open  ]],
Cell[CellGroupData[{
Cell[228008, 4746, 81, 0, 339, "DetailsSection",ExpressionUUID->"555bee56-4e01-4a29-96de-6bb9d6d5b8c6"],
Cell[228092, 4748, 2362, 69, 98, "DetailNotes",ExpressionUUID->"5e7832a8-7c83-42ca-843a-ac2f8d9bd661",
 CellID->1598860283],
Cell[230457, 4819, 964, 25, 39, "DetailNotes",ExpressionUUID->"def58413-3e03-4186-b008-fc49ad7e790c",
 CellID->626893536],
Cell[231424, 4846, 704, 17, 38, "DetailNotes",ExpressionUUID->"08e9d06d-75d5-48bb-86e6-28320c0482c5",
 CellID->644887370],
Cell[232131, 4865, 495, 12, 23, "DetailNotes",ExpressionUUID->"71c9f524-0eec-4a3f-83cd-c86409e773e6",
 CellID->272061181]
}, Open  ]],
Cell[CellGroupData[{
Cell[232663, 4882, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"3e680c5d-88cc-4baa-a79c-3a3412b70bcb"],
Cell[232758, 4884, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"6b52e507-817c-4678-b94f-a8bdd9bab619",
 CellTags->"ResizeImages"],
Cell[233189, 4896, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"1e4440e6-1f83-41f3-b9ca-79becc201985",
 CellTags->"RotateAndZoomIn3D"],
Cell[233992, 4917, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"7e102a62-d4cd-4332-8b33-2958e914f2ed",
 CellTags->"DragLocators"],
Cell[234452, 4932, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"1bdf2dfc-8d3e-4fde-86b2-5223eea68768",
 CellTags->"CreateAndDeleteLocators"],
Cell[235216, 4953, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"5b206a76-f06a-4ae2-ad5e-581338cc1b84",
 CellTags->"SliderZoom"],
Cell[236179, 4978, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"5afdeab7-f9d9-4d30-a63f-8f2c2f8ab944",
 CellTags->"GamepadControls"],
Cell[236607, 4991, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"77d788c3-7d25-4abd-aa25-11e5a3ad7fd8",
 CellTags->"AutomaticAnimation"],
Cell[238195, 5027, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"d11b1a4d-a797-4a0b-809b-101a335733aa",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[239262, 5056, 85, 0, 158, "SearchTermsSection",ExpressionUUID->"226eb1ce-996b-4567-b691-eb5fc9daf0c0"],
Cell[239350, 5058, 112, 1, 22, "SearchTerms",ExpressionUUID->"3dda4c7a-aa89-43b3-adfb-4dd3477767f5",
 CellID->1032209043],
Cell[239465, 5061, 108, 1, 22, "SearchTerms",ExpressionUUID->"6bfe778a-8a73-40b6-b3bb-307096069b7b",
 CellID->964485235],
Cell[239576, 5064, 124, 1, 22, "SearchTerms",ExpressionUUID->"57d0cbd9-9d11-4486-83fb-1c7fe4e4fc03",
 CellID->896777089],
Cell[239703, 5067, 112, 1, 22, "SearchTerms",ExpressionUUID->"093ab350-58a3-4255-a388-bea2f35beaa1",
 CellID->284577676],
Cell[239818, 5070, 115, 1, 22, "SearchTerms",ExpressionUUID->"d673119e-8f87-48fd-bdf9-32bf6a18dc6e",
 CellID->161073365]
}, Open  ]],
Cell[239948, 5074, 86, 0, 143, "RelatedLinksSection",ExpressionUUID->"8afa6f4c-2705-4f70-8589-e3ca9ff27f9b"],
Cell[CellGroupData[{
Cell[240059, 5078, 80, 0, 129, "AuthorSection",ExpressionUUID->"bd91fe3e-663d-4567-888d-87365ea27c4e"],
Cell[240142, 5080, 370, 10, 22, "Author",ExpressionUUID->"04cfaa97-735c-4b2c-a1b4-a4c10e802216",
 CellID->45752008],
Cell[240515, 5092, 399, 10, 22, "Author",ExpressionUUID->"71612174-4dbd-4b32-b918-619485bd2439",
 CellID->272342783]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature WupEFB3HBPWsYCgebY5BLQ7S *)
