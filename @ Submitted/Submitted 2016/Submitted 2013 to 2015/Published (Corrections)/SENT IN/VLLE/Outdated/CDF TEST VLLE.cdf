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
NotebookDataLength[    412831,       9092]
NotebookOptionsPosition[    407280,       8907]
NotebookOutlinePosition[    408990,       8961]
CellTagsIndexPosition[    408654,       8949]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Vapor-Liquid-Liquid Equilibrium (VLLE)", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"f1", "=", "77.3"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f2", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "179.43"}], 
     RowBox[{"x", "^", "2"}]}], "+", 
    RowBox[{"112.39", "x"}], "+", "59.96"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f3", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "506.61"}], 
     RowBox[{"x", "^", "2"}]}], "+", 
    RowBox[{"815.78", "x"}], "-", "251.09"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f4", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "382.08"}], "*", 
     RowBox[{"x", "^", "3"}]}], "+", 
    RowBox[{"253.87", "*", 
     RowBox[{"x", "^", "2"}]}], "-", 
    RowBox[{"113.1", "*", "x"}], "+", "97.252"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f5", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "32.008"}], "*", 
     RowBox[{"x", "^", "2"}]}], "-", 
    RowBox[{"13.96", "*", "x"}], "+", "97.312"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f6", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "34.417"}], "*", 
     RowBox[{"x", "^", "2"}]}], "+", 
    RowBox[{"89.719", "*", "x"}], "+", "36.107"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"f7", "[", "x_", "]"}], "=", 
    RowBox[{
     RowBox[{"294.89", "*", 
      RowBox[{"x", "^", "2"}]}], "-", 
     RowBox[{"451.53", "*", "x"}], "+", "249.41"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"atl", "=", 
   RowBox[{"Sequence", "[", 
    RowBox[{
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", "Black"}], "}"}], "}"}]}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"60", ",", "100"}], "}"}]}], "}"}]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p1", "=", 
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"Piecewise", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"f5", "[", "x", "]"}], ",", 
            RowBox[{"x", "\[LessEqual]", "0.6"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"f6", "[", "x", "]"}], ",", 
            RowBox[{"0.6", "\[LessEqual]", "x", "\[LessEqual]", "0.99"}]}], 
           "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
       RowBox[{"Evaluate", "@", "atl"}], ",", 
       RowBox[{"Filling", "\[Rule]", "Top"}], ",", 
       RowBox[{"FillingStyle", "\[Rule]", 
        RowBox[{"Opacity", "[", 
         RowBox[{"0.3", ",", 
          RowBox[{"Darker", "[", "Green", "]"}]}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"f2", "[", "x", "]"}], ",", 
         RowBox[{"f4", "[", "x", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "0.275"}], "}"}], ",", 
       RowBox[{"Evaluate", "@", "atl"}], ",", 
       RowBox[{"Filling", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", "\[Rule]", 
          RowBox[{"{", "2", "}"}]}], "}"}]}], ",", 
       RowBox[{"FillingStyle", "\[Rule]", 
        RowBox[{"Opacity", "[", 
         RowBox[{"0.3", ",", 
          RowBox[{"Darker", "[", "Red", "]"}]}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"f7", "[", "x", "]"}], ",", 
         RowBox[{"f3", "[", "x", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0.8125", ",", "1"}], "}"}], ",", 
       RowBox[{"Evaluate", "@", "atl"}], ",", 
       RowBox[{"Filling", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", "\[Rule]", 
          RowBox[{"{", "2", "}"}]}], "}"}]}], ",", 
       RowBox[{"FillingStyle", "\[Rule]", 
        RowBox[{"Lighter", "[", 
         RowBox[{"Blue", ",", "0.75"}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Plot", "[", 
      RowBox[{"f1", ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0.275", ",", "0.81"}], "}"}], ",", 
       RowBox[{"Evaluate", "@", "atl"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<vapor\>\"", ",", "19", ",", 
            RowBox[{"GrayLevel", "[", "0.25", "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.5", ",", "95"}], "}"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Rotate", "[", 
         RowBox[{
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<\[Alpha] liquid \>\"", ",", "19", ",", 
              RowBox[{"GrayLevel", "[", "0.25", "]"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.075", ",", "77"}], "}"}]}], "]"}], ",", 
          RowBox[{"\[Pi]", "/", "2"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Rotate", "[", 
         RowBox[{
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<\[Beta] liquid \>\"", ",", "19", ",", 
              RowBox[{"GrayLevel", "[", "0.25", "]"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.95", ",", "77"}], "}"}]}], "]"}], ",", 
          RowBox[{"\[Pi]", "/", "2"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<\[Alpha] liquid + \[Beta] liquid\>\"", ",", "14", ",", 
            RowBox[{"GrayLevel", "[", "0.2", "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.5", ",", "62"}], "}"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<\[Alpha] liquid + vapor\>\"", ",", "14", ",", 
            RowBox[{"GrayLevel", "[", "0.2", "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.4125", ",", "79"}], "}"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Column", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\"\<\[Beta] liquid\>\"", ",", "\"\<+ vapor\>\""}], 
               "}"}], ",", "Center"}], "]"}], ",", "14", ",", 
            RowBox[{"GrayLevel", "[", "0.2", "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.755", ",", "79.25"}], "}"}]}], "]"}]}], "}"}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"400", ",", "395"}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{"\"\<mole fraction B\>\"", ",", "17"}], "]"}], ",", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<temperature  (\[Degree]C)\>\"", ",", "17"}], "]"}]}], 
       "}"}]}], ",", 
     RowBox[{"LabelStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Black", ",", "14"}], "}"}]}]}], "]"}]}], ";"}]}], "Input",
 InitializationCell->True,
 CellID->806326955]
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
      "sol2", ",", "sol3", ",", "sol4", ",", "sol5", ",", "sol6", ",", "sol7",
        ",", "ypoint", ",", "ypoint2", ",", "ypoint4", ",", "ypoint5", ",", 
       "R1", ",", "R2", ",", "R3", ",", "R4", ",", "R5", ",", "R6", ",", "R7",
        ",", "\[Delta]", ",", "\[Alpha]", ",", "\[Beta]", ",", "v", ",", 
       "x\[Alpha]", ",", "x\[Beta]", ",", "yB", ",", "p2", ",", "p3"}], "}"}],
      ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"sol2", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f2", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"sol3", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f3", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"sol4", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f4", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"sol5", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f5", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"sol6", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f6", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"sol7", "[", "y_", "]"}], "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"Re", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"x", "/.", 
           RowBox[{
            RowBox[{"Solve", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"f7", "[", "x", "]"}], "==", "y"}], ",", "x"}], "]"}], 
            "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"ypoint", "=", 
       RowBox[{"heat", "+", "72"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"ypoint2", "=", 
       RowBox[{"ypoint", "-", "10"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"ypoint4", "=", 
       RowBox[{"ypoint", "+", "10"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"ypoint5", "=", 
       RowBox[{"ypoint", "-", "20"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "<", "77.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "1"}], ",", 
            RowBox[{"step", "\[Equal]", "0"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "0"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "==", "0"}], ",", 
            RowBox[{"step", "\[Equal]", "2"}], ",", 
            RowBox[{"step", "\[Equal]", "10"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "1"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "==", "0"}], ",", 
            RowBox[{"step", "\[Equal]", "2"}], ",", 
            RowBox[{"step", "\[Equal]", "10"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "1"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "1"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"step", "\[Equal]", "1"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "1"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "3"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "2"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "1"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "3"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "2"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "1"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "3"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "2"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "2"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "2"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "3"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", "\[GreaterEqual]", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "3"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "0"}], ",", 
            RowBox[{"step", "\[Equal]", "1"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "10"}], ",", 
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "10"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", ">", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "10"}], ",", 
            RowBox[{"step", "==", "12"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "11"}], ",", 
          RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", ">", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "11"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", ">", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "10"}], ",", 
            RowBox[{"step", "\[Equal]", "12"}], ",", 
            RowBox[{"step", "\[Equal]", "11"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "11"}], ",", 
          RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", ">", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "11"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "11"}], ",", 
            RowBox[{"step", "\[Equal]", "13"}], ",", 
            RowBox[{"step", "\[Equal]", "30"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "12"}], ",", 
          RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "12"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "11"}], ",", 
            RowBox[{"step", "\[Equal]", "13"}], ",", 
            RowBox[{"step", "\[Equal]", "30"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "12"}], ",", 
          RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"step", "\[Equal]", "12"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Quiet", "[", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint2", "<", "77.3"}], ",", 
           RowBox[{"xpoint", "<", 
            RowBox[{"sol3", "[", "ypoint2", "]"}]}], ",", 
           RowBox[{"xpoint", ">", 
            RowBox[{"sol2", "[", "ypoint2", "]"}]}], ",", 
           RowBox[{"step", "\[Equal]", "12"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"step", "=", "13"}], ",", 
           RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Quiet", "[", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint2", "<", "77.3"}], ",", 
           RowBox[{"xpoint", "<", 
            RowBox[{"sol3", "[", "ypoint2", "]"}]}], ",", 
           RowBox[{"xpoint", ">", 
            RowBox[{"sol2", "[", "ypoint2", "]"}]}], ",", 
           RowBox[{"step", "\[Equal]", "13"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "13"}], ",", 
            RowBox[{"step", "\[Equal]", "12"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "30"}], ",", 
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "30"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", ">", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "30"}], ",", "32"}], "]"}]}], "]"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "31"}], ",", 
          RowBox[{"loc", "=", "ypoint5"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", ">", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "31"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint5"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", ">", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "30"}], ",", 
            RowBox[{"step", "\[Equal]", "32"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "31"}], ",", 
          RowBox[{"loc", "=", "ypoint5"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", ">", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "31"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint5"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "31"}], ",", 
            RowBox[{"step", "\[Equal]", "33"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "32"}], ",", 
          RowBox[{"loc", "=", "ypoint5"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "32"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint5"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "31"}], ",", 
            RowBox[{"step", "\[Equal]", "33"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "32"}], ",", 
          RowBox[{"loc", "=", "ypoint5"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"step", "\[Equal]", "32"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint5"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Quiet", "[", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint5", "<", "77.3"}], ",", 
           RowBox[{"xpoint", "<", 
            RowBox[{"sol3", "[", "ypoint5", "]"}]}], ",", 
           RowBox[{"xpoint", ">", 
            RowBox[{"sol2", "[", "ypoint5", "]"}]}], ",", 
           RowBox[{"step", "\[Equal]", "32"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"step", "=", "33"}], ",", 
           RowBox[{"loc", "=", "ypoint5"}]}], "}"}]}], "]"}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Quiet", "[", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint5", "<", "77.3"}], ",", 
           RowBox[{"xpoint", "<", 
            RowBox[{"sol3", "[", "ypoint5", "]"}]}], ",", 
           RowBox[{"xpoint", ">", 
            RowBox[{"sol2", "[", "ypoint5", "]"}]}], ",", 
           RowBox[{"step", "\[Equal]", "33"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"loc", "=", "ypoint5"}], "}"}]}], "]"}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "11"}], ",", 
            RowBox[{"step", "\[Equal]", "12"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "10"}], ",", 
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint2", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "==", "10"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"step", "==", "10"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "0"}], ",", 
          RowBox[{"loc", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint2", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "0"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "31"}], ",", 
            RowBox[{"step", "\[Equal]", "32"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "30"}], ",", 
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint5", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "30"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint2", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint2", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "30"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "13"}], ",", 
          RowBox[{"loc", "=", "ypoint2"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint5", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint2", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint2", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "13"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint2"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      StyleBox[
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint", "\[LessEqual]", "77.3"}], ",", 
           RowBox[{"ypoint", "\[GreaterEqual]", "67.3"}], ",", 
           RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
           RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
           RowBox[{"step", "\[Equal]", "21"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"step", "=", "20"}], ",", 
           RowBox[{"loc", "=", "77.3"}], ",", 
           RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}],
       FontFamily->"Courier New"], 
      StyleBox[";",
       FontFamily->"Courier New"], "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "==", "20"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", "ypoint"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"step", "\[Equal]", "20"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "21"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "<", "67.3"}], ",", 
          RowBox[{"step", "\[Equal]", "21"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      StyleBox[
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"And", "[", 
          RowBox[{
           RowBox[{"ypoint", "\[LessEqual]", "77.3"}], ",", 
           RowBox[{"ypoint", "\[GreaterEqual]", "67.3"}], ",", 
           RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
           RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
           RowBox[{"step", "\[Equal]", "2"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"step", "=", "20"}], ",", 
           RowBox[{"loc", "=", "77.3"}], ",", 
           RowBox[{"yval", "=", 
            RowBox[{"(", 
             RowBox[{"87.3", "-", 
              RowBox[{"Abs", "[", 
               RowBox[{"ypoint", "-", "77.3"}], "]"}]}], ")"}]}]}], "}"}]}], 
        "]"}],
       FontFamily->"Courier New"], 
      StyleBox[";",
       FontFamily->"Courier New"], "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "==", "20"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", 
           RowBox[{"(", 
            RowBox[{"87.3", "-", 
             RowBox[{"Abs", "[", 
              RowBox[{"ypoint", "-", "77.3"}], "]"}]}], ")"}]}]}], "}"}]}], 
       "]"}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "<", "67.3"}], ",", 
          RowBox[{"xpoint", "<", 
           RowBox[{"sol3", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", 
           RowBox[{"sol2", "[", "ypoint", "]"}]}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "20"}], ",", 
            RowBox[{"step", "\[Equal]", "22"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "21"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint", "<", "67.3"}], ",", 
          RowBox[{"step", "\[Equal]", "21"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "21"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}], ",", 
            RowBox[{"step", "\[Equal]", "23"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "22"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "21"}], ",", 
            RowBox[{"step", "\[Equal]", "20"}], ",", 
            RowBox[{"step", "\[Equal]", "23"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "22"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f2", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", "<", "0.275"}], ",", 
          RowBox[{"step", "\[Equal]", "22"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f3", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"xpoint", ">", "0.81"}], ",", 
          RowBox[{"step", "\[Equal]", "22"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "22"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "24"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f4", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "23"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "22"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "24"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "23"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "22"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "24"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "23"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[LessEqual]", 
           RowBox[{"f7", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "<", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "23"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"Or", "[", 
           RowBox[{
            RowBox[{"step", "\[Equal]", "23"}], ",", 
            RowBox[{"step", "\[Equal]", "50"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"step", "=", "24"}], ",", 
          RowBox[{"loc", "=", "ypoint4"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", "\[GreaterEqual]", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], ",", 
          RowBox[{"ypoint4", ">", "77.3"}], ",", 
          RowBox[{"step", "\[Equal]", "24"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"loc", "=", "ypoint4"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       StyleBox["If",
        FontFamily->"Courier New"], 
       StyleBox["[",
        FontFamily->"Courier New"], 
       RowBox[{
        RowBox[{
         StyleBox["And",
          FontFamily->"Courier New"], 
         StyleBox["[",
          FontFamily->"Courier New"], 
         RowBox[{
          StyleBox[
           RowBox[{"ypoint4", "\[LessEqual]", "77.3"}],
           FontFamily->"Courier New"], 
          StyleBox[",",
           FontFamily->"Courier New"], 
          StyleBox[
           RowBox[{"ypoint4", "\[GreaterEqual]", "67.3"}],
           FontFamily->"Courier New"], 
          StyleBox[",",
           FontFamily->"Courier New"], 
          StyleBox[
           RowBox[{"xpoint", "\[LessEqual]", "0.81"}],
           FontFamily->"Courier New"], 
          StyleBox[",",
           FontFamily->"Courier New"], 
          StyleBox[
           RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}],
           FontFamily->"Courier New"], 
          StyleBox[",",
           FontFamily->"Courier New"], 
          RowBox[{
           StyleBox["Or",
            FontFamily->"Courier New"], 
           StyleBox["[",
            FontFamily->"Courier New"], 
           RowBox[{
            StyleBox[
             RowBox[{"step", "==", "24"}],
             FontFamily->"Courier New"], 
            StyleBox[",",
             FontFamily->"Courier New"], 
            RowBox[{
             StyleBox["step",
              FontFamily->"Courier New"], 
             StyleBox["\[Equal]",
              FontFamily->"Courier New"], "23"}]}], "]"}]}], 
         StyleBox["]",
          FontFamily->"Courier New"]}], 
        StyleBox[",",
         FontFamily->"Courier New"], 
        StyleBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"step", "=", "50"}], ",", 
           RowBox[{"loc", "=", "77.3"}], ",", 
           RowBox[{"yval", "=", 
            RowBox[{"(", 
             RowBox[{"87.3", "-", 
              RowBox[{"Abs", "[", 
               RowBox[{"ypoint4", "-", "77.3"}], "]"}]}], ")"}]}]}], "}"}],
         FontFamily->"Courier New"]}], 
       StyleBox["]",
        FontFamily->"Courier New"]}], 
      StyleBox[";",
       FontFamily->"Courier New"], "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "[", 
         RowBox[{
          RowBox[{"ypoint4", "\[LessEqual]", "77.3"}], ",", 
          RowBox[{"ypoint4", "\[GreaterEqual]", "67.3"}], ",", 
          RowBox[{"xpoint", "\[LessEqual]", "0.81"}], ",", 
          RowBox[{"xpoint", "\[GreaterEqual]", "0.275"}], ",", 
          RowBox[{"step", "==", "50"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"loc", "=", "77.3"}], ",", 
          RowBox[{"yval", "=", 
           RowBox[{"(", 
            RowBox[{"87.3", "-", 
             RowBox[{"Abs", "[", 
              RowBox[{"ypoint4", "-", "77.3"}], "]"}]}], ")"}]}]}], "}"}]}], 
       "]"}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"R1", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"0.275", "\[LessEqual]", "xpoint", "\[LessEqual]", "0.81"}], 
         ")"}], "\[And]", 
        RowBox[{"loc", "\[Equal]", "f1"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"R2", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sol2", "[", "loc", "]"}], "\[LessEqual]", "xpoint", 
          "\[LessEqual]", 
          RowBox[{"sol3", "[", "loc", "]"}]}], ")"}], "\[And]", 
        RowBox[{"loc", "<", "f1"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"R3", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"xpoint", "<", 
           RowBox[{"sol2", "[", "loc", "]"}]}], "\[And]", 
          RowBox[{"loc", "\[LessEqual]", "f1"}]}], ")"}], "\[Or]", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"xpoint", "<", 
           RowBox[{"sol4", "[", "loc", "]"}]}], "\[And]", 
          RowBox[{"loc", ">", "f1"}]}], ")"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"R4", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"sol3", "[", "loc", "]"}], "<", "xpoint"}], "\[And]", 
          RowBox[{"loc", "\[LessEqual]", "f1"}]}], ")"}], "\[Or]", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"sol7", "[", "loc", "]"}], "<", "xpoint"}], "\[And]", 
          RowBox[{"loc", ">", "f1"}]}], ")"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"R5", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sol4", "[", "loc", "]"}], "\[LessEqual]", "xpoint", 
          "\[LessEqual]", 
          RowBox[{"sol5", "[", "loc", "]"}]}], ")"}], "\[And]", 
        RowBox[{"(", 
         RowBox[{"f1", "<", "loc", "\[LessEqual]", 
          RowBox[{"f5", "[", "xpoint", "]"}]}], ")"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"R6", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sol6", "[", "loc", "]"}], "\[LessEqual]", "xpoint", 
          "\[LessEqual]", 
          RowBox[{"sol7", "[", "loc", "]"}]}], ")"}], "\[And]", 
        RowBox[{"(", 
         RowBox[{"f1", "<", "loc", "\[LessEqual]", 
          RowBox[{"f6", "[", "xpoint", "]"}]}], ")"}], "\[And]", 
        RowBox[{"loc", ">", "f1"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"R7", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"loc", ">", 
           RowBox[{"f5", "[", "xpoint", "]"}]}], "\[And]", 
          RowBox[{"xpoint", "\[LessEqual]", "0.6"}]}], ")"}], "\[Or]", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"loc", ">", 
           RowBox[{"f6", "[", "xpoint", "]"}]}], "\[And]", 
          RowBox[{"xpoint", ">", "0.6"}]}], ")"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"\[Delta]", "=", 
       RowBox[{"1", "-", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"step", "\[Equal]", "10"}], "\[Or]", 
           RowBox[{"step", "\[Equal]", "20"}]}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"loc", "-", "ypoint2"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"ypoint", "-", "ypoint2"}], ")"}]}], ",", 
          RowBox[{"step", "\[Equal]", "30"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"loc", "-", "ypoint5"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"ypoint2", "-", "ypoint5"}], ")"}]}], ",", 
          RowBox[{"step", "\[Equal]", "50"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"loc", "-", "ypoint"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"ypoint4", "-", "ypoint"}], ")"}]}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"\[Alpha]", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{"R1", ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "\[Delta]"}], ")"}], "*", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"xpoint", "-", 
              RowBox[{"sol3", "[", "loc", "]"}]}], ")"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sol2", "[", "loc", "]"}], "-", 
              RowBox[{"sol3", "[", "loc", "]"}]}], ")"}]}]}], "+", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"xpoint", "\[LessEqual]", "0.6"}], ",", 
            RowBox[{"\[Delta]", "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"xpoint", "-", 
                RowBox[{"sol5", "[", "loc", "]"}]}], ")"}], "/", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sol4", "[", "loc", "]"}], "-", 
                RowBox[{"sol5", "[", "loc", "]"}]}], ")"}]}]}], ",", "0"}], 
           "]"}]}], ",", "\[IndentingNewLine]", "R2", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol3", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol2", "[", "loc", "]"}], "-", 
            RowBox[{"sol3", "[", "loc", "]"}]}], ")"}]}], ",", "R3", ",", "1",
          ",", 
         RowBox[{"R4", "\[Or]", "R6", "\[Or]", "R7"}], ",", "0", ",", "R5", 
         ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol5", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol4", "[", "loc", "]"}], "-", 
            RowBox[{"sol5", "[", "loc", "]"}]}], ")"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"\[Beta]", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{"R1", ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "\[Delta]"}], ")"}], "*", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"xpoint", "-", 
              RowBox[{"sol2", "[", "loc", "]"}]}], ")"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sol3", "[", "loc", "]"}], "-", 
              RowBox[{"sol2", "[", "loc", "]"}]}], ")"}]}]}], "+", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"xpoint", "\[LessEqual]", "0.6"}], ",", "0", ",", 
            RowBox[{"\[Delta]", "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"xpoint", "-", 
                RowBox[{"sol6", "[", "loc", "]"}]}], ")"}], "/", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sol7", "[", "loc", "]"}], "-", 
                RowBox[{"sol6", "[", "loc", "]"}]}], ")"}]}]}]}], "]"}]}], 
         ",", "\[IndentingNewLine]", "R2", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol2", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol3", "[", "loc", "]"}], "-", 
            RowBox[{"sol2", "[", "loc", "]"}]}], ")"}]}], ",", 
         RowBox[{"R3", "\[Or]", "R5", "\[Or]", "R7"}], ",", "0", ",", "R4", 
         ",", "1", ",", "R6", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol6", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol7", "[", "loc", "]"}], "-", 
            RowBox[{"sol6", "[", "loc", "]"}]}], ")"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"v", "=", 
       RowBox[{"Which", "[", 
        RowBox[{"R1", ",", 
         RowBox[{"\[Delta]", "*", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"xpoint", "\[LessEqual]", "0.6"}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"xpoint", "-", 
               RowBox[{"sol4", "[", "loc", "]"}]}], ")"}], "/", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"sol5", "[", "loc", "]"}], "-", 
               RowBox[{"sol4", "[", "loc", "]"}]}], ")"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"xpoint", "-", 
               RowBox[{"sol7", "[", "loc", "]"}]}], ")"}], "/", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"sol6", "[", "loc", "]"}], "-", 
               RowBox[{"sol7", "[", "loc", "]"}]}], ")"}]}]}], "]"}]}], ",", 
         RowBox[{"R2", "\[Or]", "R3", "\[Or]", "R4"}], ",", "0", ",", "R7", 
         ",", "1", ",", "R5", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol4", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol5", "[", "loc", "]"}], "-", 
            RowBox[{"sol4", "[", "loc", "]"}]}], ")"}]}], ",", "R6", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"xpoint", "-", 
            RowBox[{"sol7", "[", "loc", "]"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sol6", "[", "loc", "]"}], "-", 
            RowBox[{"sol7", "[", "loc", "]"}]}], ")"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"x\[Alpha]", "=", 
       RowBox[{"Which", "[", 
        RowBox[{"R1", ",", "0.275", ",", "R2", ",", 
         RowBox[{"sol2", "[", "loc", "]"}], ",", "R3", ",", "xpoint", ",", 
         "R5", ",", 
         RowBox[{"sol4", "[", "loc", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"x\[Beta]", "=", 
       RowBox[{"Which", "[", 
        RowBox[{"R1", ",", "0.81", ",", "R2", ",", 
         RowBox[{"sol3", "[", "loc", "]"}], ",", "R4", ",", "xpoint", ",", 
         "R6", ",", 
         RowBox[{"sol7", "[", "loc", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"yB", "=", 
       RowBox[{"Which", "[", 
        RowBox[{"R1", ",", "0.6", ",", "R5", ",", 
         RowBox[{"sol5", "[", "loc", "]"}], ",", "R6", ",", 
         RowBox[{"sol6", "[", "loc", "]"}], ",", "R7", ",", "xpoint"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"R1", "\[Or]", "R2"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", 
                   RowBox[{"0.75", ",", 
                    RowBox[{"Darker", "[", "Red", "]"}]}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol2", "[", "loc", "]"}], ",", "60"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol2", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}]}], "}"}], "]"}]}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Lighter", "[", 
                   RowBox[{"Blue", ",", "0.3"}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol3", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol3", "[", "loc", "]"}], ",", "60"}], "}"}]}], 
                    "}"}], "]"}]}], "}"}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R5", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", 
                   RowBox[{"0.75", ",", 
                    RowBox[{"Darker", "[", "Red", "]"}]}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol4", "[", "loc", "]"}], ",", "60"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol4", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}]}], "}"}], "]"}]}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", 
                   RowBox[{"0.75", ",", 
                    RowBox[{"Darker", "[", "Green", "]"}]}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol5", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol5", "[", "loc", "]"}], ",", "60"}], "}"}]}], 
                    "}"}], "]"}]}], "}"}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R6", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", 
                   RowBox[{"0.75", ",", 
                    RowBox[{"Darker", "[", "Green", "]"}]}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol6", "[", "loc", "]"}], ",", "60"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol6", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}]}], "}"}], "]"}]}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Lighter", "[", 
                   RowBox[{"Blue", ",", "0.3"}], "]"}], ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xpoint", ",", "loc"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol7", "[", "loc", "]"}], ",", "loc"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"sol7", "[", "loc", "]"}], ",", "60"}], "}"}]}], 
                    "}"}], "]"}]}], "}"}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"R1", "\[Or]", "R7"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Opacity", "[", 
                 RowBox[{"0.75", ",", 
                  RowBox[{"Darker", "[", "Green", "]"}]}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"yB", ",", "loc"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"yB", ",", "60"}], "}"}]}], "}"}], "]"}]}], 
               "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R3", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Opacity", "[", 
                 RowBox[{"0.75", ",", 
                  RowBox[{"Darker", "[", "Red", "]"}]}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"x\[Alpha]", ",", "loc"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x\[Alpha]", ",", "60"}], "}"}]}], "}"}], "]"}]}],
                "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R4", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Lighter", "[", 
                 RowBox[{"Blue", ",", "0.3"}], "]"}], ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"x\[Beta]", ",", "loc"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x\[Beta]", ",", "60"}], "}"}]}], "}"}], "]"}]}], 
               "}"}]}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "0.025", "]"}], ",", 
            RowBox[{"Point", "[", 
             RowBox[{"{", 
              RowBox[{"xpoint", ",", "loc"}], "}"}], "]"}]}], "}"}]}], "}"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "[", "Black", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", 
                RowBox[{"0.4", ",", 
                 RowBox[{"Darker", "[", "Red", "]"}]}], "]"}], ",", 
               RowBox[{"Rectangle", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1", ",", "\[Alpha]"}], "}"}]}], "]"}]}], "}"}], 
             ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Lighter", "[", 
                RowBox[{"Blue", ",", "0.65"}], "]"}], ",", 
               RowBox[{"Rectangle", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"1.15", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"2.15", ",", "\[Beta]"}], "}"}]}], "]"}]}], "}"}], 
             ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", 
                RowBox[{"0.4", ",", 
                 RowBox[{"Darker", "[", "Green", "]"}]}], "]"}], ",", 
               RowBox[{"Rectangle", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"2.3", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"3.3", ",", "v"}], "}"}]}], "]"}]}], "}"}]}], "}"}],
            ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<\[Alpha] liquid\>\"", ",", "15"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", 
               RowBox[{"-", "0.05"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<\[Beta] liquid\>\"", ",", "15"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1.65", ",", 
               RowBox[{"-", "0.05"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<vapor\>\"", ",", "15"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2.8", ",", 
               RowBox[{"-", "0.05"}]}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"\[Alpha]", ">", "0"}], ",", 
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
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\"", ",", "\"\<\[Alpha]\>\""}], "]"}], ",", 
                    "\"\< =\>\""}], "}"}], "]"}], ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"x\[Alpha]", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}], ",", 
                   "Center"}], "]"}], ",", "15"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", "\[Alpha]"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"\[Beta]", ">", "0"}], ",", 
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
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\"", ",", "\"\<\[Beta]\>\""}], "]"}], ",", 
                    "\"\< =\>\""}], "}"}], "]"}], ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"x\[Beta]", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}], ",", 
                   "Center"}], "]"}], ",", "15"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"1.65", ",", "\[Beta]"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"v", ">", "0"}], ",", 
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
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<y\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<B\>\""}], "]"}], ",", "\"\< = \>\""}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"yB", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}], ",", 
                   "Center"}], "]"}], ",", "15"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"2.8", ",", "v"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"195", ",", "395"}], "}"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImagePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"20", ",", "5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"40", ",", "5"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"True", ",", "None"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "None"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"FrameTicks", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"True", ",", "None"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"None", ",", "None"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"FrameTicksStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"12", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<relative amounts\>\"", ",", "15"}], "]"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "1.1"}], "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "[", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Show", "[", 
           RowBox[{"p1", ",", "p2"}], "]"}], ",", 
          RowBox[{"Show", "[", "p3", "]"}]}], "}"}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"xpoint", ",", "0.4", ",", "\"\<mole fraction B\>\""}], 
            "}"}], ",", "0.02", ",", "0.98", ",", "0.01", ",", 
           RowBox[{"Appearance", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"\"\<Labeled\>\"", ",", "Small"}], "}"}]}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Button", "[", 
         RowBox[{"\"\<reset to initial conditions\>\"", ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"xpoint", "=", "0.4"}], ",", 
            RowBox[{"heat", "=", "0"}], ",", 
            RowBox[{"step", "=", "0"}]}], "}"}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Medium"}]}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"heat", ",", "0", ",", "\"\<heat added (kJ)\>\""}], "}"}],
            ",", "0", ",", "37", ",", "0.1", ",", 
           RowBox[{"Appearance", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"\"\<Labeled\>\"", ",", "Small"}], "}"}]}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"step", ",", "0"}], "}"}], ",", "0", ",", "100", ",", 
           "None"}], "}"}], "]"}], ",", 
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{"loc", ",", "70", ",", "None"}], "}"}], "]"}]}], "}"}]}], 
     "}"}], "]"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`heat$$ = 0, $CellContext`loc$$ = 
    72, $CellContext`step$$ = 0, $CellContext`xpoint$$ = 0.4, Typeset`show$$ =
     True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xpoint$$], 0.4, "mole fraction B"}, 0.02, 0.98, 
      0.01}, {{
       Hold[$CellContext`heat$$], 0, "heat added (kJ)"}, 0, 37, 0.1}, {{
       Hold[$CellContext`step$$], 0}, 0, 100}, {{
       Hold[$CellContext`loc$$], 72}, 70}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Button[
          "reset to initial conditions", {$CellContext`xpoint$$ = 
            0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, ImageSize -> 
           Medium]}, {
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {603., {194., 201.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xpoint$1567$$ = 0, $CellContext`heat$1568$$ = 
    0, $CellContext`step$1569$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`heat$$ = 0, $CellContext`loc$$ = 
        72, $CellContext`step$$ = 0, $CellContext`xpoint$$ = 0.4}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xpoint$$, $CellContext`xpoint$1567$$, 0], 
        Hold[$CellContext`heat$$, $CellContext`heat$1568$$, 0], 
        Hold[$CellContext`step$$, $CellContext`step$1569$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol2$, $CellContext`sol3$, $CellContext`sol4$, \
$CellContext`sol5$, $CellContext`sol6$, $CellContext`sol7$, \
$CellContext`ypoint$, $CellContext`ypoint2$, $CellContext`ypoint4$, \
$CellContext`ypoint5$, $CellContext`R1$, $CellContext`R2$, $CellContext`R3$, \
$CellContext`R4$, $CellContext`R5$, $CellContext`R6$, $CellContext`R7$, \
$CellContext`\[Delta]$, $CellContext`\[Alpha]$, $CellContext`\[Beta]$, \
$CellContext`v$, $CellContext`x\[Alpha]$, $CellContext`x\[Beta]$, \
$CellContext`yB$, $CellContext`p2$, $CellContext`p3$}, $CellContext`sol2$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f2[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol3$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f3[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol4$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f4[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol5$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f5[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol6$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f6[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol7$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f7[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`ypoint$ = $CellContext`heat$$ + 
          72; $CellContext`ypoint2$ = $CellContext`ypoint$ - 
          10; $CellContext`ypoint4$ = $CellContext`ypoint$ + 
          10; $CellContext`ypoint5$ = $CellContext`ypoint$ - 20; If[
          
          And[$CellContext`ypoint$ < 
           77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            0]], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 2, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           3, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           3], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            1]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12, $CellContext`step$$ == 11]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            12], {$CellContext`step$$ = 
            13, $CellContext`loc$$ = $CellContext`ypoint2$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            13], {$CellContext`loc$$ = $CellContext`ypoint2$}]]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 13, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           Or[$CellContext`step$$ == 30, 32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 30, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            32], {$CellContext`step$$ = 
            33, $CellContext`loc$$ = $CellContext`ypoint5$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            33], {$CellContext`loc$$ = $CellContext`ypoint5$}]]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           10], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           0], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           30], {$CellContext`step$$ = 
           13, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           13], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 21], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           20], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 2], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 20, $CellContext`step$$ == 
            22]], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 0.81, 
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 
           0.275, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 
           0.81, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 24], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 23, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           24, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           24], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            23]], {$CellContext`step$$ = 50, $CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 50], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; $CellContext`R1$ = 
         And[0.275 <= $CellContext`xpoint$$ <= 
           0.81, $CellContext`loc$$ == $CellContext`f1]; $CellContext`R2$ = 
         And[$CellContext`sol2$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol3$[$CellContext`loc$$], $CellContext`loc$$ < $CellContext`f1]; \
$CellContext`R3$ = Or[
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol2$[$CellContext`loc$$], $CellContext`loc$$ <= \
$CellContext`f1], 
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol4$[$CellContext`loc$$], $CellContext`loc$$ > \
$CellContext`f1]]; $CellContext`R4$ = Or[
           
           And[$CellContext`sol3$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ <= $CellContext`f1], 
           
           And[$CellContext`sol7$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ > $CellContext`f1]]; \
$CellContext`R5$ = 
         And[$CellContext`sol4$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol5$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f5[$CellContext`xpoint$$]]]; $CellContext`R6$ = 
         And[$CellContext`sol6$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol7$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f6[$CellContext`xpoint$$]], $CellContext`loc$$ > \
$CellContext`f1]; $CellContext`R7$ = Or[
           
           And[$CellContext`loc$$ > $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`xpoint$$ <= 0.6], 
           
           And[$CellContext`loc$$ > $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.6]]; $CellContext`\[Delta]$ = 1 - Which[
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            20], ($CellContext`loc$$ - \
$CellContext`ypoint2$)/($CellContext`ypoint$ - $CellContext`ypoint2$), \
$CellContext`step$$ == 
           30, ($CellContext`loc$$ - \
$CellContext`ypoint5$)/($CellContext`ypoint2$ - $CellContext`ypoint5$), \
$CellContext`step$$ == 
           50, ($CellContext`loc$$ - \
$CellContext`ypoint$)/($CellContext`ypoint4$ - $CellContext`ypoint$)]; \
$CellContext`\[Alpha]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 
             0.6, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])), 
             0], $CellContext`R2$, ($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$]), $CellContext`R3$, 1, 
           Or[$CellContext`R4$, $CellContext`R6$, $CellContext`R7$], 
           0, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])]; $CellContext`\[Beta]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 0.6, 
             0, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$]))], $CellContext`R2$, \
