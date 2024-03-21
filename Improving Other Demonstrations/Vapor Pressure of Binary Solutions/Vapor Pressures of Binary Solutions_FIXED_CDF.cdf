(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

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
NotebookDataLength[     65020,       1734]
NotebookOptionsPosition[     58129,       1545]
NotebookOutlinePosition[     60356,       1615]
CellTagsIndexPosition[     60028,       1603]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Vapor Pressures of Binary Solutions", "DemoTitle",ExpressionUUID->"51578434-6ace-48a6-b6c4-824b090835b5"],

Cell["", "InitializationSection",ExpressionUUID->"d3f3caeb-7b66-4a5a-af73-5e06d518c1a0"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"ad591eee-9d3f-44f4-8c0a-9e19fe691761"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "pa", ",", "pb", ",", "pa1", ",", "pb1", ",", "Ka", ",", "Kb", ",", 
       "g1", ",", "g2", ",", "g3", ",", "g4"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"pa", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{"pa0", "*", 
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}]}], "-", 
        RowBox[{"pa0", "*", "\[Gamma]", "*", 
         SuperscriptBox["x", "3"], "*", 
         RowBox[{"Log", "[", "x", "]"}]}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"pb", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{"pb0", "*", "x"}], "-", 
        RowBox[{"pb0", "*", "\[Gamma]", "*", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"1", "-", "x"}], ")"}], "3"], "*", 
         RowBox[{"Log", "[", 
          RowBox[{"1", "-", "x"}], "]"}]}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"pa1", "[", "x_", "]"}], ":=", 
       RowBox[{"pa0", "*", 
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}]}]}], ";", 
      RowBox[{
       RowBox[{"pb1", "[", "x_", "]"}], ":=", 
       RowBox[{"pb0", "*", "x"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Ka", "[", "x_", "]"}], ":=", 
       RowBox[{"pa0", 
        RowBox[{"(", 
         RowBox[{"\[Gamma]", "+", "1"}], ")"}], "*", 
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}]}]}], ";", 
      RowBox[{
       RowBox[{"Kb", "[", "x_", "]"}], ":=", 
       RowBox[{"pb0", "*", 
        RowBox[{"(", 
         RowBox[{"\[Gamma]", "+", "1"}], ")"}], "*", "x"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"g1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pa1", "[", "x", "]"}], ",", 
           RowBox[{"pb1", "[", "x", "]"}], ",", 
           RowBox[{
            RowBox[{"pa1", "[", "x", "]"}], "+", 
            RowBox[{"pb1", "[", "x", "]"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Dashed", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Dashed", ",", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Dashed", ",", " ", "Black"}], "}"}]}], 
           "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"g2", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pa", "[", "x", "]"}], ",", 
           RowBox[{"pb", "[", "x", "]"}], ",", 
           RowBox[{
            RowBox[{"pa", "[", "x", "]"}], "+", 
            RowBox[{"pb", "[", "x", "]"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Black"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"g3", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"Ka", "[", "x", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0.7", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "@", "0.0075"}], ",", "Dotted", ",", 
            RowBox[{"Opacity", "[", 
             RowBox[{"h", ",", "Purple"}], "]"}]}], "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"g4", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"Kb", "[", "x", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "0.3"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "@", "0.0075"}], ",", "Dotted", ",", 
            RowBox[{"Opacity", "[", 
             RowBox[{"h", ",", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"1", ",", "0.35", ",", "0"}], "]"}]}], "]"}]}], 
           "}"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"g1", ",", "g2", ",", "g3", ",", "g4", ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
        RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{"\"\<mole fraction \>\"", ",", 
              RowBox[{"Subscript", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                "\"\<B\>\""}], "]"}]}], "}"}]}], ",", 
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{"\"\<vapor pressure \>\"", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\< (torr)\>\""}], "}"}]}]}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "425"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"55", ",", "10"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"50", ",", "10"}], "}"}]}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Subsuperscript", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
                 "\"\<A\>\"", ",", "\"\<o\>\""}], "]"}], ",", "18", ",", 
               "Purple"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"0.9", "*", "pa0"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.5"}], ",", "0"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Subsuperscript", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
                 "\"\<B\>\"", ",", "\"\<o\>\""}], "]"}], ",", "18", ",", 
               RowBox[{"RGBColor", "[", 
                RowBox[{"1", ",", "0.35", ",", "0"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", 
               RowBox[{"0.9", "*", "pb0"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1.5", ",", "0"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"PointSize", "@", "0.015"}], ",", "Purple", ",", 
             RowBox[{"Point", "@", 
              RowBox[{"{", 
               RowBox[{"0", ",", "pa0"}], "}"}]}], ",", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"1", ",", "0.35", ",", "0"}], "]"}], ",", 
             RowBox[{"Point", "@", 
              RowBox[{"{", 
               RowBox[{"1", ",", "pb0"}], "}"}]}]}], "}"}], ",", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Mouseover", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", ",", 
                 RowBox[{"Line", "@", 
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"#1", "[", "x", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0", ",", "1", ",", "0.1"}], "}"}]}], 
                   "]"}]}]}], "}"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Framed", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<ideal\>\"", ",", "18", ",", "#2"}], "]"}], 
                   ",", 
                   RowBox[{"Background", "\[Rule]", "White"}], ",", 
                   RowBox[{"FrameStyle", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"Dashed", ",", "#2"}], "}"}]}]}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", 
                   RowBox[{"#1", "[", "0.5", "]"}]}], "}"}]}], "]"}]}], "]"}],
              "&"}], "@@@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"pa1", ",", "Blue"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"pb1", ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
             "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"Mouseover", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", ",", 
               RowBox[{"Line", "@", 
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"x", ",", 
                    RowBox[{
                    RowBox[{"pa1", "[", "x", "]"}], "+", 
                    RowBox[{"pb1", "[", "x", "]"}]}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"x", ",", "0", ",", "1", ",", "0.1"}], "}"}]}], 
                 "]"}]}]}], "}"}], ",", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Framed", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<ideal\>\"", ",", "18"}], "]"}], ",", 
                 RowBox[{"Background", "\[Rule]", "White"}], ",", 
                 RowBox[{"FrameStyle", "\[Rule]", "Dashed"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", 
                 RowBox[{
                  RowBox[{"pa1", "[", "0.5", "]"}], "+", 
                  RowBox[{"pb1", "[", "0.5", "]"}]}]}], "}"}]}], "]"}]}], 
            "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Mouseover", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", ",", 
                 RowBox[{"Line", "@", 
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"#1", "[", "x", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0.01", ",", "0.99", ",", "0.1"}], 
                    "}"}]}], "]"}]}]}], "}"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Framed", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<real\>\"", ",", "18", ",", "#2"}], "]"}], 
                   ",", 
                   RowBox[{"Background", "\[Rule]", "White"}], ",", 
                   RowBox[{"FrameStyle", "\[Rule]", "#2"}]}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", 
                   RowBox[{"#1", "[", "0.5", "]"}]}], "}"}]}], "]"}]}], "]"}],
              "&"}], "@@@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"pa", ",", "Blue"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"pb", ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
             "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"Mouseover", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", ",", 
               RowBox[{"Line", "@", 
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"x", ",", 
                    RowBox[{
                    RowBox[{"pa", "[", "x", "]"}], "+", 
                    RowBox[{"pb", "[", "x", "]"}]}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"x", ",", "0.01", ",", "0.99", ",", "0.1"}], 
                   "}"}]}], "]"}]}]}], "}"}], ",", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Framed", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<real\>\"", ",", "18"}], "]"}], ",", 
                 RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", 
                 RowBox[{
                  RowBox[{"pa", "[", "0.5", "]"}], "+", 
                  RowBox[{"pb", "[", "0.5", "]"}]}]}], "}"}]}], "]"}]}], 
            "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"h", "\[Equal]", "1"}], ",", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Mouseover", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", 
                   ",", 
                   RowBox[{"Line", "@", 
                    RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"Ka", "[", "x", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0.7", ",", "1", ",", "0.1"}], "}"}]}], 
                    "]"}]}]}], "}"}], ",", 
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<Henry's law\>\"", ",", "18", ",", "Purple"}],
                     "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", "Purple"}], "}"}]}]}], "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0.7", ",", 
                    RowBox[{"Ka", "[", "0.7", "]"}]}], "}"}]}], "]"}]}], 
                "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Mouseover", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Thickness", "@", "0.015"}], ",", "Transparent", 
                   ",", 
                   RowBox[{"Line", "@", 
                    RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"Kb", "[", "x", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0", ",", "0.3", ",", "0.1"}], "}"}]}], 
                    "]"}]}]}], "}"}], ",", 
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<Henry's law\>\"", ",", "18", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0.35", ",", "0"}], "]"}]}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"Dotted", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0.35", ",", "0"}], "]"}]}], "}"}]}]}], 
                    "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0.3", ",", 
                    RowBox[{"Kb", "[", "0.3", "]"}]}], "}"}]}], "]"}]}], 
                "]"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}]}], 
       "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<vapor pressure (torr)\>\"", ",", "Bold"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"pa0", ",", "250", ",", 
              RowBox[{"Subsuperscript", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
                "\"\<A\>\"", ",", "\"\<o\>\""}], "]"}]}], "}"}], ",", "50", 
            ",", "600", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"pb0", ",", "150", ",", 
              RowBox[{"Subsuperscript", "[", " ", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
                "\"\<B\>\"", ",", "\"\<o\>\""}], "]"}]}], "}"}], ",", "50", 
            ",", "600", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "SpanFromLeft"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\[Gamma]", ",", "0", ",", "\"\<deviation from ideality\>\""}], 
             "}"}], ",", 
            RowBox[{"-", "1"}], ",", "3.5", ",", "0.1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft", ",", 
         RowBox[{"Spacer", "@", "20"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"h", ",", "0", ",", "\"\<show Henry's law\>\""}], "}"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", "Checkbox"}], "}"}], 
          "]"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellID->698515085,ExpressionUUID->"36dc6725-d8a4-4852-a12c-2c06ad731ef7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 0, $CellContext`pa0$$ = 
    250, $CellContext`pb0$$ = 150, $CellContext`\[Gamma]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pa0$$], 250, 
       Subsuperscript[
        Style["P", Italic], "A", "o"]}, 50, 600}, {{
       Hold[$CellContext`pb0$$], 150, 
       Subsuperscript[
        Style["P", Italic], "B", "o"]}, 50, 600}, {{
       Hold[$CellContext`\[Gamma]$$], 0, "deviation from ideality"}, -1, 3.5, 
      0.1}, {{
       Hold[$CellContext`h$$], 0, "show Henry's law"}, {0, 1}}, {
      Hold[
       Grid[{{
          Style["vapor pressure (torr)", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], SpanFromLeft}, {
          Manipulate`Place[3], SpanFromLeft, 
          Spacer[20], 
          Manipulate`Place[4]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {209., 216.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`pa0$50414$$ = 
    0, $CellContext`pb0$50415$$ = 0, $CellContext`\[Gamma]$50416$$ = 
    0, $CellContext`h$50417$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 0, $CellContext`pa0$$ = 
        250, $CellContext`pb0$$ = 150, $CellContext`\[Gamma]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pa0$$, $CellContext`pa0$50414$$, 0], 
        Hold[$CellContext`pb0$$, $CellContext`pb0$50415$$, 0], 
        Hold[$CellContext`\[Gamma]$$, $CellContext`\[Gamma]$50416$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$50417$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`pa$, $CellContext`pb$, $CellContext`pa1$, \
$CellContext`pb1$, $CellContext`Ka$, $CellContext`Kb$, $CellContext`g1$, \
$CellContext`g2$, $CellContext`g3$, $CellContext`g4$}, $CellContext`pa$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`pa0$$ (
            1 - $CellContext`x$) - $CellContext`pa0$$ $CellContext`\[Gamma]$$ \
$CellContext`x$^3 Log[$CellContext`x$]; $CellContext`pb$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`pb0$$ $CellContext`x$ - \
$CellContext`pb0$$ $CellContext`\[Gamma]$$ (1 - $CellContext`x$)^3 
          Log[1 - $CellContext`x$]; $CellContext`pa1$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`pa0$$ (
           1 - $CellContext`x$); $CellContext`pb1$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`pb0$$ $CellContext`x$; $CellContext`Ka$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`pa0$$ ($CellContext`\[Gamma]$$ + 1) (
           1 - $CellContext`x$); $CellContext`Kb$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`pb0$$ ($CellContext`\[Gamma]$$ + 
           1) $CellContext`x$; $CellContext`g1$ = Plot[{
            $CellContext`pa1$[$CellContext`x], 
            $CellContext`pb1$[$CellContext`x], \
