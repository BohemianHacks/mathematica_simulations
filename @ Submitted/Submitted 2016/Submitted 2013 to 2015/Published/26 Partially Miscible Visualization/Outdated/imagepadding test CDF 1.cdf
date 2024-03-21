(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.1' *)

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
NotebookDataLength[    145206,       3250]
NotebookOptionsPosition[    141679,       3125]
NotebookOutlinePosition[    143389,       3179]
CellTagsIndexPosition[    143053,       3167]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Visualizing Partially-Miscible Liquids", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Txy", "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Interpolation", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0.1", ",", "359"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.15", ",", "369"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.2", ",", "379"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.25", ",", "387"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.4", ",", "398"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.55", ",", "400"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.65", ",", "395"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.8", ",", "359"}], "}"}]}], "}"}], ",", 
      RowBox[{"InterpolationOrder", "\[Rule]", "5"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p1", "=", 
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"Txy", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0.1", ",", "0.8"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"Thick", ",", "Black"}], "}"}]}], ",", 
       RowBox[{"Frame", "\[Rule]", "True"}], ",", 
       RowBox[{"FrameLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<mole fraction A\>\"", ",", "17"}], "]"}], ",", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<temperature  (K)\>\"", ",", "17"}], "]"}]}], "}"}]}], 
       ",", 
       RowBox[{"LabelStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"Black", ",", "14"}], "}"}]}], ",", 
       RowBox[{"AxesOrigin", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"0", ",", "359"}], "}"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"359", ",", "449"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"PlotRangeClipping", "\[Rule]", "False"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\""}], "]"}], ",", "\"\< = 1\>\""}], "}"}], "]"}],
                ",", "16", ",", "Blue"}], "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<A\>\""}], "]"}], ",", "\"\< = 0\>\""}], "}"}], "]"}],
                ",", "16", ",", 
               RowBox[{"RGBColor", "[", 
                RowBox[{"0.12", ",", "0.66", ",", "0."}], "]"}]}], "]"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "347"}], "}"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<A\>\""}], "]"}], ",", "\"\< = 1\>\""}], "}"}], "]"}],
                ",", "16", ",", 
               RowBox[{"RGBColor", "[", 
                RowBox[{"0.12", ",", "0.66", ",", "0."}], "]"}]}], "]"}], ",",
              "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\""}], "]"}], ",", "\"\< = 0\>\""}], "}"}], "]"}],
                ",", "16", ",", "Blue"}], "]"}]}], "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "347"}], "}"}]}], "]"}]}], "}"}], "]"}]}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tableA", "[", 
    RowBox[{"x1_", ",", "x2_", ",", "y1_", ",", "y2_", ",", "n_"}], "]"}], 
   "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Opacity", "[", 
         RowBox[{"0.8", ",", 
          RowBox[{"Lighter", "[", 
           RowBox[{"Green", ",", "0.5"}], "]"}]}], "]"}], ",", 
        RowBox[{"EdgeForm", "[", "Black", "]"}], ",", 
        RowBox[{"Disk", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{"x1", ",", "x2"}], "}"}], "]"}], ",", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{"y1", ",", "y2"}], "}"}], "]"}]}], "}"}], ",", 
          "0.125"}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"n", "*", "125"}], "}"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tableB", "[", 
    RowBox[{"x1_", ",", "x2_", ",", "y1_", ",", "y2_", ",", "n_"}], "]"}], 
   "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Opacity", "[", 
         RowBox[{"0.7", ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{"0.02", ",", "0.3", ",", "1."}], "]"}]}], "]"}], ",", 
        RowBox[{"EdgeForm", "[", "Black", "]"}], ",", 
        RowBox[{"Disk", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{"x1", ",", "x2"}], "}"}], "]"}], ",", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{"y1", ",", "y2"}], "}"}], "]"}]}], "}"}], ",", 
          "0.135"}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"n", "*", "125"}], "}"}]}], "]"}]}]}], ";"}]}], "Input",
 InitializationCell->True,
 CellID->79264322]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateSection"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "z", ",", "phase", ",", "xA\[Beta]", ",", "xA\[Alpha]", ",", 
       "xB\[Beta]", ",", "xB\[Alpha]", ",", "fA", ",", "fB", ",", "yA1", ",", 
       "yA2", ",", "yB1", ",", "yB2", ",", "visual"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", 
       RowBox[{"comp", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ";", 
      RowBox[{"z", "=", 
       RowBox[{"comp", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"phase", "=", 
       RowBox[{"Quiet", "[", 
        RowBox[{"T", "\[LessEqual]", 
         RowBox[{"Txy", "[", "z", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"xA\[Beta]", "=", 
       RowBox[{"If", "[", 
        RowBox[{"phase", ",", 
         RowBox[{"x", "/.", 
          RowBox[{"Quiet", "@", 
           RowBox[{"FindRoot", "[", 
            RowBox[{
             RowBox[{"T", "\[Equal]", 
              RowBox[{"Txy", "[", "x", "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "0.1"}], "}"}]}], "]"}]}]}], ",", "z"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"xA\[Alpha]", "=", 
       RowBox[{"If", "[", 
        RowBox[{"phase", ",", 
         RowBox[{"x", "/.", 
          RowBox[{"Quiet", "@", 
           RowBox[{"FindRoot", "[", 
            RowBox[{
             RowBox[{"T", "\[Equal]", 
              RowBox[{"Txy", "[", "x", "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "1"}], "}"}]}], "]"}]}]}], ",", "z"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"xB\[Beta]", "=", 
       RowBox[{"1", "-", "xA\[Beta]"}]}], ";", 
      RowBox[{"xB\[Alpha]", "=", 
       RowBox[{"1", "-", "xA\[Alpha]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"fA", "=", 
       RowBox[{"If", "[", 
        RowBox[{"phase", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"z", "-", "xA\[Beta]"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{"xA\[Alpha]", "-", "xA\[Beta]"}], ")"}]}], ",", "1"}], 
        "]"}]}], ";", 
      RowBox[{"fB", "=", 
       RowBox[{"1", "-", "fA"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"yA1", "=", 
       RowBox[{"0.625", "*", 
        RowBox[{"(", 
         RowBox[{"1", "-", "z"}], ")"}]}]}], ";", 
      RowBox[{"yA2", "=", 
       RowBox[{"0.625", "*", 
        RowBox[{"(", 
         RowBox[{"1", "+", "z"}], ")"}]}]}], ";", 
      RowBox[{"yB1", "=", 
       RowBox[{"0.625", "*", "z"}]}], ";", 
      RowBox[{"yB2", "=", 
       RowBox[{"0.625", "*", 
        RowBox[{"(", 
         RowBox[{"2", "-", "z"}], ")"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"visual", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"tableA", "[", 
            RowBox[{"0", ",", "1.25", ",", "yA1", ",", "yA2", ",", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"xA\[Beta]", "*", "fB"}], "+", 
               RowBox[{"xA\[Alpha]", "*", "fA"}]}], ")"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"tableB", "[", 
            RowBox[{"1.5", ",", "2.75", ",", "yB1", ",", "yB2", ",", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"xB\[Beta]", "*", "fB"}], "+", 
               RowBox[{"xB\[Alpha]", "*", "fA"}]}], ")"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{"phase", ",", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Riffle", "[", 
                RowBox[{
                 RowBox[{"tableB", "[", 
                  RowBox[{"3", ",", "4.25", ",", "0", ",", 
                   RowBox[{"fB", "*", "1.25"}], ",", 
                   RowBox[{"(", 
                    RowBox[{"xB\[Beta]", "*", "fB"}], ")"}]}], "]"}], ",", 
                 RowBox[{"tableA", "[", 
                  RowBox[{"3", ",", "4.25", ",", "0", ",", 
                   RowBox[{"fB", "*", "1.25"}], ",", 
                   RowBox[{"(", 
                    RowBox[{"xA\[Beta]", "*", "fB"}], ")"}]}], "]"}]}], "]"}],
                ",", "\[IndentingNewLine]", 
               RowBox[{"Riffle", "[", 
                RowBox[{
                 RowBox[{"tableA", "[", 
                  RowBox[{"3", ",", "4.25", ",", 
                   RowBox[{"fB", "*", "1.25"}], ",", "1.25", ",", 
                   RowBox[{"(", 
                    RowBox[{"xA\[Alpha]", "*", "fA"}], ")"}]}], "]"}], ",", 
                 RowBox[{"tableB", "[", 
                  RowBox[{"3", ",", "4.25", ",", 
                   RowBox[{"fB", "*", "1.25"}], ",", "1.25", ",", 
                   RowBox[{"(", 
                    RowBox[{"xB\[Alpha]", "*", "fA"}], ")"}]}], "]"}]}], 
                "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<\[Beta] phase\>\"", ",", "16"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"4.5", ",", 
                   RowBox[{"0.625", "*", "fB"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<\[Alpha] phase\>\"", ",", "16"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"4.5", ",", 
                   RowBox[{"1.25", "-", 
                    RowBox[{"0.625", "*", "fA"}]}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"EdgeForm", "[", "Thick", "]"}], ",", "White", ",", 
                 RowBox[{"Rectangle", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"3", ",", 
                    RowBox[{
                    RowBox[{"fB", "*", "1.25"}], "-", "0.0175"}]}], "}"}], 
                   ",", 
                   RowBox[{"{", 
                    RowBox[{"4.25", ",", 
                    RowBox[{
                    RowBox[{"fB", "*", "1.25"}], "+", "0.0175"}]}], "}"}]}], 
                  "]"}]}], "}"}]}], "}"}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"z", "\[LessEqual]", "0.5"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"Riffle", "[", 
                  RowBox[{
                   RowBox[{"tableB", "[", 
                    RowBox[{"3", ",", "4.25", ",", "0", ",", "1.25", ",", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}]}], "]"}], ",", 
                   RowBox[{"tableA", "[", 
                    RowBox[{"3", ",", "4.25", ",", "0", ",", "1.25", ",", 
                    RowBox[{"(", "z", ")"}]}], "]"}]}], "]"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"Riffle", "[", 
                  RowBox[{
                   RowBox[{"tableA", "[", 
                    RowBox[{"3", ",", "4.25", ",", "0", ",", "1.25", ",", 
                    RowBox[{"(", "z", ")"}]}], "]"}], ",", 
                   RowBox[{"tableB", "[", 
                    RowBox[{"3", ",", "4.25", ",", "0", ",", "1.25", ",", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}]}], "]"}]}], "]"}]}], "]"}],
                ",", "\[IndentingNewLine]", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<liquid\>\"", ",", "\"\<phase\>\""}], "}"}], 
                    ",", "Center"}], "]"}], ",", "16"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"4.6", ",", "0.625"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"White", ",", "\[IndentingNewLine]", 
             RowBox[{"FilledCurve", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4.25", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4.25", ",", "1.25"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"3", ",", "1.25"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2.85", ",", 
                    RowBox[{"-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4.40", ",", 
                    RowBox[{"-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4.40", ",", "1.40"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.85", ",", "1.40"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.85", ",", 
                    RowBox[{"-", "0.15"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
              "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"FilledCurve", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1.5", ",", "yB1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.75", ",", "yB1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.75", ",", "yB2"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.5", ",", "yB2"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.5", ",", "yB1"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1.35", ",", 
                    RowBox[{"yB1", "-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.90", ",", 
                    RowBox[{"yB1", "-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"2.90", ",", 
                    RowBox[{"yB2", "+", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.35", ",", 
                    RowBox[{"yB2", "+", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.35", ",", 
                    RowBox[{"yB1", "-", "0.15"}]}], "}"}]}], "}"}], "]"}]}], 
               "}"}], "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"FilledCurve", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "yA1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.25", ",", "yA1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.25", ",", "yA2"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "yA2"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "yA1"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.15"}], ",", 
                    RowBox[{"yA1", "-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.40", ",", 
                    RowBox[{"yA1", "-", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1.40", ",", 
                    RowBox[{"yA2", "+", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.15"}], ",", 
                    RowBox[{"yA2", "+", "0.15"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.15"}], ",", 
                    RowBox[{"yA1", "-", "0.15"}]}], "}"}]}], "}"}], "]"}]}], 
               "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "[", "Thick", "]"}], ",", 
             RowBox[{"FaceForm", "[", "None", "]"}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "yA1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1.25", ",", "yA2"}], "}"}]}], "]"}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1.5", ",", "yB1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2.75", ",", "yB2"}], "}"}]}], "]"}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"3", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"4.25", ",", "1.25"}], "}"}]}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{"phase", ",", 
             RowBox[{"{", 
              RowBox[{"Thick", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"4.3", ",", "0.01"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"4.35", ",", "0.01"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"4.35", ",", 
                    RowBox[{
                    RowBox[{"fB", "*", "1.25"}], "-", "0.02"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"4.3", ",", 
                    RowBox[{
                    RowBox[{"fB", "*", "1.25"}], "-", "0.02"}]}], "}"}]}], 
                 "}"}], "]"}], ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"4.35", ",", 
                    RowBox[{"0.625", "*", "fB"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"4.45", ",", 
                    RowBox[{"0.625", "*", "fB"}]}], "}"}]}], "}"}], "]"}]}], 
              "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"4.3", ",", 
                  RowBox[{
                   RowBox[{"fB", "*", "1.25"}], "+", "0.02"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"4.35", ",", 
                  RowBox[{
                   RowBox[{"fB", "*", "1.25"}], "+", "0.02"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"4.35", ",", "1.24"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"4.3", ",", "1.24"}], "}"}]}], "}"}], "]"}], ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"4.35", ",", 
                  RowBox[{"1.25", "-", 
                   RowBox[{"0.625", "*", "fA"}]}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"4.45", ",", 
                  RowBox[{"1.25", "-", 
                   RowBox[{"0.625", "*", "fA"}]}]}], "}"}]}], "}"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<+\>\"", ",", "22", ",", "Bold"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1.375", ",", "0.625"}], "}"}]}], "]"}], ",", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<\[Rule]\>\"", ",", "22", ",", "Bold"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2.875", ",", "0.625"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<pure A\>\"", ",", "16"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.625", ",", 
               RowBox[{"yA1", "-", "0.15"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<pure B\>\"", ",", "16"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2.125", ",", 
               RowBox[{"yB1", "-", "0.15"}]}], "}"}]}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "515"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.05"}], ",", "5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.25"}], ",", "1.33"}], "}"}]}], "}"}]}]}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"p1", ",", "\[IndentingNewLine]", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Dashed", ",", 
             RowBox[{"If", "[", 
              RowBox[{"phase", ",", 
               RowBox[{"{", 
                RowBox[{"Blue", ",", 
                 RowBox[{"Line", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xA\[Beta]", ",", "359"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xA\[Beta]", ",", "T"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"z", ",", "T"}], "}"}]}], "}"}], "]"}], ",", 
                 RowBox[{"RGBColor", "[", 
                  RowBox[{"0.12", ",", "0.66", ",", "0."}], "]"}], ",", 
                 RowBox[{"Line", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"z", ",", "T"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xA\[Alpha]", ",", "T"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xA\[Alpha]", ",", "359"}], "}"}]}], "}"}], 
                  "]"}]}], "}"}], ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"z", ",", "T"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"z", ",", "359"}], "}"}]}], "}"}], "]"}]}], 
              "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Framed", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{"phase", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<A\>\"", ",", "\"\<\[Beta]\>\""}], "]"}], ",", 
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<A\>\""}], "]"}]}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xA\[Beta]", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}], "]"}], 
                 ",", "17"}], "]"}], ",", 
               RowBox[{"Background", "\[Rule]", "White"}], ",", 
               RowBox[{"FrameMargins", "\[Rule]", 
                RowBox[{"If", "[", 
                 RowBox[{"phase", ",", "4", ",", "6.25"}], "]"}]}]}], "]"}], 
             ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Which", "[", 
                RowBox[{
                 RowBox[{"xA\[Beta]", "\[LessEqual]", "0.08"}], ",", "0.08", 
                 ",", 
                 RowBox[{"xA\[Beta]", "\[GreaterEqual]", "0.92"}], ",", 
                 "0.92", ",", "True", ",", "xA\[Beta]"}], "]"}], ",", "365"}],
               "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{"phase", ",", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Framed", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<A\>\"", ",", "\"\<\[Alpha]\>\""}], "]"}], ",", 
                    "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xA\[Alpha]", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}], "]"}], 
                   ",", "17"}], "]"}], ",", 
                 RowBox[{"Background", "\[Rule]", "White"}], ",", 
                 RowBox[{"FrameMargins", "\[Rule]", "6"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"xA\[Alpha]", ",", "365"}], "}"}]}], "]"}]}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Inset", "[", 
            RowBox[{"visual", ",", 
             RowBox[{"Scaled", "[", 
              RowBox[{"{", 
               RowBox[{"0.5", ",", "0.76"}], "}"}], "]"}]}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], "]"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "420"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"50", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"70", ",", "10"}], "}"}]}], "}"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<move the black dot around the diagram\>\"", ",", "Bold"}], 
    "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"comp", ",", 
        RowBox[{"{", 
         RowBox[{"0.6", ",", "394"}], "}"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0.05", ",", "372"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0.95", ",", "409"}], "}"}], ",", "Locator", ",", 
      RowBox[{"Appearance", "\[Rule]", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Disk", "[", "]"}], "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "11"}]}], "]"}]}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = {0.6, 394}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the diagram", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`comp$$], {0.6, 394}}, {0.05, 372}, {0.95, 409}}}, 
    Typeset`size$$ = {600., {208., 212.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`comp$234074$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = {0.6, 394}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$234074$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`z$, $CellContext`phase$, \