($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$]), 
           Or[$CellContext`R3$, $CellContext`R5$, $CellContext`R7$], 
           0, $CellContext`R4$, 
           1, $CellContext`R6$, ($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$])]; $CellContext`v$ = 
         Which[$CellContext`R1$, $CellContext`\[Delta]$ 
           If[$CellContext`xpoint$$ <= 
             0.6, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), ($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])], 
           Or[$CellContext`R2$, $CellContext`R3$, $CellContext`R4$], 
           0, $CellContext`R7$, 
           1, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), $CellContext`R6$, \
($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])]; $CellContext`x\[Alpha]$ = 
         Which[$CellContext`R1$, 0.275, $CellContext`R2$, 
           $CellContext`sol2$[$CellContext`loc$$], $CellContext`R3$, \
$CellContext`xpoint$$, $CellContext`R5$, 
           $CellContext`sol4$[$CellContext`loc$$]]; $CellContext`x\[Beta]$ = 
         Which[$CellContext`R1$, 0.81, $CellContext`R2$, 
           $CellContext`sol3$[$CellContext`loc$$], $CellContext`R4$, \
$CellContext`xpoint$$, $CellContext`R6$, 
           $CellContext`sol7$[$CellContext`loc$$]]; $CellContext`yB$ = 
         Which[$CellContext`R1$, 0.6, $CellContext`R5$, 
           $CellContext`sol5$[$CellContext`loc$$], $CellContext`R6$, 
           $CellContext`sol6$[$CellContext`loc$$], $CellContext`R7$, \
$CellContext`xpoint$$]; $CellContext`p2$ = Graphics[{{Thick, Dashed, 
             If[
              Or[$CellContext`R1$, $CellContext`R2$], {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol2$[$CellContext`loc$$], 60}, {
                   $CellContext`sol2$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R5$, {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol4$[$CellContext`loc$$], 60}, {
                   $CellContext`sol4$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R6$, {{
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{
                   $CellContext`sol6$[$CellContext`loc$$], 60}, {
                   $CellContext`sol6$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], 60}}]}}], 
             If[
              Or[$CellContext`R1$, $CellContext`R7$], {
               Opacity[0.75, 
                Darker[Green]], 
               
               Line[{{$CellContext`yB$, $CellContext`loc$$}, \
{$CellContext`yB$, 60}}]}], 
             If[$CellContext`R3$, {
               Opacity[0.75, 
                Darker[Red]], 
               
               Line[{{$CellContext`x\[Alpha]$, $CellContext`loc$$}, \
{$CellContext`x\[Alpha]$, 60}}]}], 
             If[$CellContext`R4$, {
               Lighter[Blue, 0.3], 
               
               Line[{{$CellContext`x\[Beta]$, $CellContext`loc$$}, \
{$CellContext`x\[Beta]$, 60}}]}]}, {
             PointSize[0.025], 
             
             Point[{$CellContext`xpoint$$, $CellContext`loc$$}]}}]; \
$CellContext`p3$ = Graphics[{{
             EdgeForm[Black], {
              Opacity[0.4, 
               Darker[Red]], 
              Rectangle[{0, 0}, {1, $CellContext`\[Alpha]$}]}, {
              Lighter[Blue, 0.65], 
              Rectangle[{1.15, 0}, {2.15, $CellContext`\[Beta]$}]}, {
              Opacity[0.4, 
               Darker[Green]], 
              Rectangle[{2.3, 0}, {3.3, $CellContext`v$}]}}, 
            Text[
             Style["\[Alpha] liquid", 15], {0.5, -0.05}], 
            Text[
             Style["\[Beta] liquid", 15], {1.65, -0.05}], 
            Text[
             Style["vapor", 15], {2.8, -0.05}], 
            If[$CellContext`\[Alpha]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Alpha]"], " ="}], 
                 NumberForm[$CellContext`x\[Alpha]$, {2, 2}]}, Center], 15], {
              0.5, $CellContext`\[Alpha]$}, {0, -1}]], 
            If[$CellContext`\[Beta]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Beta]"], " ="}], 
                 NumberForm[$CellContext`x\[Beta]$, {2, 2}]}, Center], 15], {
              1.65, $CellContext`\[Beta]$}, {0, -1}]], 
            If[$CellContext`v$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subscript[
                    Style["y", Italic], "B"], " = "}], 
                 NumberForm[$CellContext`yB$, {2, 2}]}, Center], 15], {
              2.8, $CellContext`v$}, {0, -1}]]}, ImageSize -> {195, 395}, 
           AspectRatio -> Full, ImagePadding -> {{20, 5}, {40, 5}}, 
           Frame -> {{True, None}, {True, None}}, 
           FrameTicks -> {{True, None}, {None, None}}, 
           FrameTicksStyle -> {12, Black}, PlotLabel -> 
           Style["relative amounts", 15], PlotRange -> {0, 1.1}]; Grid[{{
            Show[$CellContext`p1, $CellContext`p2$], 
            Show[$CellContext`p3$]}}]], 
      "Specifications" :> {{{$CellContext`xpoint$$, 0.4, "mole fraction B"}, 
         0.02, 0.98, 0.01, Appearance -> {"Labeled", Small}, ControlPlacement -> 
         1}, {{$CellContext`heat$$, 0, "heat added (kJ)"}, 0, 37, 0.1, 
         Appearance -> {"Labeled", Small}, ControlPlacement -> 
         2}, {{$CellContext`step$$, 0}, 0, 100, ControlType -> None, 
         ControlPlacement -> 3}, {{$CellContext`loc$$, 72}, 70, ControlType -> 
         None, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Button[
           "reset to initial conditions", {$CellContext`xpoint$$ = 
             0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, 
            ImageSize -> Medium]}, {
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{652., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`f2[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       59.96 + 112.39 $CellContext`x - 
        179.43 $CellContext`x^2, $CellContext`f3[
         Pattern[$CellContext`x, 
          Blank[]]] = -251.09 + 815.78 $CellContext`x - 
        506.61 $CellContext`x^2, $CellContext`f4[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.252 - 113.1 $CellContext`x + 253.87 $CellContext`x^2 - 
        382.08 $CellContext`x^3, $CellContext`f5[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.312 - 13.96 $CellContext`x - 
        32.008 $CellContext`x^2, $CellContext`f6[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       36.107 + 89.719 $CellContext`x - 
        34.417 $CellContext`x^2, $CellContext`f7[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       249.41 - 451.53 $CellContext`x + 
        294.89 $CellContext`x^2, $CellContext`yval = 77.4, $CellContext`f1 = 
       77.3, Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = Graphics[{
          GraphicsComplex[CompressedData["
1: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
VoKVlxRTvxT8qPcv0rEemw==
           "], {{{
              EdgeForm[], 
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                Polygon[{{50, 92, 94, 133}}], 
                
                Polygon[{{135, 79, 89, 95, 131, 113, 53, 122, 104, 87, 74, 64,
                  31, 118, 100, 83, 70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 
                 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 119, 101, 84, 71, 61,
                  55, 123, 105, 88, 75, 65, 49, 120, 102, 85, 72, 62, 126, 
                 108, 91, 78, 129, 111, 96, 132, 114, 56, 124, 106}}], 
                
                Polygon[{{134, 66, 76, 1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5,
                  6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
                 22, 23, 24, 25, 26, 27, 28, 29, 116, 98, 81, 68, 58, 52, 121,
                  103, 86, 73, 63, 30, 117, 99, 82, 69, 127, 109, 93, 59, 125,
                  107, 90, 130, 112, 77, 128, 
                 110}}]}]}, {}, {}, {}}, {{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
               11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                27, 28, 29, 116, 98, 81, 68, 58, 52, 121, 103, 86, 73, 63, 30,
                117, 99, 82, 69, 127, 109, 93, 59, 125, 107, 90, 130, 112, 77,
                128, 110, 134}], 
              
              Line[{95, 131, 113, 53, 122, 104, 87, 74, 64, 31, 118, 100, 83, 
               70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                45, 46, 47, 48, 119, 101, 84, 71, 61, 55, 123, 105, 88, 75, 
               65, 49, 120, 102, 85, 72, 62, 126, 108, 91, 78, 129, 111, 96, 
               132, 114, 56, 124, 106, 135}]}, {
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              Line[{137, 141}], 
              Line[{139, 140, 138}]}}, {{}, {}, {}}}], 
          GraphicsComplex[CompressedData["
1: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
WWqhs4a2NLu1P7lcwN8K//xv/Rd/QmY1
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              Directive[
               RGBColor[2/3, 0, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                
                Polygon[{{1, 152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
                 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                 42, 43, 44, 45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 
                 65, 61, 58, 55, 71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50, 
                 124, 151, 144, 150, 138, 143, 149, 133, 137, 142, 148, 129, 
                 132, 136, 141, 147, 126, 128, 131, 135, 140, 146, 123, 122, 
                 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
                 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97,
                  96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 
                 81, 80, 79, 78, 77, 76, 125, 127, 130, 134, 139, 145, 
                 75}}]}]}, {}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
               14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 
               45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 65, 61, 58, 55,
                71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{75, 145, 139, 134, 130, 127, 125, 76, 77, 78, 79, 80, 81, 
               82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
                98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
               123, 146, 140, 135, 131, 128, 126, 147, 141, 136, 132, 129, 
               148, 142, 137, 133, 149, 143, 138, 150, 144, 151, 124}]}}}], 
          GraphicsComplex[CompressedData["
1:eJxd1As4VHkfwPFJE0OJsN12c1vJLdc3qc3+/xIpt5lzZuaEoim3rmwuEYm2
qEhIUlkKlSjd5F5Nb+uSRK81WFksNVtnzBwUUaz9v+/zOPM87zzPPPOc58z5
zv/8z/w+ertCsAAFBoORj97//dQiVdEHCVysdmCN7ji0+OuGu6E2CVLs/Zip
XBzW9gz+R/QjCZo+pwdFb8fhoWyRyHsHCUZXB3D2+ONQy1TvonMMCRacNsx4
uB+HRuXq6TVXSOBmNRjhGInDAKVHKorVJBBbObdXHsPhN5zp2t+7SZC7x2RJ
6hkc3vspz0zrKwkWHxFUNlzAYfi28W8NlklAZukvrIarOCxZO+L4eJ0EpPxM
ip3v4FDlj6sS020SEJkzCGKrcMjzKmbPiZQAZsvR1LE6HGq2EDK/LAk4Eih1
UmvH4SSren5mmQSoTIcdf/onDrENQgFHJAHB+/P4JiM4vOisGxExJgHsnmLd
QQYXMpesYYVoDoHqj2nVGupc+LZP+tuIzRA4EX49boUeFw4d9NHZig2BieDm
D6lWXBg0vr/ANAwdb7drHnPkwhZu19uw80OgN7bRJ5fPhTuiJ66n3x8Co8LR
yrPBXOiXVZtn1zYExIpmTudjufBM9Jplj4aHgHZd/O7Wc1x41YbFzl4oBTuJ
qQqzAi40Fsc9ZVpIAbk10UBYyYVvfItLnd2l4B7vqc6+V1w40xrdseigFHT3
BR4IfMuFaksLahxTpYCt2DeW8pULXQwTdF1vS8HWttEtJYt48KPZ3CdvmqXA
cvO69PUmPNgwue6Ng0QKBgSrw+878GDSL02PFirLQOSyxdY2XjxYtW6m0d9Y
BvIZpo+cwnhQK+e9T9pmGfBQEYt1U3jwz/GIVU7BMpD1IXLezZs82Lmk8lBr
ogykhimnvXuGrlfjxggLZcBaybJBv4cHVRmZtevrZKAjOHDAZJIHz5SfOnpm
UAYUJr23NWvx4ZEAvcO7mRSI02NPYDZ8yJNomhcYUODHKan7AIcPvdbW+Fdu
pEB+lN9qyUE+fB2j2M7fTYFez9fvJlP5MCRR8XlTAgX0pxkjP93hwy9BO0Ou
51Egse6BY9tLPpxw8OUqCymwl5XtuU3Kh9oD6lUbeykwcNz3oZEqAYe+GZ2e
maFARlhPyWYrAuYHd6/SVCNBcRWzdTkHh/NiE3z0KAoorEp88L0OAX2MP2We
ViKBStbl6AOeONSw2KLyQEwB8bHbmnqLCTjRWHU77TMF1kdJzlkaEbBSOeHl
r3NJ8NrVtv+SBw6zWXcERwbQeheUXSlYRMC4/BVMr48U8PYO+r3oewIeoni8
xq/ofuM1OqrNCCiObggcmEOCjG1dnZboep8x37O+/RQwJzNFAWoE3Hiu1cJ+
hAK7dit8CtAj4JoepYTbkxTQzlMRRJgQ8K5CofHbaQrUfzeXYlgQcPr+3n+N
oPk/uO/JiSk0/7WStQXsPgrY5k1ZbF5IwMKTRU4Ww2h/Vzc82aRLwKy2/qzc
CbS+T9ODmDEB1SdjQccUBXwrVFv+WE1AjwUvNUf/pkD3vVE7A0sCsjw2XIlC
/b8rIoMGUF8aaFD6Au23tWvqUAXa73bGBXYR2s9c/ySbMrSfDe6vri1B/chQ
UdkztF8O4Xu2eqK+ecewmxvqxyVVaO9D/S9X36RmoPWvSO9lRaPn5evmIn2E
fm/Ws6JGbZUkTO7ZlOHiMi5b7plwuf78MTe5Z2VK7Ur9LnLP4kFK54yj3LO3
xmvCauzlnqXJOlU+28o9O7FoKX7NXO5ZFFlqE7JS7tnEnPa7H7+Ve2bp//hp
qbrcs57LHxw2zJN7FvpQpLxyEqM9C8+hSlQlGO1ZrGDV8HQPJvcsxk/zWTNG
e8YMptxbajDas+01lQXLSjDas8xK28GZixjtGfT7lQFPYrRnLixRlzQEoz3r
j64f+OKF0Z7VvtM/nr0Joz0rCqq4sc8Moz3jzjxwlGhhtGfZWUldc6Y5tGdT
w8m6SwY4tGdavEtGCxs5tGdpd5raO4o5tGdCo46NK89yaM+mDF7NSQnl0J51
pZsQKWwO7RnDJb1ZaMWhPYu/r5r/QINDe2Z2LWK30jCb9qzwk1pgXQub9syl
625A1S027VmXsO6CdSKb9sysyVozbheb9oxhZ1rQuJ5Ne2aXrPD8lRab9mzC
Ybxwi8iT9kzde+9gdLwn7Vkok8pIsfCkPWPFEKI2kQft2T2dK8Am3oP2bOf7
cduTJh4wuVPpznF1EtTvPCQ5iHz6/+NZzxj/e3nQnmUvOPXlNDo/LqhTizMn
QfDdA+/rkCcXq3vwpR4kCA2+xFdyxeFzQUw5ez+ahzOC3GRnnPauvdX8tBqa
rwyDcnPMEB17RKZdQP4Vu/ZrHHYmgT+x0n8emq/lR43qRf7ovH7Dk9rNOHx/
U1ids5gEjGMmvuNoHr3y2odv2aL5c5mqeYd8mPXx1PUd891Rv/+k+Y8b9NH1
+G/Wn1HfRmvXoRsb0bzlRjCPoX69yoz7UgG6vsROm43m1+mU+0inBgm+01GX
OaD7K2K4MzKt0fxr/XuAQPc362eo1DRmL+qfKiedrHRJUDg3+7AhWk/UhL7+
E4i+z2PEVKN+DodMX+dHAq7Os4Rs1A+fOJ8yhvbXsrnKPxD1Pa2UWactSbDf
qGbPOdSf9TSnUdgbhfo9LY0vTHVI0C/uK7dH/ct75355AUhwj9/b14n6SmN9
Nlt9SfB+U/TOWtRPtlzrzUT9Ka9a1yjUz9/yV/LPFiSItV/RVIz6s56yCiO/
HkN9xTcV828h39g/PLbfgvolBR/feaK+W/zDWDHq19Z3n2hDvhVhGj+0oH5W
M+tZMnr+ZQuNTRJQv5nX8YqB+q+LkwSVqH+Z073HqFT+f/kHygfMpg==
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{1, 71, 65, 60, 56, 53, 51, 126, 125, 154, 160, 128, 
                 132, 138, 144, 150, 156, 78}}]}]}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{125, 148, 142, 136, 79, 157, 151, 145, 139, 133, 
                 129, 161, 155, 149, 143, 137, 80, 158, 152, 146, 140, 134, 
                 130, 81, 159, 153, 147, 141, 135, 131, 82, 83, 84, 85, 86, 
                 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
                  102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
                 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 162, 
                 127, 50, 77, 70, 76, 64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 
                 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 46, 45, 44, 43, 
                 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
                 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
                 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
                 126}}]}]}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 71, 65, 60, 56, 53, 51, 126, 2, 3, 4, 5, 6, 7, 8, 9, 
               10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
               41, 42, 43, 44, 45, 46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73,
                67, 62, 58, 55, 74, 68, 63, 59, 75, 69, 64, 76, 70, 77, 
               50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{78, 156, 150, 144, 138, 132, 128, 160, 154, 125, 148, 142,
                136, 79, 157, 151, 145, 139, 133, 129, 161, 155, 149, 143, 
               137, 80, 158, 152, 146, 140, 134, 130, 81, 159, 153, 147, 141, 
               135, 131, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 
               95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 
               108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
               120, 121, 122, 123, 124, 162}]}}}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnXYxaOnMmRftjUEgONjhzY9bzQveI/jFCslJy10v
