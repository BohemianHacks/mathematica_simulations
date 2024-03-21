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
NotebookDataLength[     39683,       1022]
NotebookOptionsPosition[     39825,       1006]
NotebookOutlinePosition[     40262,       1025]
CellTagsIndexPosition[     40219,       1022]
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
                    RowBox[{"-", "d1"}], "/", "2"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"2", ",", "0", ",", 
                   RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], 
             ",", 
             RowBox[{"Tube", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"10", ",", "0", ",", 
                   RowBox[{
                    RowBox[{"-", "d2"}], "/", "2"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", 
                   RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], 
             ",", 
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
                RowBox[{"d1", "/", "2"}]}]}], "]"}], ",", 
             RowBox[{"Cylinder", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"10", ",", "0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"14", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
               RowBox[{"100", "*", 
                RowBox[{"d2", "/", "2"}]}]}], "]"}], ",", 
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
                  RowBox[{"d1", "/", "2"}]}], ",", 
                 RowBox[{"100", "*", 
                  RowBox[{"d2", "/", "2"}]}]}], "}"}]}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", 
             RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"2", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d1", "/", "2"}]}], ",", 
                  RowBox[{"-", "0.75"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d1", "/", "2"}]}], ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", "d1", "*", "0.45"}]}], "}"}]}], 
               "}"}], "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"2", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d1", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d1", "/", "2"}]}], ",", 
                  RowBox[{"100", "*", "d1", "*", "0.45"}]}], "}"}]}], "}"}], 
              "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"12", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d2", "/", "2"}]}], ",", 
                  RowBox[{"-", "0.75"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"12", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d2", "/", "2"}]}], ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", "d2", "*", "0.45"}]}], "}"}]}], 
               "}"}], "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"12", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d2", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"12", ",", 
                  RowBox[{
                   RowBox[{"-", "100"}], "*", 
                   RowBox[{"d2", "/", "2"}]}], ",", 
                  RowBox[{"100", "*", "d2", "*", "0.45"}]}], "}"}]}], "}"}], 
              "]"}], ",", "\[IndentingNewLine]", 
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
            "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{"d1", ",", "\"\< m\>\""}], "}"}], "]"}], ",", "18"}],
               "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", 
               RowBox[{
                RowBox[{"-", "100"}], "*", 
                RowBox[{"d1", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], ",", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{"d2", ",", "\"\< m\>\""}], "}"}], "]"}], ",", "18"}],
               "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"12", ",", 
               RowBox[{
                RowBox[{"-", "100"}], "*", 
                RowBox[{"d2", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
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
                    RowBox[{"u1", ",", "\"\<. m/s\>\""}], "}"}], "]"}], ",", 
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{"T1", ",", "\"\<. K\>\""}], "}"}], "]"}], ",", 
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"P1", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< kPa\>\""}], "}"}], "]"}]}], "}"}], ",", "Center"}], 
                "]"}], ",", "18"}], "]"}], ",", 
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
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"u2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< m/s\>\""}], "}"}], "]"}], ",", 
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"T2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< K\>\""}], "}"}], "]"}], ",", 
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{"P2", ",", "\"\< kPa\>\""}], "}"}], "]"}]}], 
                  "}"}], ",", "Center"}], "]"}], ",", "18"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"18", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.25"}], ",", "0"}], "}"}]}], "]"}], ","}], 
          "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
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
             RowBox[{"60", ",", "60"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"5", ",", "5"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"d2", "<", "d1"}], ",", "\"\<nozzle\>\"", ",", 
              "\"\<diffuser\>\""}], "]"}], ",", "18", ",", "Black"}], 
           "]"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"Switch", "[", 
          RowBox[{"bn", ",", "\[IndentingNewLine]", "1", ",", 
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
                 RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Thick", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
               "}"}]}], ",", "\[IndentingNewLine]", 
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
               RowBox[{"3", ",", "283"}], "}"}]}]}], "]"}], ",", 
           "\[IndentingNewLine]", "2", ",", 
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
                 RowBox[{"Thick", ",", "Dashed", ",", "Blue"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Thick", ",", "Dashed", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
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
               RowBox[{"365", ",", "405"}], "}"}]}]}], "]"}]}], 
          "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "0.017", "]"}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"bn", "\[Equal]", "1"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"d2", ",", 
                   RowBox[{"u2", "[", "d2", "]"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"d2", ",", 
                   RowBox[{"iu2", "[", "d2", "]"}]}], "}"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"d2", ",", 
                   RowBox[{"T2", "[", "d2", "]"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"d2", ",", 
                   RowBox[{"iT2", "[", "d2", "]"}]}], "}"}]}], "}"}]}], "]"}]}
             ], ",", "\[IndentingNewLine]", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "[", 
                    RowBox[{"Flatten", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<compressible = \>\"", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"bn", "\[Equal]", "1"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"u2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< m/s\>\""}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"T2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< K\>\""}], "}"}]}], "]"}]}], "}"}]}], "]"}], ",", 
                    "17", ",", "Blue"}], "]"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "[", 
                    RowBox[{"Flatten", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<incompressible = \>\"", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"bn", "\[Equal]", "1"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"iu2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< m/s\>\""}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"iT2", "[", "d2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< K\>\""}], "}"}]}], "]"}]}], "}"}]}], "]"}], ",", 
                    "17", ",", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "]"}]}], 
                 "\[IndentingNewLine]", "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
              RowBox[{"Scaled", "[", 
               RowBox[{"{", 
                RowBox[{"0.8", ",", "0.6"}], "}"}], "]"}]}], "]"}]}], "}"}]}],
          ",", "\[IndentingNewLine]", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"14", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"PlotRangePadding", "\[Rule]", 
          RowBox[{"Scaled", "[", "0.05", "]"}]}]}], "]"}]}], ";", 
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
       RowBox[{"u1", ",", "100", ",", "\"\<inlet velocity (m/s)\>\""}], "}"}],
       ",", "10", ",", "100", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d2", ",", "0.04", ",", "\"\<outlet diameter (m)\>\""}], "}"}],
       ",", "0.04", ",", "0.10", ",", "0.001", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input"],

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
       Hold[$CellContext`u1$$], 100, "inlet velocity (m/s)"}, 10, 100, 1}, {{
       Hold[$CellContext`d2$$], 0.04, "outlet diameter (m)"}, 0.04, 0.1, 
      0.001}}, Typeset`size$$ = {600., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`drown$69505$$ = False, $CellContext`bn$69506$$ = 
    False, $CellContext`u1$69507$$ = 0, $CellContext`d2$69508$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bn$$ = 1, $CellContext`d2$$ = 
        0.04, $CellContext`drown$$ = 1, $CellContext`u1$$ = 100}, 
      "ControllerVariables" :> {
        Hold[$CellContext`drown$$, $CellContext`drown$69505$$, False], 
        Hold[$CellContext`bn$$, $CellContext`bn$69506$$, False], 
        Hold[$CellContext`u1$$, $CellContext`u1$69507$$, 0], 
        Hold[$CellContext`d2$$, $CellContext`d2$69508$$, 0]}, 
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
         Graphics3D[{{
             GrayLevel[0.4], 
             Tube[{{4, 0, (-$CellContext`d1$)/2}, {2, 0, -7}}, 0.2], 
             Tube[{{10, 0, (-$CellContext`d2$$)/2}, {12, 0, -7}}, 0.2], 
             Cuboid[{0, -5, -7.25}, {14, 5, -7}]}, {
             Cylinder[{{0, 0, 0}, {4, 0, 0}}, 100 ($CellContext`d1$/2)], 
             Cylinder[{{10, 0, 0}, {14, 0, 0}}, 100 ($CellContext`d2$$/2)], 
             CapForm["Butt"], 
             
             Tube[{{4, 0, 0}, {10, 0, 0}}, {
              100 ($CellContext`d1$/2), 100 ($CellContext`d2$$/2)}]}, {Thick, 
             Arrowheads[0.03], 
             
             Arrow[{{2, (-100) ($CellContext`d1$/2), -0.75}, {
               2, (-100) ($CellContext`d1$/2), (-100) $CellContext`d1$ 
                0.45}}], 
             
             Arrow[{{2, (-100) ($CellContext`d1$/2), 0.75}, {
               2, (-100) ($CellContext`d1$/2), 100 $CellContext`d1$ 0.45}}], 
             
             Arrow[{{12, (-100) ($CellContext`d2$$/2), -0.75}, {
               12, (-100) ($CellContext`d2$$/2), (-100) $CellContext`d2$$ 
                0.45}}], 
             
             Arrow[{{12, (-100) ($CellContext`d2$$/2), 0.75}, {
               12, (-100) ($CellContext`d2$$/2), 100 $CellContext`d2$$ 
                0.45}}], 
             Arrowheads[0.04], 
             Arrow[{{-3, 0, 0}, {-0.5, 0, 0}}], 
             Arrow[{{14, 0, 0}, {18, 0, 0}}]}, 
            Text[
             Style[
              Row[{$CellContext`d1$, " m"}], 18], {
             2, (-100) ($CellContext`d1$/2), 0}], 
            Text[
             Style[
              Row[{$CellContext`d2$$, " m"}], 18], {
             12, (-100) ($CellContext`d2$$/2), 0}], 
            Text[
             Style[
              Column[{
                Row[{$CellContext`u1$$, ". m/s"}], 
                Row[{$CellContext`T1$, ". K"}], 
                Row[{
                  NumberForm[$CellContext`P1$, {4, 0}], " kPa"}]}, Center], 
              18], {-3, 0, 0}, {1.25, 0}], 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[
                   $CellContext`u2$[$CellContext`d2$$], {4, 0}], " m/s"}], 
                Row[{
                  NumberForm[
                   $CellContext`T2$[$CellContext`d2$$], {4, 0}], " K"}], 
                Row[{$CellContext`P2$, " kPa"}]}, Center], 18], {18, 0, 
             0}, {-1.25, 0}], Null}, ViewPoint -> Front, Boxed -> False, 
           PlotRange -> {{All, All}, {All, All}, {-7.5, 5}}, 
           ImagePadding -> {{60, 60}, {5, 5}}, PlotLabel -> Style[
             If[$CellContext`d2$$ < $CellContext`d1$, "nozzle", "diffuser"], 
             18, Black]]; $CellContext`p2$ = Show[
           Switch[$CellContext`bn$$, 1, 
            Plot[{
              $CellContext`u2$[$CellContext`d], 
              $CellContext`iu2$[$CellContext`d]}, {$CellContext`d, 0.04, 0.1},
              PlotStyle -> {{Thick, Blue}, {Thick, 
                RGBColor[0, 0.6, 0]}}, FrameLabel -> {
               Style["outlet diameter (m)", 17], 
               Style["outlet  velocity  (m/s)", 17]}, PlotRange -> {3, 283}], 
            2, 
            Plot[{
              $CellContext`T2$[$CellContext`d], 
              $CellContext`iT2$[$CellContext`d]}, {$CellContext`d, 0.04, 0.1},
              PlotStyle -> {{Thick, Dashed, Blue}, {Thick, Dashed, 
                RGBColor[0, 0.6, 0]}}, FrameLabel -> {
               Style["outlet diameter (m)", 17], 
               Style["outlet  temperature  (K)", 17]}, 
             PlotRange -> {365, 405}]], Epilog -> {
             PointSize[0.017], 
             Point[
              If[$CellContext`bn$$ == 1, {{$CellContext`d2$$, 
                 $CellContext`u2$[$CellContext`d2$$]}, {$CellContext`d2$$, 
                 $CellContext`iu2$[$CellContext`d2$$]}}, {{$CellContext`d2$$, 
                 $CellContext`T2$[$CellContext`d2$$]}, {$CellContext`d2$$, 
                 $CellContext`iT2$[$CellContext`d2$$]}}]], 
             Text[
              Column[{
                Style[
                 Row[
                  Flatten[{"compressible = ", 
                    If[$CellContext`bn$$ == 1, {
                    NumberForm[
                    $CellContext`u2$[$CellContext`d2$$], {4, 0}], " m/s"}, {
                    NumberForm[
                    $CellContext`T2$[$CellContext`d2$$], {4, 0}], " K"}]}]], 
                 17, Blue], 
                Style[
                 Row[
                  Flatten[{"incompressible = ", 
                    If[$CellContext`bn$$ == 1, {
                    NumberForm[
                    $CellContext`iu2$[$CellContext`d2$$], {4, 0}], " m/s"}, {
                    NumberForm[
                    $CellContext`iT2$[$CellContext`d2$$], {4, 0}], " K"}]}]], 
                 17, 
                 RGBColor[0, 0.6, 0]]}, Alignment -> "="], 
              Scaled[{0.8, 0.6}]]}, Frame -> True, LabelStyle -> {14, Black}, 
           PlotRangePadding -> Scaled[0.05]]; Show[
          
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
          "inlet velocity (m/s)"}, 10, 100, 1, Appearance -> 
         "Labeled"}, {{$CellContext`d2$$, 0.04, "outlet diameter (m)"}, 0.04, 
         0.1, 0.001, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{651., {218., 225.}},
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

Cell["The fluid used is air, assumed to behave ideally. ", "Text"],

Cell[TextData[{
 "Mass and energy balances for a compressible fluid to calculate ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "1"], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "2"], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]]],
 ":"
}], "Text"],

Cell[TextData[{
 "\t",
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
      SubscriptBox["T", "2"]]}]}], TraditionalForm]]],
 ","
}], "Text"],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
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
       SubsuperscriptBox["u", "2", "2"]}], ")"}]}]}], TraditionalForm]]],
 ","
}], "Text"],

