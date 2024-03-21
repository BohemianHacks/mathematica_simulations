(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.3' *)

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
NotebookDataLength[     67036,       1854]
NotebookOptionsPosition[     62888,       1710]
NotebookOutlinePosition[     64583,       1764]
CellTagsIndexPosition[     64255,       1752]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Your Title Here", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"diagram", "[", 
    RowBox[{
    "\[Delta]1_", ",", "\[Delta]2_", ",", "\[Upsilon]1_", ",", "\[Upsilon]2_",
      ",", "\[Tau]1_", ",", "\[Tau]2_", ",", "\[CapitalPi]1_", ",", 
     "\[CapitalPi]2_"}], "]"}], ":=", 
   RowBox[{"Graphics3D", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"GrayLevel", "[", "0.4", "]"}], ",", 
         RowBox[{"Tube", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"4", ",", "0", ",", 
               RowBox[{
                RowBox[{"-", "\[Delta]1"}], "/", "2"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", "0", ",", 
               RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], ",", 
         RowBox[{"Tube", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"10", ",", "0", ",", 
               RowBox[{
                RowBox[{"-", "\[Delta]2"}], "/", "2"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"12", ",", "0", ",", 
               RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], ",", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"-", "5"}], ",", 
             RowBox[{"-", "7.25"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"14", ",", "5", ",", 
             RowBox[{"-", "7"}]}], "}"}]}], "]"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Cylinder", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"4", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
           RowBox[{"100", "*", 
            RowBox[{"\[Delta]1", "/", "2"}]}]}], "]"}], ",", 
         RowBox[{"Cylinder", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"10", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"14", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
           RowBox[{"100", "*", 
            RowBox[{"\[Delta]2", "/", "2"}]}]}], "]"}], ",", 
         RowBox[{"CapForm", "[", "\"\<Butt\>\"", "]"}], ",", 
         RowBox[{"Tube", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"4", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"10", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"100", "*", 
              RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
             RowBox[{"100", "*", 
              RowBox[{"\[Delta]2", "/", "2"}]}]}], "}"}]}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", 
         RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{"-", "0.75"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", "\[Delta]1", "*", "0.45"}]}], 
             "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{"100", "*", "\[Delta]1", "*", "0.45"}]}], "}"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{"-", "0.75"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", "\[Delta]2", "*", "0.45"}]}], 
             "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{"100", "*", "\[Delta]2", "*", "0.45"}]}], "}"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Arrowheads", "[", "0.04", "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.5"}], ",", "0", ",", "0"}], "}"}]}], "}"}], 
          "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"14", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"18", ",", "0", ",", "0"}], "}"}]}], "}"}], "]"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\[Delta]1", ",", "\"\< m\>\""}], "}"}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"2", ",", 
           RowBox[{
            RowBox[{"-", "100"}], "*", 
            RowBox[{"\[Delta]1", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], 
       ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\[Delta]2", ",", "\"\< m\>\""}], "}"}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"12", ",", 
           RowBox[{
            RowBox[{"-", "100"}], "*", 
            RowBox[{"\[Delta]2", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[Upsilon]1", ",", 
                  "\"\<. m/s\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[Tau]1", ",", 
                  "\"\<. K\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{"\[CapitalPi]1", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< kPa\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]", 
              "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "3"}], ",", "0", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.25", ",", "0"}], "}"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{
                    RowBox[{"\[Upsilon]2", "[", "\[Delta]2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< m/s\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{
                    RowBox[{"\[Tau]2", "[", "\[Delta]2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< K\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[CapitalPi]2", ",", 
                  "\"\< kPa\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]", 
              "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"18", ",", "0", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.25"}], ",", "0"}], "}"}]}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"All", ",", "All"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"All", ",", "All"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "7.5"}], ",", "5"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"ImagePadding", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"95", ",", "95"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"5", ",", "5"}], "}"}]}], "}"}]}]}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->222695962],

Cell[BoxData[
 RowBox[{
  RowBox[{"col1", "=", "Blue"}], ";"}]], "Input",
 InitializationCell->True,
 CellID->376856391],