wfkSmtLMegyX4XyZQ2meEesQfNufC7+IR16B87+9bGkOELoK5/Nl/96usx/B
37dU8kJj1TU4v7tO3TfH6Dqcv/35ifxfdxH8ai6hMsYZN+D8eXvfKa5xvQnn
3+XbbfTmPYK/VVJffemKW3D+6y1mBxlDb8P5uzif2V3nvwPnL/3Touh0HMF/
X799ZUDRXTj/4p6Joje078H5Ql3/1ZhvIvivBURllk+5D+d/lOK1LlB7AOfP
Lr25K64GwRdcW7mm8yaCv33N44I2g4dwfnb10ednWxH812rVFwIfIfizZ/3q
Xm7xCM4Xf+2703Iagr+QS3Km2CcEP/rTWu+j7o/h/IfbxAo2LEHwpzl7puf+
RvAj538WKA14Aue/vF6os3MNgr/ixk6p80xP4XzjbVerFBMQ/LfRu9e6bkfw
t12QmLyF5xmc763k9So+E8Hnt3EVubsfwZ9vJLJhmuxzON/uR9S/WZUIPk9b
tnzheQR/2Qf/Tc06L+D8AuV/4hnNCL6HqorB9BsI/htmuV1Mpi/h/P2rHoo5
dCP4SRvuTU/ajeCzbbst0foawQcAg405uw==
              "]]}}}, {
           Text[
            Style["vapor", 19, 
             GrayLevel[0.25]], {0.5, 95}], 
           Rotate[
            Text[
             Style["\[Alpha] liquid ", 19, 
              GrayLevel[0.25]], {0.075, 77}], Pi/2], 
           Rotate[
            Text[
             Style["\[Beta] liquid ", 19, 
              GrayLevel[0.25]], {0.95, 77}], Pi/2], 
           Text[
            Style["\[Alpha] liquid + \[Beta] liquid", 14, 
             GrayLevel[0.2]], {0.5, 62}], 
           Text[
            Style["\[Alpha] liquid + vapor", 14, 
             GrayLevel[0.2]], {0.4125, 79}], 
           Text[
            Style[
             Column[{"\[Beta] liquid", "+ vapor"}, Center], 14, 
             GrayLevel[0.2]], {0.755, 79.25}]}}, {
         AspectRatio -> 1, ImageSize -> {400, 395}, Frame -> True, FrameLabel -> {
            Style["mole fraction B", 17], 
            Style["temperature  (\[Degree]C)", 17]}, LabelStyle -> {
            GrayLevel[0], 14}, DisplayFunction -> Identity, AspectRatio -> 
          GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 60.}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, "AxesInFront" -> 
            True}, PlotRange -> {{0, 1}, {60, 100}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->82763210]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell[TextData[{
 "This Demonstration shows the phase equilibrium for a binary system of two \
partially miscible liquids, A and  B. Because of the partial miscibility, \
vapor-liquid equilibrium (VLE), liquid-liquid equilibrium (LLE), and \
vapor-liquid-liquid equilibrium (VLLE) are present on the phase diagram. You \
can vary the mole fraction of component B and the heat added (location of the \
black dot). The heat added changes the temperature, except when at 77",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["", 
    StyleBox["o",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 "C, where all three phases are in equilibrium: ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath"],
 " liquid (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"], "\[Alpha]"], "=", "0.28"}], TraditionalForm]], 
  "InlineMath"],
 "), ",
 Cell[BoxData[
  FormBox["\[Beta]", TraditionalForm]], "InlineMath"],
 " liquid (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"], "\[Beta]"], "=", "0.81"}], TraditionalForm]], 
  "InlineMath"],
 "), and vapor (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", "0.60"}], TraditionalForm]], "InlineMath"],
 "). At this temperature, one phase must completely evaporate (or condense if \
removing heat) before the temperature increases (or decreases). The amount of \
heat added is used to illustrate the system behavior and to show how at 77",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["", 
    StyleBox["o",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 "C all three phases exist. The relative amounts of each phase are determined \
from the lever rule (mole balance) and shown in the bar graph. The mole \
fraction(s) of component B in each phase are also displayed on the bar graph, \
for the phases present. In the multiple phase regions, dashed lines in the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"T", "-", "x", "-", "y"}], TraditionalForm]], "InlineMath"],
 " diagram show what the mole fraction of B is where the vertical lines cross \
the x-axis."
}], "ManipulateCaption",
 CellID->395315403]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`heat$$ = 0, $CellContext`loc$$ = 
    72, $CellContext`step$$ = 0, $CellContext`xpoint$$ = 0.4, Typeset`show$$ =
     True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xpoint$$], 0.4, "mole fraction B"}, 0.02, 0.98, 
      0.01}, {{
       Hold[$CellContext`heat$$], 0, "heat added (kJ)"}, 0, 37, 0.1}, {{
       Hold[$CellContext`step$$], 0}, 0, 100}, {{
       Hold[$CellContext`loc$$], 72}, 70}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Button[
          "reset to initial conditions", {$CellContext`xpoint$$ = 
            0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, ImageSize -> 
           Medium]}, {
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {603., {194., 201.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xpoint$1633$$ = 0, $CellContext`heat$1634$$ = 
    0, $CellContext`step$1635$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`heat$$ = 0, $CellContext`loc$$ = 
        72, $CellContext`step$$ = 0, $CellContext`xpoint$$ = 0.4}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xpoint$$, $CellContext`xpoint$1633$$, 0], 
        Hold[$CellContext`heat$$, $CellContext`heat$1634$$, 0], 
        Hold[$CellContext`step$$, $CellContext`step$1635$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol2$, $CellContext`sol3$, $CellContext`sol4$, \
$CellContext`sol5$, $CellContext`sol6$, $CellContext`sol7$, \
$CellContext`ypoint$, $CellContext`ypoint2$, $CellContext`ypoint4$, \
$CellContext`ypoint5$, $CellContext`R1$, $CellContext`R2$, $CellContext`R3$, \
$CellContext`R4$, $CellContext`R5$, $CellContext`R6$, $CellContext`R7$, \
$CellContext`\[Delta]$, $CellContext`\[Alpha]$, $CellContext`\[Beta]$, \
$CellContext`v$, $CellContext`x\[Alpha]$, $CellContext`x\[Beta]$, \
$CellContext`yB$, $CellContext`p2$, $CellContext`p3$}, $CellContext`sol2$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f2[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol3$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f3[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol4$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f4[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol5$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f5[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol6$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f6[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol7$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f7[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`ypoint$ = $CellContext`heat$$ + 
          72; $CellContext`ypoint2$ = $CellContext`ypoint$ - 
          10; $CellContext`ypoint4$ = $CellContext`ypoint$ + 
          10; $CellContext`ypoint5$ = $CellContext`ypoint$ - 20; If[
          
          And[$CellContext`ypoint$ < 
           77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            0]], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 2, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           3, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           3], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            1]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12, $CellContext`step$$ == 11]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            12], {$CellContext`step$$ = 
            13, $CellContext`loc$$ = $CellContext`ypoint2$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            13], {$CellContext`loc$$ = $CellContext`ypoint2$}]]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 13, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           Or[$CellContext`step$$ == 30, 32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 30, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            32], {$CellContext`step$$ = 
            33, $CellContext`loc$$ = $CellContext`ypoint5$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            33], {$CellContext`loc$$ = $CellContext`ypoint5$}]]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           10], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           0], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           30], {$CellContext`step$$ = 
           13, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           13], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 21], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           20], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 2], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 20, $CellContext`step$$ == 
            22]], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 0.81, 
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 
           0.275, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 
           0.81, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 24], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 23, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           24, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           24], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            23]], {$CellContext`step$$ = 50, $CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 50], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; $CellContext`R1$ = 
         And[0.275 <= $CellContext`xpoint$$ <= 
           0.81, $CellContext`loc$$ == $CellContext`f1]; $CellContext`R2$ = 
         And[$CellContext`sol2$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol3$[$CellContext`loc$$], $CellContext`loc$$ < $CellContext`f1]; \
$CellContext`R3$ = Or[
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol2$[$CellContext`loc$$], $CellContext`loc$$ <= \
$CellContext`f1], 
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol4$[$CellContext`loc$$], $CellContext`loc$$ > \
$CellContext`f1]]; $CellContext`R4$ = Or[
           
           And[$CellContext`sol3$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ <= $CellContext`f1], 
           
           And[$CellContext`sol7$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ > $CellContext`f1]]; \
$CellContext`R5$ = 
         And[$CellContext`sol4$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol5$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f5[$CellContext`xpoint$$]]]; $CellContext`R6$ = 
         And[$CellContext`sol6$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol7$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f6[$CellContext`xpoint$$]], $CellContext`loc$$ > \
$CellContext`f1]; $CellContext`R7$ = Or[
           
           And[$CellContext`loc$$ > $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`xpoint$$ <= 0.6], 
           
           And[$CellContext`loc$$ > $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.6]]; $CellContext`\[Delta]$ = 1 - Which[
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            20], ($CellContext`loc$$ - \
$CellContext`ypoint2$)/($CellContext`ypoint$ - $CellContext`ypoint2$), \
$CellContext`step$$ == 
           30, ($CellContext`loc$$ - \
$CellContext`ypoint5$)/($CellContext`ypoint2$ - $CellContext`ypoint5$), \
$CellContext`step$$ == 
           50, ($CellContext`loc$$ - \
$CellContext`ypoint$)/($CellContext`ypoint4$ - $CellContext`ypoint$)]; \
$CellContext`\[Alpha]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 
             0.6, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])), 
             0], $CellContext`R2$, ($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$]), $CellContext`R3$, 1, 
           Or[$CellContext`R4$, $CellContext`R6$, $CellContext`R7$], 
           0, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])]; $CellContext`\[Beta]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 0.6, 
             0, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$]))], $CellContext`R2$, \