$CellContext`xA\[Beta]$, $CellContext`xA\[Alpha]$, $CellContext`xB\[Beta]$, \
$CellContext`xB\[Alpha]$, $CellContext`fA$, $CellContext`fB$, \
$CellContext`yA1$, $CellContext`yA2$, $CellContext`yB1$, $CellContext`yB2$, \
$CellContext`visual$}, $CellContext`T$ = 
         Part[$CellContext`comp$$, 2]; $CellContext`z$ = 
         Part[$CellContext`comp$$, 1]; $CellContext`phase$ = 
         Quiet[$CellContext`T$ <= $CellContext`Txy[$CellContext`z$]]; \
$CellContext`xA\[Beta]$ = If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 0.1}]]], $CellContext`z$]; $CellContext`xA\[Alpha]$ = 
         If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 1}]]], $CellContext`z$]; $CellContext`xB\[Beta]$ = 
         1 - $CellContext`xA\[Beta]$; $CellContext`xB\[Alpha]$ = 
         1 - $CellContext`xA\[Alpha]$; $CellContext`fA$ = 
         If[$CellContext`phase$, ($CellContext`z$ - \
$CellContext`xA\[Beta]$)/($CellContext`xA\[Alpha]$ - $CellContext`xA\[Beta]$),
            1]; $CellContext`fB$ = 1 - $CellContext`fA$; $CellContext`yA1$ = 
         0.625 (1 - $CellContext`z$); $CellContext`yA2$ = 
         0.625 (1 + $CellContext`z$); $CellContext`yB1$ = 
         0.625 $CellContext`z$; $CellContext`yB2$ = 
         0.625 (2 - $CellContext`z$); $CellContext`visual$ = Graphics[{
            $CellContext`tableA[
            0, 1.25, $CellContext`yA1$, $CellContext`yA2$, $CellContext`xA\
\[Beta]$ $CellContext`fB$ + $CellContext`xA\[Alpha]$ $CellContext`fA$], 
            $CellContext`tableB[
            1.5, 2.75, $CellContext`yB1$, $CellContext`yB2$, $CellContext`xB\
\[Beta]$ $CellContext`fB$ + $CellContext`xB\[Alpha]$ $CellContext`fA$], 
            If[$CellContext`phase$, {
              Riffle[
               $CellContext`tableB[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xB\[Beta]$ $CellContext`fB$], 
               $CellContext`tableA[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xA\[Beta]$ $CellContext`fB$]], 
              Riffle[
               $CellContext`tableA[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xA\[Alpha]$ $CellContext`fA$], 
               $CellContext`tableB[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xB\[Alpha]$ $CellContext`fA$]], 
              Text[
               Style["\[Beta] phase", 16], {4.5, 0.625 $CellContext`fB$}, {-1,
                0}], 
              Text[
               Style["\[Alpha] phase", 16], {
               4.5, 1.25 - 0.625 $CellContext`fA$}, {-1, 0}], {
               EdgeForm[Thick], White, 
               
               Rectangle[{3, $CellContext`fB$ 1.25 - 0.0175}, {
                4.25, $CellContext`fB$ 1.25 + 0.0175}]}}, {
              If[$CellContext`z$ <= 0.5, 
               Riffle[
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$], 
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$]], 
               Riffle[
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$], 
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$]]], 
              Text[
               Style[
                Column[{"liquid", "phase"}, Center], 16], {4.6, 0.625}, {-1, 
               0}]}], {White, 
             FilledCurve[{
               Line[{{3, 0}, {4.25, 0}, {4.25, 1.25}, {3, 1.25}, {3, 0}}], 
               
               Line[{{2.85, -0.15}, {4.4, -0.15}, {4.4, 1.4}, {2.85, 1.4}, {
                2.85, -0.15}}]}], 
             FilledCurve[{
               
               Line[{{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB1$}, {
                 2.75, $CellContext`yB2$}, {1.5, $CellContext`yB2$}, {
                 1.5, $CellContext`yB1$}}], 
               
               Line[{{1.35, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB1$ - 0.15}}]}], 
             FilledCurve[{
               
               Line[{{0, $CellContext`yA1$}, {1.25, $CellContext`yA1$}, {
                 1.25, $CellContext`yA2$}, {0, $CellContext`yA2$}, {
                 0, $CellContext`yA1$}}], 
               
               Line[{{-0.15, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA2$ + 0.15}, {-0.15, $CellContext`yA2$ + 
                  0.15}, {-0.15, $CellContext`yA1$ - 0.15}}]}]}, {
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, $CellContext`yA1$}, {1.25, $CellContext`yA2$}], 
             Rectangle[{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB2$}], 
             Rectangle[{3, 0}, {4.25, 1.25}]}, 
            If[$CellContext`phase$, {Thick, 
              Line[{{4.3, 0.01}, {4.35, 0.01}, {
                4.35, $CellContext`fB$ 1.25 - 0.02}, {
                4.3, $CellContext`fB$ 1.25 - 0.02}}], 
              
              Line[{{4.35, 0.625 $CellContext`fB$}, {
                4.45, 0.625 $CellContext`fB$}}]}], {Thick, 
             
             Line[{{4.3, $CellContext`fB$ 1.25 + 0.02}, {
               4.35, $CellContext`fB$ 1.25 + 0.02}, {4.35, 1.24}, {4.3, 
               1.24}}], 
             
             Line[{{4.35, 1.25 - 0.625 $CellContext`fA$}, {
               4.45, 1.25 - 0.625 $CellContext`fA$}}]}, 
            Text[
             Style["+", 22, Bold], {1.375, 0.625}], 
            Text[
             Style["\[Rule]", 22, Bold], {2.875, 0.625}], 
            Text[
             Style["pure A", 16], {0.625, $CellContext`yA1$ - 0.15}], 
            Text[
             Style["pure B", 16], {2.125, $CellContext`yB1$ - 0.15}]}, 
           ImageSize -> 515, PlotRange -> {{-0.05, 5}, {-0.25, 1.33}}]; 
        Show[$CellContext`p1, 
          Graphics[{{Thick, Dashed, 
             If[$CellContext`phase$, {Blue, 
               
               Line[{{$CellContext`xA\[Beta]$, 
                  359}, {$CellContext`xA\[Beta]$, $CellContext`T$}, \
{$CellContext`z$, $CellContext`T$}}], 
               RGBColor[0.12, 0.66, 0.], 
               
               Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`xA\
\[Alpha]$, $CellContext`T$}, {$CellContext`xA\[Alpha]$, 359}}]}, 
              
              Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`z$, 
                 359}}]]}, 
            Text[
             Framed[
              Style[
               Row[{
                 If[$CellContext`phase$, 
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Beta]"], 
                  Subscript[
                   Style["x", Italic], "A"]], " = ", 
                 NumberForm[$CellContext`xA\[Beta]$, {2, 2}]}], 17], 
              Background -> White, FrameMargins -> 
              If[$CellContext`phase$, 4, 6.25]], {
              
              Which[$CellContext`xA\[Beta]$ <= 0.08, 
               0.08, $CellContext`xA\[Beta]$ >= 0.92, 0.92, 
               True, $CellContext`xA\[Beta]$], 365}], 
            If[$CellContext`phase$, 
             Text[
              Framed[
               Style[
                Row[{
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Alpha]"], " = ", 
                  NumberForm[$CellContext`xA\[Alpha]$, {2, 2}]}], 17], 
               Background -> White, FrameMargins -> 
               6], {$CellContext`xA\[Alpha]$, 365}]], 
            Inset[$CellContext`visual$, 
             Scaled[{0.5, 0.76}]]}], ImageSize -> {600, 420}, AspectRatio -> 
          Full, ImagePadding -> {{50, 25}, {70, 10}}]], "Specifications" :> {
        Style[
        "move the black dot around the diagram", 
         Bold], {{$CellContext`comp$$, {0.6, 394}}, {0.05, 372}, {0.95, 409}, 
         ControlType -> Locator, Appearance -> Graphics[{
            Disk[{0, 0}]}, ImageSize -> 11]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {250., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`yA1 = 
       0.06374999999999997, $CellContext`yA2 = 1.18625, $CellContext`yB1 = 
       0.56125, $CellContext`yB2 = 0.68875, $CellContext`Txy = 
       InterpolatingFunction[{{0.1, 0.8}}, {
         5, 7, 0, {8}, {6}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{0.1, 
         0.15, 0.2, 0.25, 0.4, 0.55, 0.65, 0.8}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8}, {359., 369., 
          379., 387., 398., 400., 395., 359.}}, {
         Automatic}], $CellContext`tableA[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.8, 
           Lighter[Green, 0.5]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.125]}, {
         125 $CellContext`n}], $CellContext`tableB[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.7, 
           RGBColor[0.02, 0.3, 1.]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.135]}, {
         125 $CellContext`n}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJwV2Hk4VH0UB3CkJCqEENkKLdZISZ0rS8qS8JKEyFKSUI3rrbQRylKpLGUL