$CellContext`pa1$[$CellContext`x] + $CellContext`pb1$[$CellContext`x]}, \
{$CellContext`x, 0, 1}, PlotStyle -> {{Thick, Dashed, Blue}, {Thick, Dashed, 
              RGBColor[0, 0.6, 0]}, {Thick, Dashed, Black}}, Frame -> 
           True]; $CellContext`g2$ = Plot[{
            $CellContext`pa$[$CellContext`x], 
            $CellContext`pb$[$CellContext`x], \
$CellContext`pa$[$CellContext`x] + $CellContext`pb$[$CellContext`x]}, \
{$CellContext`x, 0, 1}, PlotStyle -> {{Thick, Blue}, {Thick, 
              RGBColor[0, 0.6, 0]}, {Thick, Black}}, Frame -> 
           True]; $CellContext`g3$ = Plot[
           $CellContext`Ka$[$CellContext`x], {$CellContext`x, 0.7, 1}, 
           PlotStyle -> {
             Thickness[0.0075], Dotted, 
             Opacity[$CellContext`h$$, Purple]}]; $CellContext`g4$ = Plot[
           $CellContext`Kb$[$CellContext`x], {$CellContext`x, 0, 0.3}, 
           PlotStyle -> {
             Thickness[0.0075], Dotted, 
             Opacity[$CellContext`h$$, 
              RGBColor[1, 0.35, 0]]}]; 
        Show[$CellContext`g1$, $CellContext`g2$, $CellContext`g3$, \
$CellContext`g4$, PlotRange -> All, PlotRangePadding -> None, 
          PlotRangeClipping -> False, FrameLabel -> {
            Row[{"mole fraction ", 
              Subscript[
               Style["x", Italic], "B"]}], 
            Row[{"vapor pressure ", 
              Style["P", Italic], " (torr)"}]}, LabelStyle -> {17, Black}, 
          ImageSize -> {600, 425}, AspectRatio -> Full, 
          ImagePadding -> {{55, 10}, {50, 10}}, Epilog -> {
            Text[
             Style[
              Subsuperscript[
               Style["P", Italic], "A", "o"], 18, Purple], {
             0, 0.9 $CellContext`pa0$$}, {-1.5, 0}], 
            Text[
             Style[
              Subsuperscript[
               Style["P", Italic], "B", "o"], 18, 
              RGBColor[1, 0.35, 0]], {1, 0.9 $CellContext`pb0$$}, {1.5, 0}], {
             PointSize[0.015], Purple, 
             Point[{0, $CellContext`pa0$$}], 
             RGBColor[1, 0.35, 0], 
             Point[{1, $CellContext`pb0$$}]}, 
            Apply[Mouseover[{
               Thickness[0.015], Transparent, 
               Line[
                Table[{$CellContext`x, 
                  #[$CellContext`x]}, {$CellContext`x, 0, 1, 0.1}]]}, 
              Text[
               Framed[
                Style["ideal", 18, #2], Background -> White, 
                FrameStyle -> {Dashed, #2}], {0.5, 
                #[0.5]}]]& , {{$CellContext`pa1$, Blue}, {$CellContext`pb1$, 
               RGBColor[0, 0.6, 0]}}, {1}], 
            Mouseover[{
              Thickness[0.015], Transparent, 
              Line[
               
               Table[{$CellContext`x, $CellContext`pa1$[$CellContext`x] + \
$CellContext`pb1$[$CellContext`x]}, {$CellContext`x, 0, 1, 0.1}]]}, 
             Text[
              Framed[
               Style["ideal", 18], Background -> White, FrameStyle -> 
               Dashed], {
              0.5, $CellContext`pa1$[0.5] + $CellContext`pb1$[0.5]}]], 
            Apply[Mouseover[{
               Thickness[0.015], Transparent, 
               Line[
                Table[{$CellContext`x, 
                  #[$CellContext`x]}, {$CellContext`x, 0.01, 0.99, 0.1}]]}, 
              Text[
               Framed[
                Style["real", 18, #2], Background -> White, 
                FrameStyle -> #2], {0.5, 
                #[0.5]}]]& , {{$CellContext`pa$, Blue}, {$CellContext`pb$, 
               RGBColor[0, 0.6, 0]}}, {1}], 
            Mouseover[{
              Thickness[0.015], Transparent, 
              Line[
               
               Table[{$CellContext`x, $CellContext`pa$[$CellContext`x] + \
$CellContext`pb$[$CellContext`x]}, {$CellContext`x, 0.01, 0.99, 0.1}]]}, 
             Text[
              Framed[
               Style["real", 18], Background -> White], {
              0.5, $CellContext`pa$[0.5] + $CellContext`pb$[0.5]}]], 
            If[$CellContext`h$$ == 1, {
              Mouseover[{
                Thickness[0.015], Transparent, 
                Line[
                 Table[{$CellContext`x, 
                   $CellContext`Ka$[$CellContext`x]}, {$CellContext`x, 0.7, 1,
                    0.1}]]}, 
               Text[
                Framed[
                 Style["Henry's law", 18, Purple], Background -> White, 
                 FrameStyle -> {Dotted, Purple}], {0.7, 
                 $CellContext`Ka$[0.7]}]], 
              Mouseover[{
                Thickness[0.015], Transparent, 
                Line[
                 Table[{$CellContext`x, 
                   $CellContext`Kb$[$CellContext`x]}, {$CellContext`x, 0, 0.3,
                    0.1}]]}, 
               Text[
                Framed[
                 Style["Henry's law", 18, 
                  RGBColor[1, 0.35, 0]], Background -> White, 
                 FrameStyle -> {Dotted, 
                   RGBColor[1, 0.35, 0]}], {0.3, 
                 $CellContext`Kb$[0.3]}]]}]}]], 
      "Specifications" :> {{{$CellContext`pa0$$, 250, 
          Subsuperscript[
           Style["P", Italic], "A", "o"]}, 50, 600, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`pb0$$, 150, 
          Subsuperscript[
           Style["P", Italic], "B", "o"]}, 50, 600, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         2}, {{$CellContext`\[Gamma]$$, 0, "deviation from ideality"}, -1, 
         3.5, 0.1, Appearance -> "Labeled", ControlPlacement -> 
         3}, {{$CellContext`h$$, 0, "show Henry's law"}, {0, 1}, ControlType -> 
         Checkbox, ControlPlacement -> 4}, 
        Grid[{{
           Style["vapor pressure (torr)", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], SpanFromLeft}, {
           Manipulate`Place[3], SpanFromLeft, 
           Spacer[20], 
           Manipulate`Place[4]}}, Alignment -> Left]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {266., 273.}},
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
 CellID->43487259,ExpressionUUID->"9b702137-5c9f-4074-931d-7edc3751cf8a"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"a3a064f6-c009-4bdd-a60d-401a97986ab8"],

Cell[TextData[{
 "An ideal solution of two liquids ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "20e5d880-a882-4639-ac1b-1cb0fe253398"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b64c9d54-8dcb-49ce-b738-8d8dee233c4d"],
 " obeys Raoult's law, which states that the partial vapor pressure of each \
component is proportional to its mole fraction: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["A",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"8c537e37-83e6-4edc-89d4-14f9d4a7c26b"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["B",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"0d9a8288-f270-47f9-9080-3fc6c1312f6d"],
 ", where ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", 
    StyleBox["A",
     FontSlant->"Plain"], "o"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3cd850be-b234-458c-b743-6c96d4faba1d"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", 
    StyleBox["B",
     FontSlant->"Plain"], "o"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"6b85b810-5a98-4cf9-9de7-7b61fc99d1d2"],
 " are the vapor pressures of the pure components at a given temperature \
(very often 25 \[Degree]C). The total vapor pressure above the solution is \
then given by ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["P", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["P", 
       StyleBox["B",
        FontSlant->"Plain"]]}], "=", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["P", 
        StyleBox["A",
         FontSlant->"Plain"], "o"], "(", 
       RowBox[{"1", "-", 
        SubscriptBox["x", 
         StyleBox["B",
          FontSlant->"Plain"]]}], ")"}], "+", 
      RowBox[{
       SubsuperscriptBox["P", 
        StyleBox["B",
         FontSlant->"Plain"], "o"], 
       SubscriptBox["x", 
        StyleBox["B",
         FontSlant->"Plain"]]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"49e13fbd-5645-405c-802d-90e52ee8ce3e"],
 ", assuming Dalton's law. Ideal solutions are fairly uncommon but serve as a \
convenient reference system to describe non-ideal solutions. Pairs of liquids \
that are well approximated by Raoult's law usually contain molecules of \
similar size, shape, and chemical structure. Some well-known examples are \
benzene and toluene, chlorobenzene and bromobenzene, and carbon tetrachloride \
and silicon tetrachloride. "
}], "ManipulateCaption",
 CellID->957328473,ExpressionUUID->"04430b78-c9ac-4e66-94d6-1c10ac9980aa"],

