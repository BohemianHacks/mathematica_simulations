(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.2' *)

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
NotebookDataLength[     41858,       1138]
NotebookOptionsPosition[     40422,       1072]
NotebookOutlinePosition[     40856,       1091]
CellTagsIndexPosition[     40813,       1088]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "t", ",", "w", ",", "L", ",", "u", ",", "Cp", ",", "ka", ",", "\[Nu]", 
       ",", "\[Rho]", ",", "\[Mu]", ",", "Pr", ",", "Rex", ",", "h", ",", "P",
        ",", "Ac", ",", "k", ",", "Tb", ",", "m", ",", "qf", ",", "T", ",", 
       "xT", ",", "col"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"t", "=", "0.0015"}], ";", 
      RowBox[{"(*", 
       RowBox[{"m", " ", "thickness"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"w", "=", "0.02"}], ";", 
      RowBox[{"(*", "width", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"L", ":=", 
       RowBox[{"length", "/", "1000"}]}], ";", 
      RowBox[{"(*", "length", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"air", " ", "properties"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"u", "=", "2"}], ";", 
      RowBox[{"(*", 
       RowBox[{"m", "/", "s"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Cp", "=", "1005"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"J", "/", "kg"}], "/", "K"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"ka", "=", "0.0264"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"W", "/", "m"}], "/", "K"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[Nu]", "=", "1.71*^-5"}], ";", 
      RowBox[{"(*", 
       RowBox[{"m2", "/", "s"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[Rho]", "=", "1.164"}], ";", 
      RowBox[{"(*", 
       RowBox[{"kg", "/", "m3"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[Mu]", ":=", 
       RowBox[{"\[Nu]", "*", "\[Rho]"}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"N", " ", 
        RowBox[{"s", "/", "m2"}]}], "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Pr", ":=", 
       FractionBox[
        RowBox[{"Cp", "*", "\[Mu]"}], "ka"]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Rex", ":=", 
       FractionBox[
        RowBox[{"u", "*", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"fin", "\[Equal]", "1"}], ",", "w", ",", "t"}], "]"}]}], 
        "\[Nu]"]}], ";", "\[IndentingNewLine]", 
      RowBox[{"h", ":=", 
       RowBox[{"ha", "/.", 
        RowBox[{"First", "@", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"fin", "\[Equal]", "1"}], ",", 
           RowBox[{"Solve", "[", 
            RowBox[{
             RowBox[{
              FractionBox[
               RowBox[{"ha", "*", "w"}], "ka"], "\[Equal]", 
              RowBox[{"0.664", "*", 
               SuperscriptBox["Rex", 
                RowBox[{"1", "/", "2"}]], "*", 
               SuperscriptBox["Pr", 
                RowBox[{"1", "/", "3"}]]}]}], ",", "ha"}], "]"}], ",", 
           RowBox[{"Solve", "[", 
            RowBox[{
             RowBox[{
              FractionBox[
               RowBox[{"ha", "*", "t"}], "ka"], "\[Equal]", 
              RowBox[{"0.683", "*", 
               SuperscriptBox["Rex", "0.466"], "*", 
               SuperscriptBox["Pr", 
                RowBox[{"1", "/", "3"}]]}]}], ",", "ha"}], "]"}]}], 
          "]"}]}]}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"fin", "\[Equal]", "1"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"P", ":=", 
           RowBox[{
            RowBox[{"2", "*", "w"}], "+", 
            RowBox[{"2", "*", "t"}]}]}], ";", 
          RowBox[{"Ac", ":=", 
           RowBox[{"w", "*", "t"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"P", ":=", 
           RowBox[{"\[Pi]", "*", "t"}]}], ";", 
          RowBox[{"Ac", ":=", 
           RowBox[{"\[Pi]", "*", 
            RowBox[{
             SuperscriptBox["t", "2"], "/", "4"}]}]}], ";"}], "}"}]}], "]"}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"therm", ".", " ", "data"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"k", ":=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"mat", "\[Equal]", "1"}], ",", "14", ",", 
         RowBox[{"(*", 
          RowBox[{"s", ".", "steel"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"mat", "\[Equal]", "2"}], ",", "60.5", ",", 
         RowBox[{"(*", 
          RowBox[{"carbon", " ", "steel"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"mat", "\[Equal]", "3"}], ",", "80.2", ",", 
         RowBox[{"(*", "iron", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"mat", "\[Equal]", "4"}], ",", "110", ",", 
         RowBox[{"(*", "brass", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"mat", "\[Equal]", "5"}], ",", "237", ",", 
         RowBox[{"(*", "aluminum", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"mat", "\[Equal]", "6"}], ",", "401"}], 
        RowBox[{"(*", "copper", "*)"}], "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"W", "/", "m"}], "/", "K"}], "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Tb", "=", "500"}], ";", "\[IndentingNewLine]", 
      RowBox[{"m", ":=", 
       SqrtBox[
        FractionBox[
         RowBox[{"h", "*", "P"}], 
         RowBox[{"k", "*", "Ac"}]]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"qf", ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"Tb", "-", "Ta"}], ")"}], "*", 
        SqrtBox[
         RowBox[{"h", "*", "P", "*", "k", "*", "Ac"}]], "*", 
        RowBox[{"Tanh", "[", 
         RowBox[{"m", "*", "L"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"T", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"Tb", "-", "Ta"}], ")"}], "*", 
         FractionBox[
          RowBox[{"Cosh", "[", 
           RowBox[{"m", "*", 
            RowBox[{"(", 
             RowBox[{"L", "-", "x"}], ")"}]}], "]"}], 
          RowBox[{"Cosh", "[", 
           RowBox[{"m", "*", "L"}], "]"}]]}], "+", "Ta"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"temperature", " ", "scale", " ", "graphic", " ", "info"}], 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"xT", ":=", 
       RowBox[{"Evaluate", "@", 
        RowBox[{"Interpolation", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Range", "[", 
             RowBox[{"500", ",", "273", ",", 
              RowBox[{"-", "1"}]}], "]"}], ",", 
            RowBox[{"Evaluate", "@", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"x", "/.", 
                RowBox[{"Quiet", "@", 
                 RowBox[{"FindRoot", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"250", "+", 
                    RowBox[{"23.72", "*", 
                    RowBox[{"Cosh", "[", 
                    RowBox[{"152.3", "*", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"1", "/", "50"}], "-", "x"}], ")"}]}], "]"}]}]}], 
                    "\[Equal]", "t"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
               RowBox[{"{", 
                RowBox[{"t", ",", "273", ",", "500", ",", "1"}], "}"}]}], 
              "]"}]}]}], "}"}], "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"col", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{"ColorData", "[", "\"\<TemperatureMap\>\"", "]"}], "[", 
        RowBox[{"Rescale", "[", 
         RowBox[{
          RowBox[{"xT", "[", 
           RowBox[{"T", "[", "x", "]"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0.02"}], "}"}]}], "]"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Text", "@", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<fin heat transfer rate = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"qf", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< W\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<temperature of fin tip = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"T", "[", "L", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< K\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]", 
                 "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
              "17"}], "]"}]}], ",", "SpanFromLeft"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Show", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Graphics3D", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"col", "[", "0", "]"}], ",", 
                  RowBox[{"Cuboid", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.0025"}], ",", 
                    RowBox[{
                    RowBox[{"-", "w"}], "/", "2"}], ",", 
                    RowBox[{
                    RowBox[{"-", "w"}], "/", "2"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"w", "/", "2"}], ",", 
                    RowBox[{"w", "/", "2"}]}], "}"}]}], "]"}]}], "}"}], ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<base = 500 K\>\"", ",", "18"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0", ",", "0.0075"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"2", ",", "0.35"}], "}"}]}], "]"}]}], "}"}], "]"}],
              ",", "\[IndentingNewLine]", 
             RowBox[{"Switch", "[", 
              RowBox[{"fin", ",", "\[IndentingNewLine]", "1", ",", 
               RowBox[{"RegionPlot3D", "[", 
                RowBox[{
                 RowBox[{"z", "<", "t"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", "0", ",", "L"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"y", ",", 
                   RowBox[{
                    RowBox[{"-", "w"}], "/", "2"}], ",", 
                   RowBox[{"w", "/", "2"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"z", ",", "0", ",", "t"}], "}"}], ",", 
                 RowBox[{"Mesh", "\[Rule]", "None"}], ",", 
                 RowBox[{"ColorFunction", "\[Rule]", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"col", "[", "#1", "]"}], "&"}], ")"}]}], ",", 
                 RowBox[{"ColorFunctionScaling", "\[Rule]", "False"}]}], 
                "]"}], ",", "\[IndentingNewLine]", "2", ",", 
               RowBox[{"Show", "[", 
                RowBox[{
                 RowBox[{"Graphics3D", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"col", "[", "L", "]"}], ",", 
                    RowBox[{"Cylinder", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"0.999", "*", "L"}], ",", "0", ",", "0"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"L", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
                    RowBox[{"t", "/", "2"}]}], "]"}]}], "}"}], "]"}], ",", 
                 RowBox[{"ParametricPlot3D", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{
                    FractionBox["t", "2"], "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{
                    FractionBox["t", "2"], "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\[Theta]", ",", "0", ",", 
                    RowBox[{"2", "*", "\[Pi]"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x", ",", "0", ",", "L"}], "}"}], ",", 
                   RowBox[{"Mesh", "\[Rule]", "None"}], ",", 
                   RowBox[{"ColorFunction", "\[Rule]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"col", "[", "#1", "]"}], "&"}], ")"}]}], ",", 
                   RowBox[{"ColorFunctionScaling", "\[Rule]", "False"}]}], 
                  "]"}]}], "]"}]}], "\[IndentingNewLine]", "]"}], ",", 
             RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
             RowBox[{"ViewPoint", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"2", ",", 
                RowBox[{"-", "2"}], ",", "1"}], "}"}]}], ",", 
             RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", 
             RowBox[{"ImageSize", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"300", ",", "315"}], "}"}]}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"DensityPlot", "[", 
            RowBox[{
             RowBox[{"xT", "[", "y", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"y", ",", "273", ",", "500"}], "}"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<TemperatureMap\>\""}], 
             ",", 
             RowBox[{"PlotPoints", "\[Rule]", "50"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Epilog", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.5"}], ",", 
                    RowBox[{"T", "[", "L", "]"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"T", "[", "L", "]"}]}], "}"}]}], "}"}], "]"}], 
                ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"T", "[", "L", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", "17"}], 
                   "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"-", "0.5"}], ",", 
                    RowBox[{"T", "[", "L", "]"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"PlotRange", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"273", ",", "500"}], "}"}]}], "}"}]}], ",", 
             RowBox[{"PlotRangePadding", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0.1", ",", "None"}], "}"}], ",", "5"}], "}"}]}], 
             ",", 
             RowBox[{"Frame", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"None", ",", "True"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"None", ",", "None"}], "}"}]}], "}"}]}], ",", 
             RowBox[{"FrameTicks", "\[Rule]", "All"}], ",", 
             RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
             RowBox[{"LabelStyle", "\[Rule]", "17"}], ",", 
             RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
             RowBox[{"ImageSize", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"150", ",", "315"}], "}"}]}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Rotate", "[", 
            RowBox[{
             RowBox[{"Text", "@", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<temperature  (K)\>\"", ",", "17"}], "]"}]}], ",", 
             RowBox[{"\[Pi]", "/", "2"}]}], "]"}]}], "}"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}]}], "\[IndentingNewLine]", 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Column", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Row", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"fin", ",", "1", ",", "\"\<fin type:\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"1", "\[Rule]", "\"\< rectangular \>\""}], ",", 
              RowBox[{"2", "\[Rule]", "\"\< pin \>\""}]}], "}"}], ",", 
            "Setter"}], "}"}], "]"}], ",", 
         RowBox[{"Spacer", "[", "20", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"mat", ",", "1", ",", "\"\<material:\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"1", "\[Rule]", "\"\<stainless steel\>\""}], ",", 
              RowBox[{"2", "\[Rule]", "\"\<carbon steel\>\""}], ",", 
              RowBox[{"3", "\[Rule]", "\"\<iron\>\""}], ",", 
              RowBox[{"4", "\[Rule]", "\"\<brass\>\""}], ",", 
              RowBox[{"5", "\[Rule]", "\"\<aluminum\>\""}], ",", 
              RowBox[{"6", "\[Rule]", "\"\<copper\>\""}]}], "}"}], ",", 
            "PopupMenu"}], "}"}], "]"}]}], "\[IndentingNewLine]", "}"}], 
       "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"length", ",", "10", ",", "\"\<fin length (mm)\>\""}], 
          "}"}], ",", "5", ",", "20", ",", "1", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}],
       ",", "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Ta", ",", "300", ",", "\"\<ambient temperature (K)\>\""}], 
          "}"}], ",", "250", ",", "350", ",", "1", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
       "]"}]}], "\[IndentingNewLine]", "}"}], "]"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`fin$$ = 1, $CellContext`length$$ = 
    10, $CellContext`mat$$ = 1, $CellContext`Ta$$ = 300, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`fin$$], 1, "fin type:"}, {
      1 -> " rectangular ", 2 -> " pin "}}, {{
       Hold[$CellContext`mat$$], 1, "material:"}, {
      1 -> "stainless steel", 2 -> "carbon steel", 3 -> "iron", 4 -> "brass", 
       5 -> "aluminum", 6 -> "copper"}}, {{
       Hold[$CellContext`length$$], 10, "fin length (mm)"}, 5, 20, 1}, {{
       Hold[$CellContext`Ta$$], 300, "ambient temperature (K)"}, 250, 350, 
      1}, {
      Hold[
       Column[{
         Row[{
           Manipulate`Place[1], 
           Spacer[20], 
           Manipulate`Place[2]}], 
         Manipulate`Place[3], 
         Manipulate`Place[4]}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {488., {177., 184.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`fin$849$$ = False, $CellContext`mat$850$$ = 
    False, $CellContext`length$851$$ = 0, $CellContext`Ta$852$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`fin$$ = 1, $CellContext`length$$ = 
        10, $CellContext`mat$$ = 1, $CellContext`Ta$$ = 300}, 
      "ControllerVariables" :> {
        Hold[$CellContext`fin$$, $CellContext`fin$849$$, False], 
        Hold[$CellContext`mat$$, $CellContext`mat$850$$, False], 
        Hold[$CellContext`length$$, $CellContext`length$851$$, 0], 
        Hold[$CellContext`Ta$$, $CellContext`Ta$852$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`t$, $CellContext`w$, $CellContext`L$, \
$CellContext`u$, $CellContext`Cp$, $CellContext`ka$, $CellContext`\[Nu]$, \
$CellContext`\[Rho]$, $CellContext`\[Mu]$, $CellContext`Pr$, \
$CellContext`Rex$, $CellContext`h$, $CellContext`P$, $CellContext`Ac$, \
$CellContext`k$, $CellContext`Tb$, $CellContext`m$, $CellContext`qf$, \
$CellContext`T$, $CellContext`xT$, $CellContext`col$}, $CellContext`t$ = 
         0.0015; $CellContext`w$ = 
         0.02; $CellContext`L$ := $CellContext`length$$/1000; $CellContext`u$ = 
         2; $CellContext`Cp$ = 1005; $CellContext`ka$ = 
         0.0264; $CellContext`\[Nu]$ = 0.0000171; $CellContext`\[Rho]$ = 
         1.164; $CellContext`\[Mu]$ := $CellContext`\[Nu]$ \
$CellContext`\[Rho]$; $CellContext`Pr$ := $CellContext`Cp$ \
$CellContext`\[Mu]$/$CellContext`ka$; $CellContext`Rex$ := $CellContext`u$ 
          If[$CellContext`fin$$ == 
            1, $CellContext`w$, $CellContext`t$]/$CellContext`\[Nu]$; \
$CellContext`h$ := ReplaceAll[$CellContext`ha, 
           First[
            If[$CellContext`fin$$ == 1, 
             
             Solve[$CellContext`ha $CellContext`w$/$CellContext`ka$ == 
              0.664 $CellContext`Rex$^(1/2) $CellContext`Pr$^(1/
                 3), $CellContext`ha], 
             
             Solve[$CellContext`ha $CellContext`t$/$CellContext`ka$ == 
              0.683 $CellContext`Rex$^0.466 $CellContext`Pr$^(1/
                 3), $CellContext`ha]]]]; 
        If[$CellContext`fin$$ == 
          1, {$CellContext`P$ := 
            2 $CellContext`w$ + 
             2 $CellContext`t$; $CellContext`Ac$ := $CellContext`w$ \
$CellContext`t$}, {$CellContext`P$ := Pi $CellContext`t$; $CellContext`Ac$ := 
            Pi ($CellContext`t$^2/4); Null}]; $CellContext`k$ := 
         Which[$CellContext`mat$$ == 1, 14, $CellContext`mat$$ == 2, 
           60.5, $CellContext`mat$$ == 3, 80.2, $CellContext`mat$$ == 4, 
           110, $CellContext`mat$$ == 5, 237, $CellContext`mat$$ == 6, 
           401]; $CellContext`Tb$ = 500; $CellContext`m$ := 
         Sqrt[$CellContext`h$ $CellContext`P$/($CellContext`k$ \
$CellContext`Ac$)]; $CellContext`qf$ := ($CellContext`Tb$ - $CellContext`Ta$$)
            Sqrt[$CellContext`h$ $CellContext`P$ $CellContext`k$ \
$CellContext`Ac$] Tanh[$CellContext`m$ $CellContext`L$]; $CellContext`T$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`Tb$ - $CellContext`Ta$$) (
            Cosh[$CellContext`m$ ($CellContext`L$ - $CellContext`x$)]/
            Cosh[$CellContext`m$ $CellContext`L$]) + $CellContext`Ta$$; \
$CellContext`xT$ := Evaluate[
           Interpolation[
            Transpose[{
              Range[500, 273, -1], 
              Evaluate[
               Table[
                ReplaceAll[$CellContext`x, 
                 Quiet[
                  FindRoot[
                  250 + 23.72 
                    Cosh[152.3 (
                    1/50 - $CellContext`x)] == $CellContext`t$, \
{$CellContext`x, 0}]]], {$CellContext`t$, 273, 500, 
                 1}]]}]]]; $CellContext`col$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ColorData["TemperatureMap"][
           Rescale[
            $CellContext`xT$[
             $CellContext`T$[$CellContext`x$]], {0, 0.02}]]; Grid[{{
            Text[
             Style[
              Column[{
                Row[{"fin heat transfer rate = ", 
                  NumberForm[$CellContext`qf$, {3, 2}], " W"}], 
                Row[{"temperature of fin tip = ", 
                  NumberForm[
                   $CellContext`T$[$CellContext`L$], {3, 0}], " K"}]}, 
               Alignment -> "="], 17]], SpanFromLeft}, {
            Show[
             Graphics3D[{{
                $CellContext`col$[0], 
                
                Cuboid[{-0.0025, (-$CellContext`w$)/2, (-$CellContext`w$)/
                  2}, {0, $CellContext`w$/2, $CellContext`w$/2}]}, 
               Text[
                Style["base = 500 K", 18], {0, 0, 0.0075}, {0, 0}, {
                2, 0.35}]}], 
             Switch[$CellContext`fin$$, 1, 
              
              RegionPlot3D[$CellContext`z < $CellContext`t$, {$CellContext`x, 
                0, $CellContext`L$}, {$CellContext`y, (-$CellContext`w$)/
                2, $CellContext`w$/2}, {$CellContext`z, 0, $CellContext`t$}, 
               Mesh -> None, ColorFunction -> ($CellContext`col$[#]& ), 
               ColorFunctionScaling -> False], 2, 
              Show[
               Graphics3D[{
                 $CellContext`col$[$CellContext`L$], 
                 
                 Cylinder[{{
                   0.999 $CellContext`L$, 0, 0}, {$CellContext`L$, 0, 
                    0}}, $CellContext`t$/2]}], 
               
               ParametricPlot3D[{$CellContext`x, ($CellContext`t$/2) 
                 Sin[$CellContext`\[Theta]], ($CellContext`t$/2) 
                 Cos[$CellContext`\[Theta]]}, {$CellContext`\[Theta], 0, 2 
                 Pi}, {$CellContext`x, 0, $CellContext`L$}, Mesh -> None, 
                ColorFunction -> ($CellContext`col$[#]& ), 
                ColorFunctionScaling -> False]]], Boxed -> False, 
             ViewPoint -> {2, -2, 1}, Lighting -> "Neutral", 
             ImageSize -> {300, 315}], 
            DensityPlot[
             $CellContext`xT$[$CellContext`y], {$CellContext`x, 0, 
              1}, {$CellContext`y, 273, 500}, ColorFunction -> 
             "TemperatureMap", PlotPoints -> 50, Epilog -> {
               Line[{{-0.5, 
                  $CellContext`T$[$CellContext`L$]}, {1, 
                  $CellContext`T$[$CellContext`L$]}}], 
               Text[
                Style[
                 NumberForm[
                  $CellContext`T$[$CellContext`L$], {3, 0}], 17], {-0.5, 
                 $CellContext`T$[$CellContext`L$]}, {1, 0}]}, 
             PlotRange -> {{-1, 1}, {273, 500}}, 
             PlotRangePadding -> {{0.1, None}, 5}, 
             Frame -> {{None, True}, {None, None}}, FrameTicks -> All, 
             FrameStyle -> Black, LabelStyle -> 17, AspectRatio -> Full, 
             ImageSize -> {150, 315}], 
            Rotate[
             Text[
              Style["temperature  (K)", 17]], Pi/2]}}]], 
      "Specifications" :> {{{$CellContext`fin$$, 1, "fin type:"}, {
         1 -> " rectangular ", 2 -> " pin "}, ControlType -> Setter, 
         ControlPlacement -> 1}, {{$CellContext`mat$$, 1, "material:"}, {
         1 -> "stainless steel", 2 -> "carbon steel", 3 -> "iron", 4 -> 
          "brass", 5 -> "aluminum", 6 -> "copper"}, ControlType -> PopupMenu, 
         ControlPlacement -> 
         2}, {{$CellContext`length$$, 10, "fin length (mm)"}, 5, 20, 1, 
         Appearance -> "Labeled", ControlPlacement -> 
         3}, {{$CellContext`Ta$$, 300, "ambient temperature (K)"}, 250, 350, 
         1, Appearance -> "Labeled", ControlPlacement -> 4}, 
        Column[{
          Row[{
            Manipulate`Place[1], 
            Spacer[20], 
            Manipulate`Place[2]}], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}]}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{539., {253., 260.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\

Heat transfer through a single fin (either a rectangular or pin fin) is \
calculated. The fin is mounted on a heat sink, the fin length and the ambient \
air temperature are varied using sliders. Select the fin material from the \
drop - down menu. The temperature distribution is shown on the fin surface \
using a color scale (red = hottest, blue = coolest), the temperature of the \
fin tip is shown on the right with the legend. The fin tip is assumed to be \
adiabatic and the air flow is laminar. The thickness of the rectangular fin, \
and diameter of the pin fin is 1.5 mm.
\
\>", "Text"],

Cell[TextData[{
 "The heat transfer coefficient of air (",
 Cell[BoxData[
  FormBox["h", TraditionalForm]], "InlineMath"],
 ") is calculated using Nusselt correlations for laminar flow over a flat \
plate and a cylinder. Air properties are evaluated at 300 K. The average \
Nusselt (",
 Cell[BoxData[
  FormBox[
   SubscriptBox["Nu", "x"], TraditionalForm]], "InlineMath"],
 ") and Reynold's (",
 Cell[BoxData[
  FormBox[
   SubscriptBox["Re", "x"], TraditionalForm]], "InlineMath"],
 ") numbers are:"
}], "DetailNotes",
 FontSize->14,
 CellID->756247352],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["Nu", "x"], "=", 
   FractionBox[
    RowBox[{"h", " ", "x"}], 
    SubscriptBox["k", "a"]]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->207472694],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["Re", "x"], "=", 
   FractionBox[
    RowBox[{"u", " ", "x"}], "\[Nu]"]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->223328085],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "w"}], TraditionalForm]], "InlineMath"],
 " for a rectangular fin, and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "t"}], TraditionalForm]], "InlineMath"],
 " for a pin fin, ",
 Cell[BoxData[
  FormBox["w", TraditionalForm]], "InlineMath"],
 " is width and ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]], "InlineMath"],
 " is thickness/diameter (m), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["k", "a"], TraditionalForm]], "InlineMath"],
 " is the thermal conductivity of air (W/m/k), ",
 Cell[BoxData[
  FormBox["u", TraditionalForm]], "InlineMath"],
 " is the velocity of air (m/s), ",
 Cell[BoxData[
  FormBox["\[Nu]", TraditionalForm]], "InlineMath"],
 " is the kinematic viscosity of air (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["m", "2"], "/", "s"}], TraditionalForm]], "InlineMath"],
 "), ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]], "InlineMath"],
 " is in units of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"W", "/", 
     SuperscriptBox["m", "2"]}], "/", "K"}], TraditionalForm]], "InlineMath"],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["Nu", "x"], TraditionalForm]], "InlineMath"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["Re", "x"], TraditionalForm]], "InlineMath"],
 " are unitless."
}], "DetailNotes",
 FontSize->14,
 CellID->580655662],

Cell["For a rectangular fin:", "DetailNotes",
 FontSize->14,
 CellID->889558474],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["Nu", "x"], "=", 
   RowBox[{"0.664", " ", 
    SubsuperscriptBox["Re", "x", 
     RowBox[{"1", "/", "2"}]], " ", 
    SuperscriptBox["Pr", 
     RowBox[{"1", "/", "3"}]]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->40183499],

Cell["For a pin fin:", "DetailNotes",
 FontSize->14,
 CellID->93494998],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["Nu", "x"], "=", 
   RowBox[{"0.683", " ", 
    SubsuperscriptBox["Re", "x", "0.466"], " ", 
    SuperscriptBox["Pr", 
     RowBox[{"1", "/", "3"}]]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->121420417],

Cell[TextData[{
 "and ",
 Cell[BoxData[
  FormBox["Pr", TraditionalForm]], "InlineMath"],
 " is the Prandtl number:"
}], "DetailNotes",
 FontSize->14,
 CellID->354572867],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"Pr", "=", 
   FractionBox[
    RowBox[{"Cp", " ", "\[Mu]"}], 
    SubscriptBox["k", "a"]]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->161425804],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]], "InlineMath"],
 " is the heat capacity of air (J/kg/K), ",
 Cell[BoxData[
  FormBox["\[Mu]", TraditionalForm]], "InlineMath"],
 " is the dynamic viscosity of air (",
 Cell[BoxData[
  FormBox[
   RowBox[{"N", " ", 
    RowBox[{"s", "/", 
     SuperscriptBox["m", "2"]}]}], TraditionalForm]], "InlineMath"],
 "), and ",
 Cell[BoxData[
  FormBox["Pr", TraditionalForm]], "InlineMath"],
 " is unitless."
}], "DetailNotes",
 FontSize->14,
 CellID->248660630],

Cell["For a fin with a tip that is assumed to be adiabatic:", "DetailNotes",
 FontSize->14,
 CellID->276349442],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"T", "=", 
   RowBox[{
    SubscriptBox["T", "\[Infinity]"], "+", 
    RowBox[{
     FractionBox[
      RowBox[{"Cosh", "(", 
       RowBox[{"m", " ", 
        RowBox[{"(", 
         RowBox[{"L", "-", "z"}], ")"}]}], ")"}], 
      RowBox[{"Cosh", "(", 
       RowBox[{"m", " ", "L"}], ")"}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["T", "b"], "-", 
       SubscriptBox["T", "\[Infinity]"]}], ")"}]}]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->132869350],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["q", "f"], "=", 
   RowBox[{
    SqrtBox[
     RowBox[{"h", " ", "P", " ", "k", " ", "Ac"}]], " ", 
    RowBox[{"Tanh", "(", 
     RowBox[{"m", " ", "L"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["T", "b"], "-", 
      SubscriptBox["T", "\[Infinity]"]}], ")"}]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->177157537],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath"],
 " is temperature (K), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "\[Infinity]"], TraditionalForm]], "InlineMath"],
 " is the ambient air temperature, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "b"], "=", 
    RowBox[{"500", " ", "K"}]}], TraditionalForm]], "InlineMath"],
 " is the base temperature, ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]], "InlineMath"],
 " is a simplification term, ",
 Cell[BoxData[
  FormBox["L", TraditionalForm]], "InlineMath"],
 " is the fin length (m), ",
 Cell[BoxData[
  FormBox["z", TraditionalForm]], "InlineMath"],
 " is distance down the fin, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["q", "f"], TraditionalForm]], "InlineMath"],
 " is the fin heat transfer rate (W), ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]], "InlineMath"],
 " is the fin perimeter (m), ",
 Cell[BoxData[
  FormBox["Ac", TraditionalForm]], "InlineMath"],
 " is the fin cross-section area (",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["m", "2"], TraditionalForm]], "InlineMath"],
 "), and ",
 Cell[BoxData[
  FormBox["k", TraditionalForm]], "InlineMath"],
 " is the thermal conductivity of the material (W/m/K)."
}], "DetailNotes",
 FontSize->14,
 CellID->238829387],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"m", "=", 
   SqrtBox[
    FractionBox[
     RowBox[{"h", " ", "P"}], 
     RowBox[{"k", " ", "Ac"}]]]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->403291779],

Cell["For a rectangular fin:", "DetailNotes",
 FontSize->14,
 CellID->487111705],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{
    RowBox[{"2", " ", "w"}], "+", 
    RowBox[{"2", " ", "t"}]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->9810085],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"Ac", "=", 
   RowBox[{"w", " ", "t"}]}], TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->329036752],

Cell["For a pin fin:", "DetailNotes",
 FontSize->14,
 CellID->10736495],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{"\[Pi]", " ", "t"}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->113502940],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"Ac", "=", 
   RowBox[{
    FractionBox["\[Pi]", "4"], " ", 
    SuperscriptBox["t", "2"]}]}], 
  TraditionalForm]], "InlineMath"]], "DetailNotes",
 FontSize->14,
 CellID->155521557],

Cell["The thermal conductivities (W/m/K) of the fin materials are:", \
"DetailNotes",
 FontSize->14,
 CellID->34094064],

Cell[TextData[{
 "stainless steel\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "14"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->72352783],

Cell[TextData[{
 "carbon steel\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "60.5"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->15340210],

Cell[TextData[{
 "iron\t\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "80.2"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->38116830],

Cell[TextData[{
 "brass\t\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "110"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->54255999],

Cell[TextData[{
 "aluminum\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "237"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->114946136],

Cell[TextData[{
 "copper\t\t\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"k", "=", "401"}], TraditionalForm]], "InlineMath"]
}], "DetailNotes",
 FontSize->14,
 CellID->408485156]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.2 for Microsoft Windows (64-bit) (July 7, 2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 19673, 461, 1616, "Input"],
Cell[21162, 498, 9611, 193, 530, "Output"]
}, Open  ]],
Cell[30788, 694, 607, 11, 106, "Text"],
Cell[31398, 707, 555, 17, 24, "DetailNotes",
 CellID->756247352],
Cell[31956, 726, 247, 9, 36, "DetailNotes",
 CellID->207472694],
Cell[32206, 737, 227, 8, 31, "DetailNotes",
 CellID->223328085],
Cell[32436, 747, 1398, 50, 53, "DetailNotes",
 CellID->580655662],
Cell[33837, 799, 80, 2, 24, "DetailNotes",
 CellID->889558474],
Cell[33920, 803, 327, 11, 26, "DetailNotes",
 CellID->40183499],
Cell[34250, 816, 71, 2, 24, "DetailNotes",
 CellID->93494998],
Cell[34324, 820, 306, 10, 26, "DetailNotes",
 CellID->121420417],
Cell[34633, 832, 170, 7, 24, "DetailNotes",
 CellID->354572867],
Cell[34806, 841, 229, 8, 36, "DetailNotes",
 CellID->161425804],
Cell[35038, 851, 530, 19, 30, "DetailNotes",
 CellID->248660630],
Cell[35571, 872, 111, 2, 24, "DetailNotes",
 CellID->276349442],
Cell[35685, 876, 561, 19, 35, "DetailNotes",
 CellID->132869350],
Cell[36249, 897, 442, 15, 31, "DetailNotes",
 CellID->177157537],
Cell[36694, 914, 1308, 43, 44, "DetailNotes",
 CellID->238829387],
Cell[38005, 959, 241, 9, 55, "DetailNotes",
 CellID->403291779],
Cell[38249, 970, 80, 2, 24, "DetailNotes",
 CellID->487111705],
Cell[38332, 974, 224, 8, 24, "DetailNotes",
 CellID->9810085],
Cell[38559, 984, 174, 5, 24, "DetailNotes",
 CellID->329036752],
Cell[38736, 991, 71, 2, 24, "DetailNotes",
 CellID->10736495],
Cell[38810, 995, 180, 6, 24, "DetailNotes",
 CellID->113502940],
Cell[38993, 1003, 230, 8, 31, "DetailNotes",
 CellID->155521557],
Cell[39226, 1013, 119, 3, 24, "DetailNotes",
 CellID->34094064],
Cell[39348, 1018, 180, 7, 24, "DetailNotes",
 CellID->72352783],
Cell[39531, 1027, 179, 7, 24, "DetailNotes",
 CellID->15340210],
Cell[39713, 1036, 173, 7, 24, "DetailNotes",
 CellID->38116830],
Cell[39889, 1045, 173, 7, 24, "DetailNotes",
 CellID->54255999],
Cell[40065, 1054, 175, 7, 24, "DetailNotes",
 CellID->114946136],
Cell[40243, 1063, 175, 7, 24, "DetailNotes",
 CellID->408485156]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature rvT5dDnOUeLxhBKpy9OD0aex *)