lSVCskTImwjJmn3uzNgmLRKiqPfMX/N8nmd+97m/8/veueeMvNspaw8eLi4u
TW4uLs5n0dhUV0JCGWipP+bh8qMR5/lni3Mel8ELN7GR+2ijjb/vVBaXgWnu
Y5Ft/jSi4wS3DaO1DPScrxr7B9CIma/LW1SWlcNTM40lo2doxLZppbcl/5aD
Rcj4HXoQjajgdijpdHwJtyccuXhCaESdVGWc8NpKGLM2uj0dTyOKTdqLFQOr
QcBR7G9ZPY0oX90vMrLrNdQf/yI5P0Mj5lSbq0oWasEt0HG8cF0gcXnIknaM
+QbsanUk4/8JJCoKh1KqH70FRkTg7srLgQQhL9D+82YD0G4nh2zPDyT+dEja
7QpohAq6R/5kdyBxKlXffPOWZhi1eOnCng8kNghOmM1JtgCVfe46KUcSjW8d
6Vv9PoAzxJYf3kUSsrlF1bOWrfAgdGdd3EGSiKPalbKJNth39M3MS3+SYMsF
m6grtIOMOOlmeI0kXAomPqWLd0Dsr9cLcQkkEeBur5u6pBPcLwozvmWRhLOi
6U6/kU7YS5WbryshCV8t7nr1ni5QOVPmFF9LEvYWRoK1Lz/CTrcbaxuaScKz
dH+ncUE35JMtnokfSULYZL+J1cMeqH6X896CIol79G4/tau9UBhTwHwyShLQ
sFFuntYHY8duXkj9ShKvXy2JSDrUDz//jc3VnyIJhb97VaWc+6FFz/6PFfoq
RLXec+2HbfXahh5oo+pVUjeP9YOCCTyKQtfVyOVcofWD2Z7k1gH0u//0mr1u
90Pd1fbKc9Mk0fbOV1jrXT9st9n75ekMSTC6uhLqtg/Ao2CJpPFZkriyTXU+
eucAqPXPKv9Br0u86mxvMACbPt1NF5rD/TlpKI6ZDsDRK1wnddCfWBG5/AcH
QDDV1zQYPTmhX2VOG4BOp71yy3+RBK9A+lBb4QB81Fowkf1NEpk+cyb3XwwA
34fVI+pok/f7s46WD8CB8IKzBDr81vzJqZoBYOw+6OmKFpSw+ynWOgD+pRuj
HqLF1vMvc/g2ACuFQr/Kz5OEEpxSp28aBHtXo3HRBZKYqc+hPNUHwc/qQqIC
+q312K2vWoPwyY2xQwN9zNN1amH7IMRskP3HDJ0dZVMmbToI5YYyjEto1X5d
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
YyVA
              "]]}}}, {
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 1"}], 16, 
               RGBColor[0, 0, 1]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 0"}], 16, 
               RGBColor[0.12, 0.66, 0.]]}], {0, 347}], 
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 1"}], 16, 
               RGBColor[0.12, 0.66, 0.]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 0"}], 16, 
               RGBColor[0, 0, 1]]}], {1, 347}]}}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 359.}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["temperature  (K)", 17], None}, {
             Style["mole fraction A", 17], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], LabelStyle -> {
            GrayLevel[0], 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{0, 1}, {359, 449}}, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}], 
       Attributes[Subscript] = {NHoldRest}, Subscript[$CellContext`c1, 0] = 
       1.5, Subscript[$CellContext`c1, 0] = 1.5, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->56705797]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell[TextData[{
 "The temperature-composition diagram shows liquids A (green) and B (blue), \
which are only partially miscible for a range of compositions below 400 K.  \
Move the black dot around the diagram with the mouse to select a temperature \
and composition. The location of the black dot determines the amounts of A \
and B present in each of the containers above the plot as well as the sizes \
of the two left containers. The sizes of the containers on the right \
represent the lever rule amounts of the two liquid phases (\[Alpha] and \
\[Beta]) in equilibrium. Each of these liquid phases contain both A and B; \
the \[Alpha] phase is enriched in A and the \[Beta] phase is enriched in B. \
The compositions of the two partially-miscible phases (",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["x", "A", "\[Alpha]"], TraditionalForm]], "InlineMath"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["x", "A", "\[Beta]"], TraditionalForm]], "InlineMath"],
 ") are shown in the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"T", "-", 
    SubscriptBox["x", "A"]}], TraditionalForm]], "InlineMath"],
 " diagram, and the compositions are represented in the containers on the top \
right square by the relative amounts of green and blue circles. Outside the \
phase envelope (black curve), A and B are completely miscible."
}], "ManipulateCaption",
 CellID->697376426]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = {0.6, 394}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the diagram", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`comp$$], {0.6, 394}}, {0.05, 372}, {0.95, 409}}}, 
    Typeset`size$$ = {600., {208., 212.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`comp$234123$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = {0.6, 394}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$234123$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`z$, $CellContext`phase$, \
$CellContext`xA\[Beta]$, $CellContext`xA\[Alpha]$, $CellContext`xB\[Beta]$, \
$CellContext`xB\[Alpha]$, $CellContext`fA$, $CellContext`fB$, \
$CellContext`yA1$, $CellContext`yA2$, $CellContext`yB1$, $CellContext`yB2$, \
$CellContext`visual$}, $CellContext`T$ = 
         Part[$CellContext`comp$$, 2]; $CellContext`z$ = 
         Part[$CellContext`comp$$, 1]; $CellContext`phase$ = 
         Quiet[$CellContext`T$ <= $CellContext`Txy[$CellContext`z$]]; \
$CellContext`xA\[Beta]$ = If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 0.1}]]], $CellContext`z$]; $CellContext`xA\[Alpha]$ = 
         If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 1}]]], $CellContext`z$]; $CellContext`xB\[Beta]$ = 
         1 - $CellContext`xA\[Beta]$; $CellContext`xB\[Alpha]$ = 
         1 - $CellContext`xA\[Alpha]$; $CellContext`fA$ = 
         If[$CellContext`phase$, ($CellContext`z$ - \
$CellContext`xA\[Beta]$)/($CellContext`xA\[Alpha]$ - $CellContext`xA\[Beta]$),
            1]; $CellContext`fB$ = 1 - $CellContext`fA$; $CellContext`yA1$ = 
         0.625 (1 - $CellContext`z$); $CellContext`yA2$ = 
         0.625 (1 + $CellContext`z$); $CellContext`yB1$ = 
         0.625 $CellContext`z$; $CellContext`yB2$ = 
         0.625 (2 - $CellContext`z$); $CellContext`visual$ = Graphics[{
            $CellContext`tableA[
            0, 1.25, $CellContext`yA1$, $CellContext`yA2$, $CellContext`xA\
\[Beta]$ $CellContext`fB$ + $CellContext`xA\[Alpha]$ $CellContext`fA$], 
            $CellContext`tableB[
            1.5, 2.75, $CellContext`yB1$, $CellContext`yB2$, $CellContext`xB\
\[Beta]$ $CellContext`fB$ + $CellContext`xB\[Alpha]$ $CellContext`fA$], 
            If[$CellContext`phase$, {
              Riffle[
               $CellContext`tableB[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xB\[Beta]$ $CellContext`fB$], 
               $CellContext`tableA[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xA\[Beta]$ $CellContext`fB$]], 
              Riffle[
               $CellContext`tableA[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xA\[Alpha]$ $CellContext`fA$], 
               $CellContext`tableB[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xB\[Alpha]$ $CellContext`fA$]], 
              Text[
               Style["\[Beta] phase", 16], {4.5, 0.625 $CellContext`fB$}, {-1,
                0}], 
              Text[
               Style["\[Alpha] phase", 16], {
               4.5, 1.25 - 0.625 $CellContext`fA$}, {-1, 0}], {
               EdgeForm[Thick], White, 
               
               Rectangle[{3, $CellContext`fB$ 1.25 - 0.0175}, {
                4.25, $CellContext`fB$ 1.25 + 0.0175}]}}, {
              If[$CellContext`z$ <= 0.5, 
               Riffle[
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$], 
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$]], 
               Riffle[
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$], 
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$]]], 
              Text[
               Style[
                Column[{"liquid", "phase"}, Center], 16], {4.6, 0.625}, {-1, 
               0}]}], {White, 
             FilledCurve[{
               Line[{{3, 0}, {4.25, 0}, {4.25, 1.25}, {3, 1.25}, {3, 0}}], 
               
               Line[{{2.85, -0.15}, {4.4, -0.15}, {4.4, 1.4}, {2.85, 1.4}, {
                2.85, -0.15}}]}], 
             FilledCurve[{
               
               Line[{{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB1$}, {
                 2.75, $CellContext`yB2$}, {1.5, $CellContext`yB2$}, {
                 1.5, $CellContext`yB1$}}], 
               
               Line[{{1.35, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB1$ - 0.15}}]}], 
             FilledCurve[{
               
               Line[{{0, $CellContext`yA1$}, {1.25, $CellContext`yA1$}, {
                 1.25, $CellContext`yA2$}, {0, $CellContext`yA2$}, {
                 0, $CellContext`yA1$}}], 
               
               Line[{{-0.15, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA2$ + 0.15}, {-0.15, $CellContext`yA2$ + 
                  0.15}, {-0.15, $CellContext`yA1$ - 0.15}}]}]}, {
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, $CellContext`yA1$}, {1.25, $CellContext`yA2$}], 
             Rectangle[{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB2$}], 
             Rectangle[{3, 0}, {4.25, 1.25}]}, 
            If[$CellContext`phase$, {Thick, 
              Line[{{4.3, 0.01}, {4.35, 0.01}, {
                4.35, $CellContext`fB$ 1.25 - 0.02}, {
                4.3, $CellContext`fB$ 1.25 - 0.02}}], 
              
              Line[{{4.35, 0.625 $CellContext`fB$}, {
                4.45, 0.625 $CellContext`fB$}}]}], {Thick, 
             
             Line[{{4.3, $CellContext`fB$ 1.25 + 0.02}, {
               4.35, $CellContext`fB$ 1.25 + 0.02}, {4.35, 1.24}, {4.3, 
               1.24}}], 
             
             Line[{{4.35, 1.25 - 0.625 $CellContext`fA$}, {
               4.45, 1.25 - 0.625 $CellContext`fA$}}]}, 
            Text[
             Style["+", 22, Bold], {1.375, 0.625}], 
            Text[
             Style["\[Rule]", 22, Bold], {2.875, 0.625}], 
            Text[
             Style["pure A", 16], {0.625, $CellContext`yA1$ - 0.15}], 
            Text[
             Style["pure B", 16], {2.125, $CellContext`yB1$ - 0.15}]}, 
           ImageSize -> 515, PlotRange -> {{-0.05, 5}, {-0.25, 1.33}}]; 
        Show[$CellContext`p1, 
          Graphics[{{Thick, Dashed, 
             If[$CellContext`phase$, {Blue, 
               
               Line[{{$CellContext`xA\[Beta]$, 
                  359}, {$CellContext`xA\[Beta]$, $CellContext`T$}, \
{$CellContext`z$, $CellContext`T$}}], 
               RGBColor[0.12, 0.66, 0.], 
               
               Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`xA\
\[Alpha]$, $CellContext`T$}, {$CellContext`xA\[Alpha]$, 359}}]}, 
              
              Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`z$, 
                 359}}]]}, 
            Text[
             Framed[
              Style[
               Row[{
                 If[$CellContext`phase$, 
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Beta]"], 
                  Subscript[
                   Style["x", Italic], "A"]], " = ", 
                 NumberForm[$CellContext`xA\[Beta]$, {2, 2}]}], 17], 
              Background -> White, FrameMargins -> 
              If[$CellContext`phase$, 4, 6.25]], {
              
              Which[$CellContext`xA\[Beta]$ <= 0.08, 
               0.08, $CellContext`xA\[Beta]$ >= 0.92, 0.92, 
               True, $CellContext`xA\[Beta]$], 365}], 
            If[$CellContext`phase$, 
             Text[
              Framed[
               Style[
                Row[{
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Alpha]"], " = ", 
                  NumberForm[$CellContext`xA\[Alpha]$, {2, 2}]}], 17], 
               Background -> White, FrameMargins -> 
               6], {$CellContext`xA\[Alpha]$, 365}]], 
            Inset[$CellContext`visual$, 
             Scaled[{0.5, 0.76}]]}], ImageSize -> {600, 420}, AspectRatio -> 
          Full, ImagePadding -> {{50, 25}, {70, 10}}]], "Specifications" :> {
        Style[
        "move the black dot around the diagram", 
         Bold], {{$CellContext`comp$$, {0.6, 394}}, {0.05, 372}, {0.95, 409}, 
         ControlType -> Locator, Appearance -> Graphics[{
            Disk[{0, 0}]}, ImageSize -> 11]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {250., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`yA1 = 
       0.06374999999999997, $CellContext`yA2 = 1.18625, $CellContext`yB1 = 
       0.56125, $CellContext`yB2 = 0.68875, $CellContext`Txy = 
       InterpolatingFunction[{{0.1, 0.8}}, {
         5, 7, 0, {8}, {6}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{0.1, 
         0.15, 0.2, 0.25, 0.4, 0.55, 0.65, 0.8}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8}, {359., 369., 
          379., 387., 398., 400., 395., 359.}}, {
         Automatic}], $CellContext`tableA[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.8, 
           Lighter[Green, 0.5]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.125]}, {
         125 $CellContext`n}], $CellContext`tableB[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.7, 
           RGBColor[0.02, 0.3, 1.]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.135]}, {
         125 $CellContext`n}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJwV2Hk4VH0UB3CkJCqEENkKLdZISZ0rS8qS8JKEyFKSUI3rrbQRylKpLGUL