($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$]), 
           Or[$CellContext`R3$, $CellContext`R5$, $CellContext`R7$], 
           0, $CellContext`R4$, 
           1, $CellContext`R6$, ($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$])]; $CellContext`v$ = 
         Which[$CellContext`R1$, $CellContext`\[Delta]$ 
           If[$CellContext`xpoint$$ <= 
             0.6, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), ($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])], 
           Or[$CellContext`R2$, $CellContext`R3$, $CellContext`R4$], 
           0, $CellContext`R7$, 
           1, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), $CellContext`R6$, \
($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])]; $CellContext`x\[Alpha]$ = 
         Which[$CellContext`R1$, 0.275, $CellContext`R2$, 
           $CellContext`sol2$[$CellContext`loc$$], $CellContext`R3$, \
$CellContext`xpoint$$, $CellContext`R5$, 
           $CellContext`sol4$[$CellContext`loc$$]]; $CellContext`x\[Beta]$ = 
         Which[$CellContext`R1$, 0.81, $CellContext`R2$, 
           $CellContext`sol3$[$CellContext`loc$$], $CellContext`R4$, \
$CellContext`xpoint$$, $CellContext`R6$, 
           $CellContext`sol7$[$CellContext`loc$$]]; $CellContext`yB$ = 
         Which[$CellContext`R1$, 0.6, $CellContext`R5$, 
           $CellContext`sol5$[$CellContext`loc$$], $CellContext`R6$, 
           $CellContext`sol6$[$CellContext`loc$$], $CellContext`R7$, \
$CellContext`xpoint$$]; $CellContext`p2$ = Graphics[{{Thick, Dashed, 
             If[
              Or[$CellContext`R1$, $CellContext`R2$], {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol2$[$CellContext`loc$$], 60}, {
                   $CellContext`sol2$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R5$, {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol4$[$CellContext`loc$$], 60}, {
                   $CellContext`sol4$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R6$, {{
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{
                   $CellContext`sol6$[$CellContext`loc$$], 60}, {
                   $CellContext`sol6$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], 60}}]}}], 
             If[
              Or[$CellContext`R1$, $CellContext`R7$], {
               Opacity[0.75, 
                Darker[Green]], 
               
               Line[{{$CellContext`yB$, $CellContext`loc$$}, \
{$CellContext`yB$, 60}}]}], 
             If[$CellContext`R3$, {
               Opacity[0.75, 
                Darker[Red]], 
               
               Line[{{$CellContext`x\[Alpha]$, $CellContext`loc$$}, \
{$CellContext`x\[Alpha]$, 60}}]}], 
             If[$CellContext`R4$, {
               Lighter[Blue, 0.3], 
               
               Line[{{$CellContext`x\[Beta]$, $CellContext`loc$$}, \
{$CellContext`x\[Beta]$, 60}}]}]}, {
             PointSize[0.025], 
             
             Point[{$CellContext`xpoint$$, $CellContext`loc$$}]}}]; \
$CellContext`p3$ = Graphics[{{
             EdgeForm[Black], {
              Opacity[0.4, 
               Darker[Red]], 
              Rectangle[{0, 0}, {1, $CellContext`\[Alpha]$}]}, {
              Lighter[Blue, 0.65], 
              Rectangle[{1.15, 0}, {2.15, $CellContext`\[Beta]$}]}, {
              Opacity[0.4, 
               Darker[Green]], 
              Rectangle[{2.3, 0}, {3.3, $CellContext`v$}]}}, 
            Text[
             Style["\[Alpha] liquid", 15], {0.5, -0.05}], 
            Text[
             Style["\[Beta] liquid", 15], {1.65, -0.05}], 
            Text[
             Style["vapor", 15], {2.8, -0.05}], 
            If[$CellContext`\[Alpha]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Alpha]"], " ="}], 
                 NumberForm[$CellContext`x\[Alpha]$, {2, 2}]}, Center], 15], {
              0.5, $CellContext`\[Alpha]$}, {0, -1}]], 
            If[$CellContext`\[Beta]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Beta]"], " ="}], 
                 NumberForm[$CellContext`x\[Beta]$, {2, 2}]}, Center], 15], {
              1.65, $CellContext`\[Beta]$}, {0, -1}]], 
            If[$CellContext`v$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subscript[
                    Style["y", Italic], "B"], " = "}], 
                 NumberForm[$CellContext`yB$, {2, 2}]}, Center], 15], {
              2.8, $CellContext`v$}, {0, -1}]]}, ImageSize -> {195, 395}, 
           AspectRatio -> Full, ImagePadding -> {{20, 5}, {40, 5}}, 
           Frame -> {{True, None}, {True, None}}, 
           FrameTicks -> {{True, None}, {None, None}}, 
           FrameTicksStyle -> {12, Black}, PlotLabel -> 
           Style["relative amounts", 15], PlotRange -> {0, 1.1}]; Grid[{{
            Show[$CellContext`p1, $CellContext`p2$], 
            Show[$CellContext`p3$]}}]], 
      "Specifications" :> {{{$CellContext`xpoint$$, 0.4, "mole fraction B"}, 
         0.02, 0.98, 0.01, Appearance -> {"Labeled", Small}, ControlPlacement -> 
         1}, {{$CellContext`heat$$, 0, "heat added (kJ)"}, 0, 37, 0.1, 
         Appearance -> {"Labeled", Small}, ControlPlacement -> 
         2}, {{$CellContext`step$$, 0}, 0, 100, ControlType -> None, 
         ControlPlacement -> 3}, {{$CellContext`loc$$, 72}, 70, ControlType -> 
         None, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Button[
           "reset to initial conditions", {$CellContext`xpoint$$ = 
             0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, 
            ImageSize -> Medium]}, {
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{652., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`f2[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       59.96 + 112.39 $CellContext`x - 
        179.43 $CellContext`x^2, $CellContext`f3[
         Pattern[$CellContext`x, 
          Blank[]]] = -251.09 + 815.78 $CellContext`x - 
        506.61 $CellContext`x^2, $CellContext`f4[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.252 - 113.1 $CellContext`x + 253.87 $CellContext`x^2 - 
        382.08 $CellContext`x^3, $CellContext`f5[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.312 - 13.96 $CellContext`x - 
        32.008 $CellContext`x^2, $CellContext`f6[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       36.107 + 89.719 $CellContext`x - 
        34.417 $CellContext`x^2, $CellContext`f7[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       249.41 - 451.53 $CellContext`x + 
        294.89 $CellContext`x^2, $CellContext`yval = 77.4, $CellContext`f1 = 
       77.3, Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = Graphics[{
          GraphicsComplex[CompressedData["
1:eJxdVHs0ldsW33QaiR3qiLtVSiQ9qMTR05xSuUhh2Z+dkBQSPajclFIehTzD
pU3lEUWEUjodZYuiIu/HKSPsb1NJ++tFSnG/e8ftdG9rjDXWH2utOebvMX+a
bnvt3GU5HE40u/99Wrq/bBS94pu46F+q+0QEuOMAw4vgJYKrzQzzi6YClEu0
yHj77iK4tGxN+7ZAgKUNBubmGoXQWrEpgKcqQEFI59PK0yWge+2j5eQxB9xb
vF8v5ePv0JYyTUAkDvg+rq1GRqYcGrOLq0sfOmBNxYPy+lX3wDchzW3qFQf0
CrCYtHmgCorWp40sOu2AFRMNxvJ3V4PBqhDNem8HzMmqGlWf8wjWRE1Nlf27
A6LqnUxytRYkkaa5A9oOqFfdeevB/HqomPui6hPHAVuQSHOlDVByVPaZYQeF
PvLeTa2Lm+DOIf608CIKH3c43FGMaYZmi9KgshAKyXpBj0TSAqvbxk3+wKfw
t/TTDunabeDm3FmcMY/C7tGElp1B7ZAzqt9X+4mPvRb1WaqVHZChr6CYWc3H
orNdAY2aT+F6ZFBSZjwfs8PHRcw7/Ay61L/99tiRj4PbHfs9/uiEQndjTY4O
HxXWnrQrVnsOfup+niP99hio3MvtceqC4zZ6KkbX7JF7dwGn3bobPpgHqI4c
ssfV/pu+VX7phj8fZzDay+0x7WJUllZaDwS3ZzEDIwRd+IZ1E63EYFriUVtd
SvBGq3vC3SExhL07pay8n+Dy2iLZvn/SsFToMf5wOMFZ6zwGE9ZK4GP6RkNu
DUEjQ6P4kj4JaC9U8xfK2GPX++iHWWG90BQ0sXrzMnscWGobxjPog7+dFSX2
+Nqjzmu9fpnmPjBbaTSrNtseq7QPNu078QLMDoC9bqc9xra0brfTfgmNHzRM
Z0ziI0NE8bJVL2Hb+eAC75V8vMafarbc9xVYTHiRVeHNx6y6kHPiKf2wdMzc
Xy2Zj5+qnY5MudcP/VuHzs6o4mN3fPmg8p7X4DPgOLBFysehxpW8YMUB+NV2
9u1xKhTuS5wtCigbgPFhsQJmBYVqdbOVJS5vQP34FPPDzqy+rflfp4++geHQ
4km5Ryl8vzXDpzNPCkXN9U3F5yksdy0MU9zAQI9ls0j0B4XJMxUGx8YY4Pxn
bcSQE6cPRfJCYeH9pGiOlQAjp1ovlqSLYctozqnsJIKfbBSsmtbTsEp9elfQ
LoL54Qpfy97Q8Pq27eHgywQFrroBB0ekcF5Op2tvAYUL0Hn1hBwGjEXmr1c8
plCUWmkUzTsAxlu8n4RvEuCBG6LRoYNiWFBlp3w/hyCVsGxvjQYNdMjiqmo3
gn7zXYJs79EgebdcLSaF4JxuyXvdZikEcm2OaeRQeNDmZI98AAPXji9tj6mk
MP3gn9saH4vhidt2A69QgimKz3U699Ag7EvaFRlAMKrbe6xCiwHVGtvB7BIK
5z6YcL56Gf1f/JtxRcPSojO8HaB7dJV/pa0AvcK+uB93FYP0JjPBspDgScNN
JyrlaShQVucyLH7qyISK1HwaxKVzfwmPI8idVVkoWy6FfOPeeO9MCoUdwutR
bgyckWzg5pdTmLTu14eON8WwYUHKkHw0wZrCj8vaHWkI0ZIGy/mxeGdZlqUq
MfB2UTxRLKbwe15970/nvaZznQEN2laPlwkdCdrU+CpFxDJgMvOUplc1hW0z
PGPvFTB/4dFfrpJ9jmcPT7NGvZ/bsXm3O5l3ny+GdR9jGyKuE9QIc5Sv4NCQ
4i+iOHvZfrQ6e0QZNBwfv1o2OIrgGBjEMCVSSGgvjIpNpzB/enaatQMDPv/I
9C+9Q2GcXlHghStiOEFC52yOJ+jK4dxrsaEh2zNSbt0egu74uzB8PAMLpUUf
oJDCV/FLVGVMfvB9d41e3yNdGmSd3zwodiHoxg0ctghlILdwL/fo/Z/9uRml
tNnwfRUaHpQnLu70IDgjOinG/+qP++/1zx24YLnQk6BJqKdOjZDttz5AlTyk
UFWhNeY6by1kTqc2ebP5v63Hfb+nDatviIpc7g2Cu/S6n5SPiGH3ZJG7nC9B
zqH1fiSNhqH1i8yORRIcrvf61lsoBfX5/L70CxTeNJk/+aotAyoB5VvLyiiM
zjjWZpojBmGHflxQAjsfl8NONlvRoJVQkuvmw+ZXw9uJQRwGntdzZgmuUjhb
o6Mm5woDbW/TJ+rXUij/+lreQy0aGuvyPpW5EvTRl9mdd4wB9cVtRierKFwR
9bCsSomGs+v2N/TuJPjUIi3liTENqnkez6IFBM1zBoS6SQysURrv6lJDoZ/w
kmatHg1+S4aX5DgRXPM5TqnRlIZ3X0WX09j/hm7iYs90Bu5u7V1r/ojCF1cp
ty6eIbj5zUwtZvlxnWadfstaDLIvsw7dukkwTkZrCXwWQ9NwnjmX9ev0zCO3
087S4LRxtmFgBMHB5PFG2wqk8EuL8a55LD+3632snm9kYOiUZYYJy0/UM/dx
CVlicDe2FZ5JJNgUWPPSzoLNkyvdtr7eBLekRJl++SYFp4plkyRsfugUqo9r
v8xA8LGDp0vY/FhcPsi10KTBIP3ArnvbCO4rN7v09AgDrqNhyfIsP66u3Jlr
J9EQmFl3uN+L1U+j64u1EavfuwuqiZsJbjBe1Co4w8CK1dWNNDsvKXv6Q6wW
0BB/97NcvjPBnXXNvjZAw+V983vzWP8s/6A9kHyOgbg7RSZ1rH/+328b/8oP
3dINvXNZ/r/Pn1PreaUIVs+Tvls8PP7n/c/3P/v153py+dMdd6ykoWvqkFre
VoKVlxRTvxT8qPcv0rEemw==
           "], {{{
              EdgeForm[], 
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                Polygon[{{50, 92, 94, 133}}], 
                
                Polygon[{{135, 79, 89, 95, 131, 113, 53, 122, 104, 87, 74, 64,
                  31, 118, 100, 83, 70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 
                 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 119, 101, 84, 71, 61,
                  55, 123, 105, 88, 75, 65, 49, 120, 102, 85, 72, 62, 126, 
                 108, 91, 78, 129, 111, 96, 132, 114, 56, 124, 106}}], 
                
                Polygon[{{134, 66, 76, 1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5,
                  6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
                 22, 23, 24, 25, 26, 27, 28, 29, 116, 98, 81, 68, 58, 52, 121,
                  103, 86, 73, 63, 30, 117, 99, 82, 69, 127, 109, 93, 59, 125,
                  107, 90, 130, 112, 77, 128, 
                 110}}]}]}, {}, {}, {}}, {{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
               11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                27, 28, 29, 116, 98, 81, 68, 58, 52, 121, 103, 86, 73, 63, 30,
                117, 99, 82, 69, 127, 109, 93, 59, 125, 107, 90, 130, 112, 77,
                128, 110, 134}], 
              
              Line[{95, 131, 113, 53, 122, 104, 87, 74, 64, 31, 118, 100, 83, 
               70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                45, 46, 47, 48, 119, 101, 84, 71, 61, 55, 123, 105, 88, 75, 
               65, 49, 120, 102, 85, 72, 62, 126, 108, 91, 78, 129, 111, 96, 
               132, 114, 56, 124, 106, 135}]}, {
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              Line[{137, 141}], 
              Line[{139, 140, 138}]}}, {{}, {}, {}}}], 
          GraphicsComplex[CompressedData["
1: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
WWqhs4a2NLu1P7lcwN8K//xv/Rd/QmY1
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              Directive[
               RGBColor[2/3, 0, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                
                Polygon[{{1, 152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
                 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                 42, 43, 44, 45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 
                 65, 61, 58, 55, 71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50, 
                 124, 151, 144, 150, 138, 143, 149, 133, 137, 142, 148, 129, 
                 132, 136, 141, 147, 126, 128, 131, 135, 140, 146, 123, 122, 
                 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
                 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97,
                  96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 
                 81, 80, 79, 78, 77, 76, 125, 127, 130, 134, 139, 145, 
                 75}}]}]}, {}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
               14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 
               45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 65, 61, 58, 55,
                71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{75, 145, 139, 134, 130, 127, 125, 76, 77, 78, 79, 80, 81, 
               82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
                98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
               123, 146, 140, 135, 131, 128, 126, 147, 141, 136, 132, 129, 
               148, 142, 137, 133, 149, 143, 138, 150, 144, 151, 124}]}}}], 
          GraphicsComplex[CompressedData["
1:eJxd1As4VHkfwPFJE0OJsN12c1vJLdc3qc3+/xIpt5lzZuaEoim3rmwuEYm2
qEhIUlkKlSjd5F5Nb+uSRK81WFksNVtnzBwUUaz9v+/zOPM87zzPPPOc58z5
zv/8z/w+ertCsAAFBoORj97//dQiVdEHCVysdmCN7ji0+OuGu6E2CVLs/Zip
XBzW9gz+R/QjCZo+pwdFb8fhoWyRyHsHCUZXB3D2+ONQy1TvonMMCRacNsx4
uB+HRuXq6TVXSOBmNRjhGInDAKVHKorVJBBbObdXHsPhN5zp2t+7SZC7x2RJ
6hkc3vspz0zrKwkWHxFUNlzAYfi28W8NlklAZukvrIarOCxZO+L4eJ0EpPxM
ip3v4FDlj6sS020SEJkzCGKrcMjzKmbPiZQAZsvR1LE6HGq2EDK/LAk4Eih1
UmvH4SSren5mmQSoTIcdf/onDrENQgFHJAHB+/P4JiM4vOisGxExJgHsnmLd
QQYXMpesYYVoDoHqj2nVGupc+LZP+tuIzRA4EX49boUeFw4d9NHZig2BieDm
D6lWXBg0vr/ANAwdb7drHnPkwhZu19uw80OgN7bRJ5fPhTuiJ66n3x8Co8LR
yrPBXOiXVZtn1zYExIpmTudjufBM9Jplj4aHgHZd/O7Wc1x41YbFzl4oBTuJ
qQqzAi40Fsc9ZVpIAbk10UBYyYVvfItLnd2l4B7vqc6+V1w40xrdseigFHT3
BR4IfMuFaksLahxTpYCt2DeW8pULXQwTdF1vS8HWttEtJYt48KPZ3CdvmqXA
cvO69PUmPNgwue6Ng0QKBgSrw+878GDSL02PFirLQOSyxdY2XjxYtW6m0d9Y
BvIZpo+cwnhQK+e9T9pmGfBQEYt1U3jwz/GIVU7BMpD1IXLezZs82Lmk8lBr
ogykhimnvXuGrlfjxggLZcBaybJBv4cHVRmZtevrZKAjOHDAZJIHz5SfOnpm
UAYUJr23NWvx4ZEAvcO7mRSI02NPYDZ8yJNomhcYUODHKan7AIcPvdbW+Fdu
pEB+lN9qyUE+fB2j2M7fTYFez9fvJlP5MCRR8XlTAgX0pxkjP93hwy9BO0Ou
51Egse6BY9tLPpxw8OUqCymwl5XtuU3Kh9oD6lUbeykwcNz3oZEqAYe+GZ2e
maFARlhPyWYrAuYHd6/SVCNBcRWzdTkHh/NiE3z0KAoorEp88L0OAX2MP2We
ViKBStbl6AOeONSw2KLyQEwB8bHbmnqLCTjRWHU77TMF1kdJzlkaEbBSOeHl
r3NJ8NrVtv+SBw6zWXcERwbQeheUXSlYRMC4/BVMr48U8PYO+r3oewIeoni8
xq/ofuM1OqrNCCiObggcmEOCjG1dnZboep8x37O+/RQwJzNFAWoE3Hiu1cJ+
hAK7dit8CtAj4JoepYTbkxTQzlMRRJgQ8K5CofHbaQrUfzeXYlgQcPr+3n+N
oPk/uO/JiSk0/7WStQXsPgrY5k1ZbF5IwMKTRU4Ww2h/Vzc82aRLwKy2/qzc
CbS+T9ODmDEB1SdjQccUBXwrVFv+WE1AjwUvNUf/pkD3vVE7A0sCsjw2XIlC
/b8rIoMGUF8aaFD6Au23tWvqUAXa73bGBXYR2s9c/ySbMrSfDe6vri1B/chQ
UdkztF8O4Xu2eqK+ecewmxvqxyVVaO9D/S9X36RmoPWvSO9lRaPn5evmIn2E
fm/Ws6JGbZUkTO7ZlOHiMi5b7plwuf78MTe5Z2VK7Ur9LnLP4kFK54yj3LO3
xmvCauzlnqXJOlU+28o9O7FoKX7NXO5ZFFlqE7JS7tnEnPa7H7+Ve2bp//hp
qbrcs57LHxw2zJN7FvpQpLxyEqM9C8+hSlQlGO1ZrGDV8HQPJvcsxk/zWTNG
e8YMptxbajDas+01lQXLSjDas8xK28GZixjtGfT7lQFPYrRnLixRlzQEoz3r
j64f+OKF0Z7VvtM/nr0Joz0rCqq4sc8Moz3jzjxwlGhhtGfZWUldc6Y5tGdT
w8m6SwY4tGdavEtGCxs5tGdpd5raO4o5tGdCo46NK89yaM+mDF7NSQnl0J51
pZsQKWwO7RnDJb1ZaMWhPYu/r5r/QINDe2Z2LWK30jCb9qzwk1pgXQub9syl
625A1S027VmXsO6CdSKb9sysyVozbheb9oxhZ1rQuJ5Ne2aXrPD8lRab9mzC
Ybxwi8iT9kzde+9gdLwn7Vkok8pIsfCkPWPFEKI2kQft2T2dK8Am3oP2bOf7
cduTJh4wuVPpznF1EtTvPCQ5iHz6/+NZzxj/e3nQnmUvOPXlNDo/LqhTizMn
QfDdA+/rkCcXq3vwpR4kCA2+xFdyxeFzQUw5ez+ahzOC3GRnnPauvdX8tBqa
rwyDcnPMEB17RKZdQP4Vu/ZrHHYmgT+x0n8emq/lR43qRf7ovH7Dk9rNOHx/
U1ids5gEjGMmvuNoHr3y2odv2aL5c5mqeYd8mPXx1PUd891Rv/+k+Y8b9NH1
+G/Wn1HfRmvXoRsb0bzlRjCPoX69yoz7UgG6vsROm43m1+mU+0inBgm+01GX
OaD7K2K4MzKt0fxr/XuAQPc362eo1DRmL+qfKiedrHRJUDg3+7AhWk/UhL7+
E4i+z2PEVKN+DodMX+dHAq7Os4Rs1A+fOJ8yhvbXsrnKPxD1Pa2UWactSbDf
qGbPOdSf9TSnUdgbhfo9LY0vTHVI0C/uK7dH/ct75355AUhwj9/b14n6SmN9
Nlt9SfB+U/TOWtRPtlzrzUT9Ka9a1yjUz9/yV/LPFiSItV/RVIz6s56yCiO/
HkN9xTcV828h39g/PLbfgvolBR/feaK+W/zDWDHq19Z3n2hDvhVhGj+0oH5W
M+tZMnr+ZQuNTRJQv5nX8YqB+q+LkwSVqH+Z073HqFT+f/kHygfMpg==
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{1, 71, 65, 60, 56, 53, 51, 126, 125, 154, 160, 128, 
                 132, 138, 144, 150, 156, 78}}]}]}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{125, 148, 142, 136, 79, 157, 151, 145, 139, 133, 
                 129, 161, 155, 149, 143, 137, 80, 158, 152, 146, 140, 134, 
                 130, 81, 159, 153, 147, 141, 135, 131, 82, 83, 84, 85, 86, 
                 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
                  102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
                 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 162, 
                 127, 50, 77, 70, 76, 64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 
                 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 46, 45, 44, 43, 
                 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
                 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
                 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
                 126}}]}]}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 71, 65, 60, 56, 53, 51, 126, 2, 3, 4, 5, 6, 7, 8, 9, 
               10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
               41, 42, 43, 44, 45, 46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73,
                67, 62, 58, 55, 74, 68, 63, 59, 75, 69, 64, 76, 70, 77, 
               50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{78, 156, 150, 144, 138, 132, 128, 160, 154, 125, 148, 142,
                136, 79, 157, 151, 145, 139, 133, 129, 161, 155, 149, 143, 
               137, 80, 158, 152, 146, 140, 134, 130, 81, 159, 153, 147, 141, 
               135, 131, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 
               95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 
               108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
               120, 121, 122, 123, 124, 162}]}}}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnXYxaOnMmRftjUEgONjhzY9bzQveI/jFCslJy10v