Cell[TextData[{
 "Most real solutions exhibit deviations from Raoult's law. A positive \
deviation is characterized by ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["A",
      FontSlant->"Plain"]], ">", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["A",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"bbff679f-7553-46e9-bf28-f11e41bf12b2"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], ">", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["B",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"330c9551-56e1-4f10-bf97-69e43352c810"],
 " and indicates that the attractive interactions between like molecules is \
greater than that between ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "6b2fc5ab-5782-4058-a893-4a27e4b15809"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "f2757967-b7b1-40c3-95eb-37c9ae8cff6c"],
 " molecules. A negative deviation has ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["A",
      FontSlant->"Plain"]], "<", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["A",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f29ba174-8c47-4025-b9ef-ed3bae18cee7"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], "<", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["B",
       FontSlant->"Plain"], "o"], 
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3dad2cc2-5c72-4806-9564-9dc0689abaad"],
 ", implying stronger mutual interactions between unlike molecules. The \
curves shown in the graphic are qualitative approximations to the actual \
dependence of vapor pressures on composition. The blue and green curves \
represent the partial pressures of ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "1a2f8654-318d-4bec-8564-f33ac73e74c9"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "68eb2990-5e24-430f-a50b-46cc4f7fe8a4"],
 ", respectively, while the black curve shows the total vapor pressure. The \
dashed lines refer to the hypothetical ideal behavior of the corresponding \
vapor pressures."
}], "ManipulateCaption",
 CellID->1717639668,ExpressionUUID->"39742182-3751-49cf-817f-159c7410272b"],