lSVCskTImwjJmn3uzNgmLRKiqPfMX/N8nmd+97m/8/veueeMvNspaw8eLi4u
TW4uLs5n0dhUV0JCGWipP+bh8qMR5/lni3Mel8ELN7GR+2ijjb/vVBaXgWnu
Y5Ft/jSi4wS3DaO1DPScrxr7B9CIma/LW1SWlcNTM40lo2doxLZppbcl/5aD
Rcj4HXoQjajgdijpdHwJtyccuXhCaESdVGWc8NpKGLM2uj0dTyOKTdqLFQOr
QcBR7G9ZPY0oX90vMrLrNdQf/yI5P0Mj5lSbq0oWasEt0HG8cF0gcXnIknaM
+QbsanUk4/8JJCoKh1KqH70FRkTg7srLgQQhL9D+82YD0G4nh2zPDyT+dEja
7QpohAq6R/5kdyBxKlXffPOWZhi1eOnCng8kNghOmM1JtgCVfe46KUcSjW8d
6Vv9PoAzxJYf3kUSsrlF1bOWrfAgdGdd3EGSiKPalbKJNth39M3MS3+SYMsF
m6grtIOMOOlmeI0kXAomPqWLd0Dsr9cLcQkkEeBur5u6pBPcLwozvmWRhLOi
6U6/kU7YS5WbryshCV8t7nr1ni5QOVPmFF9LEvYWRoK1Lz/CTrcbaxuaScKz
dH+ncUE35JMtnokfSULYZL+J1cMeqH6X896CIol79G4/tau9UBhTwHwyShLQ
sFFuntYHY8duXkj9ShKvXy2JSDrUDz//jc3VnyIJhb97VaWc+6FFz/6PFfoq
RLXec+2HbfXahh5oo+pVUjeP9YOCCTyKQtfVyOVcofWD2Z7k1gH0u//0mr1u
90Pd1fbKc9Mk0fbOV1jrXT9st9n75ekMSTC6uhLqtg/Ao2CJpPFZkriyTXU+
eucAqPXPKv9Br0u86mxvMACbPt1NF5rD/TlpKI6ZDsDRK1wnddCfWBG5/AcH
QDDV1zQYPTmhX2VOG4BOp71yy3+RBK9A+lBb4QB81Fowkf1NEpk+cyb3XwwA
34fVI+pok/f7s46WD8CB8IKzBDr81vzJqZoBYOw+6OmKFpSw+ynWOgD+pRuj
HqLF1vMvc/g2ACuFQr/Kz5OEEpxSp28aBHtXo3HRBZKYqc+hPNUHwc/qQqIC
+q312K2vWoPwyY2xQwN9zNN1amH7IMRskP3HDJ0dZVMmbToI5YYyjEto1X5d
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
YyVA
              "]]}}}, {
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 1"}], 16, 
               RGBColor[0, 0, 1]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 0"}], 16, 
               RGBColor[0.12, 0.66, 0.]]}], {0, 347}], 
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 1"}], 16, 
               RGBColor[0.12, 0.66, 0.]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 0"}], 16, 
               RGBColor[0, 0, 1]]}], {1, 347}]}}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 359.}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["temperature  (K)", 17], None}, {
             Style["mole fraction A", 17], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], LabelStyle -> {
            GrayLevel[0], 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{0, 1}, {359, 449}}, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}], 
       Attributes[Subscript] = {NHoldRest}, Subscript[$CellContext`c1, 0] = 
       1.5, Subscript[$CellContext`c1, 0] = 1.5, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->1370028]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = {0.1225, 379.45}, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the diagram", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`comp$$], {0.1225, 379.45}}, {0.05, 372}, {
      0.95, 409}}}, Typeset`size$$ = {600., {208., 212.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`comp$234172$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = {0.1225, 379.45}},
       "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$234172$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`z$, $CellContext`phase$, \
$CellContext`xA\[Beta]$, $CellContext`xA\[Alpha]$, $CellContext`xB\[Beta]$, \
$CellContext`xB\[Alpha]$, $CellContext`fA$, $CellContext`fB$, \
$CellContext`yA1$, $CellContext`yA2$, $CellContext`yB1$, $CellContext`yB2$, \
$CellContext`visual$}, $CellContext`T$ = 
         Part[$CellContext`comp$$, 2]; $CellContext`z$ = 
         Part[$CellContext`comp$$, 1]; $CellContext`phase$ = 
         Quiet[$CellContext`T$ <= $CellContext`Txy[$CellContext`z$]]; \
$CellContext`xA\[Beta]$ = If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 0.1}]]], $CellContext`z$]; $CellContext`xA\[Alpha]$ = 
         If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 1}]]], $CellContext`z$]; $CellContext`xB\[Beta]$ = 
         1 - $CellContext`xA\[Beta]$; $CellContext`xB\[Alpha]$ = 
         1 - $CellContext`xA\[Alpha]$; $CellContext`fA$ = 
         If[$CellContext`phase$, ($CellContext`z$ - \
$CellContext`xA\[Beta]$)/($CellContext`xA\[Alpha]$ - $CellContext`xA\[Beta]$),
            1]; $CellContext`fB$ = 1 - $CellContext`fA$; $CellContext`yA1$ = 
         0.625 (1 - $CellContext`z$); $CellContext`yA2$ = 
         0.625 (1 + $CellContext`z$); $CellContext`yB1$ = 
         0.625 $CellContext`z$; $CellContext`yB2$ = 
         0.625 (2 - $CellContext`z$); $CellContext`visual$ = Graphics[{
            $CellContext`tableA[
            0, 1.25, $CellContext`yA1$, $CellContext`yA2$, $CellContext`xA\
\[Beta]$ $CellContext`fB$ + $CellContext`xA\[Alpha]$ $CellContext`fA$], 
            $CellContext`tableB[
            1.5, 2.75, $CellContext`yB1$, $CellContext`yB2$, $CellContext`xB\
\[Beta]$ $CellContext`fB$ + $CellContext`xB\[Alpha]$ $CellContext`fA$], 
            If[$CellContext`phase$, {
              Riffle[
               $CellContext`tableB[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xB\[Beta]$ $CellContext`fB$], 
               $CellContext`tableA[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xA\[Beta]$ $CellContext`fB$]], 
              Riffle[
               $CellContext`tableA[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xA\[Alpha]$ $CellContext`fA$], 
               $CellContext`tableB[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xB\[Alpha]$ $CellContext`fA$]], 
              Text[
               Style["\[Beta] phase", 16], {4.5, 0.625 $CellContext`fB$}, {-1,
                0}], 
              Text[
               Style["\[Alpha] phase", 16], {
               4.5, 1.25 - 0.625 $CellContext`fA$}, {-1, 0}], {
               EdgeForm[Thick], White, 
               Rectangle[{3, $CellContext`fB$ 1.25 - 0.0175}, {
                4.25, $CellContext`fB$ 1.25 + 0.0175}]}}, {
              If[$CellContext`z$ <= 0.5, 
               Riffle[
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$], 
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$]], 
               Riffle[
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$], 
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$]]], 
              Text[
               Style[
                Column[{"liquid", "phase"}, Center], 16], {4.6, 0.625}, {-1, 
               0}]}], {White, 
             FilledCurve[{
               Line[{{3, 0}, {4.25, 0}, {4.25, 1.25}, {3, 1.25}, {3, 0}}], 
               
               Line[{{2.85, -0.15}, {4.4, -0.15}, {4.4, 1.4}, {2.85, 1.4}, {
                2.85, -0.15}}]}], 
             FilledCurve[{
               
               Line[{{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB1$}, {
                 2.75, $CellContext`yB2$}, {1.5, $CellContext`yB2$}, {
                 1.5, $CellContext`yB1$}}], 
               
               Line[{{1.35, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB1$ - 0.15}}]}], 
             FilledCurve[{
               
               Line[{{0, $CellContext`yA1$}, {1.25, $CellContext`yA1$}, {
                 1.25, $CellContext`yA2$}, {0, $CellContext`yA2$}, {
                 0, $CellContext`yA1$}}], 
               
               Line[{{-0.15, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA2$ + 0.15}, {-0.15, $CellContext`yA2$ + 
                  0.15}, {-0.15, $CellContext`yA1$ - 0.15}}]}]}, {
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, $CellContext`yA1$}, {1.25, $CellContext`yA2$}], 
             Rectangle[{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB2$}], 
             Rectangle[{3, 0}, {4.25, 1.25}]}, 
            If[$CellContext`phase$, {Thick, 
              
              Line[{{4.3, 0.01}, {4.35, 0.01}, {
                4.35, $CellContext`fB$ 1.25 - 0.02}, {
                4.3, $CellContext`fB$ 1.25 - 0.02}}], 
              
              Line[{{4.35, 0.625 $CellContext`fB$}, {
                4.45, 0.625 $CellContext`fB$}}]}], {Thick, 
             
             Line[{{4.3, $CellContext`fB$ 1.25 + 0.02}, {
               4.35, $CellContext`fB$ 1.25 + 0.02}, {4.35, 1.24}, {4.3, 
               1.24}}], 
             
             Line[{{4.35, 1.25 - 0.625 $CellContext`fA$}, {
               4.45, 1.25 - 0.625 $CellContext`fA$}}]}, 
            Text[
             Style["+", 22, Bold], {1.375, 0.625}], 
            Text[
             Style["\[Rule]", 22, Bold], {2.875, 0.625}], 
            Text[
             Style["pure A", 16], {0.625, $CellContext`yA1$ - 0.15}], 
            Text[
             Style["pure B", 16], {2.125, $CellContext`yB1$ - 0.15}]}, 
           ImageSize -> 515, PlotRange -> {{-0.05, 5}, {-0.25, 1.33}}]; 
        Show[$CellContext`p1, 
          Graphics[{{Thick, Dashed, 
             If[$CellContext`phase$, {Blue, 
               
               Line[{{$CellContext`xA\[Beta]$, 
                  359}, {$CellContext`xA\[Beta]$, $CellContext`T$}, \
{$CellContext`z$, $CellContext`T$}}], 
               RGBColor[0.12, 0.66, 0.], 
               
               Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`xA\
\[Alpha]$, $CellContext`T$}, {$CellContext`xA\[Alpha]$, 359}}]}, 
              
              Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`z$, 
                 359}}]]}, 
            Text[
             Framed[
              Style[
               Row[{
                 If[$CellContext`phase$, 
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Beta]"], 
                  Subscript[
                   Style["x", Italic], "A"]], " = ", 
                 NumberForm[$CellContext`xA\[Beta]$, {2, 2}]}], 17], 
              Background -> White, FrameMargins -> 
              If[$CellContext`phase$, 4, 6.25]], {
              Which[$CellContext`xA\[Beta]$ <= 0.08, 
               0.08, $CellContext`xA\[Beta]$ >= 0.92, 0.92, 
               True, $CellContext`xA\[Beta]$], 365}], 
            If[$CellContext`phase$, 
             Text[
              Framed[
               Style[
                Row[{
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Alpha]"], " = ", 
                  NumberForm[$CellContext`xA\[Alpha]$, {2, 2}]}], 17], 
               Background -> White, FrameMargins -> 
               6], {$CellContext`xA\[Alpha]$, 365}]], 
            Inset[$CellContext`visual$, 
             Scaled[{0.5, 0.76}]]}], ImageSize -> {600, 420}, AspectRatio -> 
          Full, ImagePadding -> {{50, 25}, {70, 10}}]], "Specifications" :> {
        Style[
        "move the black dot around the diagram", 
         Bold], {{$CellContext`comp$$, {0.1225, 379.45}}, {0.05, 372}, {
         0.95, 409}, ControlType -> Locator, Appearance -> Graphics[{
            Disk[{0, 0}]}, ImageSize -> 11]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {250., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`yA1 = 
       0.06374999999999997, $CellContext`yA2 = 1.18625, $CellContext`yB1 = 
       0.56125, $CellContext`yB2 = 0.68875, $CellContext`Txy = 
       InterpolatingFunction[{{0.1, 0.8}}, {
         5, 7, 0, {8}, {6}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{0.1, 
         0.15, 0.2, 0.25, 0.4, 0.55, 0.65, 0.8}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8}, {359., 369., 
          379., 387., 398., 400., 395., 359.}}, {
         Automatic}], $CellContext`tableA[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.8, 
           Lighter[Green, 0.5]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.125]}, {
         125 $CellContext`n}], $CellContext`tableB[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.7, 
           RGBColor[0.02, 0.3, 1.]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.135]}, {
         125 $CellContext`n}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJwV2Hk4VH0UB3CkJCqEENkKLdZISZ0rS8qS8JKEyFKSUI3rrbQRylKpLGUL