wfkSmtLMegyX4XyZQ2meEesQfNufC7+IR16B87+9bGkOELoK5/Nl/96usx/B
37dU8kJj1TU4v7tO3TfH6Dqcv/35ifxfdxH8ai6hMsYZN+D8eXvfKa5xvQnn
3+XbbfTmPYK/VVJffemKW3D+6y1mBxlDb8P5uzif2V3nvwPnL/3Touh0HMF/
X799ZUDRXTj/4p6Joje078H5Ql3/1ZhvIvivBURllk+5D+d/lOK1LlB7AOfP
Lr25K64GwRdcW7mm8yaCv33N44I2g4dwfnb10ednWxH812rVFwIfIfizZ/3q
Xm7xCM4Xf+2703Iagr+QS3Km2CcEP/rTWu+j7o/h/IfbxAo2LEHwpzl7puf+
RvAj538WKA14Aue/vF6os3MNgr/ixk6p80xP4XzjbVerFBMQ/LfRu9e6bkfw
t12QmLyF5xmc763k9So+E8Hnt3EVubsfwZ9vJLJhmuxzON/uR9S/WZUIPk9b
tnzheQR/2Qf/Tc06L+D8AuV/4hnNCL6HqorB9BsI/htmuV1Mpi/h/P2rHoo5
dCP4SRvuTU/ajeCzbbst0foawQcAg405uw==
              "]]}}}, {
           Text[
            Style["vapor", 19, 
             GrayLevel[0.25]], {0.5, 95}], 
           Rotate[
            Text[
             Style["\[Alpha] liquid ", 19, 
              GrayLevel[0.25]], {0.075, 77}], Pi/2], 
           Rotate[
            Text[
             Style["\[Beta] liquid ", 19, 
              GrayLevel[0.25]], {0.95, 77}], Pi/2], 
           Text[
            Style["\[Alpha] liquid + \[Beta] liquid", 14, 
             GrayLevel[0.2]], {0.5, 62}], 
           Text[
            Style["\[Alpha] liquid + vapor", 14, 
             GrayLevel[0.2]], {0.4125, 79}], 
           Text[
            Style[
             Column[{"\[Beta] liquid", "+ vapor"}, Center], 14, 
             GrayLevel[0.2]], {0.755, 79.25}]}}, {
         AspectRatio -> 1, ImageSize -> {400, 395}, Frame -> True, FrameLabel -> {
            Style["mole fraction B", 17], 
            Style["temperature  (\[Degree]C)", 17]}, LabelStyle -> {
            GrayLevel[0], 14}, DisplayFunction -> Identity, AspectRatio -> 
          GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 60.}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, "AxesInFront" -> 
            True}, PlotRange -> {{0, 1}, {60, 100}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->228050267]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`heat$$ = 
    19.200000000000003`, $CellContext`loc$$ = 81.2, $CellContext`step$$ = 
    11, $CellContext`xpoint$$ = 0.4, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xpoint$$], 0.4, "mole fraction B"}, 0.02, 0.98, 
      0.01}, {{
       Hold[$CellContext`heat$$], 19.200000000000003`, "heat added (kJ)"}, 0, 
      37, 0.1}, {{
       Hold[$CellContext`step$$], 11}, 0, 100}, {{
       Hold[$CellContext`loc$$], 81.2}, 70}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Button[
          "reset to initial conditions", {$CellContext`xpoint$$ = 
            0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, ImageSize -> 
           Medium]}, {
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {603., {194., 201.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xpoint$1699$$ = 0, $CellContext`heat$1700$$ = 
    0, $CellContext`step$1701$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`heat$$ = 
        19.200000000000003`, $CellContext`loc$$ = 81.2, $CellContext`step$$ = 
        11, $CellContext`xpoint$$ = 0.4}, "ControllerVariables" :> {
        Hold[$CellContext`xpoint$$, $CellContext`xpoint$1699$$, 0], 
        Hold[$CellContext`heat$$, $CellContext`heat$1700$$, 0], 
        Hold[$CellContext`step$$, $CellContext`step$1701$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol2$, $CellContext`sol3$, $CellContext`sol4$, \
$CellContext`sol5$, $CellContext`sol6$, $CellContext`sol7$, \
$CellContext`ypoint$, $CellContext`ypoint2$, $CellContext`ypoint4$, \
$CellContext`ypoint5$, $CellContext`R1$, $CellContext`R2$, $CellContext`R3$, \
$CellContext`R4$, $CellContext`R5$, $CellContext`R6$, $CellContext`R7$, \
$CellContext`\[Delta]$, $CellContext`\[Alpha]$, $CellContext`\[Beta]$, \
$CellContext`v$, $CellContext`x\[Alpha]$, $CellContext`x\[Beta]$, \
$CellContext`yB$, $CellContext`p2$, $CellContext`p3$}, $CellContext`sol2$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f2[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol3$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f3[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol4$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f4[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol5$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f5[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol6$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f6[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol7$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f7[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`ypoint$ = $CellContext`heat$$ + 
          72; $CellContext`ypoint2$ = $CellContext`ypoint$ - 
          10; $CellContext`ypoint4$ = $CellContext`ypoint$ + 
          10; $CellContext`ypoint5$ = $CellContext`ypoint$ - 20; If[
          
          And[$CellContext`ypoint$ < 
           77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            0]], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 2, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           3, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           3], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            1]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12, $CellContext`step$$ == 11]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            12], {$CellContext`step$$ = 
            13, $CellContext`loc$$ = $CellContext`ypoint2$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            13], {$CellContext`loc$$ = $CellContext`ypoint2$}]]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 13, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           Or[$CellContext`step$$ == 30, 32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 30, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            32], {$CellContext`step$$ = 
            33, $CellContext`loc$$ = $CellContext`ypoint5$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            33], {$CellContext`loc$$ = $CellContext`ypoint5$}]]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           10], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           0], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           30], {$CellContext`step$$ = 
           13, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           13], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 21], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           20], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 2], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 20, $CellContext`step$$ == 
            22]], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 
           0.275, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 
           0.81, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 24], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 23, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           24, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           24], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            23]], {$CellContext`step$$ = 50, $CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 50], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; $CellContext`R1$ = 
         And[0.275 <= $CellContext`xpoint$$ <= 
           0.81, $CellContext`loc$$ == $CellContext`f1]; $CellContext`R2$ = 
         And[$CellContext`sol2$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol3$[$CellContext`loc$$], $CellContext`loc$$ < $CellContext`f1]; \
$CellContext`R3$ = Or[
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol2$[$CellContext`loc$$], $CellContext`loc$$ <= \
$CellContext`f1], 
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol4$[$CellContext`loc$$], $CellContext`loc$$ > \
$CellContext`f1]]; $CellContext`R4$ = Or[
           
           And[$CellContext`sol3$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ <= $CellContext`f1], 
           
           And[$CellContext`sol7$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ > $CellContext`f1]]; \
$CellContext`R5$ = 
         And[$CellContext`sol4$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol5$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f5[$CellContext`xpoint$$]]]; $CellContext`R6$ = 
         And[$CellContext`sol6$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol7$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f6[$CellContext`xpoint$$]], $CellContext`loc$$ > \
$CellContext`f1]; $CellContext`R7$ = Or[
           
           And[$CellContext`loc$$ > $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`xpoint$$ <= 0.6], 
           
           And[$CellContext`loc$$ > $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.6]]; $CellContext`\[Delta]$ = 1 - Which[
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            20], ($CellContext`loc$$ - \
$CellContext`ypoint2$)/($CellContext`ypoint$ - $CellContext`ypoint2$), \
$CellContext`step$$ == 
           30, ($CellContext`loc$$ - \
$CellContext`ypoint5$)/($CellContext`ypoint2$ - $CellContext`ypoint5$), \
$CellContext`step$$ == 
           50, ($CellContext`loc$$ - \
$CellContext`ypoint$)/($CellContext`ypoint4$ - $CellContext`ypoint$)]; \
$CellContext`\[Alpha]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 
             0.6, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])), 
             0], $CellContext`R2$, ($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$]), $CellContext`R3$, 1, 
           Or[$CellContext`R4$, $CellContext`R6$, $CellContext`R7$], 
           0, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])]; $CellContext`\[Beta]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 0.6, 
             0, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$]))], $CellContext`R2$, \
($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$]), 
           Or[$CellContext`R3$, $CellContext`R5$, $CellContext`R7$], 
           0, $CellContext`R4$, 
           1, $CellContext`R6$, ($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$])]; $CellContext`v$ = 
         Which[$CellContext`R1$, $CellContext`\[Delta]$ 
           If[$CellContext`xpoint$$ <= 
             0.6, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), ($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])], 
           Or[$CellContext`R2$, $CellContext`R3$, $CellContext`R4$], 
           0, $CellContext`R7$, 
           1, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), $CellContext`R6$, \
($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])]; $CellContext`x\[Alpha]$ = 
         Which[$CellContext`R1$, 0.275, $CellContext`R2$, 
           $CellContext`sol2$[$CellContext`loc$$], $CellContext`R3$, \
$CellContext`xpoint$$, $CellContext`R5$, 
           $CellContext`sol4$[$CellContext`loc$$]]; $CellContext`x\[Beta]$ = 
         Which[$CellContext`R1$, 0.81, $CellContext`R2$, 
           $CellContext`sol3$[$CellContext`loc$$], $CellContext`R4$, \
$CellContext`xpoint$$, $CellContext`R6$, 
           $CellContext`sol7$[$CellContext`loc$$]]; $CellContext`yB$ = 
         Which[$CellContext`R1$, 0.6, $CellContext`R5$, 
           $CellContext`sol5$[$CellContext`loc$$], $CellContext`R6$, 
           $CellContext`sol6$[$CellContext`loc$$], $CellContext`R7$, \
$CellContext`xpoint$$]; $CellContext`p2$ = Graphics[{{Thick, Dashed, 
             If[
              Or[$CellContext`R1$, $CellContext`R2$], {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol2$[$CellContext`loc$$], 60}, {
                   $CellContext`sol2$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R5$, {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol4$[$CellContext`loc$$], 60}, {
                   $CellContext`sol4$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R6$, {{
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{
                   $CellContext`sol6$[$CellContext`loc$$], 60}, {
                   $CellContext`sol6$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], 60}}]}}], 
             If[
              Or[$CellContext`R1$, $CellContext`R7$], {
               Opacity[0.75, 
                Darker[Green]], 
               
               Line[{{$CellContext`yB$, $CellContext`loc$$}, \
{$CellContext`yB$, 60}}]}], 
             If[$CellContext`R3$, {
               Opacity[0.75, 
                Darker[Red]], 
               
               Line[{{$CellContext`x\[Alpha]$, $CellContext`loc$$}, \
{$CellContext`x\[Alpha]$, 60}}]}], 
             If[$CellContext`R4$, {
               Lighter[Blue, 0.3], 
               
               Line[{{$CellContext`x\[Beta]$, $CellContext`loc$$}, \
{$CellContext`x\[Beta]$, 60}}]}]}, {
             PointSize[0.025], 
             
             Point[{$CellContext`xpoint$$, $CellContext`loc$$}]}}]; \
$CellContext`p3$ = Graphics[{{
             EdgeForm[Black], {
              Opacity[0.4, 
               Darker[Red]], 
              Rectangle[{0, 0}, {1, $CellContext`\[Alpha]$}]}, {
              Lighter[Blue, 0.65], 
              Rectangle[{1.15, 0}, {2.15, $CellContext`\[Beta]$}]}, {
              Opacity[0.4, 
               Darker[Green]], 
              Rectangle[{2.3, 0}, {3.3, $CellContext`v$}]}}, 
            Text[
             Style["\[Alpha] liquid", 15], {0.5, -0.05}], 
            Text[
             Style["\[Beta] liquid", 15], {1.65, -0.05}], 
            Text[
             Style["vapor", 15], {2.8, -0.05}], 
            If[$CellContext`\[Alpha]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Alpha]"], " ="}], 
                 NumberForm[$CellContext`x\[Alpha]$, {2, 2}]}, Center], 15], {
              0.5, $CellContext`\[Alpha]$}, {0, -1}]], 
            If[$CellContext`\[Beta]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Beta]"], " ="}], 
                 NumberForm[$CellContext`x\[Beta]$, {2, 2}]}, Center], 15], {
              1.65, $CellContext`\[Beta]$}, {0, -1}]], 
            If[$CellContext`v$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subscript[
                    Style["y", Italic], "B"], " = "}], 
                 NumberForm[$CellContext`yB$, {2, 2}]}, Center], 15], {
              2.8, $CellContext`v$}, {0, -1}]]}, ImageSize -> {195, 395}, 
           AspectRatio -> Full, ImagePadding -> {{20, 5}, {40, 5}}, 
           Frame -> {{True, None}, {True, None}}, 
           FrameTicks -> {{True, None}, {None, None}}, 
           FrameTicksStyle -> {12, Black}, PlotLabel -> 
           Style["relative amounts", 15], PlotRange -> {0, 1.1}]; Grid[{{
            Show[$CellContext`p1, $CellContext`p2$], 
            Show[$CellContext`p3$]}}]], 
      "Specifications" :> {{{$CellContext`xpoint$$, 0.4, "mole fraction B"}, 
         0.02, 0.98, 0.01, Appearance -> {"Labeled", Small}, ControlPlacement -> 
         1}, {{$CellContext`heat$$, 19.200000000000003`, "heat added (kJ)"}, 
         0, 37, 0.1, Appearance -> {"Labeled", Small}, ControlPlacement -> 
         2}, {{$CellContext`step$$, 11}, 0, 100, ControlType -> None, 
         ControlPlacement -> 3}, {{$CellContext`loc$$, 81.2}, 70, ControlType -> 
         None, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Button[
           "reset to initial conditions", {$CellContext`xpoint$$ = 
             0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, 
            ImageSize -> Medium]}, {
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{652., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`f2[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       59.96 + 112.39 $CellContext`x - 
        179.43 $CellContext`x^2, $CellContext`f3[
         Pattern[$CellContext`x, 
          Blank[]]] = -251.09 + 815.78 $CellContext`x - 
        506.61 $CellContext`x^2, $CellContext`f4[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.252 - 113.1 $CellContext`x + 253.87 $CellContext`x^2 - 
        382.08 $CellContext`x^3, $CellContext`f5[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.312 - 13.96 $CellContext`x - 
        32.008 $CellContext`x^2, $CellContext`f6[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       36.107 + 89.719 $CellContext`x - 
        34.417 $CellContext`x^2, $CellContext`f7[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       249.41 - 451.53 $CellContext`x + 
        294.89 $CellContext`x^2, $CellContext`yval = 77.4, $CellContext`f1 = 
       77.3, Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = Graphics[{
          GraphicsComplex[CompressedData["
1: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
VoKVlxRTvxT8qPcv0rEemw==
           "], {{{
              EdgeForm[], 
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                Polygon[{{50, 92, 94, 133}}], 
                
                Polygon[{{135, 79, 89, 95, 131, 113, 53, 122, 104, 87, 74, 64,
                  31, 118, 100, 83, 70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 
                 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 119, 101, 84, 71, 61,
                  55, 123, 105, 88, 75, 65, 49, 120, 102, 85, 72, 62, 126, 
                 108, 91, 78, 129, 111, 96, 132, 114, 56, 124, 106}}], 
                
                Polygon[{{134, 66, 76, 1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5,
                  6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
                 22, 23, 24, 25, 26, 27, 28, 29, 116, 98, 81, 68, 58, 52, 121,
                  103, 86, 73, 63, 30, 117, 99, 82, 69, 127, 109, 93, 59, 125,
                  107, 90, 130, 112, 77, 128, 
                 110}}]}]}, {}, {}, {}}, {{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
               11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                27, 28, 29, 116, 98, 81, 68, 58, 52, 121, 103, 86, 73, 63, 30,
                117, 99, 82, 69, 127, 109, 93, 59, 125, 107, 90, 130, 112, 77,
                128, 110, 134}], 
              
              Line[{95, 131, 113, 53, 122, 104, 87, 74, 64, 31, 118, 100, 83, 
               70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                45, 46, 47, 48, 119, 101, 84, 71, 61, 55, 123, 105, 88, 75, 
               65, 49, 120, 102, 85, 72, 62, 126, 108, 91, 78, 129, 111, 96, 
               132, 114, 56, 124, 106, 135}]}, {
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              Line[{137, 141}], 
              Line[{139, 140, 138}]}}, {{}, {}, {}}}], 
          GraphicsComplex[CompressedData["
1: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
WWqhs4a2NLu1P7lcwN8K//xv/Rd/QmY1
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              Directive[
               RGBColor[2/3, 0, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                
                Polygon[{{1, 152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
                 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                 42, 43, 44, 45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 
                 65, 61, 58, 55, 71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50, 
                 124, 151, 144, 150, 138, 143, 149, 133, 137, 142, 148, 129, 
                 132, 136, 141, 147, 126, 128, 131, 135, 140, 146, 123, 122, 
                 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
                 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97,
                  96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 
                 81, 80, 79, 78, 77, 76, 125, 127, 130, 134, 139, 145, 
                 75}}]}]}, {}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
               14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 
               45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 65, 61, 58, 55,
                71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{75, 145, 139, 134, 130, 127, 125, 76, 77, 78, 79, 80, 81, 
               82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
                98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
               123, 146, 140, 135, 131, 128, 126, 147, 141, 136, 132, 129, 
               148, 142, 137, 133, 149, 143, 138, 150, 144, 151, 124}]}}}], 
          GraphicsComplex[CompressedData["
1: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
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{1, 71, 65, 60, 56, 53, 51, 126, 125, 154, 160, 128, 
                 132, 138, 144, 150, 156, 78}}]}]}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{125, 148, 142, 136, 79, 157, 151, 145, 139, 133, 
                 129, 161, 155, 149, 143, 137, 80, 158, 152, 146, 140, 134, 
                 130, 81, 159, 153, 147, 141, 135, 131, 82, 83, 84, 85, 86, 
                 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
                  102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
                 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 162, 
                 127, 50, 77, 70, 76, 64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 
                 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 46, 45, 44, 43, 
                 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
                 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
                 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
                 126}}]}]}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 71, 65, 60, 56, 53, 51, 126, 2, 3, 4, 5, 6, 7, 8, 9, 
               10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
               41, 42, 43, 44, 45, 46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73,
                67, 62, 58, 55, 74, 68, 63, 59, 75, 69, 64, 76, 70, 77, 
               50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{78, 156, 150, 144, 138, 132, 128, 160, 154, 125, 148, 142,
                136, 79, 157, 151, 145, 139, 133, 129, 161, 155, 149, 143, 
               137, 80, 158, 152, 146, 140, 134, 130, 81, 159, 153, 147, 141, 
               135, 131, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 
               95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 
               108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
               120, 121, 122, 123, 124, 162}]}}}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnXYxaOnMmRftjUEgONjhzY9bzQveI/jFCslJy10v
wfkSmtLMegyX4XyZQ2meEesQfNufC7+IR16B87+9bGkOELoK5/Nl/96usx/B
37dU8kJj1TU4v7tO3TfH6Dqcv/35ifxfdxH8ai6hMsYZN+D8eXvfKa5xvQnn
3+XbbfTmPYK/VVJffemKW3D+6y1mBxlDb8P5uzif2V3nvwPnL/3Touh0HMF/
X799ZUDRXTj/4p6Joje078H5Ql3/1ZhvIvivBURllk+5D+d/lOK1LlB7AOfP
Lr25K64GwRdcW7mm8yaCv33N44I2g4dwfnb10ednWxH812rVFwIfIfizZ/3q
Xm7xCM4Xf+2703Iagr+QS3Km2CcEP/rTWu+j7o/h/IfbxAo2LEHwpzl7puf+
RvAj538WKA14Aue/vF6os3MNgr/ixk6p80xP4XzjbVerFBMQ/LfRu9e6bkfw
t12QmLyF5xmc763k9So+E8Hnt3EVubsfwZ9vJLJhmuxzON/uR9S/WZUIPk9b
tnzheQR/2Qf/Tc06L+D8AuV/4hnNCL6HqorB9BsI/htmuV1Mpi/h/P2rHoo5
dCP4SRvuTU/ajeCzbbst0foawQcAg405uw==
              "]]}}}, {
           Text[
            Style["vapor", 19, 
             GrayLevel[0.25]], {0.5, 95}], 
           Rotate[
            Text[
             Style["\[Alpha] liquid ", 19, 
              GrayLevel[0.25]], {0.075, 77}], Pi/2], 
           Rotate[
            Text[
             Style["\[Beta] liquid ", 19, 
              GrayLevel[0.25]], {0.95, 77}], Pi/2], 
           Text[
            Style["\[Alpha] liquid + \[Beta] liquid", 14, 
             GrayLevel[0.2]], {0.5, 62}], 
           Text[
            Style["\[Alpha] liquid + vapor", 14, 
             GrayLevel[0.2]], {0.4125, 79}], 
           Text[
            Style[
             Column[{"\[Beta] liquid", "+ vapor"}, Center], 14, 
             GrayLevel[0.2]], {0.755, 79.25}]}}, {
         AspectRatio -> 1, ImageSize -> {400, 395}, Frame -> True, FrameLabel -> {
            Style["mole fraction B", 17], 
            Style["temperature  (\[Degree]C)", 17]}, LabelStyle -> {
            GrayLevel[0], 14}, DisplayFunction -> Identity, AspectRatio -> 
          GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 60.}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, "AxesInFront" -> 
            True}, PlotRange -> {{0, 1}, {60, 100}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->120050858],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`heat$$ = 7., $CellContext`loc$$ = 
    77.3, $CellContext`step$$ = 10, $CellContext`xpoint$$ = 0.62, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xpoint$$], 0.62, "mole fraction B"}, 0.02, 0.98, 
      0.01}, {{
       Hold[$CellContext`heat$$], 7., "heat added (kJ)"}, 0, 37, 0.1}, {{
       Hold[$CellContext`step$$], 10}, 0, 100}, {{
       Hold[$CellContext`loc$$], 77.3}, 70}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Button[
          "reset to initial conditions", {$CellContext`xpoint$$ = 
            0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, ImageSize -> 
           Medium]}, {
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {603., {194., 201.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xpoint$1765$$ = 0, $CellContext`heat$1766$$ = 
    0, $CellContext`step$1767$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`heat$$ = 7., $CellContext`loc$$ = 
        77.3, $CellContext`step$$ = 10, $CellContext`xpoint$$ = 0.62}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xpoint$$, $CellContext`xpoint$1765$$, 0], 
        Hold[$CellContext`heat$$, $CellContext`heat$1766$$, 0], 
        Hold[$CellContext`step$$, $CellContext`step$1767$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol2$, $CellContext`sol3$, $CellContext`sol4$, \
$CellContext`sol5$, $CellContext`sol6$, $CellContext`sol7$, \
$CellContext`ypoint$, $CellContext`ypoint2$, $CellContext`ypoint4$, \
$CellContext`ypoint5$, $CellContext`R1$, $CellContext`R2$, $CellContext`R3$, \
$CellContext`R4$, $CellContext`R5$, $CellContext`R6$, $CellContext`R7$, \
$CellContext`\[Delta]$, $CellContext`\[Alpha]$, $CellContext`\[Beta]$, \
$CellContext`v$, $CellContext`x\[Alpha]$, $CellContext`x\[Beta]$, \
$CellContext`yB$, $CellContext`p2$, $CellContext`p3$}, $CellContext`sol2$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f2[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol3$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f3[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol4$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f4[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol5$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f5[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol6$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f6[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol7$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f7[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`ypoint$ = $CellContext`heat$$ + 
          72; $CellContext`ypoint2$ = $CellContext`ypoint$ - 
          10; $CellContext`ypoint4$ = $CellContext`ypoint$ + 
          10; $CellContext`ypoint5$ = $CellContext`ypoint$ - 20; If[
          
          And[$CellContext`ypoint$ < 
           77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            0]], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 2, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           3, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           3], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            1]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12, $CellContext`step$$ == 11]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            12], {$CellContext`step$$ = 
            13, $CellContext`loc$$ = $CellContext`ypoint2$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            13], {$CellContext`loc$$ = $CellContext`ypoint2$}]]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 13, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           Or[$CellContext`step$$ == 30, 32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 30, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            32], {$CellContext`step$$ = 
            33, $CellContext`loc$$ = $CellContext`ypoint5$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            33], {$CellContext`loc$$ = $CellContext`ypoint5$}]]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           10], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           0], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           30], {$CellContext`step$$ = 
           13, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           13], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 21], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           20], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 2], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 20, $CellContext`step$$ == 
            22]], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 0.81, 
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 
           0.275, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 
           0.81, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 24], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 23, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           24, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           24], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            23]], {$CellContext`step$$ = 50, $CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 50], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; $CellContext`R1$ = 
         And[0.275 <= $CellContext`xpoint$$ <= 
           0.81, $CellContext`loc$$ == $CellContext`f1]; $CellContext`R2$ = 
         And[$CellContext`sol2$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol3$[$CellContext`loc$$], $CellContext`loc$$ < $CellContext`f1]; \
$CellContext`R3$ = Or[
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol2$[$CellContext`loc$$], $CellContext`loc$$ <= \
$CellContext`f1], 
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol4$[$CellContext`loc$$], $CellContext`loc$$ > \
$CellContext`f1]]; $CellContext`R4$ = Or[
           
           And[$CellContext`sol3$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ <= $CellContext`f1], 
           
           And[$CellContext`sol7$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ > $CellContext`f1]]; \
$CellContext`R5$ = 
         And[$CellContext`sol4$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol5$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f5[$CellContext`xpoint$$]]]; $CellContext`R6$ = 
         And[$CellContext`sol6$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol7$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f6[$CellContext`xpoint$$]], $CellContext`loc$$ > \
$CellContext`f1]; $CellContext`R7$ = Or[
           
           And[$CellContext`loc$$ > $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`xpoint$$ <= 0.6], 
           
           And[$CellContext`loc$$ > $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.6]]; $CellContext`\[Delta]$ = 1 - Which[
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            20], ($CellContext`loc$$ - \
$CellContext`ypoint2$)/($CellContext`ypoint$ - $CellContext`ypoint2$), \
$CellContext`step$$ == 
           30, ($CellContext`loc$$ - \
$CellContext`ypoint5$)/($CellContext`ypoint2$ - $CellContext`ypoint5$), \
$CellContext`step$$ == 
           50, ($CellContext`loc$$ - \