Cell[TextData[{
 "Even for non-ideal solutions, Raoult's law is asymptotically approached for \
",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "da922751-9a49-4768-9b03-09d8660ba543"],
 " or ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"]], "\[TildeTilde]", "1"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"83bd6c01-beaf-4c5e-a6c8-5a5a698435a1"],
 ". Dilute solutions, on the other hand, are approximated by Henry's law: the \
linear relations ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     RowBox[{
      StyleBox["A",
       FontSlant->"Plain"], " "}]], "\[TildeTilde]", 
    RowBox[{
     SubscriptBox["K", 
      StyleBox["A",
       FontSlant->"Plain"]], 
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"31150dc1-7a7e-4ca8-add3-440e8fa5cf0e"],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["A",
      FontSlant->"Plain"]], "\[TildeTilde]", "0"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"302fa71f-e7fc-4230-bc72-8b3dd7859f21"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], "\[TildeTilde]", 
    RowBox[{
     SubscriptBox["K", 
      StyleBox["B",
       FontSlant->"Plain"]], 
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"966a5f4f-06a5-4331-b64c-1ef682ef0ca1"],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"]], "\[TildeTilde]", "0"}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"834b00e2-20c0-4890-9136-0cba7700e946"],
 ". Check \"show Henry's law\" to show this behavior, dotted purple and \
orange lines represent Henry's law."
}], "ManipulateCaption",
 CellID->1894717102,ExpressionUUID->"140a822d-5820-4dbb-af1a-8fe2edad742c"],