lSVCskTImwjJmn3uzNgmLRKiqPfMX/N8nmd+97m/8/veueeMvNspaw8eLi4u
TW4uLs5n0dhUV0JCGWipP+bh8qMR5/lni3Mel8ELN7GR+2ijjb/vVBaXgWnu
Y5Ft/jSi4wS3DaO1DPScrxr7B9CIma/LW1SWlcNTM40lo2doxLZppbcl/5aD
Rcj4HXoQjajgdijpdHwJtyccuXhCaESdVGWc8NpKGLM2uj0dTyOKTdqLFQOr
QcBR7G9ZPY0oX90vMrLrNdQf/yI5P0Mj5lSbq0oWasEt0HG8cF0gcXnIknaM
+QbsanUk4/8JJCoKh1KqH70FRkTg7srLgQQhL9D+82YD0G4nh2zPDyT+dEja
7QpohAq6R/5kdyBxKlXffPOWZhi1eOnCng8kNghOmM1JtgCVfe46KUcSjW8d
6Vv9PoAzxJYf3kUSsrlF1bOWrfAgdGdd3EGSiKPalbKJNth39M3MS3+SYMsF
m6grtIOMOOlmeI0kXAomPqWLd0Dsr9cLcQkkEeBur5u6pBPcLwozvmWRhLOi
6U6/kU7YS5WbryshCV8t7nr1ni5QOVPmFF9LEvYWRoK1Lz/CTrcbaxuaScKz
dH+ncUE35JMtnokfSULYZL+J1cMeqH6X896CIol79G4/tau9UBhTwHwyShLQ
sFFuntYHY8duXkj9ShKvXy2JSDrUDz//jc3VnyIJhb97VaWc+6FFz/6PFfoq
RLXec+2HbfXahh5oo+pVUjeP9YOCCTyKQtfVyOVcofWD2Z7k1gH0u//0mr1u
90Pd1fbKc9Mk0fbOV1jrXT9st9n75ekMSTC6uhLqtg/Ao2CJpPFZkriyTXU+
eucAqPXPKv9Br0u86mxvMACbPt1NF5rD/TlpKI6ZDsDRK1wnddCfWBG5/AcH
QDDV1zQYPTmhX2VOG4BOp71yy3+RBK9A+lBb4QB81Fowkf1NEpk+cyb3XwwA
34fVI+pok/f7s46WD8CB8IKzBDr81vzJqZoBYOw+6OmKFpSw+ynWOgD+pRuj
HqLF1vMvc/g2ACuFQr/Kz5OEEpxSp28aBHtXo3HRBZKYqc+hPNUHwc/qQqIC
+q312K2vWoPwyY2xQwN9zNN1amH7IMRskP3HDJ0dZVMmbToI5YYyjEto1X5d
w0PugyDjdfIwG60dxGXf+WAQnjoZNuT/wf0s2rnUKXUQ3HZml7xEd0YGlQ2l
D0L3+Ie4t2ha6uSaqexBGL5gqUpHl74dokTKBmFHQHLu8r8koS/e4G3VOQgG
HVJzXmjDolvBjcvpMLrfPVeYK4iwdWZ8SRamQ76Yfbo02pNf0ylAjA68sV/C
ldHhLh92SMrQQWzsi+xOdJPAyjnPzXRIMo8978VZ7x55mseMDn+5BcdL0R4r
+5mdlnSIOHW44TWaVr7JOsuaDnv4v9xtQscLNWpYHaJDY9TzOTq6v4L/a9Jx
OpjbKY4v5g4i3MXCjm0Pp8O71XdOWaLPVnd9FIykQ65xjZo9+toJpT1UDB10
Amr6XNBPat6sD4ujQ8qGtX/90J9P8rI6HtHhn4xg79uc9XWXnfze0OHzzWPN
rZz1/q1Nhg10qJe39+xBx0vL669upsPlrrTPFLo8oFrqVQcdpNM213xD/1n7
96PAEB0MDuhHCPIEEbU7dmXZcFOwj24avRt9c07HT3sRBRvenuozRTuXqOqK
LaYgIl9RfD/6l5bMm66lFHzoFLF1RGtsnKcchCgwrlf7HoD+M/rjsZ4IBcGG
g1kkuilz3HeNKAVbz/XuD0Z7yffN96+m4MaB+KMR6GSJcokjshTYzhhkJaN9
ugrohDwF+d9PNaaj9e5kPZJXpKBN9knvE3TnygRtlhIFKQpi1YVoQT7SylON
gi3Kk5lv0P9O64T77KRA1EOmaxRtWqS63wIoaLdl/DeOFvdfL65mQMHbKMXU
b+iCz6IZ34woUEj7s+Yneoz1oyrAnILJ4pUqixcFES/Sxq/ZWFLwMK4uaCk6
xIVloW1FgdKRwhIBtGxfW9+0DQVOJotmhdF2bQU/SUcKRt9diZBBr7uZ9crB
iYLCaz075NCTFmmhei4UqJ2X7FVARzXcXDXvhvWJUetVRh8KC+/td6fAyGZi
x0a0ivGltEpPCviSz0RsRv9XfUr9ojcF1/OTRjXQt4O9Zlx8KNjerjarhT6i
71JJ+FIQqOs4pY3+XWJpxhNAwS5x5/xt6PqzJiKs0xQIZsj56qHvbdnVU3uW
gql4Owl9tFa+qldoEH4/aEoN0BKX4zuNz1HgGnziKoFesF5ktOQCXt+V/sYA
zVznW1gXTIHKwJ6Z3Zzrz3TLhV3CemY+EDVC59Ubxuy5QsEqz045Y3RsYt4C
XwgFz96wpUzQpI+kT30oBU/dWnn2oJ13hfSGh1HwuuNqN8dGQt9M90ZQ8CR3
9r4pegPToYT/BgWSZ5Qt9qJXPP9v/btIClqf8n3meCpU/c71aKxP501yH7rH
PpHH7CYF3EfKJzl+tWGxv8BtCr6Wnztkhs74fYreGIv1sGjK5ziiudci8i4F
IrT0SY59U4wrzOMoKImeVTBH2/o/27g8AfM59prgeLvhmoTmRAqy3s+ZcbxW
7Bpf9APMc8gdI455RyfOWiZTcMjk+kaO2aWOQytSKXDZ17bAuf7763XWLWkU
LKk6+orj54c1a2LSKWA36vhwnKj2QN0qE/N+C/g4vsjFlyz0mILyDWQMZz/u
bf6CrU+wXo+6eDnel9H/761sCvRFrb049dCg7WEfyKUgncZ4wamfmGmhvUge
BScaz/3g1PeXpExdWz7Wh19ChmNqPEw7tgCfj7VPt3DOp65y8qFNEQVS05q6
nPPLiXESFi2mwPRkkjLnfGlbtny9U0qBeeaiFk4eDi9OPvxPOQUxvJ9DOXkx
+Li0UawCz8Po3gZOngTPDT6+V4V5Piigy8nbpPlecfsaChJu16Zy8vhx7fOQ
1bUULDov8ZOT14evI1zj6/C8+gKO66B1l+msSWzG56uecVQVLd2fEnGohQKH
jEDNTWievGWzUq2YX9J5XAXddIDquN9BwcLjWcV1aLeEG9FJfRQkfbd6LIk2
PTEz7zRAwcnII13iaNWdrifW0vH+Mk9/X4WepbaapjApaBa4ML4cHa3C5E5j
U+BuuvQrF1r0ht3+sHHMh0CJxgL+fiR+effg5BcK5r2uOc6hMwuLdPW+UyBU
YHP8O7pCP/Rk+yzm5S24U+jdKXPlZb8oCOi5PtKHruf2XZo6j/UVirH6iG6v
s0v34WKADxnd14z+ZKXSs3gpA+Z6fzaWof2KHih95meANc/968/RM2LCZ9oE
GHDJI0ojH83dN7ciZSUD0tQ3amWgJTwajbatZkBNf8OyKLRxkO8zbyUGLA0v
WHwI/a6PuWClwgCZY2wtG7TVLnsz3Y0M2Gd+18QcfXgRMbJIjQGic0Lyu9AB
UcLSSToMWJYumCaHTk17HtZixICmrMRqzvtHiXdDZ7EJAzSSjlt2o3M9kxQe
mOL9BL6taUGXbLpWecycAfwwffAV+n2x/Q9uWwZUkOf3JKLnG345ax9lgPHP
LRIW6ESCafPLnQGem3ZnGqJ1SxpMqz0ZsNmNJqWHDsiI1zL3ZkCZgmylEnos
eOsSd38GlNqKMv/g+7l9S8DT2IsM8H4VlpKN9st2eOhwmQHHtFdlpaBXyBvE
yV5lgMjxXwl30KYrhC7nXGPAxdNPNIPRr8ae2tZGMUBSSULXCp2dxP49eZ8B
Bi2d0d+wHzEVbZ0oTWKAsxH3UhZ6+HrpcHAKA9riX3h1oeXIsJZl6QyYOBzR
W4G+a70+XSGbAQ9E7CPD0Zf4XPdZlzLgjnyp6Bq0vX93fEEHA7ZuUzq4Gfsh
vQ8rk3y7GKD4YXm3NFpafU/apm4GkHYdO5ejmZ+LszL7GHBlQ335F+y/fI7F
licwGcDc1kI+RV9xsey/PMEAWQXPOWV0rsV/staCTODalJizFPvB6NzfiitX
MOFnfl7TNPaL/gJbVJpWMkHZa6iVid7akKZhsooJK7qCwivQNUYXDfSkmNDJ
X5rhi+7aoXdUQYUJvMz/Ipuxf+Xe+OzRpCETYlSri85ifxsi+T2i05gJNmY1
B5zQS/i1TpbuYYLbxZomI7TgWNGWYDMmCP/yc1iFlnhUUs1vwwS1Es/GPOyn
NRSqeuXcmPDB5QgX/SfOH1LvV+y/xAQHK3GFddiPM/lXTmpeYYLIOaftfGj3
uf2doiFM2LBGdtMn7N+9u1vv94YxITz0VVI+mnavU8UzhglDtusrt6GjRQZ2
X0jG/ZhvbjPE/r9y2WdaTgUTcvZ0V+lPksTBFancvq+YcNHmhoEMelLYNlKj
mglGcQapC99JQkWyIq24lgknJPymKtG3lSObqt4xQSV6YFof7WW0WaGjmwmv
3dZbaE/gfBPs0zw/xQS7zZub+XB+yb0sd7BqBr8vNN/I+oL9fWgH8/IsEw7y
XM2sQp+P1J9dMo/1ueY9RkOPJAoqCi9iQU9oVA7rM0m8LMkl1wuzYKLmrPiL
cZLw+P5Z0VKVBUlZDT93skkiNTQ7aqs6CwbbrUuF0b2Sx36u1WTBU3vNfcNj
JGG1m/XumzYL+LQiGDfQ+rE9/rf0WRAEA31dOG+J6tRVdZixYO2Ll2NHR3De
IlMcHb1ZUJFskOfAwnxzWccee8wCmoeldF4/zoNPrmRoZLEgdaWjchD6jVVR
8Ww2C+QjPy0yQnuniXaH57GgoGyrZk8fSRTv/iidVcyC6d2LDnGj94UefsSu
ZcHFG+YfTHtI4swyrzJvigXbVYZzizpxPhE9T/eRHIKlc91TP3B+dM6c/7tp
zRBUbmV9K0LP6FyQG5cegnqPkNLTaCX7YNfjckPA+0y1cLKJJK4lXGJ5KA/B
kbFwo6+NOA+uDR111hmCbT35H/oacH/K0d+sDgzBoNgdeswbzINe6l/tiCE4
e/BOiF0FXt9x41/JG+iJC3E8aLULz//8iRyC+zbDXnkvSSK5qn6h/uYQuN3O
IRajg42+/z4cPwTRm6+9zy/D+dVy92zI4yGQedi6a/YFPk+uQxMdb4bApdr3
+j8FWK9wFeYZnmHwmPvtq5eJ9X+1PmI77zDYZlqk92Vgvn8oaPxZPAwDY7b3
zqN5nWWCw/iHQeehcGllOu5ni4hUotAwrJmWHdV/iPsZ+H2gau0wpIn/06uW
QhLVWi01/DuGQSwjci8VTxLl/WfTkk/jeomCtoAbeD8HlRWJr8OwWuAZn4s3
SaweaSMzPUfg3vM8hoQRSTgEGeZMdY3AeX+9igwpksjTlkh9aTUKaflORa9H
Aolv0wX+Pq9Hwee+ne2G/EDiYr3xaobmGDw41Vtu7h9IyNfuvNicPQa5G/Xb
1NcHEs9qf9Wmr2HDnE7OttkOGnHkltb9+zJsCB5+/vx8O40QcvEOiJVlg+4a
Wz+uNhrh96tH7qoiG64q7M5c3EIjNDXLLrhtYsPXp25/ljTQiMLkQF35HWzI
knqhOVxBI54HTWUnH2JDcfPjsuUZNMJ9z+Yr9w6zIZBbPD3oIY0QFXN3iHZm
w0FRWu1QKo0486ydL9iNDRbXfzwuTaIROqOF7k7ebBhx3TprF0cjXtj6r5X+
lw1F5QR58jqN8FTIml51ng1V1p35TeE0QnyCahIIZoPx6A/JTWE0gnbD6tzv
y2y4u7QoZPgqjdj6Wr27N4IN53gDcq0u0IiRGK/8thts+FEV45d1jkbcc0q5
9i6KDdsWFty5/6URM7MrdMpvsaFFKW8gj0YjHtWZCBbGsmGSx9WV9yyNsLsT
zMq6y4YrhImow2kascTtRXlaHBs8tMRncv1pRIn611sJCWzIlY5Ywvn/639d
YyVA
              "]]}}}, {
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 1"}], 16, 
               RGBColor[0, 0, 1]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 0"}], 16, 
               RGBColor[0.12, 0.66, 0.]]}], {0, 347}], 
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 1"}], 16, 
               RGBColor[0.12, 0.66, 0.]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 0"}], 16, 
               RGBColor[0, 0, 1]]}], {1, 347}]}}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 359.}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["temperature  (K)", 17], None}, {
             Style["mole fraction A", 17], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], LabelStyle -> {
            GrayLevel[0], 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{0, 1}, {359, 449}}, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}], 
       Attributes[Subscript] = {NHoldRest}, Subscript[$CellContext`c1, 0] = 
       1.5, Subscript[$CellContext`c1, 0] = 1.5, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->265111675],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = {0.6980000000000001, 372}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the diagram", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`comp$$], {0.6980000000000001, 372}}, {0.05, 372}, {
      0.95, 409}}}, Typeset`size$$ = {600., {208., 212.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`comp$234221$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`comp$$ = {0.6980000000000001, 372}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$234221$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`z$, $CellContext`phase$, \
$CellContext`xA\[Beta]$, $CellContext`xA\[Alpha]$, $CellContext`xB\[Beta]$, \
$CellContext`xB\[Alpha]$, $CellContext`fA$, $CellContext`fB$, \
$CellContext`yA1$, $CellContext`yA2$, $CellContext`yB1$, $CellContext`yB2$, \
$CellContext`visual$}, $CellContext`T$ = 
         Part[$CellContext`comp$$, 2]; $CellContext`z$ = 
         Part[$CellContext`comp$$, 1]; $CellContext`phase$ = 
         Quiet[$CellContext`T$ <= $CellContext`Txy[$CellContext`z$]]; \