Cell[TextData[{
 "\t",
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
      RowBox[{"\[Gamma]", "-", "1"}], "\[Gamma]"]]}], TraditionalForm]]],
 ","
}], "Text"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "j"], TraditionalForm]]],
 " is velocity (m/s), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "j"], TraditionalForm]]],
 " is diameter (m), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "j"], TraditionalForm]]],
 " is pressure (kPa), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "j"], TraditionalForm]]],
 " is temperature (K), ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Cp", "=", 
    RowBox[{"1000", " ", 
     RowBox[{
      RowBox[{"J", "/", "kg"}], "/", "K"}]}]}], TraditionalForm]]],
 " is the heat capacity, and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Gamma]", "=", "1.4"}], TraditionalForm]]],
 "."
}], "Text"],

Cell["Mass balance for an incompressible fluid:", "Text"],

Cell[TextData[{
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["u", "1"], " ", 
     SubsuperscriptBox["d", "1", "2"]}], "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["u", "2"], " ", 
      RowBox[{
       SubsuperscriptBox["d", "2", "2"], "   ", "\[LongRightArrow]", "   ", 
       SubscriptBox["u", "2"]}]}], "=", 
     RowBox[{
      SubscriptBox["u", "1"], " ", 
      RowBox[{
       SubsuperscriptBox["d", "1", "2"], "/", 
       SubsuperscriptBox["d", "2", "2"]}]}]}]}], TraditionalForm]]],
 "."
}], "Text"],

Cell[TextData[{
 "For inlet velocities ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["u", "1"], ">", 
    RowBox[{"100", " ", 
     RowBox[{"m", "/", "s"}]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " and outlet diameters ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["d", "2"], "<", 
    RowBox[{"0.04", " ", "m"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", I got some imaginary solutions, so I adjusted the maximum ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " and minimum ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "2"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " accordingly."
}], "Text"]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (October 9, 2015)",
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
Cell[1486, 35, 24388, 595, 1273, "Input"],
Cell[25877, 632, 10196, 212, 460, "Output"]
}, Open  ]],
Cell[36088, 847, 66, 0, 30, "Text"],
Cell[36157, 849, 337, 14, 30, "Text"],
Cell[36497, 865, 455, 18, 46, "Text"],
Cell[36955, 885, 422, 17, 42, "Text"],
Cell[37380, 904, 382, 16, 56, "Text"],
Cell[37765, 922, 706, 29, 33, "Text"],
Cell[38474, 953, 57, 0, 30, "Text"],
Cell[38534, 955, 549, 20, 36, "Text"],
Cell[39086, 977, 735, 27, 30, "Text"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Qv05l5sugJds5AgbvWTtAyPw *)