Cell["\<\
Set the vapor pressures of the liquids and the deviation from ideality with \
sliders. Move the mouse over a curve to see its label (real or ideal).\
\>", "ManipulateCaption",
 CellID->503169113,ExpressionUUID->"dbf06da3-49de-463e-b456-7742bcdc0b99"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"8864c77c-9899-4ef0-a6fb-4ed15500f57d"],

Cell[BoxData[
 GraphicsBox[{
   {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
    InsetBox[
     StyleBox["\<\"Thumbnail Placeholder\"\>",
      StripOnInput->False,
      FontFamily->"Verdana",
      FontSize->14], {0.5, 0.6}], InsetBox[
     StyleBox["\<\"Replace this with your\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
     StyleBox["\<\"Manipulate at a particular setting.\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
     StyleBox["\<\"(Do not use a bitmap.)\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"eda790af-cd13-49a7-87d7-401fb9c3094d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"d2836270-d47d-453e-a3d1-42c63d165a40"],

Cell[BoxData[
 GraphicsBox[{
   {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
    InsetBox[
     StyleBox["\<\"Snapshot Placeholder\"\>",
      StripOnInput->False,
      FontFamily->"Verdana",
      FontSize->14], {0.5, 0.6}], InsetBox[
     StyleBox["\<\"Replace this with your\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
     StyleBox["\<\"Manipulate at a particular setting.\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
     StyleBox["\<\"(Do not use a bitmap.)\"\>",
      StripOnInput->False,
      FrontFaceColor->GrayLevel[0.5],
      GraphicsColor->GrayLevel[0.5],
      FontFamily->"Verdana",
      FontSize->10,
      FontColor->GrayLevel[0.5],
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"2eecea0c-44cf-4e96-b766-22e5132831e8"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"b262a856-370e-4839-b7d5-b9a11afec786"],

Cell[TextData[{
 "Liquids ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "bd1e8c98-95bb-407a-b2aa-6e577ad68cb1"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "fb981a7f-6030-425d-a168-4de5ee32387c"],
 " behave ideally and obey Raoult's law of partial pressures:"
}], "DetailNotes",
 CellID->276868107,ExpressionUUID->"9496209f-075e-42e0-91e2-629a9bcb370c"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     SubscriptBox["P", 
      StyleBox["A",
       FontSlant->"Plain"]], "+", 
     SubscriptBox["P", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  InitializationCell->True,
  FormatType->"TraditionalForm",ExpressionUUID->
  "63fca9c6-427b-4955-acf0-3f3328250447"],
 ","
}], "DetailNotes",
 CellID->10950857,ExpressionUUID->"f2e6a5b1-8ee6-487a-a1d4-8d0e25ff3b0b"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]], " ", 
     SubsuperscriptBox["P", 
      StyleBox["A",
       FontSlant->"Plain"], "o"]}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "ddc9c5c9-fbf6-4372-85fc-3018af9da926"],
 ","
}], "DetailNotes",
 CellID->483288883,ExpressionUUID->"166fe1b6-eff4-4eff-9db6-e73f5a1c04f1"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]], " ", 
     SubsuperscriptBox["P", 
      StyleBox["B",
       FontSlant->"Plain"], "o"]}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "9b81f7de-286f-47a5-b912-0ed3c03a6d9b"],
 ","
}], "DetailNotes",
 CellID->19027125,ExpressionUUID->"bfef2cfe-3317-4662-80a3-d16497dbb571"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["x", 
       StyleBox["A",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["P", 
       StyleBox["A",
        FontSlant->"Plain"], "o"]}], "+", 
     RowBox[{
      SubscriptBox["x", 
       StyleBox["B",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["P", 
       StyleBox["B",
        FontSlant->"Plain"], "o"]}]}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "c6bccd4f-2955-4a06-acec-88ebb39caaa0"],
 " is the total pressure, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "i"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "4e62f120-38fd-4715-95ee-fb1e142fffb2"],
 " is the partial pressure of component ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", 
    RowBox[{"(", 
     RowBox[{
      StyleBox["A",
       FontSlant->"Plain"], ",", 
      StyleBox["B",
       FontSlant->"Plain"]}], ")"}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "8b32adf6-2a3c-4f68-8c7c-0aae74eb3a49"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "i", "o"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "61e2e17f-6f59-48e3-b0e6-4e4e4e72633e"],
 " is the vapor pressure of the pure component at 25\[Degree]C, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "i"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "cf195e96-af4b-4fe1-93af-bad2b4c9bb06"],
 " is the mole fraction of the pure component, and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]], "+", 
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]]}], "=", "1"}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "9b7f67a2-61e8-4070-96b4-d17d0667b5f8"],
 "."
}], "DetailNotes",
 CellID->330069363,ExpressionUUID->"2f1b8572-0135-4ea0-8c97-5eec3c39ea41"],