Cell[BoxData[
 RowBox[{
  RowBox[{"col2", "=", 
   RowBox[{"RGBColor", "[", 
    RowBox[{"0.", ",", "0.6", ",", "0"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->626282048],

Cell[BoxData[
 RowBox[{
  RowBox[{"col3", "=", 
   RowBox[{"GrayLevel", "[", "0.4", "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->153847057],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"plot", "[", 
    RowBox[{
    "\[Delta]2_", ",", "f_", ",", "f1_", ",", "f2_", ",", "if2_", ",", 
     "unit_"}], "]"}], ":=", 
   RowBox[{"Graphics", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"PointSize", "[", "0.017", "]"}], ",", 
      RowBox[{"Point", "@", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Delta]2", ",", 
           RowBox[{"f2", "[", "\[Delta]2", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Delta]2", ",", 
           RowBox[{"if2", "[", "\[Delta]2", "]"}]}], "}"}]}], "}"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"GrayLevel", "[", "0.2", "]"}], ",", "Thick", ",", "Dotted", 
        ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "f1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.1", ",", "f1"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Column", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<compressible = \>\"", ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{
                   RowBox[{"f2", "[", "\[Delta]2", "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", "\"\< \>\"",
                  ",", "unit"}], "}"}], "]"}], ",", "17", ",", "col1"}], 
             "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<incompressible = \>\"", ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{
                   RowBox[{"if2", "[", "\[Delta]2", "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", "\"\< \>\"",
                  ",", "unit"}], "}"}], "]"}], ",", "17", ",", "col2"}], 
             "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
          RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
        RowBox[{"Scaled", "[", 
         RowBox[{"{", 
          RowBox[{"0.8", ",", "0.6"}], "}"}], "]"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Subscript", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"f", ",", "Italic"}], "]"}], ",", "1"}], "]"}], ",", 
          "17", ",", "col3"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.1", ",", "f1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1.75"}], ",", "0"}], "}"}]}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->497831635]
}, Closed]],

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
      "Cp", ",", "\[Gamma]", ",", "d1", ",", "T1", ",", "P2", ",", "sol", ",",
        "P1", ",", "u2", ",", "T2", ",", "iu2", ",", "iT2", ",", "p1", ",", 
       "p2"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Cp", "=", "1000"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"J", "/", "kg"}], "/", "K"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[Gamma]", "=", "1.4"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"d1", "=", "0.06"}], ";", "\[IndentingNewLine]", 
      RowBox[{"T1", "=", "400"}], ";", 
      RowBox[{"(*", "K", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"P2", "=", "100"}], ";", 
      RowBox[{"(*", "kPa", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"sol", "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{
         RowBox[{"Solve", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"u1", "*", 
              SuperscriptBox["d1", "2"], "*", 
              FractionBox["p", "T1"]}], "\[Equal]", 
             RowBox[{"u", "*", 
              SuperscriptBox["\[Delta]", "2"], "*", 
              FractionBox["P2", "t"]}]}], "\[And]", 
            RowBox[{
             RowBox[{"Cp", "*", 
              RowBox[{"(", 
               RowBox[{"t", "-", "T1"}], ")"}]}], "\[Equal]", 
             RowBox[{
              FractionBox["1", "2"], "*", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u1", "2"], "-", 
                SuperscriptBox["u", "2"]}], ")"}]}]}], "\[And]", 
            RowBox[{
             FractionBox["t", "T1"], "\[Equal]", 
             SuperscriptBox[
              RowBox[{"(", 
               FractionBox["P2", "p"], ")"}], 
              FractionBox[
               RowBox[{"\[Gamma]", "-", "1"}], "\[Gamma]"]]}]}], ",", 
           RowBox[{"{", 
            RowBox[{"p", ",", "u", ",", "t"}], "}"}]}], "]"}], "[", 
         RowBox[{"[", "3", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"P1", "=", 
       RowBox[{
        RowBox[{"p", "/.", "sol"}], "/.", 
        RowBox[{"\[Delta]", "\[Rule]", "d2"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"u2", "[", "d_", "]"}], ":=", 
       RowBox[{
        RowBox[{"u", "/.", "sol"}], "/.", 
        RowBox[{"\[Delta]", "\[Rule]", "d"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"T2", "[", "d_", "]"}], ":=", 
       RowBox[{
        RowBox[{"t", "/.", "sol"}], "/.", 
        RowBox[{"\[Delta]", "\[Rule]", "d"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", "incompresible", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"iu2", "[", "d_", "]"}], ":=", 
       RowBox[{"u1", "*", 
        FractionBox[
         SuperscriptBox["d1", "2"], 
         SuperscriptBox["d", "2"]]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"iT2", "[", "d_", "]"}], ":=", 
       RowBox[{"T1", "+", 
        FractionBox[
         RowBox[{
          SuperscriptBox["u1", "2"], "-", 
          SuperscriptBox[
           RowBox[{"iu2", "[", "d", "]"}], "2"]}], 
         RowBox[{"2", "*", "Cp"}]]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"diagram", "[", 
          RowBox[{
          "d1", ",", "d2", ",", "u1", ",", "u2", ",", "T1", ",", "T2", ",", 
           "P1", ",", "P2"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Which", "[", 
             RowBox[{
              RowBox[{"d2", "<", "d1"}], ",", "\"\<nozzle\>\"", ",", 
              RowBox[{"d2", "\[Equal]", "d1"}], ",", "\"\<straight tube\>\"", 
              ",", 
              RowBox[{"d2", ">", "d1"}], ",", "\"\<diffuser\>\""}], "]"}], 
            ",", "18", ",", "Black"}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"Switch", "[", 
          RowBox[{"bn", ",", "\[IndentingNewLine]", "1", ",", 
           RowBox[{"Show", "[", 
            RowBox[{
             RowBox[{"Plot", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"u2", "[", "d", "]"}], ",", 
                 RowBox[{"iu2", "[", "d", "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"d", ",", "0.04", ",", "0.1"}], "}"}], ",", 
               RowBox[{"PlotStyle", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", "col1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", "col2"}], "}"}]}], "}"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"FrameLabel", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<outlet diameter (m)\>\"", ",", "17"}], "]"}], 
                  ",", 
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<outlet  velocity  (m/s)\>\"", ",", "17"}], 
                   "]"}]}], "}"}]}], ",", 
               RowBox[{"PlotRange", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{"3", ",", "283"}], "}"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Epilog", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"GrayLevel", "[", "0.2", "]"}], ",", "Thick", ",",
                     "Dotted", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"d1", ",", 
                    RowBox[{"-", "10"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"d1", ",", "265"}], "}"}]}], "}"}], "]"}]}], 
                   "}"}], ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<d\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                    "]"}], ",", "17", ",", "col3"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"d1", ",", "265"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}]}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"plot", "[", 
              RowBox[{
              "d2", ",", "\"\<u\>\"", ",", "u1", ",", "u2", ",", "iu2", ",", 
               "\"\<m/s\>\""}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
           "2", ",", 
           RowBox[{"Show", "[", 
            RowBox[{
             RowBox[{"Plot", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"T2", "[", "d", "]"}], ",", 
                 RowBox[{"iT2", "[", "d", "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"d", ",", "0.04", ",", "0.1"}], "}"}], ",", 
               RowBox[{"PlotStyle", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", "Dashed", ",", "col1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", "Dashed", ",", "col2"}], "}"}]}], 
                 "}"}]}], ",", "\[IndentingNewLine]", 
               RowBox[{"FrameLabel", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<outlet diameter (m)\>\"", ",", "17"}], "]"}], 
                  ",", 
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<outlet  temperature  (K)\>\"", ",", "17"}], 
                   "]"}]}], "}"}]}], ",", 
               RowBox[{"PlotRange", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{"365", ",", "405"}], "}"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Epilog", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"GrayLevel", "[", "0.2", "]"}], ",", "Thick", ",",
                     "Dotted", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"d1", ",", "368"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"d1", ",", "415"}], "}"}]}], "}"}], "]"}]}], 
                   "}"}], ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<d\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                    "]"}], ",", "17", ",", "col3"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"d1", ",", "365"}], "}"}]}], "]"}]}], "}"}]}]}], 
              "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"plot", "[", 
              RowBox[{
              "d2", ",", "\"\<T\>\"", ",", "T1", ",", "T2", ",", "iT2", ",", 
               "\"\<K\>\""}], "]"}]}], "]"}]}], "\[IndentingNewLine]", "]"}], 
         ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"14", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"PlotRangePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Scaled", "[", "0.01", "]"}], ",", 
              RowBox[{"Scaled", "[", "0.055", "]"}]}], "}"}], ",", 
            RowBox[{"Scaled", "[", "0.05", "]"}]}], "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"Switch", "[", 
         RowBox[{"drown", ",", "1", ",", "p1", ",", "2", ",", "p2"}], "]"}], 
        ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "300"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"drown", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"1", "\[Rule]", "\"\< diagram \>\""}], ",", 
            RowBox[{"2", "\[Rule]", "\"\< plots \>\""}]}], "}"}], ",", 
          "Setter"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"2", "\[Rule]", 
           RowBox[{"Control", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"bn", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"1", "\[Rule]", "\"\< velocity \>\""}], ",", 
                RowBox[{"2", "\[Rule]", "\"\< temperature \>\""}]}], "}"}], 
              ",", "RadioButton"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Dynamic", "@", "drown"}]}], "]"}]}], "\[IndentingNewLine]", 
      "}"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"u1", ",", "100", ",", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<inlet velocity \>\"", ",", 
           RowBox[{"Subscript", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "1"}], "]"}], 
           ",", "\"\< (m/s)\>\""}], "}"}], "]"}]}], "}"}], ",", "10", ",", 
      "100", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d2", ",", "0.04", ",", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<outlet diameter \>\"", ",", 
           RowBox[{"Subscript", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<d\>\"", ",", "Italic"}], "]"}], ",", "2"}], "]"}], 
           ",", "\"\< (m)\>\""}], "}"}], "]"}]}], "}"}], ",", "0.04", ",", 
      "0.10", ",", "0.001", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bn$$ = 1, $CellContext`d2$$ = 
    0.04, $CellContext`drown$$ = 1, $CellContext`u1$$ = 100, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`drown$$], 1, ""}, {
      1 -> " diagram ", 2 -> " plots "}}, {{
       Hold[$CellContext`bn$$], 1, ""}, {
      1 -> " velocity ", 2 -> " temperature "}}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          PaneSelector[{2 -> Manipulate`Place[2]}, 
           Dynamic[$CellContext`drown$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`u1$$], 100, 
       Row[{"inlet velocity ", 
         Subscript[
          Style["u", Italic], 1], " (m/s)"}]}, 10, 100, 1}, {{
       Hold[$CellContext`d2$$], 0.04, 
       Row[{"outlet diameter ", 
         Subscript[
          Style["d", Italic], 2], " (m)"}]}, 0.04, 0.1, 0.001}}, 
    Typeset`size$$ = {600., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`drown$60897$$ = False, $CellContext`bn$60898$$ = 
    False, $CellContext`u1$60899$$ = 0, $CellContext`d2$60900$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bn$$ = 1, $CellContext`d2$$ = 
        0.04, $CellContext`drown$$ = 1, $CellContext`u1$$ = 100}, 
      "ControllerVariables" :> {
        Hold[$CellContext`drown$$, $CellContext`drown$60897$$, False], 
        Hold[$CellContext`bn$$, $CellContext`bn$60898$$, False], 
        Hold[$CellContext`u1$$, $CellContext`u1$60899$$, 0], 
        Hold[$CellContext`d2$$, $CellContext`d2$60900$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Cp$, $CellContext`\[Gamma]$, $CellContext`d1$, \
$CellContext`T1$, $CellContext`P2$, $CellContext`sol$, $CellContext`P1$, \
$CellContext`u2$, $CellContext`T2$, $CellContext`iu2$, $CellContext`iT2$, \
$CellContext`p1$, $CellContext`p2$}, $CellContext`Cp$ = 
         1000; $CellContext`\[Gamma]$ = 1.4; $CellContext`d1$ = 
         0.06; $CellContext`T1$ = 400; $CellContext`P2$ = 
         100; $CellContext`sol$ = Quiet[
           Part[
            Solve[
             
             And[$CellContext`u1$$ $CellContext`d1$^2 \
($CellContext`p/$CellContext`T1$) == $CellContext`u $CellContext`\[Delta]^2 \
($CellContext`P2$/$CellContext`t), $CellContext`Cp$ ($CellContext`t - \
$CellContext`T1$) == (1/
                2) ($CellContext`u1$$^2 - $CellContext`u^2), \
$CellContext`t/$CellContext`T1$ == \
($CellContext`P2$/$CellContext`p)^(($CellContext`\[Gamma]$ - 
                 1)/$CellContext`\[Gamma]$)], {$CellContext`p, \
$CellContext`u, $CellContext`t}], 3]]; $CellContext`P1$ = ReplaceAll[
           
           ReplaceAll[$CellContext`p, $CellContext`sol$], $CellContext`\
\[Delta] -> $CellContext`d2$$]; $CellContext`u2$[
           Pattern[$CellContext`d$, 
            Blank[]]] := ReplaceAll[
           
           ReplaceAll[$CellContext`u, $CellContext`sol$], $CellContext`\
\[Delta] -> $CellContext`d$]; $CellContext`T2$[
           Pattern[$CellContext`d$, 
            Blank[]]] := ReplaceAll[
           
           ReplaceAll[$CellContext`t, $CellContext`sol$], $CellContext`\
\[Delta] -> $CellContext`d$]; $CellContext`iu2$[
           Pattern[$CellContext`d$, 
            
            Blank[]]] := $CellContext`u1$$ \
($CellContext`d1$^2/$CellContext`d$^2); $CellContext`iT2$[
           Pattern[$CellContext`d$, 
            
            Blank[]]] := $CellContext`T1$ + ($CellContext`u1$$^2 - \
$CellContext`iu2$[$CellContext`d$]^2)/(2 $CellContext`Cp$); $CellContext`p1$ = 
         Show[
           $CellContext`diagram[$CellContext`d1$, $CellContext`d2$$, \
$CellContext`u1$$, $CellContext`u2$, $CellContext`T1$, $CellContext`T2$, \
$CellContext`P1$, $CellContext`P2$], PlotLabel -> Style[
             
             Which[$CellContext`d2$$ < $CellContext`d1$, 
              "nozzle", $CellContext`d2$$ == $CellContext`d1$, 
              "straight tube", $CellContext`d2$$ > $CellContext`d1$, 
              "diffuser"], 18, Black]]; $CellContext`p2$ = Show[
           Switch[$CellContext`bn$$, 1, 
            Show[
             Plot[{
               $CellContext`u2$[$CellContext`d], 
               $CellContext`iu2$[$CellContext`d]}, {$CellContext`d, 0.04, 
               0.1}, PlotStyle -> {{Thick, $CellContext`col1}, {
                Thick, $CellContext`col2}}, FrameLabel -> {
                Style["outlet diameter (m)", 17], 
                Style["outlet  velocity  (m/s)", 17]}, PlotRange -> {3, 283}, 
              Epilog -> {{
                 GrayLevel[0.2], Thick, Dotted, 
                 Line[{{$CellContext`d1$, -10}, {$CellContext`d1$, 265}}]}, 
                Text[
                 Style[
                  Subscript[
                   Style["d", Italic], 1], 
                  17, $CellContext`col3], {$CellContext`d1$, 265}, {0, -1}]}], 
             $CellContext`plot[$CellContext`d2$$, 
              "u", $CellContext`u1$$, $CellContext`u2$, $CellContext`iu2$, 
              "m/s"]], 2, 
            Show[
             Plot[{
               $CellContext`T2$[$CellContext`d], 
               $CellContext`iT2$[$CellContext`d]}, {$CellContext`d, 0.04, 
               0.1}, PlotStyle -> {{Thick, Dashed, $CellContext`col1}, {
                Thick, Dashed, $CellContext`col2}}, FrameLabel -> {
                Style["outlet diameter (m)", 17], 
                Style["outlet  temperature  (K)", 17]}, 
              PlotRange -> {365, 405}, Epilog -> {{
                 GrayLevel[0.2], Thick, Dotted, 
                 Line[{{$CellContext`d1$, 368}, {$CellContext`d1$, 415}}]}, 
                Text[
                 Style[
                  Subscript[
                   Style["d", Italic], 1], 
                  17, $CellContext`col3], {$CellContext`d1$, 365}]}], 
             $CellContext`plot[$CellContext`d2$$, 
              "T", $CellContext`T1$, $CellContext`T2$, $CellContext`iT2$, 
              "K"]]], Frame -> True, LabelStyle -> {14, Black}, 
           PlotRangePadding -> {{
              Scaled[0.01], 
              Scaled[0.055]}, 
             Scaled[0.05]}]; Show[
          
          Switch[$CellContext`drown$$, 1, $CellContext`p1$, 
           2, $CellContext`p2$], ImageSize -> {600, 300}, AspectRatio -> 
          Full]], "Specifications" :> {{{$CellContext`drown$$, 1, ""}, {
         1 -> " diagram ", 2 -> " plots "}, ControlType -> Setter, 
         ControlPlacement -> 1}, {{$CellContext`bn$$, 1, ""}, {
         1 -> " velocity ", 2 -> " temperature "}, ControlType -> RadioButton,
          ControlPlacement -> 2}, 
        Grid[{{
           Manipulate`Place[1], 
           PaneSelector[{2 -> Manipulate`Place[2]}, 
            Dynamic[$CellContext`drown$$]]}}], {{$CellContext`u1$$, 100, 
          Row[{"inlet velocity ", 
            Subscript[
             Style["u", Italic], 1], " (m/s)"}]}, 10, 100, 1, Appearance -> 
         "Labeled"}, {{$CellContext`d2$$, 0.04, 
          Row[{"outlet diameter ", 
            Subscript[
             Style["d", Italic], 2], " (m)"}]}, 0.04, 0.1, 0.001, Appearance -> 
         "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {218., 225.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`diagram[
         Pattern[$CellContext`\[Delta]1, 
          Blank[]], 
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`\[Upsilon]1, 
          Blank[]], 
         Pattern[$CellContext`\[Upsilon]2, 
          Blank[]], 
         Pattern[$CellContext`\[Tau]1, 
          Blank[]], 
         Pattern[$CellContext`\[Tau]2, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalPi]1, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalPi]2, 
          Blank[]]] := Graphics3D[{{
           GrayLevel[0.4], 
           Tube[{{4, 0, -$CellContext`\[Delta]1/2}, {2, 0, -7}}, 0.2], 
           Tube[{{10, 0, -$CellContext`\[Delta]2/2}, {12, 0, -7}}, 0.2], 
           Cuboid[{0, -5, -7.25}, {14, 5, -7}]}, {
           Cylinder[{{0, 0, 0}, {4, 0, 0}}, 100 ($CellContext`\[Delta]1/2)], 
           Cylinder[{{10, 0, 0}, {14, 0, 0}}, 100 ($CellContext`\[Delta]2/2)], 
           CapForm["Butt"], 
           
           Tube[{{4, 0, 0}, {10, 0, 0}}, {
            100 ($CellContext`\[Delta]1/2), 
             100 ($CellContext`\[Delta]2/2)}]}, {Thick, 
           Arrowheads[0.03], 
           
           Arrow[{{2, (-100) ($CellContext`\[Delta]1/2), -0.75}, {
             2, (-100) ($CellContext`\[Delta]1/
               2), (-100) $CellContext`\[Delta]1 0.45}}], 
           
           Arrow[{{2, (-100) ($CellContext`\[Delta]1/2), 0.75}, {
             2, (-100) ($CellContext`\[Delta]1/2), 100 $CellContext`\[Delta]1 
              0.45}}], 
           
           Arrow[{{12, (-100) ($CellContext`\[Delta]2/2), -0.75}, {
             12, (-100) ($CellContext`\[Delta]2/
               2), (-100) $CellContext`\[Delta]2 0.45}}], 
           
           Arrow[{{12, (-100) ($CellContext`\[Delta]2/2), 0.75}, {
             12, (-100) ($CellContext`\[Delta]2/2), 
              100 $CellContext`\[Delta]2 0.45}}], 
           Arrowheads[0.04], 
           Arrow[{{-3, 0, 0}, {-0.5, 0, 0}}], 
           Arrow[{{14, 0, 0}, {18, 0, 0}}]}, 
          Text[
           Style[
            Row[{$CellContext`\[Delta]1, " m"}], 18], {
           2, (-100) ($CellContext`\[Delta]1/2), 0}], 
          Text[
           Style[
            Row[{$CellContext`\[Delta]2, " m"}], 18], {
           12, (-100) ($CellContext`\[Delta]2/2), 0}], 
          Text[
           Style[
            Column[{
              Row[{
                Subscript[
                 Style["u", Italic], 1], " = ", $CellContext`\[Upsilon]1, 
                ". m/s"}], 
              Row[{
                Subscript[
                 Style["T", Italic], 1], " = ", $CellContext`\[Tau]1, ". K"}], 
              Row[{
                Subscript[
                 Style["P", Italic], 1], " = ", 
                NumberForm[$CellContext`\[CapitalPi]1, {4, 0}], " kPa"}]}, 
             Alignment -> "="], 18], {-3, 0, 0}, {1.25, 0}], 
          Text[
           Style[
            Column[{
              Row[{
                Subscript[
                 Style["u", Italic], 2], " = ", 
                NumberForm[
                 $CellContext`\[Upsilon]2[$CellContext`\[Delta]2], {4, 0}], 
                " m/s"}], 
              Row[{
                Subscript[
                 Style["T", Italic], 2], " = ", 
                NumberForm[
                 $CellContext`\[Tau]2[$CellContext`\[Delta]2], {4, 0}], 
                " K"}], 
              Row[{
                Subscript[
                 Style["P", Italic], 2], " = ", $CellContext`\[CapitalPi]2, 
                " kPa"}]}, Alignment -> "="], 18], {18, 0, 0}, {-1.25, 0}]}, 
         ViewPoint -> Front, Boxed -> False, 
         PlotRange -> {{All, All}, {All, All}, {-7.5, 5}}, 
         ImagePadding -> {{95, 95}, {5, 5}}], 
       Attributes[Subscript] = {NHoldRest}, 
       Subscript[Notebook$$18$257955`c1, 0] = 0, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`col1 = 
       RGBColor[0, 0, 1], $CellContext`col2 = 
       RGBColor[0., 0.6, 0], $CellContext`col3 = 
       GrayLevel[0.4], $CellContext`plot[
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`f1, 
          Blank[]], 
         Pattern[$CellContext`f2, 
          Blank[]], 
         Pattern[$CellContext`if2, 
          Blank[]]] := Graphics[{
          PointSize[0.017], 
          Point[{{$CellContext`\[Delta]2, 
             $CellContext`f2[$CellContext`\[Delta]2]}, \
{$CellContext`\[Delta]2, 
             $CellContext`if2[$CellContext`\[Delta]2]}}], {$CellContext`col3, 
           Line[{{0, $CellContext`f1}, {0.1, $CellContext`f1}}]}, 
          Text[
           Column[{
             Style[
              Row[{"compressible = ", 
                NumberForm[
                 $CellContext`f2[$CellContext`\[Delta]2], {4, 0}], " m/s"}], 
              17, $CellContext`col1], 
             Style[
              Row[{"incompressible = ", 
                NumberForm[
                 $CellContext`if2[$CellContext`\[Delta]2], {4, 0}], " m/s"}], 
              17, $CellContext`col2]}, Alignment -> "="], 
           Scaled[{0.8, 0.6}]]}], $CellContext`plot[
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`f, 
          Blank[]], 
         Pattern[$CellContext`f1, 
          Blank[]], 
         Pattern[$CellContext`f2, 
          Blank[]], 
         Pattern[$CellContext`if2, 
          Blank[]]] := Graphics[{
          PointSize[0.017], 
          Point[{{$CellContext`\[Delta]2, 
             $CellContext`f2[$CellContext`\[Delta]2]}, \
{$CellContext`\[Delta]2, 
             $CellContext`if2[$CellContext`\[Delta]2]}}], {$CellContext`col3, 
           Line[{{0, $CellContext`f1}, {0.1, $CellContext`f1}}]}, 
          Text[
           Column[{
             Style[
              Row[{"compressible = ", 
                NumberForm[
                 $CellContext`f2[$CellContext`\[Delta]2], {4, 0}], " m/s"}], 
              17, $CellContext`col1], 
             Style[
              Row[{"incompressible = ", 
                NumberForm[
                 $CellContext`if2[$CellContext`\[Delta]2], {4, 0}], " m/s"}], 
              17, $CellContext`col2]}, Alignment -> "="], 
           Scaled[{0.8, 0.6}]], 
          Text[
           Style[
            Subscript[
             Style[$CellContext`f, Italic], 1], 17, $CellContext`col3], {
           0.1, $CellContext`f1}, {-1.75, 0}]}], $CellContext`plot[
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`f, 
          Blank[]], 
         Pattern[$CellContext`f1, 
          Blank[]], 
         Pattern[$CellContext`f2, 
          Blank[]], 
         Pattern[$CellContext`if2, 
          Blank[]], 
         Pattern[$CellContext`unit, 
          Blank[]]] := Graphics[{
          PointSize[0.017], 
          Point[{{$CellContext`\[Delta]2, 
             $CellContext`f2[$CellContext`\[Delta]2]}, \
{$CellContext`\[Delta]2, 
             $CellContext`if2[$CellContext`\[Delta]2]}}], {
           GrayLevel[0.2], Thick, Dotted, 
           Line[{{0, $CellContext`f1}, {0.1, $CellContext`f1}}]}, 
          Text[
           Column[{
             Style[
              Row[{"compressible = ", 
                NumberForm[
                 $CellContext`f2[$CellContext`\[Delta]2], {4, 1}], 
                " ", $CellContext`unit}], 17, $CellContext`col1], 
             Style[
              Row[{"incompressible = ", 
                NumberForm[
                 $CellContext`if2[$CellContext`\[Delta]2], {4, 1}], 
                " ", $CellContext`unit}], 17, $CellContext`col2]}, Alignment -> 
            "="], 
           Scaled[{0.8, 0.6}]], 
          Text[
           Style[
            Subscript[
             Style[$CellContext`f, Italic], 1], 17, $CellContext`col3], {
           0.1, $CellContext`f1}, {-1.75, 0}]}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->45619233]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell[TextData[{
 "This Demonstration performs a mass and energy balance on air moving through \
a nozzle/diffuser. Set the outlet diameter ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "2"], TraditionalForm]], "InlineMath"],
 " and inlet velocity ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "1"], TraditionalForm]], "InlineMath"],
 ". For a nozzle ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["d", "2"], "<", 
    SubscriptBox["d", "1"]}], TraditionalForm]], "InlineMath"],
 " and pressure increases. For a diffuser ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["d", "2"], ">", 
    SubscriptBox["d", "1"]}], TraditionalForm]], "InlineMath"],
 " and pressure decreases. The air exits at atmospheric pressure. The inlet \
pressure, and outlet velocity and temperature are calculated from mass and \
enthaply balances. View a diagram of the nozzle/diffuser or plot outlet \
velocity or temperature using buttons. For \"plots\", velocity or temperature \
is plotted for compressible (black) and incompressible (red) flow. Air is \
assumed to behave as an ideal gas and is compressible."
}], "ManipulateCaption",
 CellID->447301353]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection"],