$CellContext`xA\[Beta]$ = If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 0.1}]]], $CellContext`z$]; $CellContext`xA\[Alpha]$ = 
         If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 1}]]], $CellContext`z$]; $CellContext`xB\[Beta]$ = 
         1 - $CellContext`xA\[Beta]$; $CellContext`xB\[Alpha]$ = 
         1 - $CellContext`xA\[Alpha]$; $CellContext`fA$ = 
         If[$CellContext`phase$, ($CellContext`z$ - \
$CellContext`xA\[Beta]$)/($CellContext`xA\[Alpha]$ - $CellContext`xA\[Beta]$),
            1]; $CellContext`fB$ = 1 - $CellContext`fA$; $CellContext`yA1$ = 
         0.625 (1 - $CellContext`z$); $CellContext`yA2$ = 
         0.625 (1 + $CellContext`z$); $CellContext`yB1$ = 
         0.625 $CellContext`z$; $CellContext`yB2$ = 
         0.625 (2 - $CellContext`z$); $CellContext`visual$ = Graphics[{
            $CellContext`tableA[
            0, 1.25, $CellContext`yA1$, $CellContext`yA2$, $CellContext`xA\
\[Beta]$ $CellContext`fB$ + $CellContext`xA\[Alpha]$ $CellContext`fA$], 
            $CellContext`tableB[
            1.5, 2.75, $CellContext`yB1$, $CellContext`yB2$, $CellContext`xB\