Cell["Henry's law gives the partial pressures:", "DetailNotes",
 CellID->29170894,ExpressionUUID->"a29b4f69-da9c-4d20-ae50-bbf1a89fab0c"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["x", 
      StyleBox["A",
       FontSlant->"Plain"]], " ", 
     SubscriptBox["K", 
      StyleBox["A",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "42adecf9-8231-4c06-81b7-b6b124721cc3"],
 ","
}], "DetailNotes",
 CellID->743896368,ExpressionUUID->"239bf100-3ccd-4c91-bc45-bb7aba3988ee"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["x", 
      StyleBox["B",
       FontSlant->"Plain"]], " ", 
     SubscriptBox["K", 
      StyleBox["B",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "d2fd1cef-6f04-4e55-a8c5-5293cf93ea89"],
 ","
}], "DetailNotes",
 CellID->377188642,ExpressionUUID->"ba952612-8fe7-47db-ad06-32943ee6892b"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["K", "i"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "6850d6dd-50d8-4a95-ae5f-66caaa7f18f2"],
 " is the Henry's law constant for component ",
 Cell[BoxData[
  FormBox["i", TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm",ExpressionUUID->
  "4b668307-1f3e-4825-8176-23756f09f47e"],
 "."
}], "DetailNotes",
 CellID->748190115,ExpressionUUID->"89d91909-b3da-4794-becd-16eeee5210cb"],

Cell["Reference:", "DetailNotes",
 CellID->131696708,ExpressionUUID->"4d9eadd7-5ee8-4e10-8ff9-e577dce3310c"],

Cell[TextData[{
 "[1] P. Atkins and J. de Paula, ",
 StyleBox["Physical Chemistry",
  FontSlant->"Italic"],
 " 7th ed., New York: W. H. Freeman and Co., 2002, pp. 168\[Dash]172."
}], "DetailNotes",
 CellID->736906684,ExpressionUUID->"5e23e2b3-9d4a-4925-b238-ed9a5391dd72"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"70484e99-7939-4275-8a19-5fa377545634"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"b33e6271-9f9b-4ac7-a0b7-35f19704073a"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"aa5f0a1b-17cd-44fa-a284-159457d3385e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "e14c2682-4b3a-4412-8500-bbbfe932791f"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"91e06cf0-01ae-40d7-a1f3-a432bd6e4c0a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"79e466a2-f3d6-427b-9d8b-b24a2bbce714"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"9f5d9a5b-8e69-4f59-a2d7-735658b0a079"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "f73c6a2d-4d64-49c5-9e48-5afd85552e8b"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"56c70cac-d30a-4b6b-87c3-\
5aec292aa709"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Slider Zoom",ExpressionUUID->"19a195d6-b7a3-419a-aaf8-0d242b1b70d3"]}],
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
  "SliderZoom",ExpressionUUID->"03a767c1-4d7b-4102-b831-1fd377f0163e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "d765334f-b857-4a7e-a32d-59a9e04c9a1d"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"0f3ee5ad-abdb-4ed5-bcf8-d9bb75417cc4"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "c81a83d2-02f3-4f4a-b581-6b737cb7fcf7"]}],
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
  "AutomaticAnimation",ExpressionUUID->"2abb07eb-bd68-48f5-94d3-57f8cd704ce7"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "38a52821-64c5-4819-b18e-2b0c7edb71ea"]}],
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
  "BookmarkAnimation",ExpressionUUID->"7161826a-6efe-46be-b7d1-04d10bf491f9"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"3c408a60-7ea0-442d-8906-5aa0edf82532"],

Cell["chemistry", "SearchTerms",
 CellID->1622815598,ExpressionUUID->"8db8a19c-5ae4-40c1-ac0c-095f256a3e9e"],