$CellContext`ypoint$)/($CellContext`ypoint4$ - $CellContext`ypoint$)]; \
$CellContext`\[Alpha]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 
             0.6, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])), 
             0], $CellContext`R2$, ($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$]), $CellContext`R3$, 1, 
           Or[$CellContext`R4$, $CellContext`R6$, $CellContext`R7$], 
           0, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])]; $CellContext`\[Beta]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 0.6, 
             0, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$]))], $CellContext`R2$, \
($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$]), 
           Or[$CellContext`R3$, $CellContext`R5$, $CellContext`R7$], 
           0, $CellContext`R4$, 
           1, $CellContext`R6$, ($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$])]; $CellContext`v$ = 
         Which[$CellContext`R1$, $CellContext`\[Delta]$ 
           If[$CellContext`xpoint$$ <= 
             0.6, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), ($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])], 
           Or[$CellContext`R2$, $CellContext`R3$, $CellContext`R4$], 
           0, $CellContext`R7$, 
           1, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), $CellContext`R6$, \
($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])]; $CellContext`x\[Alpha]$ = 
         Which[$CellContext`R1$, 0.275, $CellContext`R2$, 
           $CellContext`sol2$[$CellContext`loc$$], $CellContext`R3$, \
$CellContext`xpoint$$, $CellContext`R5$, 
           $CellContext`sol4$[$CellContext`loc$$]]; $CellContext`x\[Beta]$ = 
         Which[$CellContext`R1$, 0.81, $CellContext`R2$, 
           $CellContext`sol3$[$CellContext`loc$$], $CellContext`R4$, \
$CellContext`xpoint$$, $CellContext`R6$, 
           $CellContext`sol7$[$CellContext`loc$$]]; $CellContext`yB$ = 
         Which[$CellContext`R1$, 0.6, $CellContext`R5$, 
           $CellContext`sol5$[$CellContext`loc$$], $CellContext`R6$, 
           $CellContext`sol6$[$CellContext`loc$$], $CellContext`R7$, \
$CellContext`xpoint$$]; $CellContext`p2$ = Graphics[{{Thick, Dashed, 
             If[
              Or[$CellContext`R1$, $CellContext`R2$], {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol2$[$CellContext`loc$$], 60}, {
                   $CellContext`sol2$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R5$, {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol4$[$CellContext`loc$$], 60}, {
                   $CellContext`sol4$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R6$, {{
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{
                   $CellContext`sol6$[$CellContext`loc$$], 60}, {
                   $CellContext`sol6$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], 60}}]}}], 
             If[
              Or[$CellContext`R1$, $CellContext`R7$], {
               Opacity[0.75, 
                Darker[Green]], 
               
               Line[{{$CellContext`yB$, $CellContext`loc$$}, \
{$CellContext`yB$, 60}}]}], 
             If[$CellContext`R3$, {
               Opacity[0.75, 
                Darker[Red]], 
               
               Line[{{$CellContext`x\[Alpha]$, $CellContext`loc$$}, \
{$CellContext`x\[Alpha]$, 60}}]}], 
             If[$CellContext`R4$, {
               Lighter[Blue, 0.3], 
               
               Line[{{$CellContext`x\[Beta]$, $CellContext`loc$$}, \
{$CellContext`x\[Beta]$, 60}}]}]}, {
             PointSize[0.025], 
             
             Point[{$CellContext`xpoint$$, $CellContext`loc$$}]}}]; \
$CellContext`p3$ = Graphics[{{
             EdgeForm[Black], {
              Opacity[0.4, 
               Darker[Red]], 
              Rectangle[{0, 0}, {1, $CellContext`\[Alpha]$}]}, {
              Lighter[Blue, 0.65], 
              Rectangle[{1.15, 0}, {2.15, $CellContext`\[Beta]$}]}, {
              Opacity[0.4, 
               Darker[Green]], 
              Rectangle[{2.3, 0}, {3.3, $CellContext`v$}]}}, 
            Text[
             Style["\[Alpha] liquid", 15], {0.5, -0.05}], 
            Text[
             Style["\[Beta] liquid", 15], {1.65, -0.05}], 
            Text[
             Style["vapor", 15], {2.8, -0.05}], 
            If[$CellContext`\[Alpha]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Alpha]"], " ="}], 
                 NumberForm[$CellContext`x\[Alpha]$, {2, 2}]}, Center], 15], {
              0.5, $CellContext`\[Alpha]$}, {0, -1}]], 
            If[$CellContext`\[Beta]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Beta]"], " ="}], 
                 NumberForm[$CellContext`x\[Beta]$, {2, 2}]}, Center], 15], {
              1.65, $CellContext`\[Beta]$}, {0, -1}]], 
            If[$CellContext`v$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subscript[
                    Style["y", Italic], "B"], " = "}], 
                 NumberForm[$CellContext`yB$, {2, 2}]}, Center], 15], {
              2.8, $CellContext`v$}, {0, -1}]]}, ImageSize -> {195, 395}, 
           AspectRatio -> Full, ImagePadding -> {{20, 5}, {40, 5}}, 
           Frame -> {{True, None}, {True, None}}, 
           FrameTicks -> {{True, None}, {None, None}}, 
           FrameTicksStyle -> {12, Black}, PlotLabel -> 
           Style["relative amounts", 15], PlotRange -> {0, 1.1}]; Grid[{{
            Show[$CellContext`p1, $CellContext`p2$], 
            Show[$CellContext`p3$]}}]], 
      "Specifications" :> {{{$CellContext`xpoint$$, 0.62, "mole fraction B"}, 
         0.02, 0.98, 0.01, Appearance -> {"Labeled", Small}, ControlPlacement -> 
         1}, {{$CellContext`heat$$, 7., "heat added (kJ)"}, 0, 37, 0.1, 
         Appearance -> {"Labeled", Small}, ControlPlacement -> 
         2}, {{$CellContext`step$$, 10}, 0, 100, ControlType -> None, 
         ControlPlacement -> 3}, {{$CellContext`loc$$, 77.3}, 70, ControlType -> 
         None, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Button[
           "reset to initial conditions", {$CellContext`xpoint$$ = 
             0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, 
            ImageSize -> Medium]}, {
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{652., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`f2[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       59.96 + 112.39 $CellContext`x - 
        179.43 $CellContext`x^2, $CellContext`f3[
         Pattern[$CellContext`x, 
          Blank[]]] = -251.09 + 815.78 $CellContext`x - 
        506.61 $CellContext`x^2, $CellContext`f4[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.252 - 113.1 $CellContext`x + 253.87 $CellContext`x^2 - 
        382.08 $CellContext`x^3, $CellContext`f5[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.312 - 13.96 $CellContext`x - 
        32.008 $CellContext`x^2, $CellContext`f6[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       36.107 + 89.719 $CellContext`x - 
        34.417 $CellContext`x^2, $CellContext`f7[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       249.41 - 451.53 $CellContext`x + 
        294.89 $CellContext`x^2, $CellContext`yval = 77.4, $CellContext`f1 = 
       77.3, Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = Graphics[{
          GraphicsComplex[CompressedData["
1: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
VoKVlxRTvxT8qPcv0rEemw==
           "], {{{
              EdgeForm[], 
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                Polygon[{{50, 92, 94, 133}}], 
                
                Polygon[{{135, 79, 89, 95, 131, 113, 53, 122, 104, 87, 74, 64,
                  31, 118, 100, 83, 70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 
                 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 119, 101, 84, 71, 61,
                  55, 123, 105, 88, 75, 65, 49, 120, 102, 85, 72, 62, 126, 
                 108, 91, 78, 129, 111, 96, 132, 114, 56, 124, 106}}], 
                
                Polygon[{{134, 66, 76, 1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5,
                  6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
                 22, 23, 24, 25, 26, 27, 28, 29, 116, 98, 81, 68, 58, 52, 121,
                  103, 86, 73, 63, 30, 117, 99, 82, 69, 127, 109, 93, 59, 125,
                  107, 90, 130, 112, 77, 128, 
                 110}}]}]}, {}, {}, {}}, {{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
               11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                27, 28, 29, 116, 98, 81, 68, 58, 52, 121, 103, 86, 73, 63, 30,
                117, 99, 82, 69, 127, 109, 93, 59, 125, 107, 90, 130, 112, 77,
                128, 110, 134}], 
              
              Line[{95, 131, 113, 53, 122, 104, 87, 74, 64, 31, 118, 100, 83, 
               70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                45, 46, 47, 48, 119, 101, 84, 71, 61, 55, 123, 105, 88, 75, 
               65, 49, 120, 102, 85, 72, 62, 126, 108, 91, 78, 129, 111, 96, 
               132, 114, 56, 124, 106, 135}]}, {
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              Line[{137, 141}], 
              Line[{139, 140, 138}]}}, {{}, {}, {}}}], 
          GraphicsComplex[CompressedData["
1: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
WWqhs4a2NLu1P7lcwN8K//xv/Rd/QmY1
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              Directive[
               RGBColor[2/3, 0, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                
                Polygon[{{1, 152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
                 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                 42, 43, 44, 45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 
                 65, 61, 58, 55, 71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50, 
                 124, 151, 144, 150, 138, 143, 149, 133, 137, 142, 148, 129, 
                 132, 136, 141, 147, 126, 128, 131, 135, 140, 146, 123, 122, 
                 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
                 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97,
                  96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 
                 81, 80, 79, 78, 77, 76, 125, 127, 130, 134, 139, 145, 
                 75}}]}]}, {}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
               14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 
               45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 65, 61, 58, 55,
                71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{75, 145, 139, 134, 130, 127, 125, 76, 77, 78, 79, 80, 81, 
               82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
                98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
               123, 146, 140, 135, 131, 128, 126, 147, 141, 136, 132, 129, 
               148, 142, 137, 133, 149, 143, 138, 150, 144, 151, 124}]}}}], 
          GraphicsComplex[CompressedData["
1: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
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{1, 71, 65, 60, 56, 53, 51, 126, 125, 154, 160, 128, 
                 132, 138, 144, 150, 156, 78}}]}]}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{125, 148, 142, 136, 79, 157, 151, 145, 139, 133, 
                 129, 161, 155, 149, 143, 137, 80, 158, 152, 146, 140, 134, 
                 130, 81, 159, 153, 147, 141, 135, 131, 82, 83, 84, 85, 86, 
                 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
                  102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
                 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 162, 
                 127, 50, 77, 70, 76, 64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 
                 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 46, 45, 44, 43, 
                 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
                 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
                 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
                 126}}]}]}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 71, 65, 60, 56, 53, 51, 126, 2, 3, 4, 5, 6, 7, 8, 9, 
               10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
               41, 42, 43, 44, 45, 46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73,
                67, 62, 58, 55, 74, 68, 63, 59, 75, 69, 64, 76, 70, 77, 
               50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{78, 156, 150, 144, 138, 132, 128, 160, 154, 125, 148, 142,
                136, 79, 157, 151, 145, 139, 133, 129, 161, 155, 149, 143, 
               137, 80, 158, 152, 146, 140, 134, 130, 81, 159, 153, 147, 141, 
               135, 131, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 
               95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 
               108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
               120, 121, 122, 123, 124, 162}]}}}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnXYxaOnMmRftjUEgONjhzY9bzQveI/jFCslJy10v
wfkSmtLMegyX4XyZQ2meEesQfNufC7+IR16B87+9bGkOELoK5/Nl/96usx/B
37dU8kJj1TU4v7tO3TfH6Dqcv/35ifxfdxH8ai6hMsYZN+D8eXvfKa5xvQnn
3+XbbfTmPYK/VVJffemKW3D+6y1mBxlDb8P5uzif2V3nvwPnL/3Touh0HMF/
X799ZUDRXTj/4p6Joje078H5Ql3/1ZhvIvivBURllk+5D+d/lOK1LlB7AOfP
Lr25K64GwRdcW7mm8yaCv33N44I2g4dwfnb10ednWxH812rVFwIfIfizZ/3q
Xm7xCM4Xf+2703Iagr+QS3Km2CcEP/rTWu+j7o/h/IfbxAo2LEHwpzl7puf+
RvAj538WKA14Aue/vF6os3MNgr/ixk6p80xP4XzjbVerFBMQ/LfRu9e6bkfw
t12QmLyF5xmc763k9So+E8Hnt3EVubsfwZ9vJLJhmuxzON/uR9S/WZUIPk9b
tnzheQR/2Qf/Tc06L+D8AuV/4hnNCL6HqorB9BsI/htmuV1Mpi/h/P2rHoo5
dCP4SRvuTU/ajeCzbbst0foawQcAg405uw==
              "]]}}}, {
           Text[
            Style["vapor", 19, 
             GrayLevel[0.25]], {0.5, 95}], 
           Rotate[
            Text[
             Style["\[Alpha] liquid ", 19, 
              GrayLevel[0.25]], {0.075, 77}], Pi/2], 
           Rotate[
            Text[
             Style["\[Beta] liquid ", 19, 
              GrayLevel[0.25]], {0.95, 77}], Pi/2], 
           Text[
            Style["\[Alpha] liquid + \[Beta] liquid", 14, 
             GrayLevel[0.2]], {0.5, 62}], 
           Text[
            Style["\[Alpha] liquid + vapor", 14, 
             GrayLevel[0.2]], {0.4125, 79}], 
           Text[
            Style[
             Column[{"\[Beta] liquid", "+ vapor"}, Center], 14, 
             GrayLevel[0.2]], {0.755, 79.25}]}}, {
         AspectRatio -> 1, ImageSize -> {400, 395}, Frame -> True, FrameLabel -> {
            Style["mole fraction B", 17], 
            Style["temperature  (\[Degree]C)", 17]}, LabelStyle -> {
            GrayLevel[0], 14}, DisplayFunction -> Identity, AspectRatio -> 
          GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 60.}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, "AxesInFront" -> 
            True}, PlotRange -> {{0, 1}, {60, 100}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->4189469],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`heat$$ = 25., $CellContext`loc$$ = 
    87., $CellContext`step$$ = 11, $CellContext`xpoint$$ = 0.8500000000000001,
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xpoint$$], 0.8500000000000001, "mole fraction B"}, 
      0.02, 0.98, 0.01}, {{
       Hold[$CellContext`heat$$], 25., "heat added (kJ)"}, 0, 37, 0.1}, {{
       Hold[$CellContext`step$$], 11}, 0, 100}, {{
       Hold[$CellContext`loc$$], 87.}, 70}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Button[
          "reset to initial conditions", {$CellContext`xpoint$$ = 
            0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, ImageSize -> 
           Medium]}, {
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {603., {194., 201.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xpoint$1831$$ = 0, $CellContext`heat$1832$$ = 
    0, $CellContext`step$1833$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`heat$$ = 25., $CellContext`loc$$ = 
        87., $CellContext`step$$ = 11, $CellContext`xpoint$$ = 
        0.8500000000000001}, "ControllerVariables" :> {
        Hold[$CellContext`xpoint$$, $CellContext`xpoint$1831$$, 0], 
        Hold[$CellContext`heat$$, $CellContext`heat$1832$$, 0], 
        Hold[$CellContext`step$$, $CellContext`step$1833$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol2$, $CellContext`sol3$, $CellContext`sol4$, \
$CellContext`sol5$, $CellContext`sol6$, $CellContext`sol7$, \
$CellContext`ypoint$, $CellContext`ypoint2$, $CellContext`ypoint4$, \
$CellContext`ypoint5$, $CellContext`R1$, $CellContext`R2$, $CellContext`R3$, \
$CellContext`R4$, $CellContext`R5$, $CellContext`R6$, $CellContext`R7$, \
$CellContext`\[Delta]$, $CellContext`\[Alpha]$, $CellContext`\[Beta]$, \
$CellContext`v$, $CellContext`x\[Alpha]$, $CellContext`x\[Beta]$, \
$CellContext`yB$, $CellContext`p2$, $CellContext`p3$}, $CellContext`sol2$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f2[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol3$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f3[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol4$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f4[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol5$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f5[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`sol6$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f6[$CellContext`x] == $CellContext`y, \
$CellContext`x], 1]]]]]; $CellContext`sol7$[
           Pattern[$CellContext`y, 
            Blank[]]] = Quiet[
           Re[
            Simplify[
             ReplaceAll[$CellContext`x, 
              Part[
               
               Solve[$CellContext`f7[$CellContext`x] == $CellContext`y, \
$CellContext`x], 2]]]]]; $CellContext`ypoint$ = $CellContext`heat$$ + 
          72; $CellContext`ypoint2$ = $CellContext`ypoint$ - 
          10; $CellContext`ypoint4$ = $CellContext`ypoint$ + 
          10; $CellContext`ypoint5$ = $CellContext`ypoint$ - 20; If[
          
          And[$CellContext`ypoint$ < 
           77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            0]], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            2, $CellContext`step$$ == 10]], {$CellContext`step$$ = 
           1, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           1], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 1, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 3, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           2, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint$ < $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           2], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, 
           
           Or[$CellContext`step$$ == 2, $CellContext`step$$ == 
            20]], {$CellContext`step$$ = 
           3, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ >= $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`ypoint$ >= $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`ypoint$ > 77.3, $CellContext`step$$ == 
           3], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 0, $CellContext`step$$ == 
            1]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            12, $CellContext`step$$ == 11]], {$CellContext`step$$ = 
           11, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ > 
           77.3, $CellContext`ypoint2$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint2$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           11], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            13, $CellContext`step$$ == 30]], {$CellContext`step$$ = 
           12, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint2$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint2$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           12], {$CellContext`loc$$ = $CellContext`ypoint2$}]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            12], {$CellContext`step$$ = 
            13, $CellContext`loc$$ = $CellContext`ypoint2$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint2$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
            13], {$CellContext`loc$$ = $CellContext`ypoint2$}]]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 13, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], 
           Or[$CellContext`step$$ == 30, 32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], 
           
           Or[$CellContext`step$$ == 30, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 
           31, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ > 
           77.3, $CellContext`ypoint5$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint5$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`step$$ == 
           31], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f4[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f2[$CellContext`xpoint$$], \
$CellContext`xpoint$$ < 0.275, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            33]], {$CellContext`step$$ = 
           32, $CellContext`loc$$ = $CellContext`ypoint5$}]; If[
          
          And[$CellContext`ypoint5$ < $CellContext`f7[$CellContext`xpoint$$], \