Cell[BoxData[
 GraphicsBox[
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
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->False]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection"],

Cell[BoxData[
 GraphicsBox[
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
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->False]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection"],

Cell["Mass balance around nozzle/diffuser:", "DetailNotes",
 CellID->55081618],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["u", "1"], " ", 
     SubscriptBox["A", "1"], " ", 
     SubscriptBox["\[Rho]", "1"]}], "=", 
    RowBox[{
     SubscriptBox["u", "2"], " ", 
     SubscriptBox["A", "2"], " ", 
     SubscriptBox["\[Rho]", "2"]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->256734174],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["A", "i"], "=", 
    RowBox[{
     FractionBox["\[Pi]", "4"], " ", 
     SubsuperscriptBox["d", "i", "2"]}]}], TraditionalForm]], "InlineMath"],
 " is the area, and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Rho]", "i"], "=", 
    FractionBox[
     SubscriptBox["P", "i"], 
     RowBox[{"R", " ", 
      SubscriptBox["T", "i"]}]]}], TraditionalForm]], "InlineMath"],
 " is denisty calculated from the ideal gas law. The mass balance simplifies \
to:"
}], "DetailNotes",
 CellID->588835620],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["u", "1"], " ", 
     SubsuperscriptBox["d", "1", "2"], " ", 
     FractionBox[
      SubscriptBox["P", "1"], 
      SubscriptBox["T", "1"]]}], "=", 
    RowBox[{
     SubscriptBox["u", "2"], " ", 
     SubsuperscriptBox["d", "2", "2"], " ", 
     FractionBox[
      SubscriptBox["P", "2"], 
      SubscriptBox["T", "2"]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->47462072],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "1"}], TraditionalForm]], "InlineMath"],
 " for the inlet and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "2"}], TraditionalForm]], "InlineMath"],
 " for oulet, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "i"], TraditionalForm]], "InlineMath"],
 " is diameter (m), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "i"], TraditionalForm]], "InlineMath"],
 " is pressure (kPa), ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]], "InlineMath"],
 " is the ideal gas constant, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "i"], TraditionalForm]], "InlineMath"],
 " is temperature (K)."
}], "DetailNotes",
 CellID->103355972],