Cell["physical chemistry", "SearchTerms",
 CellID->1619438686,ExpressionUUID->"c9fd985e-c3b2-4c5f-8ce7-8352248bcbcd"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"ce8c18eb-5b7b-4ce0-84b9-f6497e68b92c"],

Cell[TextData[ButtonBox["Raoult's Law",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://scienceworld.wolfram.com/chemistry/RaoultsLaw.html"], None},
 ButtonNote->
  "http://scienceworld.wolfram.com/chemistry/RaoultsLaw.html"]], \
"RelatedLinks",
 CellID->698253524,ExpressionUUID->"7cd05475-e723-4e37-8459-64f17dbd1cc5"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"aeb24235-4155-44d3-824e-237cd2b86c84"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["S. M. Blinder",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=S.+M.+Blinder"],
     None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=S.+M.+Blinder"]
}], "Author",
 CellID->872162387,ExpressionUUID->"2168fe49-2d73-4173-89e1-c1be93ec661b"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.1 for Microsoft Windows (64-bit) (March 13, 2017)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[50333, 1332, 428, 10, 
  22, "ControlSuggestions", "ExpressionUUID" -> "aa5f0a1b-17cd-44fa-
   a284-159457d3385e",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[50764, 1344, 800, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "91e06cf0-01ae-40d7-a1f3-
   a432bd6e4c0a",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[51567, 1365, 457, 13, 
  22, "ControlSuggestions", "ExpressionUUID" -> "9f5d9a5b-8e69-4f59-
   a2d7-735658b0a079",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[52027, 1380, 761, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "56c70cac-
   d30a-4b6b-87c3-5aec292aa709",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[52791, 1401, 961, 23, 
  22, "ControlSuggestions", "ExpressionUUID" -> "03a767c1-4d7b-4102-
   b831-1fd377f0163e",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[53755, 1426, 425, 11, 
  22, "ControlSuggestions", "ExpressionUUID" -> "0f3ee5ad-abdb-4ed5-bcf8-
   d9bb75417cc4",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[54183, 1439, 1585, 34, 
  22, "ControlSuggestions", "ExpressionUUID" -> "2abb07eb-
   bd68-48f5-94d3-57f8cd704ce7",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[55771, 1475, 1030, 24, 
  22, "ControlSuggestions", "ExpressionUUID" -> "7161826a-6efe-46be-
   b7d1-04d10bf491f9",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 58590, 1560},
 {"RotateAndZoomIn3D", 58767, 1565},
 {"DragLocators", 58944, 1570},
 {"CreateAndDeleteLocators", 59127, 1575},
 {"SliderZoom", 59308, 1580},
 {"GamepadControls", 59481, 1585},
 {"AutomaticAnimation", 59662, 1590},
 {"BookmarkAnimation", 59846, 1595}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 111, 0, 74, "DemoTitle", "ExpressionUUID" -> \
"51578434-6ace-48a6-b6c4-824b090835b5"],
Cell[1600, 37, 88, 0, 275, "InitializationSection", "ExpressionUUID" -> \
"d3f3caeb-7b66-4a5a-af73-5e06d518c1a0"],
Cell[CellGroupData[{
Cell[1713, 41, 84, 0, 189, "ManipulateSection", "ExpressionUUID" -> \
"ad591eee-9d3f-44f4-8c0a-9e19fe691761"],
Cell[CellGroupData[{
Cell[1822, 45, 20362, 486, 918, "Input", "ExpressionUUID" -> \
"36dc6725-d8a4-4852-a12c-2c06ad731ef7",
 CellID->698515085],
Cell[22187, 533, 10005, 211, 551, "Output", "ExpressionUUID" -> \
"9b702137-5c9f-4074-931d-7edc3751cf8a",
 CellID->43487259]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[32238, 750, 91, 0, 169, "ManipulateCaptionSection", "ExpressionUUID" -> \
"a3a064f6-c009-4bdd-a60d-401a97986ab8"],
Cell[32332, 752, 3155, 96, 91, "ManipulateCaption", "ExpressionUUID" -> \
"04430b78-c9ac-4e66-94d6-1c10ac9980aa",
 CellID->957328473],
Cell[35490, 850, 3005, 94, 74, "ManipulateCaption", "ExpressionUUID" -> \
"39742182-3751-49cf-817f-159c7410272b",
 CellID->1717639668],
Cell[38498, 946, 2093, 68, 41, "ManipulateCaption", "ExpressionUUID" -> \
"140a822d-5820-4dbb-af1a-8fe2edad742c",
 CellID->1894717102],
Cell[40594, 1016, 260, 4, 22, "ManipulateCaption", "ExpressionUUID" -> \
"dbf06da3-49de-463e-b456-7742bcdc0b99",
 CellID->503169113]
}, Open  ]],
Cell[CellGroupData[{
Cell[40891, 1025, 83, 0, 172, "ThumbnailSection", "ExpressionUUID" -> \
"8864c77c-9899-4ef0-a6fb-4ed15500f57d"],
Cell[40977, 1027, 1332, 35, 230, "Output", "ExpressionUUID" -> \
"eda790af-cd13-49a7-87d7-401fb9c3094d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[42346, 1067, 83, 0, 142, "SnapshotsSection", "ExpressionUUID" -> \
"d2836270-d47d-453e-a3d1-42c63d165a40"],
Cell[42432, 1069, 1331, 35, 230, "Output", "ExpressionUUID" -> \
"2eecea0c-44cf-4e96-b766-22e5132831e8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[43800, 1109, 81, 0, 335, "DetailsSection", "ExpressionUUID" -> \
"b262a856-370e-4839-b7d5-b9a11afec786"],
Cell[43884, 1111, 581, 17, 23, "DetailNotes", "ExpressionUUID" -> \
"9496209f-075e-42e0-91e2-629a9bcb370c",
 CellID->276868107],
Cell[44468, 1130, 483, 16, 23, "DetailNotes", "ExpressionUUID" -> \
"f2e6a5b1-8ee6-487a-a1d4-8d0e25ff3b0b",
 CellID->10950857],
Cell[44954, 1148, 532, 18, 25, "DetailNotes", "ExpressionUUID" -> \
"166fe1b6-eff4-4eff-9db6-e73f5a1c04f1",
 CellID->483288883],
Cell[45489, 1168, 531, 18, 25, "DetailNotes", "ExpressionUUID" -> \
"bfef2cfe-3317-4662-80a3-d16497dbb571",
 CellID->19027125],
Cell[46023, 1188, 2093, 67, 41, "DetailNotes", "ExpressionUUID" -> \
"2f1b8572-0135-4ea0-8c97-5eec3c39ea41",
 CellID->330069363],
Cell[48119, 1257, 137, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"a29b4f69-da9c-4d20-ae50-bbf1a89fab0c",
 CellID->29170894],
Cell[48259, 1260, 522, 18, 23, "DetailNotes", "ExpressionUUID" -> \
"239bf100-3ccd-4c91-bc45-bb7aba3988ee",
 CellID->743896368],
Cell[48784, 1280, 522, 18, 23, "DetailNotes", "ExpressionUUID" -> \
"ba952612-8fe7-47db-ad06-32943ee6892b",
 CellID->377188642],
Cell[49309, 1300, 506, 14, 23, "DetailNotes", "ExpressionUUID" -> \
"89d91909-b3da-4794-becd-16eeee5210cb",
 CellID->748190115],
Cell[49818, 1316, 108, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"4d9eadd7-5ee8-4e10-8ff9-e577dce3310c",
 CellID->131696708],
Cell[49929, 1319, 272, 6, 22, "DetailNotes", "ExpressionUUID" -> \
"5e23e2b3-9d4a-4925-b238-ed9a5391dd72",
 CellID->736906684]
}, Open  ]],
Cell[CellGroupData[{
Cell[50238, 1330, 92, 0, 126, "ControlSuggestionsSection", "ExpressionUUID" \
-> "70484e99-7939-4275-8a19-5fa377545634"],
Cell[50333, 1332, 428, 10, 22, "ControlSuggestions", "ExpressionUUID" -> \
"aa5f0a1b-17cd-44fa-a284-159457d3385e",
 CellTags->"ResizeImages"],
Cell[50764, 1344, 800, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"91e06cf0-01ae-40d7-a1f3-a432bd6e4c0a",
 CellTags->"RotateAndZoomIn3D"],
Cell[51567, 1365, 457, 13, 22, "ControlSuggestions", "ExpressionUUID" -> \
"9f5d9a5b-8e69-4f59-a2d7-735658b0a079",
 CellTags->"DragLocators"],
Cell[52027, 1380, 761, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"56c70cac-d30a-4b6b-87c3-5aec292aa709",
 CellTags->"CreateAndDeleteLocators"],
Cell[52791, 1401, 961, 23, 22, "ControlSuggestions", "ExpressionUUID" -> \
"03a767c1-4d7b-4102-b831-1fd377f0163e",
 CellTags->"SliderZoom"],
Cell[53755, 1426, 425, 11, 22, "ControlSuggestions", "ExpressionUUID" -> \
"0f3ee5ad-abdb-4ed5-bcf8-d9bb75417cc4",
 CellTags->"GamepadControls"],
Cell[54183, 1439, 1585, 34, 22, "ControlSuggestions", "ExpressionUUID" -> \
"2abb07eb-bd68-48f5-94d3-57f8cd704ce7",
 CellTags->"AutomaticAnimation"],
Cell[55771, 1475, 1030, 24, 22, "ControlSuggestions", "ExpressionUUID" -> \
"7161826a-6efe-46be-b7d1-04d10bf491f9",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56838, 1504, 85, 0, 155, "SearchTermsSection", "ExpressionUUID" -> \
"3c408a60-7ea0-442d-8906-5aa0edf82532"],
Cell[56926, 1506, 108, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"8db8a19c-5ae4-40c1-ac0c-095f256a3e9e",
 CellID->1622815598],
Cell[57037, 1509, 117, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"c9fd985e-c3b2-4c5f-8ce7-8352248bcbcd",
 CellID->1619438686]
}, Open  ]],
Cell[CellGroupData[{
Cell[57191, 1515, 86, 0, 141, "RelatedLinksSection", "ExpressionUUID" -> \
"ce8c18eb-5b7b-4ce0-84b9-f6497e68b92c"],
Cell[57280, 1517, 327, 7, 22, "RelatedLinks", "ExpressionUUID" -> \
"7cd05475-e723-4e37-8459-64f17dbd1cc5",
 CellID->698253524]
}, Open  ]],
Cell[CellGroupData[{
Cell[57644, 1529, 80, 0, 141, "AuthorSection", "ExpressionUUID" -> \
"aeb24235-4155-44d3-824e-237cd2b86c84"],
Cell[57727, 1531, 374, 10, 22, "Author", "ExpressionUUID" -> \
"2168fe49-2d73-4173-89e1-c1be93ec661b",
 CellID->872162387]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature EwpXW#Jw7xbQtAKnQGg8Ohkt *)