\[Beta]$ $CellContext`fB$ + $CellContext`xB\[Alpha]$ $CellContext`fA$], 
            If[$CellContext`phase$, {
              Riffle[
               $CellContext`tableB[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xB\[Beta]$ $CellContext`fB$], 
               $CellContext`tableA[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xA\[Beta]$ $CellContext`fB$]], 
              Riffle[
               $CellContext`tableA[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xA\[Alpha]$ $CellContext`fA$], 
               $CellContext`tableB[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xB\[Alpha]$ $CellContext`fA$]], 
              Text[
               Style["\[Beta] phase", 16], {4.5, 0.625 $CellContext`fB$}, {-1,
                0}], 
              Text[
               Style["\[Alpha] phase", 16], {
               4.5, 1.25 - 0.625 $CellContext`fA$}, {-1, 0}], {
               EdgeForm[Thick], White, 
               Rectangle[{3, $CellContext`fB$ 1.25 - 0.0175}, {
                4.25, $CellContext`fB$ 1.25 + 0.0175}]}}, {
              If[$CellContext`z$ <= 0.5, 
               Riffle[
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$], 
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$]], 
               Riffle[
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$], 
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$]]], 
              Text[
               Style[
                Column[{"liquid", "phase"}, Center], 16], {4.6, 0.625}, {-1, 
               0}]}], {White, 
             FilledCurve[{
               Line[{{3, 0}, {4.25, 0}, {4.25, 1.25}, {3, 1.25}, {3, 0}}], 
               
               Line[{{2.85, -0.15}, {4.4, -0.15}, {4.4, 1.4}, {2.85, 1.4}, {
                2.85, -0.15}}]}], 
             FilledCurve[{
               
               Line[{{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB1$}, {
                 2.75, $CellContext`yB2$}, {1.5, $CellContext`yB2$}, {
                 1.5, $CellContext`yB1$}}], 
               
               Line[{{1.35, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB1$ - 0.15}}]}], 
             FilledCurve[{
               
               Line[{{0, $CellContext`yA1$}, {1.25, $CellContext`yA1$}, {
                 1.25, $CellContext`yA2$}, {0, $CellContext`yA2$}, {
                 0, $CellContext`yA1$}}], 
               
               Line[{{-0.15, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA2$ + 0.15}, {-0.15, $CellContext`yA2$ + 
                  0.15}, {-0.15, $CellContext`yA1$ - 0.15}}]}]}, {
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, $CellContext`yA1$}, {1.25, $CellContext`yA2$}], 
             Rectangle[{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB2$}], 
             Rectangle[{3, 0}, {4.25, 1.25}]}, 
            If[$CellContext`phase$, {Thick, 
              
              Line[{{4.3, 0.01}, {4.35, 0.01}, {
                4.35, $CellContext`fB$ 1.25 - 0.02}, {
                4.3, $CellContext`fB$ 1.25 - 0.02}}], 
              
              Line[{{4.35, 0.625 $CellContext`fB$}, {
                4.45, 0.625 $CellContext`fB$}}]}], {Thick, 
             
             Line[{{4.3, $CellContext`fB$ 1.25 + 0.02}, {
               4.35, $CellContext`fB$ 1.25 + 0.02}, {4.35, 1.24}, {4.3, 
               1.24}}], 
             
             Line[{{4.35, 1.25 - 0.625 $CellContext`fA$}, {
               4.45, 1.25 - 0.625 $CellContext`fA$}}]}, 
            Text[
             Style["+", 22, Bold], {1.375, 0.625}], 
            Text[
             Style["\[Rule]", 22, Bold], {2.875, 0.625}], 
            Text[
             Style["pure A", 16], {0.625, $CellContext`yA1$ - 0.15}], 
            Text[
             Style["pure B", 16], {2.125, $CellContext`yB1$ - 0.15}]}, 
           ImageSize -> 515, PlotRange -> {{-0.05, 5}, {-0.25, 1.33}}]; 
        Show[$CellContext`p1, 
          Graphics[{{Thick, Dashed, 
             If[$CellContext`phase$, {Blue, 
               
               Line[{{$CellContext`xA\[Beta]$, 
                  359}, {$CellContext`xA\[Beta]$, $CellContext`T$}, \
{$CellContext`z$, $CellContext`T$}}], 
               RGBColor[0.12, 0.66, 0.], 
               
               Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`xA\
\[Alpha]$, $CellContext`T$}, {$CellContext`xA\[Alpha]$, 359}}]}, 
              
              Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`z$, 
                 359}}]]}, 
            Text[
             Framed[
              Style[
               Row[{
                 If[$CellContext`phase$, 
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Beta]"], 
                  Subscript[
                   Style["x", Italic], "A"]], " = ", 
                 NumberForm[$CellContext`xA\[Beta]$, {2, 2}]}], 17], 
              Background -> White, FrameMargins -> 
              If[$CellContext`phase$, 4, 6.25]], {
              Which[$CellContext`xA\[Beta]$ <= 0.08, 
               0.08, $CellContext`xA\[Beta]$ >= 0.92, 0.92, 
               True, $CellContext`xA\[Beta]$], 365}], 
            If[$CellContext`phase$, 
             Text[
              Framed[
               Style[
                Row[{
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Alpha]"], " = ", 
                  NumberForm[$CellContext`xA\[Alpha]$, {2, 2}]}], 17], 
               Background -> White, FrameMargins -> 
               6], {$CellContext`xA\[Alpha]$, 365}]], 
            Inset[$CellContext`visual$, 
             Scaled[{0.5, 0.76}]]}], ImageSize -> {600, 420}, AspectRatio -> 
          Full, ImagePadding -> {{50, 25}, {70, 10}}]], "Specifications" :> {
        Style[
        "move the black dot around the diagram", 
         Bold], {{$CellContext`comp$$, {0.6980000000000001, 372}}, {
         0.05, 372}, {0.95, 409}, ControlType -> Locator, Appearance -> 
         Graphics[{
            Disk[{0, 0}]}, ImageSize -> 11]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {250., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`yA1 = 
       0.06374999999999997, $CellContext`yA2 = 1.18625, $CellContext`yB1 = 
       0.56125, $CellContext`yB2 = 0.68875, $CellContext`Txy = 
       InterpolatingFunction[{{0.1, 0.8}}, {
         5, 7, 0, {8}, {6}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{0.1, 
         0.15, 0.2, 0.25, 0.4, 0.55, 0.65, 0.8}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8}, {359., 369., 
          379., 387., 398., 400., 395., 359.}}, {
         Automatic}], $CellContext`tableA[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.8, 
           Lighter[Green, 0.5]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.125]}, {
         125 $CellContext`n}], $CellContext`tableB[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.7, 
           RGBColor[0.02, 0.3, 1.]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.135]}, {
         125 $CellContext`n}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJwV2Hk4VH0UB3CkJCqEENkKLdZISZ0rS8qS8JKEyFKSUI3rrbQRylKpLGUL
lSVCskTImwjJmn3uzNgmLRKiqPfMX/N8nmd+97m/8/veueeMvNspaw8eLi4u
TW4uLs5n0dhUV0JCGWipP+bh8qMR5/lni3Mel8ELN7GR+2ijjb/vVBaXgWnu
Y5Ft/jSi4wS3DaO1DPScrxr7B9CIma/LW1SWlcNTM40lo2doxLZppbcl/5aD
Rcj4HXoQjajgdijpdHwJtyccuXhCaESdVGWc8NpKGLM2uj0dTyOKTdqLFQOr
QcBR7G9ZPY0oX90vMrLrNdQf/yI5P0Mj5lSbq0oWasEt0HG8cF0gcXnIknaM
+QbsanUk4/8JJCoKh1KqH70FRkTg7srLgQQhL9D+82YD0G4nh2zPDyT+dEja
7QpohAq6R/5kdyBxKlXffPOWZhi1eOnCng8kNghOmM1JtgCVfe46KUcSjW8d
6Vv9PoAzxJYf3kUSsrlF1bOWrfAgdGdd3EGSiKPalbKJNth39M3MS3+SYMsF
m6grtIOMOOlmeI0kXAomPqWLd0Dsr9cLcQkkEeBur5u6pBPcLwozvmWRhLOi
6U6/kU7YS5WbryshCV8t7nr1ni5QOVPmFF9LEvYWRoK1Lz/CTrcbaxuaScKz
dH+ncUE35JMtnokfSULYZL+J1cMeqH6X896CIol79G4/tau9UBhTwHwyShLQ
sFFuntYHY8duXkj9ShKvXy2JSDrUDz//jc3VnyIJhb97VaWc+6FFz/6PFfoq
RLXec+2HbfXahh5oo+pVUjeP9YOCCTyKQtfVyOVcofWD2Z7k1gH0u//0mr1u
90Pd1fbKc9Mk0fbOV1jrXT9st9n75ekMSTC6uhLqtg/Ao2CJpPFZkriyTXU+
eucAqPXPKv9Br0u86mxvMACbPt1NF5rD/TlpKI6ZDsDRK1wnddCfWBG5/AcH
QDDV1zQYPTmhX2VOG4BOp71yy3+RBK9A+lBb4QB81Fowkf1NEpk+cyb3XwwA
34fVI+pok/f7s46WD8CB8IKzBDr81vzJqZoBYOw+6OmKFpSw+ynWOgD+pRuj
HqLF1vMvc/g2ACuFQr/Kz5OEEpxSp28aBHtXo3HRBZKYqc+hPNUHwc/qQqIC
+q312K2vWoPwyY2xQwN9zNN1amH7IMRskP3HDJ0dZVMmbToI5YYyjEto1X5d
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
YyVA
              "]]}}}, {
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 1"}], 16, 
               RGBColor[0, 0, 1]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 0"}], 16, 
               RGBColor[0.12, 0.66, 0.]]}], {0, 347}], 
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 1"}], 16, 
               RGBColor[0.12, 0.66, 0.]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 0"}], 16, 
               RGBColor[0, 0, 1]]}], {1, 347}]}}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 359.}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["temperature  (K)", 17], None}, {
             Style["mole fraction A", 17], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], LabelStyle -> {
            GrayLevel[0], 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{0, 1}, {359, 449}}, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}], 
       Attributes[Subscript] = {NHoldRest}, Subscript[$CellContext`c1, 0] = 
       1.5, Subscript[$CellContext`c1, 0] = 1.5, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->139952922],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = {0.635, 406.15}, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the diagram", Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`comp$$], {0.635, 406.15}}, {0.05, 372}, {
      0.95, 409}}}, Typeset`size$$ = {600., {208., 212.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`comp$234270$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = {0.635, 406.15}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$234270$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`z$, $CellContext`phase$, \
$CellContext`xA\[Beta]$, $CellContext`xA\[Alpha]$, $CellContext`xB\[Beta]$, \
$CellContext`xB\[Alpha]$, $CellContext`fA$, $CellContext`fB$, \
$CellContext`yA1$, $CellContext`yA2$, $CellContext`yB1$, $CellContext`yB2$, \
$CellContext`visual$}, $CellContext`T$ = 
         Part[$CellContext`comp$$, 2]; $CellContext`z$ = 
         Part[$CellContext`comp$$, 1]; $CellContext`phase$ = 
         Quiet[$CellContext`T$ <= $CellContext`Txy[$CellContext`z$]]; \
$CellContext`xA\[Beta]$ = If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 0.1}]]], $CellContext`z$]; $CellContext`xA\[Alpha]$ = 
         If[$CellContext`phase$, 
           ReplaceAll[$CellContext`x, 
            Quiet[
             
             FindRoot[$CellContext`T$ == $CellContext`Txy[$CellContext`x], \
{$CellContext`x, 1}]]], $CellContext`z$]; $CellContext`xB\[Beta]$ = 
         1 - $CellContext`xA\[Beta]$; $CellContext`xB\[Alpha]$ = 
         1 - $CellContext`xA\[Alpha]$; $CellContext`fA$ = 
         If[$CellContext`phase$, ($CellContext`z$ - \
$CellContext`xA\[Beta]$)/($CellContext`xA\[Alpha]$ - $CellContext`xA\[Beta]$),
            1]; $CellContext`fB$ = 1 - $CellContext`fA$; $CellContext`yA1$ = 
         0.625 (1 - $CellContext`z$); $CellContext`yA2$ = 
         0.625 (1 + $CellContext`z$); $CellContext`yB1$ = 
         0.625 $CellContext`z$; $CellContext`yB2$ = 
         0.625 (2 - $CellContext`z$); $CellContext`visual$ = Graphics[{
            $CellContext`tableA[
            0, 1.25, $CellContext`yA1$, $CellContext`yA2$, $CellContext`xA\
\[Beta]$ $CellContext`fB$ + $CellContext`xA\[Alpha]$ $CellContext`fA$], 
            $CellContext`tableB[
            1.5, 2.75, $CellContext`yB1$, $CellContext`yB2$, $CellContext`xB\
\[Beta]$ $CellContext`fB$ + $CellContext`xB\[Alpha]$ $CellContext`fA$], 
            If[$CellContext`phase$, {
              Riffle[
               $CellContext`tableB[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xB\[Beta]$ $CellContext`fB$], 
               $CellContext`tableA[
               3, 4.25, 0, $CellContext`fB$ 
                1.25, $CellContext`xA\[Beta]$ $CellContext`fB$]], 
              Riffle[
               $CellContext`tableA[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xA\[Alpha]$ $CellContext`fA$], 
               $CellContext`tableB[
               3, 4.25, $CellContext`fB$ 1.25, 
                1.25, $CellContext`xB\[Alpha]$ $CellContext`fA$]], 
              Text[
               Style["\[Beta] phase", 16], {4.5, 0.625 $CellContext`fB$}, {-1,
                0}], 
              Text[
               Style["\[Alpha] phase", 16], {
               4.5, 1.25 - 0.625 $CellContext`fA$}, {-1, 0}], {
               EdgeForm[Thick], White, 
               Rectangle[{3, $CellContext`fB$ 1.25 - 0.0175}, {
                4.25, $CellContext`fB$ 1.25 + 0.0175}]}}, {
              If[$CellContext`z$ <= 0.5, 
               Riffle[
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$], 
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$]], 
               Riffle[
                $CellContext`tableA[3, 4.25, 0, 1.25, $CellContext`z$], 
                $CellContext`tableB[3, 4.25, 0, 1.25, 1 - $CellContext`z$]]], 
              Text[
               Style[
                Column[{"liquid", "phase"}, Center], 16], {4.6, 0.625}, {-1, 
               0}]}], {White, 
             FilledCurve[{
               Line[{{3, 0}, {4.25, 0}, {4.25, 1.25}, {3, 1.25}, {3, 0}}], 
               
               Line[{{2.85, -0.15}, {4.4, -0.15}, {4.4, 1.4}, {2.85, 1.4}, {
                2.85, -0.15}}]}], 
             FilledCurve[{
               
               Line[{{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB1$}, {
                 2.75, $CellContext`yB2$}, {1.5, $CellContext`yB2$}, {
                 1.5, $CellContext`yB1$}}], 
               
               Line[{{1.35, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB1$ - 0.15}, {
                 2.9, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB2$ + 0.15}, {
                 1.35, $CellContext`yB1$ - 0.15}}]}], 
             FilledCurve[{
               
               Line[{{0, $CellContext`yA1$}, {1.25, $CellContext`yA1$}, {
                 1.25, $CellContext`yA2$}, {0, $CellContext`yA2$}, {
                 0, $CellContext`yA1$}}], 
               
               Line[{{-0.15, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA1$ - 0.15}, {
                 1.4, $CellContext`yA2$ + 0.15}, {-0.15, $CellContext`yA2$ + 
                  0.15}, {-0.15, $CellContext`yA1$ - 0.15}}]}]}, {
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, $CellContext`yA1$}, {1.25, $CellContext`yA2$}], 
             Rectangle[{1.5, $CellContext`yB1$}, {2.75, $CellContext`yB2$}], 
             Rectangle[{3, 0}, {4.25, 1.25}]}, 
            If[$CellContext`phase$, {Thick, 
              
              Line[{{4.3, 0.01}, {4.35, 0.01}, {
                4.35, $CellContext`fB$ 1.25 - 0.02}, {
                4.3, $CellContext`fB$ 1.25 - 0.02}}], 
              
              Line[{{4.35, 0.625 $CellContext`fB$}, {
                4.45, 0.625 $CellContext`fB$}}]}], {Thick, 
             
             Line[{{4.3, $CellContext`fB$ 1.25 + 0.02}, {
               4.35, $CellContext`fB$ 1.25 + 0.02}, {4.35, 1.24}, {4.3, 
               1.24}}], 
             
             Line[{{4.35, 1.25 - 0.625 $CellContext`fA$}, {
               4.45, 1.25 - 0.625 $CellContext`fA$}}]}, 
            Text[
             Style["+", 22, Bold], {1.375, 0.625}], 
            Text[
             Style["\[Rule]", 22, Bold], {2.875, 0.625}], 
            Text[
             Style["pure A", 16], {0.625, $CellContext`yA1$ - 0.15}], 
            Text[
             Style["pure B", 16], {2.125, $CellContext`yB1$ - 0.15}]}, 
           ImageSize -> 515, PlotRange -> {{-0.05, 5}, {-0.25, 1.33}}]; 
        Show[$CellContext`p1, 
          Graphics[{{Thick, Dashed, 
             If[$CellContext`phase$, {Blue, 
               
               Line[{{$CellContext`xA\[Beta]$, 
                  359}, {$CellContext`xA\[Beta]$, $CellContext`T$}, \
{$CellContext`z$, $CellContext`T$}}], 
               RGBColor[0.12, 0.66, 0.], 
               
               Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`xA\
\[Alpha]$, $CellContext`T$}, {$CellContext`xA\[Alpha]$, 359}}]}, 
              
              Line[{{$CellContext`z$, $CellContext`T$}, {$CellContext`z$, 
                 359}}]]}, 
            Text[
             Framed[
              Style[
               Row[{
                 If[$CellContext`phase$, 
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Beta]"], 
                  Subscript[
                   Style["x", Italic], "A"]], " = ", 
                 NumberForm[$CellContext`xA\[Beta]$, {2, 2}]}], 17], 
              Background -> White, FrameMargins -> 
              If[$CellContext`phase$, 4, 6.25]], {
              Which[$CellContext`xA\[Beta]$ <= 0.08, 
               0.08, $CellContext`xA\[Beta]$ >= 0.92, 0.92, 
               True, $CellContext`xA\[Beta]$], 365}], 
            If[$CellContext`phase$, 
             Text[
              Framed[
               Style[
                Row[{
                  Subsuperscript[
                   Style["x", Italic], "A", "\[Alpha]"], " = ", 
                  NumberForm[$CellContext`xA\[Alpha]$, {2, 2}]}], 17], 
               Background -> White, FrameMargins -> 
               6], {$CellContext`xA\[Alpha]$, 365}]], 
            Inset[$CellContext`visual$, 
             Scaled[{0.5, 0.76}]]}], ImageSize -> {600, 420}, AspectRatio -> 
          Full, ImagePadding -> {{50, 25}, {70, 10}}]], "Specifications" :> {
        Style[
        "move the black dot around the diagram", 
         Bold], {{$CellContext`comp$$, {0.635, 406.15}}, {0.05, 372}, {
         0.95, 409}, ControlType -> Locator, Appearance -> Graphics[{
            Disk[{0, 0}]}, ImageSize -> 11]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {250., 257.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`yA1 = 
       0.06374999999999997, $CellContext`yA2 = 1.18625, $CellContext`yB1 = 
       0.56125, $CellContext`yB2 = 0.68875, $CellContext`Txy = 
       InterpolatingFunction[{{0.1, 0.8}}, {
         5, 7, 0, {8}, {6}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{0.1, 
         0.15, 0.2, 0.25, 0.4, 0.55, 0.65, 0.8}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8}, {359., 369., 
          379., 387., 398., 400., 395., 359.}}, {
         Automatic}], $CellContext`tableA[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.8, 
           Lighter[Green, 0.5]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.125]}, {
         125 $CellContext`n}], $CellContext`tableB[
         Pattern[$CellContext`x1, 
          Blank[]], 
         Pattern[$CellContext`x2, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] = Table[{
          Opacity[0.7, 
           RGBColor[0.02, 0.3, 1.]], 
          EdgeForm[Black], 
          Disk[{
            RandomReal[{$CellContext`x1, $CellContext`x2}], 
            RandomReal[{$CellContext`y1, $CellContext`y2}]}, 0.135]}, {
         125 $CellContext`n}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJwV2Hk4VH0UB3CkJCqEENkKLdZISZ0rS8qS8JKEyFKSUI3rrbQRylKpLGUL