Cell["Energy balance:", "DetailNotes",
 CellID->257240695],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["m", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["H", "1"], "+", 
        FractionBox[
         SubsuperscriptBox["u", "1", "2"], "2"], "+", 
        RowBox[{"g", " ", 
         SubscriptBox["z", "1"]}]}], ")"}]}], "-", 
     RowBox[{
      SubscriptBox["m", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["H", "2"], "+", 
        FractionBox[
         SubsuperscriptBox["u", "2", "2"], "2"], "+", 
        RowBox[{"g", " ", 
         SubscriptBox["z", "2"]}]}], ")"}]}]}], "=", 
    RowBox[{"Q", "-", "W"}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->34289255],

Cell["for a nozzle/diffuser, the following terms drop out:", "DetailNotes",
 CellID->511081802],

Cell[TextData[{
 "conservetion of mass ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", "1"], "=", 
    SubscriptBox["m", "2"]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->213810096],

Cell[TextData[{
 "no elevatio change ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", " ", "\[CapitalDelta]", "\[InvisibleSpace]", 
     SubscriptBox["z", "i"]}], "=", "0"}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->56374425],

Cell[TextData[{
 "no heat transfer ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Q", "=", "0"}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->57339151],

Cell[TextData[{
 "no work done ",
 Cell[BoxData[
  FormBox[
   RowBox[{"W", "=", "0"}], TraditionalForm]], "InlineMath"],
 "."
}], "DetailNotes",
 CellID->33531094],

Cell["The simplified energy balance is:", "DetailNotes",
 CellID->502527371],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["H", "2"], "-", 
     SubscriptBox["H", "1"]}], "=", 
    RowBox[{
     RowBox[{"Cp", " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["T", "2"], "-", 
        SubscriptBox["T", "1"]}], ")"}]}], "=", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["u", "1", "2"], "-", 
        SubsuperscriptBox["u", "2", "2"]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->85458655],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", "H"}], "=", 
    RowBox[{"Cp", " ", "\[CapitalDelta]", "\[InvisibleSpace]", "T"}]}], 
   TraditionalForm]], "InlineMath"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["H", "i"], TraditionalForm]], "InlineMath"],
 " is enthalpy (J/kg), and ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]], "InlineMath"],
 " is the ideal gas heat capacity of air (J/kg/K)."
}], "DetailNotes",
 CellID->67387113],