$CellContext`ypoint5$ >= $CellContext`f3[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.81, $CellContext`step$$ == 
           32], {$CellContext`loc$$ = $CellContext`ypoint5$}]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            32], {$CellContext`step$$ = 
            33, $CellContext`loc$$ = $CellContext`ypoint5$}]]; Quiet[
          If[
           
           And[$CellContext`ypoint5$ < 
            77.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint5$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint5$], $CellContext`step$$ == 
            33], {$CellContext`loc$$ = $CellContext`ypoint5$}]]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 11, $CellContext`step$$ == 
            12]], {$CellContext`step$$ = 10, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ <= 77.3, $CellContext`ypoint2$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 10], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           10], {$CellContext`step$$ = 
           0, $CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint2$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           0], {$CellContext`loc$$ = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 31, $CellContext`step$$ == 
            32]], {$CellContext`step$$ = 30, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ <= 77.3, $CellContext`ypoint5$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 30], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           30], {$CellContext`step$$ = 
           13, $CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint5$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint2$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint2$], $CellContext`step$$ == 
           13], {$CellContext`loc$$ = $CellContext`ypoint2$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 21], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = $CellContext`ypoint$}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], $CellContext`step$$ == 
           20], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 2], {$CellContext`step$$ = 
           20, $CellContext`loc$$ = 77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ <= 77.3, $CellContext`ypoint$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 20], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint$ - 77.3]}]; If[
          
          And[$CellContext`ypoint$ < 
           67.3, $CellContext`xpoint$$ < \
$CellContext`sol3$[$CellContext`ypoint$], $CellContext`xpoint$$ > \
$CellContext`sol2$[$CellContext`ypoint$], 
           
           Or[$CellContext`step$$ == 20, $CellContext`step$$ == 
            22]], {$CellContext`step$$ = 
           21, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint$ < 67.3, $CellContext`step$$ == 
           21], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 0.275, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 0.81, 
           
           Or[$CellContext`step$$ == 21, $CellContext`step$$ == 
            20, $CellContext`step$$ == 23]], {$CellContext`step$$ = 
           22, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f2[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`xpoint$$ < 
           0.275, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f3[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`xpoint$$ > 
           0.81, $CellContext`step$$ == 
           22], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 24], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f4[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 22, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           23, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= \
$CellContext`f7[$CellContext`xpoint$$], $CellContext`ypoint4$ < \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           23], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 77.3, 
           
           Or[$CellContext`step$$ == 23, $CellContext`step$$ == 
            50]], {$CellContext`step$$ = 
           24, $CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ >= \
$CellContext`f6[$CellContext`xpoint$$], $CellContext`ypoint4$ >= \
$CellContext`f5[$CellContext`xpoint$$], $CellContext`ypoint4$ > 
           77.3, $CellContext`step$$ == 
           24], {$CellContext`loc$$ = $CellContext`ypoint4$}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, 
           
           Or[$CellContext`step$$ == 24, $CellContext`step$$ == 
            23]], {$CellContext`step$$ = 50, $CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; If[
          
          And[$CellContext`ypoint4$ <= 77.3, $CellContext`ypoint4$ >= 
           67.3, $CellContext`xpoint$$ <= 0.81, $CellContext`xpoint$$ >= 
           0.275, $CellContext`step$$ == 50], {$CellContext`loc$$ = 
           77.3, $CellContext`yval = 
           87.3 - Abs[$CellContext`ypoint4$ - 77.3]}]; $CellContext`R1$ = 
         And[0.275 <= $CellContext`xpoint$$ <= 
           0.81, $CellContext`loc$$ == $CellContext`f1]; $CellContext`R2$ = 
         And[$CellContext`sol2$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol3$[$CellContext`loc$$], $CellContext`loc$$ < $CellContext`f1]; \
$CellContext`R3$ = Or[
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol2$[$CellContext`loc$$], $CellContext`loc$$ <= \
$CellContext`f1], 
           
           And[$CellContext`xpoint$$ < \
$CellContext`sol4$[$CellContext`loc$$], $CellContext`loc$$ > \
$CellContext`f1]]; $CellContext`R4$ = Or[
           
           And[$CellContext`sol3$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ <= $CellContext`f1], 
           
           And[$CellContext`sol7$[$CellContext`loc$$] < \
$CellContext`xpoint$$, $CellContext`loc$$ > $CellContext`f1]]; \
$CellContext`R5$ = 
         And[$CellContext`sol4$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol5$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f5[$CellContext`xpoint$$]]]; $CellContext`R6$ = 
         And[$CellContext`sol6$[$CellContext`loc$$] <= $CellContext`xpoint$$ <= \
$CellContext`sol7$[$CellContext`loc$$], 
           Inequality[$CellContext`f1, Less, $CellContext`loc$$, LessEqual, 
            $CellContext`f6[$CellContext`xpoint$$]], $CellContext`loc$$ > \
$CellContext`f1]; $CellContext`R7$ = Or[
           
           And[$CellContext`loc$$ > $CellContext`f5[$CellContext`xpoint$$], \
$CellContext`xpoint$$ <= 0.6], 
           
           And[$CellContext`loc$$ > $CellContext`f6[$CellContext`xpoint$$], \
$CellContext`xpoint$$ > 0.6]]; $CellContext`\[Delta]$ = 1 - Which[
           
           Or[$CellContext`step$$ == 10, $CellContext`step$$ == 
            20], ($CellContext`loc$$ - \
$CellContext`ypoint2$)/($CellContext`ypoint$ - $CellContext`ypoint2$), \
$CellContext`step$$ == 
           30, ($CellContext`loc$$ - \
$CellContext`ypoint5$)/($CellContext`ypoint2$ - $CellContext`ypoint5$), \
$CellContext`step$$ == 
           50, ($CellContext`loc$$ - \
$CellContext`ypoint$)/($CellContext`ypoint4$ - $CellContext`ypoint$)]; \
$CellContext`\[Alpha]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 
             0.6, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])), 
             0], $CellContext`R2$, ($CellContext`xpoint$$ - \
$CellContext`sol3$[$CellContext`loc$$])/($CellContext`sol2$[$CellContext`loc$$\
] - $CellContext`sol3$[$CellContext`loc$$]), $CellContext`R3$, 1, 
           Or[$CellContext`R4$, $CellContext`R6$, $CellContext`R7$], 
           0, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol5$[$CellContext`loc$$])/($CellContext`sol4$[$CellContext`loc$$\
] - $CellContext`sol5$[$CellContext`loc$$])]; $CellContext`\[Beta]$ = 
         Which[$CellContext`R1$, (
             1 - $CellContext`\[Delta]$) (($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$])) + 
           If[$CellContext`xpoint$$ <= 0.6, 
             0, $CellContext`\[Delta]$ (($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$]))], $CellContext`R2$, \
($CellContext`xpoint$$ - \
$CellContext`sol2$[$CellContext`loc$$])/($CellContext`sol3$[$CellContext`loc$$\
] - $CellContext`sol2$[$CellContext`loc$$]), 
           Or[$CellContext`R3$, $CellContext`R5$, $CellContext`R7$], 
           0, $CellContext`R4$, 
           1, $CellContext`R6$, ($CellContext`xpoint$$ - \
$CellContext`sol6$[$CellContext`loc$$])/($CellContext`sol7$[$CellContext`loc$$\
] - $CellContext`sol6$[$CellContext`loc$$])]; $CellContext`v$ = 
         Which[$CellContext`R1$, $CellContext`\[Delta]$ 
           If[$CellContext`xpoint$$ <= 
             0.6, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), ($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])], 
           Or[$CellContext`R2$, $CellContext`R3$, $CellContext`R4$], 
           0, $CellContext`R7$, 
           1, $CellContext`R5$, ($CellContext`xpoint$$ - \
$CellContext`sol4$[$CellContext`loc$$])/($CellContext`sol5$[$CellContext`loc$$\
] - $CellContext`sol4$[$CellContext`loc$$]), $CellContext`R6$, \
($CellContext`xpoint$$ - \
$CellContext`sol7$[$CellContext`loc$$])/($CellContext`sol6$[$CellContext`loc$$\
] - $CellContext`sol7$[$CellContext`loc$$])]; $CellContext`x\[Alpha]$ = 
         Which[$CellContext`R1$, 0.275, $CellContext`R2$, 
           $CellContext`sol2$[$CellContext`loc$$], $CellContext`R3$, \
$CellContext`xpoint$$, $CellContext`R5$, 
           $CellContext`sol4$[$CellContext`loc$$]]; $CellContext`x\[Beta]$ = 
         Which[$CellContext`R1$, 0.81, $CellContext`R2$, 
           $CellContext`sol3$[$CellContext`loc$$], $CellContext`R4$, \
$CellContext`xpoint$$, $CellContext`R6$, 
           $CellContext`sol7$[$CellContext`loc$$]]; $CellContext`yB$ = 
         Which[$CellContext`R1$, 0.6, $CellContext`R5$, 
           $CellContext`sol5$[$CellContext`loc$$], $CellContext`R6$, 
           $CellContext`sol6$[$CellContext`loc$$], $CellContext`R7$, \
$CellContext`xpoint$$]; $CellContext`p2$ = Graphics[{{Thick, Dashed, 
             If[
              Or[$CellContext`R1$, $CellContext`R2$], {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol2$[$CellContext`loc$$], 60}, {
                   $CellContext`sol2$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol3$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R5$, {{
                Opacity[0.75, 
                 Darker[Red]], 
                Line[{{
                   $CellContext`sol4$[$CellContext`loc$$], 60}, {
                   $CellContext`sol4$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol5$[$CellContext`loc$$], 60}}]}}], 
             If[$CellContext`R6$, {{
                Opacity[0.75, 
                 Darker[Green]], 
                Line[{{
                   $CellContext`sol6$[$CellContext`loc$$], 60}, {
                   $CellContext`sol6$[$CellContext`loc$$], \
$CellContext`loc$$}, {$CellContext`xpoint$$, $CellContext`loc$$}}]}, {
                Lighter[Blue, 0.3], 
                Line[{{$CellContext`xpoint$$, $CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], \
$CellContext`loc$$}, {
                   $CellContext`sol7$[$CellContext`loc$$], 60}}]}}], 
             If[
              Or[$CellContext`R1$, $CellContext`R7$], {
               Opacity[0.75, 
                Darker[Green]], 
               
               Line[{{$CellContext`yB$, $CellContext`loc$$}, \
{$CellContext`yB$, 60}}]}], 
             If[$CellContext`R3$, {
               Opacity[0.75, 
                Darker[Red]], 
               
               Line[{{$CellContext`x\[Alpha]$, $CellContext`loc$$}, \
{$CellContext`x\[Alpha]$, 60}}]}], 
             If[$CellContext`R4$, {
               Lighter[Blue, 0.3], 
               
               Line[{{$CellContext`x\[Beta]$, $CellContext`loc$$}, \
{$CellContext`x\[Beta]$, 60}}]}]}, {
             PointSize[0.025], 
             
             Point[{$CellContext`xpoint$$, $CellContext`loc$$}]}}]; \
$CellContext`p3$ = Graphics[{{
             EdgeForm[Black], {
              Opacity[0.4, 
               Darker[Red]], 
              Rectangle[{0, 0}, {1, $CellContext`\[Alpha]$}]}, {
              Lighter[Blue, 0.65], 
              Rectangle[{1.15, 0}, {2.15, $CellContext`\[Beta]$}]}, {
              Opacity[0.4, 
               Darker[Green]], 
              Rectangle[{2.3, 0}, {3.3, $CellContext`v$}]}}, 
            Text[
             Style["\[Alpha] liquid", 15], {0.5, -0.05}], 
            Text[
             Style["\[Beta] liquid", 15], {1.65, -0.05}], 
            Text[
             Style["vapor", 15], {2.8, -0.05}], 
            If[$CellContext`\[Alpha]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Alpha]"], " ="}], 
                 NumberForm[$CellContext`x\[Alpha]$, {2, 2}]}, Center], 15], {
              0.5, $CellContext`\[Alpha]$}, {0, -1}]], 
            If[$CellContext`\[Beta]$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subsuperscript[
                    Style["x", Italic], "B", "\[Beta]"], " ="}], 
                 NumberForm[$CellContext`x\[Beta]$, {2, 2}]}, Center], 15], {
              1.65, $CellContext`\[Beta]$}, {0, -1}]], 
            If[$CellContext`v$ > 0, 
             Text[
              Style[
               Column[{
                 Row[{
                   Subscript[
                    Style["y", Italic], "B"], " = "}], 
                 NumberForm[$CellContext`yB$, {2, 2}]}, Center], 15], {
              2.8, $CellContext`v$}, {0, -1}]]}, ImageSize -> {195, 395}, 
           AspectRatio -> Full, ImagePadding -> {{20, 5}, {40, 5}}, 
           Frame -> {{True, None}, {True, None}}, 
           FrameTicks -> {{True, None}, {None, None}}, 
           FrameTicksStyle -> {12, Black}, PlotLabel -> 
           Style["relative amounts", 15], PlotRange -> {0, 1.1}]; Grid[{{
            Show[$CellContext`p1, $CellContext`p2$], 
            Show[$CellContext`p3$]}}]], 
      "Specifications" :> {{{$CellContext`xpoint$$, 0.8500000000000001, 
          "mole fraction B"}, 0.02, 0.98, 0.01, 
         Appearance -> {"Labeled", Small}, ControlPlacement -> 
         1}, {{$CellContext`heat$$, 25., "heat added (kJ)"}, 0, 37, 0.1, 
         Appearance -> {"Labeled", Small}, ControlPlacement -> 
         2}, {{$CellContext`step$$, 11}, 0, 100, ControlType -> None, 
         ControlPlacement -> 3}, {{$CellContext`loc$$, 87.}, 70, ControlType -> 
         None, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Button[
           "reset to initial conditions", {$CellContext`xpoint$$ = 
             0.4, $CellContext`heat$$ = 0, $CellContext`step$$ = 0}, 
            ImageSize -> Medium]}, {
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{652., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`f2[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       59.96 + 112.39 $CellContext`x - 
        179.43 $CellContext`x^2, $CellContext`f3[
         Pattern[$CellContext`x, 
          Blank[]]] = -251.09 + 815.78 $CellContext`x - 
        506.61 $CellContext`x^2, $CellContext`f4[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.252 - 113.1 $CellContext`x + 253.87 $CellContext`x^2 - 
        382.08 $CellContext`x^3, $CellContext`f5[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       97.312 - 13.96 $CellContext`x - 
        32.008 $CellContext`x^2, $CellContext`f6[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       36.107 + 89.719 $CellContext`x - 
        34.417 $CellContext`x^2, $CellContext`f7[
         Pattern[$CellContext`x, 
          Blank[]]] = 
       249.41 - 451.53 $CellContext`x + 
        294.89 $CellContext`x^2, $CellContext`yval = 77.4, $CellContext`f1 = 
       77.3, Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`p1 = Graphics[{
          GraphicsComplex[CompressedData["
1:eJxdVHs0ldsW33QaiR3qiLtVSiQ9qMTR05xSuUhh2Z+dkBQSPajclFIehTzD
pU3lEUWEUjodZYuiIu/HKSPsb1NJ++tFSnG/e8ftdG9rjDXWH2utOebvMX+a
bnvt3GU5HE40u/99Wrq/bBS94pu46F+q+0QEuOMAw4vgJYKrzQzzi6YClEu0
yHj77iK4tGxN+7ZAgKUNBubmGoXQWrEpgKcqQEFI59PK0yWge+2j5eQxB9xb
vF8v5ePv0JYyTUAkDvg+rq1GRqYcGrOLq0sfOmBNxYPy+lX3wDchzW3qFQf0
CrCYtHmgCorWp40sOu2AFRMNxvJ3V4PBqhDNem8HzMmqGlWf8wjWRE1Nlf27
A6LqnUxytRYkkaa5A9oOqFfdeevB/HqomPui6hPHAVuQSHOlDVByVPaZYQeF
PvLeTa2Lm+DOIf608CIKH3c43FGMaYZmi9KgshAKyXpBj0TSAqvbxk3+wKfw
t/TTDunabeDm3FmcMY/C7tGElp1B7ZAzqt9X+4mPvRb1WaqVHZChr6CYWc3H
orNdAY2aT+F6ZFBSZjwfs8PHRcw7/Ay61L/99tiRj4PbHfs9/uiEQndjTY4O
HxXWnrQrVnsOfup+niP99hio3MvtceqC4zZ6KkbX7JF7dwGn3bobPpgHqI4c
ssfV/pu+VX7phj8fZzDay+0x7WJUllZaDwS3ZzEDIwRd+IZ1E63EYFriUVtd
SvBGq3vC3SExhL07pay8n+Dy2iLZvn/SsFToMf5wOMFZ6zwGE9ZK4GP6RkNu
DUEjQ6P4kj4JaC9U8xfK2GPX++iHWWG90BQ0sXrzMnscWGobxjPog7+dFSX2
+Nqjzmu9fpnmPjBbaTSrNtseq7QPNu078QLMDoC9bqc9xra0brfTfgmNHzRM
Z0ziI0NE8bJVL2Hb+eAC75V8vMafarbc9xVYTHiRVeHNx6y6kHPiKf2wdMzc
Xy2Zj5+qnY5MudcP/VuHzs6o4mN3fPmg8p7X4DPgOLBFysehxpW8YMUB+NV2
9u1xKhTuS5wtCigbgPFhsQJmBYVqdbOVJS5vQP34FPPDzqy+rflfp4++geHQ
4km5Ryl8vzXDpzNPCkXN9U3F5yksdy0MU9zAQI9ls0j0B4XJMxUGx8YY4Pxn
bcSQE6cPRfJCYeH9pGiOlQAjp1ovlqSLYctozqnsJIKfbBSsmtbTsEp9elfQ
LoL54Qpfy97Q8Pq27eHgywQFrroBB0ekcF5Op2tvAYUL0Hn1hBwGjEXmr1c8
plCUWmkUzTsAxlu8n4RvEuCBG6LRoYNiWFBlp3w/hyCVsGxvjQYNdMjiqmo3
gn7zXYJs79EgebdcLSaF4JxuyXvdZikEcm2OaeRQeNDmZI98AAPXji9tj6mk
MP3gn9saH4vhidt2A69QgimKz3U699Ag7EvaFRlAMKrbe6xCiwHVGtvB7BIK
5z6YcL56Gf1f/JtxRcPSojO8HaB7dJV/pa0AvcK+uB93FYP0JjPBspDgScNN
JyrlaShQVucyLH7qyISK1HwaxKVzfwmPI8idVVkoWy6FfOPeeO9MCoUdwutR
bgyckWzg5pdTmLTu14eON8WwYUHKkHw0wZrCj8vaHWkI0ZIGy/mxeGdZlqUq
MfB2UTxRLKbwe15970/nvaZznQEN2laPlwkdCdrU+CpFxDJgMvOUplc1hW0z
PGPvFTB/4dFfrpJ9jmcPT7NGvZ/bsXm3O5l3ny+GdR9jGyKuE9QIc5Sv4NCQ
4i+iOHvZfrQ6e0QZNBwfv1o2OIrgGBjEMCVSSGgvjIpNpzB/enaatQMDPv/I
9C+9Q2GcXlHghStiOEFC52yOJ+jK4dxrsaEh2zNSbt0egu74uzB8PAMLpUUf
oJDCV/FLVGVMfvB9d41e3yNdGmSd3zwodiHoxg0ctghlILdwL/fo/Z/9uRml
tNnwfRUaHpQnLu70IDgjOinG/+qP++/1zx24YLnQk6BJqKdOjZDttz5AlTyk
UFWhNeY6by1kTqc2ebP5v63Hfb+nDatviIpc7g2Cu/S6n5SPiGH3ZJG7nC9B
zqH1fiSNhqH1i8yORRIcrvf61lsoBfX5/L70CxTeNJk/+aotAyoB5VvLyiiM
zjjWZpojBmGHflxQAjsfl8NONlvRoJVQkuvmw+ZXw9uJQRwGntdzZgmuUjhb
o6Mm5woDbW/TJ+rXUij/+lreQy0aGuvyPpW5EvTRl9mdd4wB9cVtRierKFwR
9bCsSomGs+v2N/TuJPjUIi3liTENqnkez6IFBM1zBoS6SQysURrv6lJDoZ/w
kmatHg1+S4aX5DgRXPM5TqnRlIZ3X0WX09j/hm7iYs90Bu5u7V1r/ojCF1cp
ty6eIbj5zUwtZvlxnWadfstaDLIvsw7dukkwTkZrCXwWQ9NwnjmX9ev0zCO3
087S4LRxtmFgBMHB5PFG2wqk8EuL8a55LD+3632snm9kYOiUZYYJy0/UM/dx
CVlicDe2FZ5JJNgUWPPSzoLNkyvdtr7eBLekRJl++SYFp4plkyRsfugUqo9r
v8xA8LGDp0vY/FhcPsi10KTBIP3ArnvbCO4rN7v09AgDrqNhyfIsP66u3Jlr
J9EQmFl3uN+L1U+j64u1EavfuwuqiZsJbjBe1Co4w8CK1dWNNDsvKXv6Q6wW
0BB/97NcvjPBnXXNvjZAw+V983vzWP8s/6A9kHyOgbg7RSZ1rH/+328b/8oP
3dINvXNZ/r/Pn1PreaUIVs+Tvls8PP7n/c/3P/v153py+dMdd6ykoWvqkFre
VoKVlxRTvxT8qPcv0rEemw==
           "], {{{
              EdgeForm[], 
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                Polygon[{{50, 92, 94, 133}}], 
                
                Polygon[{{135, 79, 89, 95, 131, 113, 53, 122, 104, 87, 74, 64,
                  31, 118, 100, 83, 70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 
                 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 119, 101, 84, 71, 61,
                  55, 123, 105, 88, 75, 65, 49, 120, 102, 85, 72, 62, 126, 
                 108, 91, 78, 129, 111, 96, 132, 114, 56, 124, 106}}], 
                
                Polygon[{{134, 66, 76, 1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5,
                  6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
                 22, 23, 24, 25, 26, 27, 28, 29, 116, 98, 81, 68, 58, 52, 121,
                  103, 86, 73, 63, 30, 117, 99, 82, 69, 127, 109, 93, 59, 125,
                  107, 90, 130, 112, 77, 128, 
                 110}}]}]}, {}, {}, {}}, {{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 115, 97, 80, 67, 57, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
               11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
                27, 28, 29, 116, 98, 81, 68, 58, 52, 121, 103, 86, 73, 63, 30,
                117, 99, 82, 69, 127, 109, 93, 59, 125, 107, 90, 130, 112, 77,
                128, 110, 134}], 
              
              Line[{95, 131, 113, 53, 122, 104, 87, 74, 64, 31, 118, 100, 83, 
               70, 60, 54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                45, 46, 47, 48, 119, 101, 84, 71, 61, 55, 123, 105, 88, 75, 
               65, 49, 120, 102, 85, 72, 62, 126, 108, 91, 78, 129, 111, 96, 
               132, 114, 56, 124, 106, 135}]}, {
              Directive[
               RGBColor[0, 2/3, 0], 
               Opacity[0.3]], 
              Line[{137, 141}], 
              Line[{139, 140, 138}]}}, {{}, {}, {}}}], 
          GraphicsComplex[CompressedData["
1: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
WWqhs4a2NLu1P7lcwN8K//xv/Rd/QmY1
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              Directive[
               RGBColor[2/3, 0, 0], 
               Opacity[0.3]], 
              GraphicsGroup[{
                
                Polygon[{{1, 152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 
                 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 
                 42, 43, 44, 45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 
                 65, 61, 58, 55, 71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50, 
                 124, 151, 144, 150, 138, 143, 149, 133, 137, 142, 148, 129, 
                 132, 136, 141, 147, 126, 128, 131, 135, 140, 146, 123, 122, 
                 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
                 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97,
                  96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 
                 81, 80, 79, 78, 77, 76, 125, 127, 130, 134, 139, 145, 
                 75}}]}]}, {}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{152, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
               14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 
               45, 46, 47, 48, 49, 69, 64, 60, 57, 54, 52, 70, 65, 61, 58, 55,
                71, 66, 62, 59, 72, 67, 63, 73, 68, 74, 50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{75, 145, 139, 134, 130, 127, 125, 76, 77, 78, 79, 80, 81, 
               82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
                98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
               123, 146, 140, 135, 131, 128, 126, 147, 141, 136, 132, 129, 
               148, 142, 137, 133, 149, 143, 138, 150, 144, 151, 124}]}}}], 
          GraphicsComplex[CompressedData["
1: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
           "], {{{}, {}, {}, {}, {}, {}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{1, 71, 65, 60, 56, 53, 51, 126, 125, 154, 160, 128, 
                 132, 138, 144, 150, 156, 78}}]}]}, {
              EdgeForm[], 
              RGBColor[0.75, 0.75, 1.], 
              GraphicsGroup[{
                
                Polygon[{{125, 148, 142, 136, 79, 157, 151, 145, 139, 133, 
                 129, 161, 155, 149, 143, 137, 80, 158, 152, 146, 140, 134, 
                 130, 81, 159, 153, 147, 141, 135, 131, 82, 83, 84, 85, 86, 
                 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
                  102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
                 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 162, 
                 127, 50, 77, 70, 76, 64, 69, 75, 59, 63, 68, 74, 55, 58, 62, 
                 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 46, 45, 44, 43, 
                 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
                 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
                 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 
                 126}}]}]}, {}, {}}, {{}, {}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{1, 71, 65, 60, 56, 53, 51, 126, 2, 3, 4, 5, 6, 7, 8, 9, 
               10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
                26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
               41, 42, 43, 44, 45, 46, 47, 48, 49, 72, 66, 61, 57, 54, 52, 73,
                67, 62, 58, 55, 74, 68, 63, 59, 75, 69, 64, 76, 70, 77, 
               50}]}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              
              Line[{78, 156, 150, 144, 138, 132, 128, 160, 154, 125, 148, 142,
                136, 79, 157, 151, 145, 139, 133, 129, 161, 155, 149, 143, 
               137, 80, 158, 152, 146, 140, 134, 130, 81, 159, 153, 147, 141, 
               135, 131, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 
               95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 
               108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
               120, 121, 122, 123, 124, 162}]}}}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Large], 
              GrayLevel[0]], 
             Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnXYxaOnMmRftjUEgONjhzY9bzQveI/jFCslJy10v
wfkSmtLMegyX4XyZQ2meEesQfNufC7+IR16B87+9bGkOELoK5/Nl/96usx/B
37dU8kJj1TU4v7tO3TfH6Dqcv/35ifxfdxH8ai6hMsYZN+D8eXvfKa5xvQnn
3+XbbfTmPYK/VVJffemKW3D+6y1mBxlDb8P5uzif2V3nvwPnL/3Touh0HMF/
X799ZUDRXTj/4p6Joje078H5Ql3/1ZhvIvivBURllk+5D+d/lOK1LlB7AOfP
Lr25K64GwRdcW7mm8yaCv33N44I2g4dwfnb10ednWxH812rVFwIfIfizZ/3q
Xm7xCM4Xf+2703Iagr+QS3Km2CcEP/rTWu+j7o/h/IfbxAo2LEHwpzl7puf+
RvAj538WKA14Aue/vF6os3MNgr/ixk6p80xP4XzjbVerFBMQ/LfRu9e6bkfw
t12QmLyF5xmc763k9So+E8Hnt3EVubsfwZ9vJLJhmuxzON/uR9S/WZUIPk9b
tnzheQR/2Qf/Tc06L+D8AuV/4hnNCL6HqorB9BsI/htmuV1Mpi/h/P2rHoo5
dCP4SRvuTU/ajeCzbbst0foawQcAg405uw==
              "]]}}}, {
           Text[
            Style["vapor", 19, 
             GrayLevel[0.25]], {0.5, 95}], 
           Rotate[
            Text[
             Style["\[Alpha] liquid ", 19, 
              GrayLevel[0.25]], {0.075, 77}], Pi/2], 
           Rotate[
            Text[
             Style["\[Beta] liquid ", 19, 
              GrayLevel[0.25]], {0.95, 77}], Pi/2], 
           Text[
            Style["\[Alpha] liquid + \[Beta] liquid", 14, 
             GrayLevel[0.2]], {0.5, 62}], 
           Text[
            Style["\[Alpha] liquid + vapor", 14, 
             GrayLevel[0.2]], {0.4125, 79}], 
           Text[
            Style[
             Column[{"\[Beta] liquid", "+ vapor"}, Center], 14, 
             GrayLevel[0.2]], {0.755, 79.25}]}}, {
         AspectRatio -> 1, ImageSize -> {400, 395}, Frame -> True, FrameLabel -> {
            Style["mole fraction B", 17], 
            Style["temperature  (\[Degree]C)", 17]}, LabelStyle -> {
            GrayLevel[0], 14}, DisplayFunction -> Identity, AspectRatio -> 
          GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 60.}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, "AxesInFront" -> 
            True}, PlotRange -> {{0, 1}, {60, 100}}, PlotRangeClipping -> 
          True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
          Ticks -> {Automatic, Automatic}}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->176714277]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection"],

Cell[TextData[{
 "The relative amounts of each phase in the two-phase regions are found using \
the lever rule. An example of using the lever rule in the ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath"],
 " liquid plus ",
 Cell[BoxData[
  FormBox["\[Beta]", TraditionalForm]], "InlineMath"],
 " liquid region is given by the following equations:"
}], "DetailNotes",
 CellID->596999561],

Cell[TextData[{
 "relative amount of ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath"],
 " liquid ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["R", "liquid"], "=", " ", 
    FractionBox[
     RowBox[{
      SubscriptBox["z", 
       StyleBox["B",
        FontSlant->"Plain"]], " ", "-", " ", 
      SubsuperscriptBox["x", 
       StyleBox["B",
        FontSlant->"Plain"], "\[Beta]"]}], 
     RowBox[{
      SubsuperscriptBox["x", 
       StyleBox["B",
        FontSlant->"Plain"], "\[Alpha]"], " ", "-", " ", 
      SubsuperscriptBox["x", 
       StyleBox["B",
        FontSlant->"Plain"], "\[Beta]"]}]]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->221121169],

Cell[TextData[{
 "relative amount of ",
 Cell[BoxData[
  FormBox["\[Beta]", TraditionalForm]], "InlineMath"],
 " liquid ",
 Cell[BoxData[
  FormBox[
   RowBox[{"=", " ", 
    RowBox[{
     FractionBox[
      RowBox[{
       SubsuperscriptBox["x", 
        StyleBox["B",
         FontSlant->"Plain"], "\[Alpha]"], " ", "-", " ", 
       SubscriptBox["z", 
        StyleBox["B",
         FontSlant->"Plain"]]}], 
      RowBox[{
       SubsuperscriptBox["x", 
        StyleBox["B",
         FontSlant->"Plain"], "\[Alpha]"], " ", "-", " ", 
       SubsuperscriptBox["x", 
        StyleBox["B",
         FontSlant->"Plain"], "\[Beta]"]}]], " ", "=", " ", 
     RowBox[{
      RowBox[{"1", "-", 
       FractionBox[
        RowBox[{
         SubscriptBox["z", 
          StyleBox["B",
           FontSlant->"Plain"]], " ", "-", " ", 
         SubsuperscriptBox["x", 
          StyleBox["B",
           FontSlant->"Plain"], "\[Beta]"]}], 
        RowBox[{
         SubsuperscriptBox["x", 
          StyleBox["B",
           FontSlant->"Plain"], "\[Alpha]"], " ", "-", " ", 
         SubsuperscriptBox["x", 
          StyleBox["B",
           FontSlant->"Plain"], "\[Beta]"]}]]}], " ", "=", " ", 
      RowBox[{"1", "-", 
       SubscriptBox["R", "liquid"]}]}]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->405821468],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["z", 
    StyleBox["B",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " is the overall mole fraction of the mixture (the mole fraction of the \
point in the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"T", "-", "x", "-", "y"}], TraditionalForm]], "InlineMath"],
 " diagram)."
}], "DetailNotes",
 CellID->33406082],

Cell["\<\
When the system is in vapor-liquid-liquid equilibrium, the relative amounts \
of each phase are found from mass balances. For example, using 10% \
vaporization and an initial mole fraction of B of 0.7 in the diagram:\
\>", "DetailNotes",
 CellID->144293705],

Cell["\[Bullet] determine the initial mole fraction of B", "DetailNotes",
 CellID->357124398],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["z", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", "0.7"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 CellID->505558128],

Cell["\[Bullet] determine the mole fraction of component B in each phase", \
"DetailNotes",
 CellID->490646264],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"], "\[Alpha]"], "=", "0.275"}], TraditionalForm]], 
  "InlineMath"]
}], "DetailNotes",
 CellID->416830987],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["x", 
     StyleBox["B",
      FontSlant->"Plain"], "\[Beta]"], "=", "0.81"}], TraditionalForm]], 
  "InlineMath"]
}], "DetailNotes",
 CellID->265503639],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", 
     StyleBox["B",
      FontSlant->"Plain"]], "=", "0.6"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 CellID->453163177],

Cell["\[Bullet] set a basis for the amount of total moles in the system", \
"DetailNotes",
 CellID->437538266],

Cell["\ttotal moles = 1", "DetailNotes",
 CellID->335152650],

Cell["\[Bullet] determine the percentage of vaporization", "DetailNotes",
 CellID->49460500],

Cell["\tpercent vaporization = 10%", "DetailNotes",
 CellID->33913505],

Cell["\[Bullet] determine the amount of vapor in the system", "DetailNotes",
 CellID->83929408],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox["V", TraditionalForm]], "InlineMath"],
 " = (percent of vaporization) \[Times] (total moles) = 0.1 \[Times] 1 = 0.1"
}], "DetailNotes",
 CellID->45965061],

Cell["\[Bullet] perform a mole balance on the whole system", "DetailNotes",
 CellID->381392778],

Cell[TextData[{
 "\ttotal moles = vapor + ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath"],
 " liquid + ",
 Cell[BoxData[
  FormBox["\[Beta]", TraditionalForm]], "InlineMath"],
 " liquid"
}], "DetailNotes",
 CellID->5879888],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "=", 
    RowBox[{"V", "+", 
     SubscriptBox["L", "\[Alpha]"], "+", 
     SubscriptBox["L", "\[Beta]"]}]}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 CellID->42307495],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "=", 
    RowBox[{"0.1", "+", 
     SubscriptBox["L", "\[Alpha]"], "+", 
     SubscriptBox["L", "\[Beta]"]}]}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 CellID->415989730],

Cell["\[Bullet] perform a mole balance on component B", "DetailNotes",
 CellID->18572441],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   SubscriptBox["z", 
    StyleBox["B",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " \[Times] total moles = (",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["x", 
    StyleBox["B",
     FontSlant->"Plain"], "\[Alpha]"], TraditionalForm]], "InlineMath"],
 " \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Alpha]"], TraditionalForm]], "InlineMath"],
 ") + (",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["x", 
    StyleBox["B",
     FontSlant->"Plain"], "\[Beta]"], TraditionalForm]], "InlineMath"],
 " x ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Beta]"], TraditionalForm]], "InlineMath"],
 ") + (",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", 
    StyleBox["B",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " ",
 "x",
 " V)"
}], "DetailNotes",
 CellID->869443673],