lSVCskTImwjJmn3uzNgmLRKiqPfMX/N8nmd+97m/8/veueeMvNspaw8eLi4u
TW4uLs5n0dhUV0JCGWipP+bh8qMR5/lni3Mel8ELN7GR+2ijjb/vVBaXgWnu
Y5Ft/jSi4wS3DaO1DPScrxr7B9CIma/LW1SWlcNTM40lo2doxLZppbcl/5aD
Rcj4HXoQjajgdijpdHwJtyccuXhCaESdVGWc8NpKGLM2uj0dTyOKTdqLFQOr
QcBR7G9ZPY0oX90vMrLrNdQf/yI5P0Mj5lSbq0oWasEt0HG8cF0gcXnIknaM
+QbsanUk4/8JJCoKh1KqH70FRkTg7srLgQQhL9D+82YD0G4nh2zPDyT+dEja
7QpohAq6R/5kdyBxKlXffPOWZhi1eOnCng8kNghOmM1JtgCVfe46KUcSjW8d
6Vv9PoAzxJYf3kUSsrlF1bOWrfAgdGdd3EGSiKPalbKJNth39M3MS3+SYMsF
m6grtIOMOOlmeI0kXAomPqWLd0Dsr9cLcQkkEeBur5u6pBPcLwozvmWRhLOi
6U6/kU7YS5WbryshCV8t7nr1ni5QOVPmFF9LEvYWRoK1Lz/CTrcbaxuaScKz
dH+ncUE35JMtnokfSULYZL+J1cMeqH6X896CIol79G4/tau9UBhTwHwyShLQ
sFFuntYHY8duXkj9ShKvXy2JSDrUDz//jc3VnyIJhb97VaWc+6FFz/6PFfoq
RLXec+2HbfXahh5oo+pVUjeP9YOCCTyKQtfVyOVcofWD2Z7k1gH0u//0mr1u
90Pd1fbKc9Mk0fbOV1jrXT9st9n75ekMSTC6uhLqtg/Ao2CJpPFZkriyTXU+
eucAqPXPKv9Br0u86mxvMACbPt1NF5rD/TlpKI6ZDsDRK1wnddCfWBG5/AcH
QDDV1zQYPTmhX2VOG4BOp71yy3+RBK9A+lBb4QB81Fowkf1NEpk+cyb3XwwA
34fVI+pok/f7s46WD8CB8IKzBDr81vzJqZoBYOw+6OmKFpSw+ynWOgD+pRuj
HqLF1vMvc/g2ACuFQr/Kz5OEEpxSp28aBHtXo3HRBZKYqc+hPNUHwc/qQqIC
+q312K2vWoPwyY2xQwN9zNN1amH7IMRskP3HDJ0dZVMmbToI5YYyjEto1X5d
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
YyVA
              "]]}}}, {
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 1"}], 16, 
               RGBColor[0, 0, 1]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 0"}], 16, 
               RGBColor[0.12, 0.66, 0.]]}], {0, 347}], 
           Text[
            Column[{
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "A"], " = 1"}], 16, 
               RGBColor[0.12, 0.66, 0.]], 
              Style[
               Row[{
                 Subscript[
                  Style["x", Italic], "B"], " = 0"}], 16, 
               RGBColor[0, 0, 1]]}], {1, 347}]}}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 359.}, DisplayFunction :> Identity, 
          Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
             Style["temperature  (K)", 17], None}, {
             Style["mole fraction A", 17], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], LabelStyle -> {
            GrayLevel[0], 14}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{0, 1}, {359, 449}}, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}], 
       Attributes[Subscript] = {NHoldRest}, Subscript[$CellContext`c1, 0] = 
       1.5, Subscript[$CellContext`c1, 0] = 1.5, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->255959704]
}, Open  ]],

Cell["", "DetailsSection"],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[" Resize Images"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"ResizeImages"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Rotate and Zoom in 3D"]}],
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
 CellTags->"RotateAndZoomIn3D"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[" Drag Locators"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"DragLocators"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Create and Delete Locators"]}],
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
 CellTags->"CreateAndDeleteLocators"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Slider Zoom"]}],
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
 CellTags->"SliderZoom"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Gamepad Controls"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->"GamepadControls"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[" Automatic Animation"]}],
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
 CellTags->"AutomaticAnimation"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Bookmark Animation"]}],
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
 CellTags->"BookmarkAnimation"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection"],

Cell["chemical engineering", "SearchTerms",
 CellID->134465818],

Cell["physical chemistry", "SearchTerms",
 CellID->692162692],

Cell["thermodynamics", "SearchTerms",
 CellID->132142357],

Cell["partially miscible", "SearchTerms",
 CellID->505231720],

Cell["phase equilibrium", "SearchTerms",
 CellID->2562237],

Cell["phase diagram", "SearchTerms",
 CellID->19793116],

Cell["lever rule", "SearchTerms",
 CellID->286619237]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection"],

Cell[TextData[ButtonBox["Lever Rule Applied to Phase Diagram for Partially \
Miscible Liquids",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
LeverRuleAppliedToPhaseDiagramForPartiallyMiscibleLiquids/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/\
LeverRuleAppliedToPhaseDiagramForPartiallyMiscibleLiquids/"]], "RelatedLinks",
 CellID->140539435]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection"],

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
 CellID->31372289],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John+L.+\
Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John+L.+Falconer"],
 " and Nathan S. Nelson"
}], "Author",
 CellID->344056814],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.1 for Microsoft Windows (64-bit) (March 23, 2015)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "WindowsANSI"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[134283, 2898, 311, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[134597, 2908, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[135278, 2926, 339, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[135620, 2939, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[136260, 2956, 844, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[137107, 2979, 304, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[137414, 2989, 1463, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[138880, 3022, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 142146, 3140},
 {"RotateAndZoomIn3D", 142256, 3143},
 {"DragLocators", 142367, 3146},
 {"CreateAndDeleteLocators", 142484, 3149},
 {"SliderZoom", 142599, 3152},
 {"GamepadControls", 142706, 3155},
 {"AutomaticAnimation", 142820, 3158},
 {"BookmarkAnimation", 142938, 3161}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 59, 0, 74, "DemoTitle"],
Cell[CellGroupData[{
Cell[1570, 39, 33, 0, 287, "InitializationSection"],
Cell[1606, 41, 6975, 189, 268, "Input",
 InitializationCell->True,
 CellID->79264322]
}, Open  ]],
Cell[CellGroupData[{
Cell[8618, 235, 29, 0, 234, "ManipulateSection"],
Cell[CellGroupData[{
Cell[8672, 239, 24668, 581, 968, "Input"],
Cell[33343, 822, 19828, 403, 519, "Output",
 CellID->56705797]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[53220, 1231, 36, 0, 169, "ManipulateCaptionSection"],
Cell[53259, 1233, 1383, 27, 90, "ManipulateCaption",
 CellID->697376426]
}, Open  ]],
Cell[CellGroupData[{
Cell[54679, 1265, 28, 0, 173, "ThumbnailSection"],
Cell[54710, 1267, 19827, 403, 519, "Output",
 CellID->1370028]
}, Open  ]],
Cell[CellGroupData[{
Cell[74574, 1675, 28, 0, 143, "SnapshotsSection"],
Cell[74605, 1677, 19839, 402, 519, "Output",
 CellID->265111675],
Cell[94447, 2081, 19892, 404, 519, "Output",
 CellID->139952922],
Cell[114342, 2487, 19835, 402, 519, "Output",
 CellID->255959704]
}, Open  ]],
Cell[134192, 2892, 26, 0, 336, "DetailsSection"],
Cell[CellGroupData[{
Cell[134243, 2896, 37, 0, 114, "ControlSuggestionsSection"],
Cell[134283, 2898, 311, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[134597, 2908, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[135278, 2926, 339, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[135620, 2939, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[136260, 2956, 844, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[137107, 2979, 304, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[137414, 2989, 1463, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[138880, 3022, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[139825, 3048, 30, 0, 155, "SearchTermsSection"],
Cell[139858, 3050, 63, 1, 22, "SearchTerms",
 CellID->134465818],
Cell[139924, 3053, 61, 1, 22, "SearchTerms",
 CellID->692162692],
Cell[139988, 3056, 57, 1, 22, "SearchTerms",
 CellID->132142357],
Cell[140048, 3059, 61, 1, 22, "SearchTerms",
 CellID->505231720],
Cell[140112, 3062, 58, 1, 22, "SearchTerms",
 CellID->2562237],
Cell[140173, 3065, 55, 1, 22, "SearchTerms",
 CellID->19793116],
Cell[140231, 3068, 53, 1, 22, "SearchTerms",
 CellID->286619237]
}, Open  ]],
Cell[CellGroupData[{
Cell[140321, 3074, 31, 0, 141, "RelatedLinksSection"],
Cell[140355, 3076, 400, 9, 22, "RelatedLinks",
 CellID->140539435]
}, Open  ]],
Cell[CellGroupData[{
Cell[140792, 3090, 25, 0, 141, "AuthorSection"],
Cell[140820, 3092, 330, 10, 22, "Author",
 CellID->31372289],
Cell[141153, 3104, 364, 11, 22, "Author",
 CellID->344056814],
Cell[141520, 3117, 131, 4, 22, "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ruD1CT3yh2FuCC194nYwN2nx *)