Cell[TextData[{
 "For compressible flow the inlet pressure ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "1"], TraditionalForm]], "InlineMath"],
 " is calculated:"
}], "DetailNotes",
 CellID->148924686],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     SubscriptBox["T", "2"], 
     SubscriptBox["T", "1"]], "=", 
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox[
       SubscriptBox["P", "2"], 
       SubscriptBox["P", "1"]], ")"}], 
     FractionBox[
      RowBox[{"\[Gamma]", "-", "1"}], "\[Gamma]"]]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->40148694],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Gamma]", "=", "1.4"}], TraditionalForm]], "InlineMath"],
 "."
}], "DetailNotes",
 CellID->718813309]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[" Resize Images"]}],
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
   CheckboxBox[False], Cell[" Automatic Animation"]}],
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

Cell["", "SearchTermsSection"],

Cell["", "RelatedLinksSection"],

Cell[CellGroupData[{

Cell["", "AuthorSection"],

Cell["Contributed by: XXXX", "Author"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (October 9, 2015)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "WindowsANSI"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[57182, 1550, 312, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[57497, 1560, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[58178, 1578, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[58521, 1591, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[59161, 1608, 844, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[60008, 1631, 304, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[60315, 1641, 1464, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[61782, 1674, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 63356, 1725},
 {"RotateAndZoomIn3D", 63465, 1728},
 {"DragLocators", 63575, 1731},
 {"CreateAndDeleteLocators", 63691, 1734},
 {"SliderZoom", 63805, 1737},
 {"GamepadControls", 63911, 1740},
 {"AutomaticAnimation", 64024, 1743},
 {"BookmarkAnimation", 64141, 1746}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 36, 0, 74, "DemoTitle"],
Cell[CellGroupData[{
Cell[1547, 39, 33, 0, 287, "InitializationSection"],
Cell[1583, 41, 12432, 321, 384, "Input",
 InitializationCell->True,
 CellID->222695962],
Cell[14018, 364, 120, 4, 27, "Input",
 InitializationCell->True,
 CellID->376856391],
Cell[14141, 370, 191, 6, 27, "Input",
 InitializationCell->True,
 CellID->626282048],
Cell[14335, 378, 156, 5, 27, "Input",
 InitializationCell->True,
 CellID->153847057],
Cell[14494, 385, 3164, 84, 188, "Input",
 InitializationCell->True,
 CellID->497831635]
}, Closed]],
Cell[CellGroupData[{
Cell[17695, 474, 29, 0, 192, "ManipulateSection"],
Cell[CellGroupData[{
Cell[17749, 478, 13515, 326, 950, "Input"],
Cell[31267, 806, 15952, 366, 455, "Output",
 CellID->45619233]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[47265, 1178, 36, 0, 169, "ManipulateCaptionSection"],
Cell[47304, 1180, 1163, 29, 69, "ManipulateCaption",
 CellID->447301353]
}, Open  ]],
Cell[CellGroupData[{
Cell[48504, 1214, 28, 0, 173, "ThumbnailSection"],
Cell[48535, 1216, 1242, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49814, 1255, 28, 0, 143, "SnapshotsSection"],
Cell[49845, 1257, 1241, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[51123, 1296, 26, 0, 336, "DetailsSection"],
Cell[51152, 1298, 78, 1, 22, "DetailNotes",
 CellID->55081618],
Cell[51233, 1301, 377, 14, 23, "DetailNotes",
 CellID->256734174],
Cell[51613, 1317, 589, 21, 37, "DetailNotes",
 CellID->588835620],
Cell[52205, 1340, 488, 18, 37, "DetailNotes",
 CellID->47462072],
Cell[52696, 1360, 716, 26, 23, "DetailNotes",
 CellID->103355972],
Cell[53415, 1388, 58, 1, 22, "DetailNotes",
 CellID->257240695],
Cell[53476, 1391, 734, 26, 42, "DetailNotes",
 CellID->34289255],
Cell[54213, 1419, 95, 1, 22, "DetailNotes",
 CellID->511081802],
Cell[54311, 1422, 221, 9, 23, "DetailNotes",
 CellID->213810096],
Cell[54535, 1433, 260, 9, 23, "DetailNotes",
 CellID->56374425],
Cell[54798, 1444, 168, 7, 23, "DetailNotes",
 CellID->57339151],
Cell[54969, 1453, 164, 7, 23, "DetailNotes",
 CellID->33531094],
Cell[55136, 1462, 76, 1, 22, "DetailNotes",
 CellID->502527371],
Cell[55215, 1465, 569, 22, 33, "DetailNotes",
 CellID->85458655],
Cell[55787, 1489, 518, 17, 23, "DetailNotes",
 CellID->67387113],
Cell[56308, 1508, 206, 7, 23, "DetailNotes",
 CellID->148924686],
Cell[56517, 1517, 418, 17, 46, "DetailNotes",
 CellID->40148694],
Cell[56938, 1536, 167, 7, 23, "DetailNotes",
 CellID->718813309]
}, Open  ]],
Cell[CellGroupData[{
Cell[57142, 1548, 37, 0, 126, "ControlSuggestionsSection"],
Cell[57182, 1550, 312, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[57497, 1560, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[58178, 1578, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[58521, 1591, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[59161, 1608, 844, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[60008, 1631, 304, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[60315, 1641, 1464, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[61782, 1674, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[62705, 1698, 30, 0, 155, "SearchTermsSection"],
Cell[62738, 1700, 31, 0, 129, "RelatedLinksSection"],
Cell[CellGroupData[{
Cell[62794, 1704, 25, 0, 129, "AuthorSection"],
Cell[62822, 1706, 38, 0, 22, "Author"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature SuTdSTdWmBZwND1#dJZMUwxf *)