Cell[TextData[{
 "\t0.7 \[Times] 1 = (0.275 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Alpha]"], TraditionalForm]], "InlineMath"],
 ") + (0.81 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Beta]"], TraditionalForm]], "InlineMath"],
 ") + (0.6 \[Times] 0.1)"
}], "DetailNotes",
 CellID->111508530],

Cell[TextData[{
 "\t0.7 = (0.275 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Alpha]"], TraditionalForm]], "InlineMath"],
 ") + (0.81 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Beta]"], TraditionalForm]], "InlineMath"],
 ") + 0.06"
}], "DetailNotes",
 CellID->296025962],

Cell["\<\
\[Bullet] simultaneously solve the equations with unknown variables (the \
number of equations should equal the number of unknown variables)\
\>", "DetailNotes",
 CellID->761773776],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "=", 
    RowBox[{"0.1", "+", 
     SubscriptBox["L", "\[Alpha]"], "+", 
     SubscriptBox["L", "\[Beta]"]}]}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 CellID->262667830],

Cell[TextData[{
 "\t0.7 = (0.275 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Alpha]"], TraditionalForm]], "InlineMath"],
 ") + (0.81 \[Times] ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Beta]"], TraditionalForm]], "InlineMath"],
 ") + 0.06"
}], "DetailNotes",
 CellID->199673929],

Cell["\[Bullet] relative amounts of each phase", "DetailNotes",
 CellID->56754578],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "a"], TraditionalForm]], "InlineMath"],
 " = 0.166 = relative amount of ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath"],
 " liquid phase"
}], "DetailNotes",
 CellID->549458046],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "\[Beta]"], TraditionalForm]], "InlineMath"],
 " = 0.734 = relative amount of ",
 Cell[BoxData[
  FormBox["\[Beta]", TraditionalForm]], "InlineMath"],
 " liquid phase"
}], "DetailNotes",
 CellID->252912629],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox["V", TraditionalForm]], "InlineMath"],
 " = 0.1 = relative amount of vapor"
}], "DetailNotes",
 CellID->511903371]
}, Open  ]],

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
   CheckboxBox[False], Cell[" Drag Locators"]}],
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
   CheckboxBox[True], Cell[" Slider Zoom"]}],
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
   CheckboxBox[True], Cell[" Gamepad Controls"]}],
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
 CellID->60134832],

Cell["thermodynamics", "SearchTerms",
 CellID->816610210],

Cell["phase equilibrium ", "SearchTerms",
 CellID->176698206],

Cell["VLLE", "SearchTerms",
 CellID->402884717],

Cell["phase separation", "SearchTerms",
 CellID->475689011],

Cell["T-x-y diagram", "SearchTerms",
 CellID->15844550]
}, Open  ]],

Cell["", "RelatedLinksSection"],

Cell[CellGroupData[{

Cell["", "AuthorSection"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Megan Maguire",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Megan+Maguire"],
     None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Megan+Maguire"]
}], "Author",
 CellID->113325254],

Cell[TextData[{
 "With contributions by: ",
 ButtonBox["John L. Falconer ",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John%20L.%\
20Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John%20L.%\
20Falconer"],
 "and ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael+L.+\
Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael+L.+Baumann"]
}], "Author",
 CellID->305732927],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->326026603]
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
  Cell[400153, 8689, 311, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[400467, 8699, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[401148, 8717, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[401491, 8730, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[402131, 8747, 843, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[402977, 8770, 303, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[403283, 8780, 1463, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[404749, 8813, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 407747, 8922},
 {"RotateAndZoomIn3D", 407857, 8925},
 {"DragLocators", 407968, 8928},
 {"CreateAndDeleteLocators", 408085, 8931},
 {"SliderZoom", 408200, 8934},
 {"GamepadControls", 408307, 8937},
 {"AutomaticAnimation", 408421, 8940},
 {"BookmarkAnimation", 408539, 8943}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 59, 0, 74, "DemoTitle"],
Cell[CellGroupData[{
Cell[1570, 39, 33, 0, 287, "InitializationSection"],
Cell[1606, 41, 7779, 217, 448, "Input",
 InitializationCell->True,
 CellID->806326955]
}, Open  ]],
Cell[CellGroupData[{
Cell[9422, 263, 29, 0, 234, "ManipulateSection"],
Cell[CellGroupData[{
Cell[9476, 267, 79126, 1995, 3608, "Input"],
Cell[88605, 2264, 59943, 1193, 523, "Output",
 CellID->82763210]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[148597, 3463, 36, 0, 169, "ManipulateCaptionSection"],
Cell[148636, 3465, 2269, 59, 119, "ManipulateCaption",
 CellID->395315403]
}, Open  ]],
Cell[CellGroupData[{
Cell[150942, 3529, 28, 0, 173, "ThumbnailSection"],
Cell[150973, 3531, 59944, 1193, 523, "Output",
 CellID->228050267]
}, Open  ]],
Cell[CellGroupData[{
Cell[210954, 4729, 28, 0, 143, "SnapshotsSection"],
Cell[210985, 4731, 60064, 1197, 523, "Output",
 CellID->120050858],
Cell[271052, 5930, 59962, 1193, 523, "Output",
 CellID->4189469],
Cell[331017, 7125, 60055, 1196, 523, "Output",
 CellID->176714277]
}, Open  ]],
Cell[CellGroupData[{
Cell[391109, 8326, 26, 0, 336, "DetailsSection"],
Cell[391138, 8328, 409, 10, 38, "DetailNotes",
 CellID->596999561],
Cell[391550, 8340, 721, 26, 47, "DetailNotes",
 CellID->221121169],
Cell[392274, 8368, 1336, 45, 47, "DetailNotes",
 CellID->405821468],
Cell[393613, 8415, 394, 14, 23, "DetailNotes",
 CellID->33406082],
Cell[394010, 8431, 267, 5, 37, "DetailNotes",
 CellID->144293705],
Cell[394280, 8438, 93, 1, 22, "DetailNotes",
 CellID->357124398],
Cell[394376, 8441, 216, 9, 23, "DetailNotes",
 CellID->505558128],
Cell[394595, 8452, 111, 2, 22, "DetailNotes",
 CellID->490646264],
Cell[394709, 8456, 238, 10, 25, "DetailNotes",
 CellID->416830987],
Cell[394950, 8468, 236, 10, 27, "DetailNotes",
 CellID->265503639],
Cell[395189, 8480, 216, 9, 23, "DetailNotes",
 CellID->453163177],
Cell[395408, 8491, 110, 2, 22, "DetailNotes",
 CellID->437538266],
Cell[395521, 8495, 60, 1, 22, "DetailNotes",
 CellID->335152650],
Cell[395584, 8498, 92, 1, 22, "DetailNotes",
 CellID->49460500],
Cell[395679, 8501, 70, 1, 22, "DetailNotes",
 CellID->33913505],
Cell[395752, 8504, 95, 1, 22, "DetailNotes",
 CellID->83929408],
Cell[395850, 8507, 202, 6, 23, "DetailNotes",
 CellID->45965061],
Cell[396055, 8515, 95, 1, 22, "DetailNotes",
 CellID->381392778],
Cell[396153, 8518, 248, 9, 23, "DetailNotes",
 CellID->5879888],
Cell[396404, 8529, 245, 9, 26, "DetailNotes",
 CellID->42307495],
Cell[396652, 8540, 248, 9, 26, "DetailNotes",
 CellID->415989730],
Cell[396903, 8551, 89, 1, 22, "DetailNotes",
 CellID->18572441],
Cell[396995, 8554, 881, 37, 28, "DetailNotes",
 CellID->869443673],
Cell[397879, 8593, 331, 11, 26, "DetailNotes",
 CellID->111508530],
Cell[398213, 8606, 306, 11, 26, "DetailNotes",
 CellID->296025962],
Cell[398522, 8619, 191, 4, 22, "DetailNotes",
 CellID->761773776],
Cell[398716, 8625, 248, 9, 26, "DetailNotes",
 CellID->262667830],
Cell[398967, 8636, 306, 11, 26, "DetailNotes",
 CellID->199673929],
Cell[399276, 8649, 82, 1, 22, "DetailNotes",
 CellID->56754578],
Cell[399361, 8652, 271, 10, 23, "DetailNotes",
 CellID->549458046],
Cell[399635, 8664, 276, 10, 26, "DetailNotes",
 CellID->252912629],
Cell[399914, 8676, 162, 6, 23, "DetailNotes",
 CellID->511903371]
}, Open  ]],
Cell[CellGroupData[{
Cell[400113, 8687, 37, 0, 126, "ControlSuggestionsSection"],
Cell[400153, 8689, 311, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[400467, 8699, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[401148, 8717, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[401491, 8730, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[402131, 8747, 843, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[402977, 8770, 303, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[403283, 8780, 1463, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[404749, 8813, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[405694, 8839, 30, 0, 155, "SearchTermsSection"],
Cell[405727, 8841, 62, 1, 22, "SearchTerms",
 CellID->60134832],
Cell[405792, 8844, 57, 1, 22, "SearchTerms",
 CellID->816610210],
Cell[405852, 8847, 61, 1, 22, "SearchTerms",
 CellID->176698206],
Cell[405916, 8850, 47, 1, 22, "SearchTerms",
 CellID->402884717],
Cell[405966, 8853, 59, 1, 22, "SearchTerms",
 CellID->475689011],
Cell[406028, 8856, 55, 1, 22, "SearchTerms",
 CellID->15844550]
}, Open  ]],
Cell[406098, 8860, 31, 0, 141, "RelatedLinksSection"],
Cell[CellGroupData[{
Cell[406154, 8864, 25, 0, 129, "AuthorSection"],
Cell[406182, 8866, 319, 10, 22, "Author",
 CellID->113325254],
Cell[406504, 8878, 614, 19, 22, "Author",
 CellID->305732927],
Cell[407121, 8899, 131, 4, 22, "Author",
 CellID->326026603]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature cvTl0LxK3nyTECKxcTyozeO1 *)
