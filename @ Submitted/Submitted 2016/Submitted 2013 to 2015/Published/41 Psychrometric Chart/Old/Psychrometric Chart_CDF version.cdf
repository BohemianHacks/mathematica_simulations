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
NotebookDataLength[    165241,       3428]
NotebookOptionsPosition[    165643,       3418]
NotebookOutlinePosition[    166079,       3437]
CellTagsIndexPosition[    166036,       3434]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"null", "=", 
   RowBox[{"Graphics", "[", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"P", "=", "1.01325"}], ";"}], 
  RowBox[{"(*", "bar", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Psat", "[", "T_", "]"}], "=", 
    RowBox[{"10", "^", 
     RowBox[{"(", 
      RowBox[{"5.40221", "-", 
       RowBox[{"1838.675", "/", 
        RowBox[{"(", 
         RowBox[{"T", "+", "241.263"}], ")"}]}]}], ")"}]}]}], ";"}], 
  RowBox[{"(*", "bar", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"start", "=", 
   RowBox[{"-", "10"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"fontsize", "=", "17"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[Phi]\[Omega]", "[", 
    RowBox[{"\[Phi]_", ",", "T_"}], "]"}], "=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"18", "/", "28"}], ")"}], "*", "\[Phi]", "*", 
    FractionBox[
     RowBox[{"Psat", "[", "T", "]"}], "P"]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"relhumidityPlot", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"\[Phi]\[Omega]", "[", 
        RowBox[{"\[Phi]", ",", "T"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"T", ",", "start", ",", "55"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"Thin", ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{"0.13", ",", "0.62", ",", "0."}], "]"}]}], "}"}]}]}], 
      "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Phi]", ",", "0.1", ",", "1", ",", "0.1"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"relhumidityLabels", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Rotate", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "\"\<%\>\""}], "}"}], "]"}], ",", "15", 
             ",", 
             RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
           RowBox[{"40", " ", "Degree"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"t", "/.", 
            RowBox[{"Quiet", "@", 
             RowBox[{"FindRoot", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"V\[Omega]", "[", 
                 RowBox[{"t", ",", "53"}], "]"}], "\[Equal]", 
                RowBox[{"\[Phi]\[Omega]", "[", 
                 RowBox[{
                  RowBox[{"\[Phi]", "/", "100"}], ",", "t"}], "]"}]}], ",", 
               RowBox[{"{", 
                RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
           RowBox[{"\[Phi]\[Omega]", "[", 
            RowBox[{
             RowBox[{"\[Phi]", "/", "100"}], ",", 
             RowBox[{"t", "/.", 
              RowBox[{"Quiet", "@", 
               RowBox[{"FindRoot", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"V\[Omega]", "[", 
                   RowBox[{"t", ",", "53"}], "]"}], "\[Equal]", 
                  RowBox[{"\[Phi]\[Omega]", "[", 
                   RowBox[{
                    RowBox[{"\[Phi]", "/", "100"}], ",", "t"}], "]"}]}], ",", 
                 RowBox[{"{", 
                  RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], "]"}]}], 
          "}"}]}], "]"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Phi]", ",", "10", ",", "90", ",", "10"}], "}"}]}], "]"}]}], 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"H\[Omega]", "[", 
    RowBox[{"T_", ",", "T1_"}], "]"}], "=", 
   RowBox[{"Piecewise", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "4.118"}], "*", 
         SuperscriptBox["10", 
          RowBox[{"-", "4"}]], "*", 
         RowBox[{"(", 
          RowBox[{"T", "-", "T1"}], ")"}]}], ",", 
        RowBox[{"start", "\[LessEqual]", "T", "\[LessEqual]", "55"}]}], "}"}],
       ",", 
      RowBox[{"{", 
       RowBox[{"None", ",", 
        RowBox[{"T", ">", "55"}]}], "}"}]}], "}"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"enthalpyPlot", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"H\[Omega]", "[", 
           RowBox[{"T", ",", "T1"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"T", ",", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "7"}], "+", "t"}], "/.", 
             RowBox[{"Quiet", "@", 
              RowBox[{"FindRoot", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"\[Phi]\[Omega]", "[", 
                  RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                 RowBox[{"H\[Omega]", "[", 
                  RowBox[{"t", ",", "T1"}], "]"}]}], ",", 
                RowBox[{"{", 
                 RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", "T1"}], 
           "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Thin", ",", "Blue"}], "}"}]}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"T1", ",", "15", ",", 
               RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"-", "7"}], "+", "t"}], "/.", 
                RowBox[{"Quiet", "@", 
                 RowBox[{"FindRoot", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"t", ",", "T1"}], "]"}]}], ",", 
                   RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
               RowBox[{"H\[Omega]", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "7"}], "+", "t"}], "/.", 
                  RowBox[{"Quiet", "@", 
                   RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"t", ",", "T1"}], "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", "T1"}], 
                "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "0"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Rotate", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"\"\<enthalpy (kJ/kg)\>\"", ",", "fontsize", ",", 
                 RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
               RowBox[{"30", " ", "Degree"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "2"}], ",", "0.012"}], "}"}]}], "]"}]}], "}"}], 
         "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"T1", ",", "start", ",", "130", ",", "10"}], "}"}]}], "]"}]}], 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"V\[Omega]", "[", 
    RowBox[{"T_", ",", "T1_"}], "]"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "2.114"}], "*", 
     SuperscriptBox["10", 
      RowBox[{"-", "3"}]], "*", 
     RowBox[{"(", 
      RowBox[{"T", "-", "T1"}], ")"}]}], "-", "0.007"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"volumePlot", "=", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Plot", "[", 
           RowBox[{
            RowBox[{"V\[Omega]", "[", 
             RowBox[{"T", ",", "T1"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"T", ",", 
              RowBox[{"t", "/.", 
               RowBox[{"Quiet", "@", 
                RowBox[{"FindRoot", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                   RowBox[{"V\[Omega]", "[", 
                    RowBox[{"t", ",", "T1"}], "]"}]}], ",", 
                  RowBox[{"{", 
                   RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", "T1"}], 
             "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Thin", ",", "Red"}], "}"}]}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Graphics", "[", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"NumberForm", "[", 
                RowBox[{
                 RowBox[{"0.8", "+", 
                  RowBox[{
                   FractionBox["T1", "15"], "*", "0.05"}]}], ",", 
                 RowBox[{"{", 
                  RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "15", ",", 
               RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"t", "/.", 
                RowBox[{"Quiet", "@", 
                 RowBox[{"FindRoot", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"V\[Omega]", "[", 
                    RowBox[{"t", ",", "T1"}], "]"}], "\[Equal]", 
                    RowBox[{"-", "0.007"}]}], ",", 
                   RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
               RowBox[{"-", "0.007"}]}], "}"}]}], "]"}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"T1", ",", "0", ",", "60", ",", "15"}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\"\<volume (\>\"", ",", 
              RowBox[{"Superscript", "[", 
               RowBox[{"\"\<m\>\"", ",", "3"}], "]"}], ",", 
              "\"\</kg dry air)\>\""}], "}"}], "]"}], ",", "fontsize"}], 
          "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"35", ",", 
           RowBox[{"-", "0.009"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"grid", "=", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Thin", ",", "Gray", ",", "\[IndentingNewLine]", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"T1", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"T1", ",", 
               RowBox[{"\[Phi]\[Omega]", "[", 
                RowBox[{"1", ",", "T1"}], "]"}]}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"T1", ",", "start", ",", "55", ",", "5"}], "}"}]}], "]"}], 
        ",", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"t", "/.", 
                RowBox[{"Quiet", "@", 
                 RowBox[{"FindRoot", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", "h"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"t", ",", "15"}], "}"}]}], "]"}]}]}], ",", "h"}], 
              "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"55", ",", "h"}], "}"}]}], "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"h", ",", "0", ",", "0.033", ",", "0.005"}], "}"}]}], 
         "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"H\[Omega]", "[", 
          RowBox[{"T", ",", "T1"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"T", ",", 
           RowBox[{"t", "/.", 
            RowBox[{"Quiet", "@", 
             RowBox[{"FindRoot", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"\[Phi]\[Omega]", "[", 
                 RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                RowBox[{"H\[Omega]", "[", 
                 RowBox[{"t", ",", "T1"}], "]"}]}], ",", 
               RowBox[{"{", 
                RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", "T1"}], 
          "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Thin", ",", "Gray"}], "}"}]}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"T1", ",", "start", ",", "130", ",", "10"}], "}"}]}], "]"}]}],
     "]"}]}], ";"}]}], "Input",
 CellOpen->False,
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"RH", ",", "pt", ",", "T\[Phi]", ",", "TH", ",", "TV"}], "}"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"RH", "=", 
       RowBox[{"rh", "/", "100"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"pt", "=", 
       RowBox[{"{", 
        RowBox[{"DBT", ",", 
         RowBox[{"\[Phi]\[Omega]", "[", 
          RowBox[{"RH", ",", "DBT"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"T\[Phi]", "=", 
       RowBox[{"t", "/.", 
        RowBox[{"Quiet", "@", 
         RowBox[{"FindRoot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"\[Phi]\[Omega]", "[", 
             RowBox[{"RH", ",", "DBT"}], "]"}], "\[Equal]", 
            RowBox[{"\[Phi]\[Omega]", "[", 
             RowBox[{"1", ",", "t"}], "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"TH", "=", 
       RowBox[{"t", "/.", 
        RowBox[{"Quiet", "@", 
         RowBox[{"FindRoot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"H\[Omega]", "[", 
              RowBox[{"t", ",", "DBT"}], "]"}], "+", 
             RowBox[{"\[Phi]\[Omega]", "[", 
              RowBox[{"RH", ",", "DBT"}], "]"}]}], "\[Equal]", 
            RowBox[{"\[Phi]\[Omega]", "[", 
             RowBox[{"1", ",", "t"}], "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"TV", "=", 
       RowBox[{"t", "/.", 
        RowBox[{"Quiet", "@", 
         RowBox[{"FindRoot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"V\[Omega]", "[", 
              RowBox[{"t", ",", "DBT"}], "]"}], "+", 
             RowBox[{"\[Phi]\[Omega]", "[", 
              RowBox[{"RH", ",", "DBT"}], "]"}], "+", "0.007"}], "\[Equal]", 
            RowBox[{"-", "0.0065"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"\[Phi]\[Omega]", "[", 
          RowBox[{"RH", ",", "DBT"}], "]"}], ">", "0.033"}], ",", 
        RowBox[{"DBT", "=", 
         RowBox[{"t", "/.", 
          RowBox[{"Quiet", "@", 
           RowBox[{"FindRoot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"\[Phi]\[Omega]", "[", 
               RowBox[{"RH", ",", "t"}], "]"}], "\[Equal]", "0.033"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}]}], "]"}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"\[Phi]\[Omega]", "[", 
           RowBox[{"1", ",", "T"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"T", ",", "start", ",", "55"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"RGBColor", "[", 
             RowBox[{"0.13", ",", "0.62", ",", "0."}], "]"}], "}"}]}], ",", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"start", ",", "55"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0.033"}], "}"}]}], "}"}]}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"TrueQ", "[", "gridLines", "]"}], ",", "grid", ",", 
          "null"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"TrueQ", "[", "enthalpy", "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"enthalpyPlot", ",", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"TrueQ", "[", "arrows", "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Graphics", "[", 
               RowBox[{"{", 
                RowBox[{"Thick", ",", "Dashed", ",", 
                 RowBox[{"Darker", "[", 
                  RowBox[{"Blue", ",", "0.2"}], "]"}], ",", 
                 RowBox[{"Arrow", "[", 
                  RowBox[{"{", 
                   RowBox[{"pt", ",", "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "7"}], "+", "t"}], "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"t", ",", 
                    RowBox[{"t", "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"RH", ",", "DBT"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"DBT", ",", "t"}], "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], "]"}]}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "7"}], "+", "t"}], "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "t"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"t", ",", 
                    RowBox[{"t", "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"RH", ",", "DBT"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"DBT", ",", "t"}], "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], "]"}]}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
                    RowBox[{"t", "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"RH", ",", "DBT"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"DBT", ",", "t"}], "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}]}], "]"}]}], 
                    "}"}]}], "\[IndentingNewLine]", 
                   RowBox[{"(*", 
                    RowBox[{"{", 
                    RowBox[{"TH", ",", 
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "TH"}], "]"}]}], "}"}], "*)"}], "}"}], 
                  "]"}]}], "}"}], "]"}], ",", "null"}], "]"}]}], "}"}], ",", 
          "null"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"TrueQ", "[", "volume", "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"volumePlot", ",", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"TrueQ", "[", "arrows", "]"}], ",", 
              RowBox[{"Graphics", "[", 
               RowBox[{"{", 
                RowBox[{"Thick", ",", "Dashed", ",", 
                 RowBox[{"Darker", "[", 
                  RowBox[{"Red", ",", "0.2"}], "]"}], ",", 
                 RowBox[{"Arrow", "[", 
                  RowBox[{"{", 
                   RowBox[{"pt", ",", 
                    RowBox[{"{", 
                    RowBox[{"TV", ",", 
                    RowBox[{"-", "0.0065"}]}], "}"}]}], "}"}], "]"}]}], "}"}],
                "]"}], ",", "null"}], "]"}]}], "}"}], ",", "null"}], "]"}], 
        ",", "\[IndentingNewLine]", "relhumidityPlot", ",", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"TrueQ", "[", "relativehumidity", "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"relhumidityLabels", ",", 
            RowBox[{"Graphics", "[", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Rotate", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<saturation line\>\"", ",", "fontsize", ",", 
                   RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                 "1"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"26.5", ",", "0.025"}], "}"}]}], "]"}], "]"}]}], 
           "}"}], ",", "null"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"TrueQ", "[", "temperatures", "]"}], ",", 
          RowBox[{"Graphics", "[", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Rotate", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<temperature (\[Degree]C)\>\"", ",", "fontsize", ",", 
                   RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                 "0.65"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"11", ",", "0.01171"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"T1", ",", "15", ",", 
                   RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"T1", ",", 
                   RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "T1"}], "]"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"T1", ",", 
                 RowBox[{"-", "5"}], ",", "35", ",", "5"}], "}"}]}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"TrueQ", "[", "arrows", "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"Thick", ",", "Dashed", ",", 
                 RowBox[{"Darker", "[", 
                  RowBox[{"Gray", ",", "0.45"}], "]"}], ",", 
                 RowBox[{"Arrow", "[", 
                  RowBox[{"{", 
                   RowBox[{"pt", ",", 
                    RowBox[{"{", 
                    RowBox[{"DBT", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                 RowBox[{"Arrow", "[", 
                  RowBox[{"{", 
                   RowBox[{"pt", ",", 
                    RowBox[{"{", 
                    RowBox[{"T\[Phi]", ",", 
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "T\[Phi]"}], "]"}]}], "}"}]}], "}"}], 
                  "]"}], ",", 
                 RowBox[{"Arrow", "[", 
                  RowBox[{"{", 
                   RowBox[{"pt", ",", 
                    RowBox[{"{", 
                    RowBox[{"TH", ",", 
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"1", ",", "TH"}], "]"}]}], "}"}]}], "}"}], 
                  "]"}]}], "}"}]}], "]"}]}], "}"}], "]"}], ",", "null"}], 
         "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"PointSize", "[", "0.018", "]"}], ",", 
             RowBox[{"Point", "[", "pt", "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Column", "[", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<moisture content = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"RH", ",", "DBT"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "3"}], "}"}]}], "]"}], ",", 
                    "\"\< kg/kg\>\""}], "}"}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<dew point temperature = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"T\[Phi]", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< \[Degree]C\>\""}], "}"}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<wet bulb temperature = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"TH", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< \[Degree]C\>\""}], "}"}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<volume = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"0.8", "+", 
                    RowBox[{
                    RowBox[{"(", "TV", ")"}], "*", 
                    RowBox[{"0.05", "/", "15"}]}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", 
                    RowBox[{"Superscript", "[", 
                    RowBox[{"\"\< m\>\"", ",", "3"}], "]"}], ",", 
                    "\"\</kg\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{"\"\<enthalpy = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"t", "/.", 
                    RowBox[{"Quiet", "@", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"\[Phi]\[Omega]", "[", 
                    RowBox[{"RH", ",", "DBT"}], "]"}], "\[Equal]", 
                    RowBox[{"H\[Omega]", "[", 
                    RowBox[{"DBT", ",", "t"}], "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0"}], "}"}]}], "]"}]}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< kJ/kg\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]",
                  "}"}], "]"}], ",", "16"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "9"}], ",", "0.032"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}]}], "}"}], "]"}],
         ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameTicks", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"None", ",", "All"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"None", ",", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<moisture  content  (kg /kg  dry air)\>\"", ",", 
               "fontsize"}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<dry bulb temperature (\[Degree]C)\>\"", ",", "fontsize", 
               ",", 
               RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
             "None"}], "}"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Black", ",", "14"}], "}"}]}], ",", 
        RowBox[{"Axes", "\[Rule]", "False"}], ",", 
        RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"5", ",", "70"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"95", ",", "None"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "400"}], "}"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"relativehumidity", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<relative humidity\>\"", ",", 
                RowBox[{"RGBColor", "[", 
                 RowBox[{"0.13", ",", "0.62", ",", "0."}], "]"}]}], "]"}]}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Spacer", "[", "15", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"enthalpy", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<enthalpy\>\"", ",", "Blue"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Spacer", "[", "15", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"volume", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<specific volume\>\"", ",", "Red"}], "]"}]}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"temperatures", ",", "False", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<temperatures\>\"", ",", 
                RowBox[{"GrayLevel", "[", "0.3", "]"}]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Spacer", "[", "15", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"gridLines", ",", "False", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<gridlines\>\"", ",", 
                RowBox[{"GrayLevel", "[", "0.3", "]"}]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Spacer", "[", "15", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"arrows", ",", "True", ",", "\"\<show arrows\>\""}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
       "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}], ",", 
   "\[IndentingNewLine]", "Delimiter", ",", 
   RowBox[{"Row", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"rh", ",", "47", ",", "\"\<relative humidity (%)\>\""}], 
          "}"}], ",", "0", ",", "100", ",", "1", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "DBT", ",", "32", ",", 
           "\"\<dry bulb temperature (\[Degree]C)\>\""}], "}"}], ",", "10", 
         ",", "55", ",", "1", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], "}"}], 
    "]"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`arrows$$ = True, $CellContext`DBT$$ = 
    32, $CellContext`enthalpy$$ = True, $CellContext`gridLines$$ = 
    False, $CellContext`relativehumidity$$ = True, $CellContext`rh$$ = 
    47, $CellContext`temperatures$$ = False, $CellContext`volume$$ = True, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`relativehumidity$$], True, 
       Style["relative humidity", 
        RGBColor[0.13, 0.62, 0.]]}, {True, False}}, {{
       Hold[$CellContext`enthalpy$$], True, 
       Style["enthalpy", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`volume$$], True, 
       Style["specific volume", 
        RGBColor[1, 0, 0]]}, {True, False}}, {{
       Hold[$CellContext`temperatures$$], False, 
       Style["temperatures", 
        GrayLevel[0.3]]}, {True, False}}, {{
       Hold[$CellContext`gridLines$$], False, 
       Style["gridlines", 
        GrayLevel[0.3]]}, {True, False}}, {{
       Hold[$CellContext`arrows$$], True, "show arrows"}, {True, False}}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Spacer[15], 
          Manipulate`Place[2], 
          Spacer[15], 
          Manipulate`Place[3]}, {
          Manipulate`Place[4], 
          Spacer[15], 
          Manipulate`Place[5], 
          Spacer[15], 
          Manipulate`Place[6]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`rh$$], 47, "relative humidity (%)"}, 0, 100, 1}, {{
       Hold[$CellContext`DBT$$], 32, "dry bulb temperature (\[Degree]C)"}, 10,
       55, 1}, {
      Hold[
       Row[{
         Manipulate`Place[7], 
         Manipulate`Place[8]}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {198., 202.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`relativehumidity$13013$$ = 
    False, $CellContext`enthalpy$13018$$ = 
    False, $CellContext`volume$13019$$ = 
    False, $CellContext`temperatures$13020$$ = 
    False, $CellContext`gridLines$13021$$ = 
    False, $CellContext`arrows$13022$$ = False, $CellContext`rh$13023$$ = 
    0, $CellContext`DBT$13024$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`arrows$$ = True, $CellContext`DBT$$ = 
        32, $CellContext`enthalpy$$ = True, $CellContext`gridLines$$ = 
        False, $CellContext`relativehumidity$$ = True, $CellContext`rh$$ = 
        47, $CellContext`temperatures$$ = False, $CellContext`volume$$ = 
        True}, "ControllerVariables" :> {
        Hold[$CellContext`relativehumidity$$, \
$CellContext`relativehumidity$13013$$, False], 
        Hold[$CellContext`enthalpy$$, $CellContext`enthalpy$13018$$, False], 
        Hold[$CellContext`volume$$, $CellContext`volume$13019$$, False], 
        Hold[$CellContext`temperatures$$, $CellContext`temperatures$13020$$, 
         False], 
        Hold[$CellContext`gridLines$$, $CellContext`gridLines$13021$$, False], 
        Hold[$CellContext`arrows$$, $CellContext`arrows$13022$$, False], 
        Hold[$CellContext`rh$$, $CellContext`rh$13023$$, 0], 
        Hold[$CellContext`DBT$$, $CellContext`DBT$13024$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`RH$, $CellContext`pt$, $CellContext`T\[Phi]$, \
$CellContext`TH$, $CellContext`TV$}, $CellContext`RH$ = $CellContext`rh$$/
          100; $CellContext`pt$ = {$CellContext`DBT$$, 
           $CellContext`\[Phi]\[Omega][$CellContext`RH$, $CellContext`DBT$$]}; \
$CellContext`T\[Phi]$ = ReplaceAll[$CellContext`t, 
           Quiet[
            
            FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`\[Phi]\[Omega][
              1, $CellContext`t], {$CellContext`t, 0}]]]; $CellContext`TH$ = 
         ReplaceAll[$CellContext`t, 
           Quiet[
            
            FindRoot[$CellContext`H\[Omega][$CellContext`t, \
$CellContext`DBT$$] + $CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`\[Phi]\[Omega][
              1, $CellContext`t], {$CellContext`t, 0}]]]; $CellContext`TV$ = 
         ReplaceAll[$CellContext`t, 
           Quiet[
            
            FindRoot[$CellContext`V\[Omega][$CellContext`t, \
$CellContext`DBT$$] + $CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] + 0.007 == -0.0065, {$CellContext`t, 0}]]]; 
        If[$CellContext`\[Phi]\[Omega][$CellContext`RH$, $CellContext`DBT$$] > 
          0.033, $CellContext`DBT$$ = ReplaceAll[$CellContext`t, 
            Quiet[
             
             FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`t] == 0.033, {$CellContext`t, 0}]]]]; Show[
          Plot[
           $CellContext`\[Phi]\[Omega][
           1, $CellContext`T], {$CellContext`T, $CellContext`start, 55}, 
           PlotStyle -> {
             RGBColor[0.13, 0.62, 0.]}, 
           PlotRange -> {{$CellContext`start, 55}, {0, 0.033}}], 
          If[
           
           TrueQ[$CellContext`gridLines$$], $CellContext`grid, \
$CellContext`null], 
          If[
           TrueQ[$CellContext`enthalpy$$], {$CellContext`enthalpyPlot, 
            If[
             TrueQ[$CellContext`arrows$$], 
             Graphics[{Thick, Dashed, 
               Darker[Blue, 0.2], 
               Arrow[{$CellContext`pt$, {
                  ReplaceAll[-7 + $CellContext`t, 
                   Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][
                    1, $CellContext`t] == \
$CellContext`H\[Omega][$CellContext`t, 
                    ReplaceAll[$CellContext`t, 
                    Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`H\[Omega][$CellContext`DBT$$, \
$CellContext`t], {$CellContext`t, 0}]]]], {$CellContext`t, 0}]]], 
                  $CellContext`H\[Omega][
                   ReplaceAll[-7 + $CellContext`t, 
                    Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][
                    1, $CellContext`t] == \
$CellContext`H\[Omega][$CellContext`t, 
                    ReplaceAll[$CellContext`t, 
                    Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`H\[Omega][$CellContext`DBT$$, \
$CellContext`t], {$CellContext`t, 0}]]]], {$CellContext`t, 0}]]], 
                   ReplaceAll[$CellContext`t, 
                    Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`H\[Omega][$CellContext`DBT$$, \
$CellContext`t], {$CellContext`t, 
                    0}]]]]}}]}], $CellContext`null]}, $CellContext`null], 
          If[
           TrueQ[$CellContext`volume$$], {$CellContext`volumePlot, 
            If[
             TrueQ[$CellContext`arrows$$], 
             Graphics[{Thick, Dashed, 
               Darker[Red, 0.2], 
               
               Arrow[{$CellContext`pt$, {$CellContext`TV$, -0.0065}}]}], \
$CellContext`null]}, $CellContext`null], $CellContext`relhumidityPlot, 
          If[
           
           TrueQ[$CellContext`relativehumidity$$], \
{$CellContext`relhumidityLabels, 
            Graphics[
             Text[
              Rotate[
               Style[
               "saturation line", $CellContext`fontsize, Background -> White],
                1], {26.5, 0.025}]]}, $CellContext`null], 
          If[
           TrueQ[$CellContext`temperatures$$], 
           Graphics[{
             Text[
              Rotate[
               Style[
               "temperature (\[Degree]C)", $CellContext`fontsize, Background -> 
                White], 0.65], {11, 0.01171}], 
             Table[
              Text[
               
               Style[$CellContext`T1, 15, Background -> 
                White], {$CellContext`T1, 
                $CellContext`\[Phi]\[Omega][1, $CellContext`T1]}, {0, 
               1}], {$CellContext`T1, -5, 35, 5}], 
             If[
              TrueQ[$CellContext`arrows$$], {Thick, Dashed, 
               Darker[Gray, 0.45], 
               Arrow[{$CellContext`pt$, {$CellContext`DBT$$, 0}}], 
               Arrow[{$CellContext`pt$, {$CellContext`T\[Phi]$, 
                  $CellContext`\[Phi]\[Omega][1, $CellContext`T\[Phi]$]}}], 
               Arrow[{$CellContext`pt$, {$CellContext`TH$, 
                  $CellContext`\[Phi]\[Omega][
                  1, $CellContext`TH$]}}]}]}], $CellContext`null], 
          Graphics[{{
             PointSize[0.018], 
             Point[$CellContext`pt$]}, 
            Text[
             Style[
              Column[{
                Row[{"moisture content = ", 
                  NumberForm[
                   $CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$], {3, 3}], " kg/kg"}], 
                Row[{"dew point temperature = ", 
                  NumberForm[$CellContext`T\[Phi]$, {3, 0}], " \[Degree]C"}], 
                Row[{"wet bulb temperature = ", 
                  NumberForm[$CellContext`TH$, {3, 0}], " \[Degree]C"}], 
                Row[{"volume = ", 
                  NumberForm[0.8 + $CellContext`TV$ (0.05/15), {2, 2}], 
                  Superscript[" m", 3], "/kg"}], 
                Row[{"enthalpy = ", 
                  NumberForm[
                   ReplaceAll[$CellContext`t, 
                    Quiet[
                    
                    FindRoot[$CellContext`\[Phi]\[Omega][$CellContext`RH$, \
$CellContext`DBT$$] == $CellContext`H\[Omega][$CellContext`DBT$$, \
$CellContext`t], {$CellContext`t, 0}]]], {3, 0}], " kJ/kg"}]}], 16], {-9, 
              0.032}, {-1, 1}]}], Frame -> True, 
          FrameTicks -> {{None, All}, {All, None}}, FrameLabel -> {{None, 
             Style[
             "moisture  content  (kg /kg  dry air)", $CellContext`fontsize]}, {
             Style[
             "dry bulb temperature (\[Degree]C)", $CellContext`fontsize, 
              Background -> White], None}}, LabelStyle -> {Black, 14}, Axes -> 
          False, PlotRangeClipping -> False, 
          ImagePadding -> {{5, 70}, {95, None}}, ImageSize -> {600, 400}]], 
      "Specifications" :> {{{$CellContext`relativehumidity$$, True, 
          Style["relative humidity", 
           RGBColor[0.13, 0.62, 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`enthalpy$$, True, 
          Style["enthalpy", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`volume$$, True, 
          Style["specific volume", 
           RGBColor[1, 0, 0]]}, {True, False}, ControlPlacement -> 
         3}, {{$CellContext`temperatures$$, False, 
          Style["temperatures", 
           GrayLevel[0.3]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`gridLines$$, False, 
          Style["gridlines", 
           GrayLevel[0.3]]}, {True, False}, ControlPlacement -> 
         5}, {{$CellContext`arrows$$, True, "show arrows"}, {True, False}, 
         ControlPlacement -> 6}, 
        Grid[{{
           Manipulate`Place[1], 
           Spacer[15], 
           Manipulate`Place[2], 
           Spacer[15], 
           Manipulate`Place[3]}, {
           Manipulate`Place[4], 
           Spacer[15], 
           Manipulate`Place[5], 
           Spacer[15], 
           Manipulate`Place[6]}}, Alignment -> Right], 
        Delimiter, {{$CellContext`rh$$, 47, "relative humidity (%)"}, 0, 100, 
         1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         7}, {{$CellContext`DBT$$, 32, "dry bulb temperature (\[Degree]C)"}, 
         10, 55, 1, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 8}, 
        Row[{
          Manipulate`Place[7], 
          Manipulate`Place[8]}]}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{651., {268., 275.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`\[Phi]\[Omega][
         Pattern[$CellContext`\[Phi], 
          Blank[]], 
         Pattern[$CellContext`T, 
          Blank[]]] = 
       0.634450671460294 
        10^(5.40221 - 1838.675/(
          241.263 + $CellContext`T)) $CellContext`\[Phi], $CellContext`H\
\[Omega][
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`T1, 
          Blank[]]] = 
       Piecewise[{{(-0.00041180000000000003`) ($CellContext`T - \
$CellContext`T1), -10 <= $CellContext`T <= 55}, {None, $CellContext`T > 55}}, 
         0], $CellContext`V\[Omega][
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`T1, 
          Blank[]]] = -0.007 - 
        0.002114 ($CellContext`T - $CellContext`T1), $CellContext`start = \
-10, $CellContext`grid = Graphics[{{
           Thickness[Tiny], 
           GrayLevel[0.5], {
            Line[{{-10, 0}, {-10, 0.0017948484562737119`}}], 
            Line[{{-5, 0}, {-5, 0.00264414198551772}}], 
            Line[{{0, 0}, {0, 0.003833255359778622}}], 
            Line[{{5, 0}, {5, 0.005473958670415679}}], 
            Line[{{10, 0}, {10, 0.0077068523275903855`}}], 
            Line[{{15, 0}, {15, 0.010706679089550175`}}], 
            Line[{{20, 0}, {20, 0.014688167927003589`}}], 
            Line[{{25, 0}, {25, 0.019912392045327448`}}], 
            Line[{{30, 0}, {30, 0.026693613598211367`}}], 
            Line[{{35, 0}, {35, 0.035406578294620926`}}], 
            Line[{{40, 0}, {40, 0.04649421446487983}}], 
            Line[{{45, 0}, {45, 0.060475683411216244`}}], 
            Line[{{50, 0}, {50, 0.07795472118136755}}], 
            Line[{{55, 0}, {55, 0.09962820638568169}}]}, {
            Line[{{-205.54116703928952`, 0.}, {55, 0.}}], 
            Line[{{3.7095173300780613`, 0.005}, {55, 0.005}}], 
            Line[{{13.945199444756966`, 0.01}, {55, 0.01}}], 
            Line[{{20.33914225011473, 0.015}, {55, 0.015}}], 
            Line[{{25.07353386308142, 0.02}, {55, 0.02}}], 
            Line[{{28.865503372956567`, 0.025}, {55, 0.025}}], 
            Line[{{32.044864810700496`, 0.03}, {55, 0.03}}]}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJxN0HlI0wEUB/Bf80gbHiWZinTh5tIpQ51n2uHN3DzSnFelqduwXLOFqCiu
tFQyGVpqzTUTtUNlBiXNWtNQEsEyU5cHapr9Ma/KzCPogHivB18en7++vHcg
RRiVRiIIgv0nfzfftY5WoxRoiH9TdLRnoaUNrWAvKrta0Fqer5fuPjpYNhnq
V4+mGuzNmJOi50bkrYyL6ORchUsf87++oNXuRiUfLKZbbka7oTfDJ7LFKh74
0frXvCPuaFrnKHVSlQ5+SzLhUplo05L5N1PtaWAr+xtLGR5oNutqZcPjVDCn
NGyq1R39Sb9DRHtxFtxskFXG8UIz92+FBqtTwEsv31foPNG+dVG2xNNkMLdK
Hv7ZBy039zHO7TgDVjY1CqZ80GNXuhTTGafBEmbh1sfUU2CNzXhDmTAJHLNj
lFualgi+7CRMcDqfAB7vD9e158SDy8SD18pFceDBiGWRaR4XnOnRxp8XxoI9
ap8syAUnwbXOceqf4hhwxECdrD0jGqyoL3hNFp8A2640S4IkUeClkKxgbU4k
/mdYG29WFAFmaDXfvb9xwDPnjAbrt7HBuh/TvX3WLOyr3hq+axQKLpZzCjU2
weDdqln/Cr1A8K9+44P71o6DrQP5dzbIx8DPG3cm6n/xBTdXvOp4aO4NDkyv
Dhnydwd7pS+TuXYueK/gAnnuFh084hafXyJGS4mAZXoU2rBmz9AlE/RKr/r2
9iJHcI+diYOjyAGcOf0gJItFA9NaKlWWh9Cz2fn0TkM01yzSXL/bHuzvtz56
0xNtJQviPaNQwe94jA9JeuhyVxsWaYYCJvUvOrNk6IWNqrWJXeimngK+ZMUO
nCzlj1EG0CO0w+rMUrR0lcKw4KHDNGb3OgLQhtc3LBIPortiZ4sJAv0bq3U1
bA==
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwB4QQe+yFib1JlAgAAAE0AAAACAAAAic9hINncF8Dcx0NN/x9kP+qCMn75
2hfA9auFy2oeZD9KNgPcGdkXwA6Qx0nWHGQ/Cp2kl1rVF8BAWEtGrRlkP4xq
5w7czRfApehSP1sTZD+OBW393r4XwG0JYjG3BmQ/kjt42uSgF8D9SoAVb+1j
P5ynjpTwZBfAH8683d66Yz+hJrYB8uIWwJN62NU8TWM/sOJtv5BpFsBfGl2x
3uZiP2tU2QWR8hXAH+ldnIKCYj8YbT9Fe3EVwBBeAe+kFWI/z8I11QL5FMBZ
xg0lC7BhP3i/Jl50dhTA0tS8wu9BYT/NcctvR/YTwEAS6G/W1WA/LGEA0rd+
E8AGQ3wAAXFgP333Ly0S/RLA/Rmz+KkDYD/Yyu/YCYQSwJbIpagtO18/31Nj
DWMNEsAbu91+C3NeP9iD0TqmjBHAA/paJOaZXT/b8M+4hhQRwJkfqpBIz1w/
0ATJL1GSEMCSkT7Mp/NbP3HOdS99EhDAc2HLJgscWz84qmX/jDYPwAQYKkj2
Ulo/cgXVkfMzDsD2Gs443nhZP7/aZMWUQg3AlwRE8E2tWD/x/enqCT0MwJo6
/3a60Fc/fIzWIUI8C8CIzrIcK/hWPxqV4/m0TArAI0k4iSMuVj+c6+XD+0gJ
wCEQA8UYU1U/MbwIL31WCMDMvZ/HlYZUPx/4kqvBaAfAYsk06Ra+Uz/ygRIa
2mYGwFohD9qU5FI/2IWyKS12BcABYLuRmhlSP6LXRytUcQTACeusGJ09UT/F
lEQ+PnEDwPzTlr6jZVA/+8th8mKCAsA5R6VWZDhPPxVRdJhbfwHAPn+nznqD
TT9CUKffjo0AwJ+ETdSg60s/kXWDcApB/7/VReQXz1tKP2fmogWfPv2/0Z8F
+vapSD9jSwPdqF77vyjHymkuFUc/KExOmFpW+b9Ehxp4X15FPxNB2pWBcPe/
vBQOFKDEQz+wDDW2LpT1vwhe8u3oMkI/FnR6uoOP878ZQGFmK39AP6LPAAFO
rfG/DN/n2PrQPT/ujeNWgEXvv3BvIiKSXzo/+ylj8XBD6798dz7nOf42P1Su
ZBBMhue/PxqixwDXMz8/ajv3dnjjv43uGuW6azA/7BwoxRhf378ku7Y7KHUq
PyHAFCdc89e/f4j6pPsyJD/zpFcxfszPv9tx0RBr0Ro/1WqNJu7FwL8ve5iJ
tkoMP8AECXLWgsC/KRpWtovZCz+rnoS9vj/AvyS5E+NgaAs/AqX3qB5zv78Z
9448C4YKP1p01ARhWr2/AnOF71/BCD8LE4685Si5v9ZqclUJOAU/bFABLO/F
sL/6tJhCuEr8PkKE+MK/P7C/7/ITnGJo+z4wcN+zIHOvv+Qwj/UMhvo+iD+8
D2Narb/NrIWoYcH4PjjedcfnKKm/oKRyDgs49T6ZG+k28cWgv48ombS7Suw+
igavySRzn795pI9nEIbqPuLViyVnWp2/YiCGGmXB6D6TdEXd6yiZvzYYc4AO
OOU+9LG4TPXFkL+7D5qYwkrcPpgCK1FvWo2/jgeH/mvB2D5IoeQI9CiJv2H/
c2QVONU+qd5XeP3FgL8Q3ptg0ErMPrP6ImAEKXm/t811LCM4xT4UOJbPDcZw
v7x6n/DrSrw+6uoSfi7GYL8VtKYQI0usPsbAalk+V4C+UvOrnAOQyz2ni1Ql

              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVyn840wkcwHGS7Sa3xjJibPYl1pHOzyL7fFDqWTw1SjdKtZofKZZCOK4i
+f3jIcpz6tnluOoWJy16msrj8utc5ESUx91a1+KQX50Vu+6P9/P6520tigsS
r9DR0Qn83P8+mQ504MIwdKRNp806SGBXqzheGDcMr1QzB25/JYGh0rSmnGvD
MBM47x29XgLj7rKt77TDYGmlWRq1kwAtzfDArUcjcKpFL72LIwEhpbvA0fcV
WGoZ6VIzCSzQqj9c5ozBqbPe6btWSiCbay2sslWCJ8lkKeReHHTUT0OYTA3L
Zhap5uQ4cPsxsXT3kylQuWa35YlioUh7pyp4bAbKhQPRHo9PQMm+igyh1QKI
suby3I1PwPo3A6yPNosgeJCSrIw9Dk9Z2sCk459AqHmmVCpiwMUwfF11tRYc
fVbdtKLFQIVpfqg8SBc5JTe9yLHHoDJ99N3F2RXorLbg+7VEg/pseEjtmZUY
wZ8jHM2joWL/IoO1oI+ixp+FguQo6C7IYa8sI2PKOg/Dzq5I2Bm6Xd+DQcG7
UvvcSbtIEHyrcR5sMkAD24nMyKQIkCd13H0abIj2vxSNmHeJIYLaRmf0f4kx
/pVLqfZiqNI03u+MX43tysTvNyYfBdrj6KviVBpuy71PKh04ApfqZvWqAo1w
dFPvPztsjkCnwaoyHaYx+kz/unFzogiuuzQb5b00xvZ6Dgz2HwYk/+USIKNj
ZLKgq4M4DBk/Sf1cJWtw/c6/2VHfHYJE+WTaDicTlOy8X5Px4CA4xMn3ly6b
YAuNrz8aHg4X59dw9R8xcM/bWk2p2QGoWTd5RVZiiszeG+ppeRicbtvjdv6g
GaZ0xhS3hoXCW6egljTWWrQa+NgzZSoEln/XeN3UWpyfdtJva9oHn7gvSJQG
c6SznPtnJSGQnZIQUCixwPbwuW8uO+2FoYR8dz4wUXY7dEj5LBh6eJ5URx1L
HKYVTeYWBEFWgyjXv88SN2dELg85COD1rPVcVpkVPl7N5Ou374IZaWz2bDAL
N21Rk3x9AkG0VHmo24iN9Jxl+W+ZfKiidZ2qj2fjWU1dGfXDdvBMdn9RP8LG
oPwb4qvO28Dpsjq43dcaA3yIGtNUX/hgGbXt/Q/WWOMWb1/8GoC9SOS4r+Jg
NnfDeL7YE5het/yKjnPwXASH8q+fG0hckunL3RzsUTNI7ls2gu25TLdsFwJH
wzz6WYW2IHML+922jMBrEyLpIQUDNmWSPQYuEbjZLdImRsSAtmd3rmVWEFiV
FlObQGbAcJzhSWUlgX3U07JcgQmQbiroUunn/+sLzY0qOoRbsYXMOgIpibV9
X1CNgEpWKY27CBRoB/VEChJc2VsS0NpN4IXiMUoSmQQ21d53T/YQ2GytXp0v
0AdPn/Ks3l4C2Vs1FnKVHkSkbucWDhI4nc10NaDqwsOpG7EUFYE7bFo7jioW
eHxeyGDTGwLr/fv/KBTM857nr8CotwRi1OuxJtUsb4IbZtQ+TiBNRlo0pL7n
mR01bMycITD8RHnQMcUb3vWGJqbrHIEbGpqOtaiUvA264gvKeQKXF4bPG1P/
5G29qgjxXSTQSxciEhTPeU8noh++1xA4kptRbknt44V6Meylnwicty8uyFM8
4alyWot3LxMYdcb55T2FnCcZil3UagmMPd9sJ7B77v0fpZ4icA==
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVjnk01AkcwB07ytGGbIZixl3jmMZvDRPm+3200ao3RpJYRBhT46iMIQah
RqtDxy6pl2pVem8tKR6VBik19eQmm8LmCI1jKNa17R+f9/nj88/HJCzWJ0JF
SUlp1zf+t3VwWMbXVH0catrnd7dNBLVjV1m8TH1sam8WyFpE4JfUNdkp0ccH
PR6ZY29EkH5pZ0hlrj5mDDmU2b4WQaeM6SK8qY9Gyzoa5Q3fuqPml+ln+uhr
K6t5WCGCDu0HfLkWGetytlq8zhNB2lMSd7CAjJc9N8zIA0VQ7JS1tqLJADX9
PghMexLgd9TpN5YbYusd+8GJ/QnwR+mV8MFVG1FX9fyC0agQTtgpd59hGaHu
9NQ4iy8EGxQGN/sZY4TFQO/EZDwUhza0z+RQMGm8/e7FmHgwEWYvPwyiIqmm
dV2+/Ci0qDCveo5RcbglRMwUHQUBuYXRmGWCkmMTdfWzRyBKpGjW1TNFMe97
tU8pR2DmlN7L09dNcTzIaSRW7QgcNDer/upkhhtGwm99PHEY3FdXl9MbzfBa
JTVMseYwrIp3KfIPNcc+8of5iZw4CLz4RF46Z44FWcX0XVpxoLPY6NZ+wgJ9
+SqybFoslI8/OfvJ2BKnJqtGfTbFwANL14+vSizRRfmsBtcxGm6MFDMKPa1Q
lRXVR7MXgHHwuu7rfVb4ONN/+hnjECxtJGXHxmxC6l6e6m9uB6HxwEc6ffVm
VPZJlgHwYUbxc/+jvM14uqMk13hXFJQ6lo0lmNNQU/DlwpMQHvipqspNa2hI
om3z2hocCcHk3vkrXtZYElemMhodAdyKoiXSkDW2vjeJE/LDoZ10KOCa2AaH
Q+4a1PMPQHVhVa2qpi0W8zn1bslhcKpOYRxQZIvDBf9SCxND4bFN5UkxYYdv
fBtS6ZL9IPYSebyR2qGfuydDxSEEaNMWSrr+dFSz0W35hQgCp4HAepMhOmpb
GsRSfAOBXAJsHdyC5Fha0uWd++D5mh+oc5ItGPsy8Xgyby84v+DbJTRtwbId
CuW+nD1we3tF1bghA4fJifIFyW6o5zc07ghjoHCe9TbtNhfavGU+haUMVPHR
2p/A4sCf5zkapxcY2Lu4uDTl5AVMUf72EDd7jJTx8l3FHlBB7V6mnbPHMYdh
jbk4dxiK+du5t9MeKdl1iu92A7xfH3zL0ohAdZeIcrNRR3id0fVrFJ/AG3vD
3bCWDocu6s3mlhE4VDekkySlQuSIzb2mewQqDtxnJKdQIcz1p2it+wTKSOlc
MYsKAcPCQUkFgRMX7E1VeRTwdO7qSH1IYOrNPKoexwjM/7lcKWggsKAu1IhJ
MYB39pREz24C21dm1x+TakO3xPHHk28JPO5+zi+VpQ1t7ziTT3sIZK7l2pB4
a0F2Mj0KeglsMK6kreesgaqefn/mAIH9rulWThR1uJRRxDIfJ9AwRc8kRaoE
uV2PZ0M/EzimdhbVeSvsHJuOe4VyArn6CrYhZ4md0UmibZgiMIZZ4+xCmWfH
0XiGul8IvBPPdUiXTrIFaWmdnK8EPlKL5plyPrN57XkXzswRKLFyDN9G+cQO
Tn2hob5AYF3Eq6BsaR87oK3v+fZFAgPVrCt8KW/ZezbNZ2QtETjjIf0rX9rM
9hbrQP3yt791d7yrpbXsna2bF1ZWCAyJJAYU3n2u/wHSaCNe
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVyn080wkcwHF1U7GIM5PDyYthNWtpnsZv32/Is1cI15XK9kLI8rRRHmah
QsnD5PGcXiI9ILXEXYl1OpEuycsUoSetdtXrSinpXPfH5/X5523Gjw+KXKqm
pub/rf+vd4RC0jSjoaqsgWEVIYER3wtbDCxo2EUy7njEl0C5jk+NhRUNi4TS
TWU8CayuzrIFGxqyg7NDl+yWwI8tr8KFTjTM0AuXjP8sAev7PV2TgTTULjUa
KdoiAa6pIFWWTcMNRaXpnzgSiO24+SrsGQ1T8iUD/boSCNOWDZh0WiK5N+XU
14Qs2PpYN3Q00wqz/xZvIwbEcPA6baEFrHEmMFNww1IMvjdENe916RiQ5RQS
J8qEH1wdZlijdNS3yHuqupsBuUr22olza/FZcZl7sXEG0Kpe5J1OX4e1nAr1
tLh0GLxJlkZzGdiygyFwupUG2oZx5ZW6NtjnntVkQk2DECWxuWfUBp0bI/IU
8QfgvrxXe3klEytdsX90cD+8lh+5dzVmPS42PZiYN9oP6qaTppepLOzJVa+Y
TUkFfkL5VrmEhQX0t+Z6vSkw7nGWMqlkoQv5rk4qJQVCx4XnP3pvQO+ITQ1t
CSIwzZnkesg24K5DiZqruoWgUqqdKdG3xTsmbAM3QyGQ+HItisQWPcSXP9ZE
JoNT+ITaaaUtNhmts+e0J0GicVv/Rp+NyGOxjVt1kuCjyqzok2wjWmp9GfHY
lQjiA35rf6Oy0Y0XzG7vSACzY/eC8lPZ6Pvu1PtoSgJ8f2k2tXiajZ3lfHLO
n/tgWflQktTVDgsc6jOm0gXgWegTe6fZDpOid0oP6cdBg4bpW6q+PTL01GOv
tMcCyb3ZOyzFHsub7xWWCmLgYoni5NiUPVJHDX/q1IgGXu3VOwGuDuj55rAg
vysKGMz5I2P1DugvmXZ7nhoJm4dHuRVkR4ysb+8uoEYAjx13O1DgiEzZhbzx
QT4MnK0LdlM44spg2pxoDw/sHx2VsThO+MvT7ktXDcPh+onhOpsaJ5x/UBi2
unEnSHkdeTwSB2dWSn/1m9oOe1XBniVRHLQzeZKm8NoGJXnFSz8NcfCMv3X9
h7QQGD5n6bvPyRl7Ez296b8HAfWoKGa62hndktsKZNYB0CTm5+aTXHCMbsas
7/YBZ9YKEXOPC761EqUXHNsMqqgV75/0uaCvVvqt2mQEZdtpwV8sAhciJ0Mv
KOxA2fm1q72UwGH/CfIXTSuQm6tmYssIPFzhTbvbagnVx8dWrSknkPP4CvdU
kCX4R8h4BVUExglLEn2raXBpVYz67pMELqvxUNTQLSAjasRvRes3r2yrd/Ey
Ax3K+fHt/QS6q5OTFzQN4KW4kqRzm8DmyueNDUFUuPHykM3NQQIpjJ4xv2p9
EHWHZ60fInB/kIhbS6fAw1iqOUnxzddNaXC9dKFBfjC25RmBVsLoTYuayyGT
ES/lzxA4V23StKVaHUIrwq4ZKAnskw+vPEkngYbAQTtbRWCRNjGGXktg3+rX
F0PfEfgm0HySRJ7jeuY8fEieJfB4XeHZRvosd82bvu/kHwhkvp4Tenj9w73/
R33Ius8EZmhVGeiQX3CbmcXi6XkCr50RtAZ6PeYerspsOrFAoOPB3AJLsoK7
m7R3yOdfAhPidyRsJfdxHeO3fV5cJDCgxyhVlTRD/AcggxaR
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVxX0803kcAPBdeTiPqVe3uxYu7lC0zGwU9vt85kt1qMVa4cQkUyTkKSFh
U0la06le8pA8RCmJohdScaUu9SpFqNChR+0U8hB398f79TbaGuYROIdGo637
z/8/rXalxQATN6uzV9dLZGDIvs/YTZj4rZFhoBsoA8klF+6uNUwsipn7xS9A
Bl/LfguWCJioHGg/M1csA0b+mvZNfkxMb4795uIlA99D5JxtEhMbkxuqn7vK
YHCL/YaJRiaaTq/9ZZwlg3E1i4IEagV+UfrR2FNS6Fc8ahvzsERzjTH102lS
2BU06H7UnIVnWxYM3VgkBUlUodbiMhYunT0fpnYpFUjezQwx2wqdgyqc+fap
YLZEuy+hygqLI7mfuQ9TQNlYN+3BY2PeRZNhQ+8UqHYrHipoYWOhRKEwH0qG
JHZ9cYuTNb67JdNVxieDJdfGoqjNGu+t6+soU0+GwaPdqV4CDg4n3N5jkLMf
Tj5vPJ/2gIMGy4xvX2HtB0tUzQndxMVW9cc1CXuT4MFMzBaLZ1zsVQ09rnp2
H2zoch0qFNugmX+nTmxdIrQV+aLijQ1Krzp0MdsTQHjn9E7PIFsM3nhR5DkT
Dw1qlLhTaYtJAmVICD0eVuRpmllGrET9LLAa4e0FqYddDUyvxHfWfsf8hXHw
dLR0wV3pKmxri3Wih+4B5j9IzFTs0K4qt4TKjoVgDZ49Ztrhs5Gss4KKGLgY
t02NNc8eJ+NPCNqfRMPHztaCE0fskTubtT5vJgrmixRz6ugOWPBK/GbDj1Hg
sCzN9nK2A2Z9b28VC5HgxnhhHWDEw5rMgYVpot2weTJiNqOMh590D7l2hUXA
DjY778hSCis7VlkVngoH8QGRytoqCslUdEDx1jDw5RTxnrMBbToVtz5WhoLn
I9bq/kpAYdmZO03qOyHHSe/wY33EJxz3OYF2waD7INcn3wdR7L44R3l4O3x+
3TO/9Qyi+9K0HevqJNBdcpnl248okmtlH1MNBL6/ie0lIz6mfEjZLvYOAEa5
i9EWCR+15+aE0w77w1ieanRMCR9FopyKeTV+4GS8+8KH93zcvMhxoEnLB/Ry
E+8bshyxouWv7QciPaH3tuHG+jBH1D+ecU5/kQiM4yKarlY7okfHEeHGGHcI
6vLK1h91RL+4g9E1xm5gbt0npDgEmxY2dH/Y6wxiBmO0fg9BM+u3rMdSBzhV
8Wa2pJZgR7qXjRZ9BXiWdwQ01xGsVWnXu5LLBHrpn3f6rhNUTVr/3tuECYqC
oqP6DQQLIklBOWc5ZGSJf1bcJDj9O1PTRWgO++M6qcR7BGuWf/fyoNwUgpzv
Jgp7CJrmumvp0A3B1PFaX/gLgm/lq5t8TAzgb6rEOfMlwVSZffQFjj6IV0p1
WnsJXttl8spVyABvC8ylBgiGw0RVupwO6+fX1i8bJthyk1+jR9cFbd3SJWs+
EZwot/i5kqMN9zWzpduUBPcpfjgkEGrCWpUot/wRgrYBb30y5WrgOG7Zs3Cc
oIeGscZP9BmK9sUQ2V8JXu8e7dkknKRuKHWKBBMEm8tbK/+Qj1EO796HpE8R
DDnZX2lKH6YmB7selk4T5PHSPYvkg1Tt61brlm8EDZsDaE70l1RMb+2J/hmC
KYsl+fvobRT3RenU7CxB+czIr8mCj7x/AWJCH04=
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVj2dQkwcYgMO4oMWKgLhAK0NrqBL5jAnD5H0J6ytQghxVCyqggVCKkRUO
FRHDEKKoDFE5y9IG5VKiB0pFA0rOYBUVFBGFBA0GF6vWGgsBSn8899zz87Hf
tTc0xphCofwwy/+eXxVZfHstgYG/6c/aPZPA2ye3wYtOIJuaucLoqQTazJxG
brkS6CIwPa97LIG0vW/9bzEJtKRZyuofSmCAkzTVggT2yJxbUCWBy2px3M0w
AqMbd2j5VyUQaivlNGUQmKZUOv9eIoHTZcPvZR0EVr06cYMdIoFdXQ795vs3
oIc+W0ptKYBHEbUVI7YM5HbMXZC1sQBa+kdSa5oZGPazhWWtPB/GqtWD92I3
omwgsU+0Ih/artk6pZkxMcmG7/RP2RF4ZmEyVXqViQecGph2pkdAGCl7lxfF
wpOTh1+Op+RB7fT52skZFloVa+ekjeSCg9ZnelDmhi+MKidqInIBbBirecHu
aOE6Ep/1JAc0HF104bA78tbcSDYPzoFWGTDhjAd2f3ntzVFkAzf+bV+Kmyeq
8qtK7JnZMCfBY5ndkCdO/dUkk50XQwg/OOH0yU3IceTt0FmLwV12+cQpOhvH
rNOPPSw8DDFuNwPN+tk4qDbkRBqygFi46PlkBgd9BdaGqtQs4DKWzuz+DrC3
xHzfQuUh6A7QuFX2AHq+G1vDrcmEnN4v1S6eiPsU+qedpQehdd2zlPYiRK5P
k408MQPu122vr9YiDn1fHjoaeQCWOCqTda5eWDmQ0ZIfth/y2Jkmg0e8UPvt
YkUysQ/uHHppsO/1QqOx7j8Ujumwin+6bRmdi5fiAvy3TaeByptudTCHi4Lk
VtNgjQjcAoX3VnZz0Whya+uFrlS4/8mIl+nsjU7Mi/MC61OArtq0afkBb3Qc
t90aWpEM3cXbGlbd80aWx4nOxpIkKDf68/Obb3zwKbO5PzY5EVzPvKz5sNcH
K/iWHX/fFcL7ziDbS6rZvrXc9PqhBEhxjTLULvbF7cuSmLgjHtiFYYIFAl/0
LVWqDvrGAe3orxWEwhc9UnIzwimxoLtcyCn72g9HecfX/vtqNyjTH9c18P2w
vohqzCqLBq3nlyqPZj/c8GYyfkvdTuhafWfG+Ct/zJOmq9pE4aBtGHLOjfLH
j/TuhD1DP4IyTt5CXvHH540Ks3MXNoNuyU/9IgqJ9E8BCuF4ANB+2aravoVE
jVUvxUHrBWydYUmulMS5m40jmtUEHF+dbfqhlsTAMpc072ICNIK54yGXSFT2
hRd1+BGQ+d6m3U5GYmNsQ7tG7gotYy6ixisknsrgM0zE6wEnoroGb5LYwyu0
PRO0FrgWdwq4T0ikTtscvqF2gOKQQNHFbhL1+cKmB34OoC3qiprfQ+Ib6/aR
Abk9iBdqWC96SbxLSw83Fa8E5VK9LklDIruuUVAeZAc+TjRu9TsShdvYDxRq
KyiNka8z+0AiTzjqrpVbwmvpxqV7hklcn1MppYoXQC6NO+42RiJjpwmlMmge
qFwiKjo/kXjM/FhMm9oYFiW+KmB+JjGYNcoxF1Mg9opAdE5Por2qav3FIAOH
ykgNipsgkSaild1Xf+RsEU2wHk6SGHG2r6g5aJgjvZblyJgicTfJ16vVWs5n
PdWifHr2f/T5dWPNY46/e+HEzMzsH/HikUf0R/Z/clA5Ow==
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVkHk41Akch0dhCbukg9gMOSodrGud3y9mmOa37qUhPeYwCrnlLEeUGteE
B22twto8g54sW5JyVFgVSiFFmGUUlpqclV37x+d5n/ef94+PJjvMnbuBRCK5
re9/fn/36PkWVxN07spPl3HlQ5fspy1dHiboKBVZ3uLMhxgGr7TPywRt0bUt
zokP3Qu3Gid9TdD4ljzpHZ0PSQaKs/KBJqhWdjbxLyofRiva3LxTTXAqPjaS
Z8mHMr6e2sdaE0zfc4Qpr8cH3YAPNbuUTTFKiRpH/pILpmZyZaMTpkh7f6CJ
S8+F5CdKib8LzPCgxRuNyN9yYP5ytiE/+EeMc6p42yyRA8cv5t7qszLHe00W
0fZu2aBCJJHJJAvcXp6/O6c6C3r3ihntfRZ4YqKh9tvVTLhJGQ7ll1ui1vRK
YS89Ezq16gM5XCucObZ22fs6D0S6SkZ8M2usx56TKosXAOZ8xh59tsZsPies
xPUCNH9QDdFossHOcuVH3BvnwWGHX8fzLECSMn+OvZYBaWm0tA49RGKlx1zP
JwNEWdo894uIeZZvGJqV58DP6G7y3DKiha3kC9+VsyC27BTxvW1x4d5cqJ/X
Wcg8rGLm12aLNYXXR4oq0gFejiwbatth/KRWaBEpHZa4U6WGOXbrwaDnT5zS
4EF+tbn9oh0GSnTn2ZecgapdInvvw/ZYIfoUmbqaCkXt/iZXWuxxZM+U3gIt
Fa4+ZlwSalFwr7Dky8HyFLgb8s2MVRoFB/wi9leTUmBIa0XnwTQFJSPIAU3X
kmCbBeu5kxMVTytO3Lxx+DR4+ssHSN2moviYXYW8OBEq9SOnunc6oL7DgNts
QQJs93QevpLsgLzNYmtf53jgXQy5UzTlgOOF1/tMZ2JB1WCjTBHdEZmywsqr
pTHQFOxBrRQ4YukGL9PMoyeB0zgZOLmZhkN1rJDxr1GgGzxP2hNNQwuPT8KO
PyNh9oB1cvEwDfMFGpKq7hHQ+zMpXB4PofL8M86yVDh0bE9yybt2CAVxsUv1
KSHQNmuzjSpLR3LqqQTX+0HwSifG5UsQHYXc3FMy+sdBHD4fNvqCjiWNfc+K
mFwooOynpfTTUef8e+0yTy4YqwSRyYN0rPOUiKumcyGmWdjr95qOrfMHdrYa
c2FZYcDw7Rgdp3V5Qe9luLAmuCce/oeOhvm40brWHzZN8GJfyxB4P7jGeFzC
H6oaOlwSNxFINX+YMbPIgZ+yJHeryRP4RPr10OI0B7KNkgZ9viNwrFQmVa6f
A4pnIsyHthIoOch5aizgwDYNxudBLQLplB0BGe4c0PTWSe63InBEPaNoXzkb
6NL7An1sCHyl+YuvuJgN0XU/eIwAgU91azQbc9jQroB6k3YEPjToq3JMYENQ
m0/PAo3AWopGC9uNDfX6fI2tngQmnbg9VfwvC4YHC2UveREYH9FV47fAAulz
v4rVGQRGxwxH6k6zgDEq6NA+QmBwysavdf0s+FrwKMyYRaBbgYtSTw0LHNZW
mz1CCNRuEplL+bIgrEpCMBBKILl1de2xGwuKGTIFR8IJVGtXeJjnyILpP7Ye
50QRKNdr5Ew2YsEWprq7KJpA6ZcOyqLdLLBR2GUVHEPg51fegzU7WcA/ZqAY
FU/gB2Ey23ITC+5sMVtdTCBwZipPbwOJBeOt1n8nnCJwarZipnOBCXJhlO61
0wQKPzbU5k4zwVidaDiTvP7f0uMYrzEmtL5TVVla9/tv0wnqCBP+AxfvSWo=

              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVzHkw3HccxnF24qijNBWmaAQVrTNKWVc+n6xzfcOw4ox7EkcUKUF/v3Wr
JSqOXeOquLJIM3UNExtnlLhSjbbaGKRxRcm0KzIhIm1V/3jmPa9/Hu2IBM5l
hoSEBBzt/3auJXld0GLiCjd2JN9fAAyBTqJYh4nP7m9uMvwE4M36iV9wmomb
UpHKGT4C2GswmRswZuJOSVjoNY4AbEO2fPXsmCgh9Pkn7LwAxudDgvb8mXjq
B7C2QQE8mWFHVfGZGKKp0vWnvgDkRFrpS1LWuDAw0OD1mg8ryZMTk4fW+K33
PUvxDT68Gliy0NuywfOOjHaeIR8C2qxG/5qxRQ1mr7viwzKwzS+5qj5uh0PZ
asLIiDIIeM7B3jZ7tNYbW+yXKINdy/dNRbfPYv5Jzem1ilJYNVIHvXpASY3l
5TcmpSDtO87MZiE2rC53qdWWQIBcxor2MOKWjb/SylQxuOXGfkObn8OnztGm
TVLFsO759+XrzefQIMCzAZxugL1AHt20WXhSrSQj51oRWNR4Go6Ws3CoIFJr
sOtreH5C5bT4PQeUbSk3vvl7IbA3aLNHRQ7YOlVTFKBUCM5cNY/oQwd82WDd
ruhxHSTzPqW7uY64qWtqH5VWAIHeub13tx2xMHCwWCTKh8QKzrHP45zwV7sm
9451HpibPAh/vOmEKXqhwTkqPOAXxs0eXHTG0ZEeU3dOHnReLPeYnXfGe++E
JwxmfgWxOy+eBLu7YLBUyxd6/bnwaPFFeuOwC/rKjI7FHOTAS5sE40pbV3zT
Y5nn/UkOdIfoih07XNFF1UH2s8hsMH/tMyQ0YiPotuz387MgaN2wvq+Vjepx
3yed5WWCboVVWYG6Gyq+jeG+YmTA7YERvmylG/osDwXvhqTBw9bsZpQnuGfk
9ODZbzRMWyiFyCoSDJK+ErM+e+SRWtXZdwkOPS1WXJumYXKxNz/0OMFC/vzR
BQ1jSuKYjA8Iau/Hbiy00DCUGmgyoE+QPcqXmU2hocvFvNfKkWBtwDK7T5WG
zrn7CYdOBBnmUmKR8pHDPT6ecCF4ScGA3ytHQzs3ptqXEDwznLTQ8y8Fdzrq
uckcghMfycR2bFAgVFPA7jCC29vGRcK7FNwSVu/TEQR9pjhnbnVS0GSm38W6
RLCvKXWu8Q4FjYSl83MUwVyfEc36OgrqMr88thNPUK3/Qls1j4KbCtKDoqsE
08opr6osCmqrBclZiQRX4+p2K2gKarrbN5RSCLaf2rQvj6egGu3qH6cSVDlQ
WOVHU1A1M+VXTxGkfzHjlUUcOdBPOYpLcOk7X4PSIAoq/1ifNEknyOJxfyz2
peBKfCf7w0yCkifk6+Q8KTgemzj79sgZrs1iDXcK/gPn8MUw
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwBkQNu/CFib1JlAgAAADgAAAACAAAAa5AucK2nOkD3dF1LpH6WP2Loi6jd
qzpABa07KOB8lj9YQOngDbA6QBPlGQUce5Y/RPCjUW64OkAvVda+k3eWPxxQ
GTMvyTpAZzVPMoNwlj/ODwT2sOo6QNb1QBliYpY/MI/Ze7QtO0C1diTnH0aW
P/SNhIe7sztAc3jrgpsNlj8Oi1m9VdY8QEBRBrkQk5U/BQi9+K3lPUC4LrjS
pCCVP8CEVJez7z5AZVaog3ewlD+HgDWqIghAQGNTJTPINpQ/nP6Hi8qOQEAL
VTnGN8WTP3r8GXy4IEFABSzaVyVKkz86+kUe/a9BQDVNuYBR0ZI/6Dc5w6A1
QkAPcy+NnGCSP1/1a3eKxkJAOm4ymGXmkT/F8mUu001DQA5uzIZNdJE/DfD5
lnLSQ0AYuKQMdASRPx1tzQ5YYkRAddcJkRiLkD8cKmiJnOhEQHv7BfnbGZA/
42ZCEyd6RUCl6R2/Oj6PP4yjtk4ICUZAwnCsujpNjj8kIPKMSI5GQDEBaX14
bI0/hBxt2s4eR0BEPD89sniMP9NYryq0pUdAqYBDxCmViz/rFDGK3zdIQLBv
YUidnoo/5dBMm2HHSEAl8/v6jayJP83ML69CTUlA7X/EdLzKiD9+SFLSad5J
QFe3puvm1Yc/HgQ8+O9lSkAU+LYpT/GGP6C/v8/M6kpAPs1DljQRhj+NzFpb
De1KQD1n6htoDYY/etn15k3vSkA9AZGhmwmGP1TzK/7O80pAPDXerAIChj8J
J5gs0fxKQDideMPQ8oU/co5widUOS0Ayba3wbNSFP0VdIUPeMktAJQ0XS6WX
hT8yarzOHjVLQCSnvdDYk4U/IHdXWl83S0AiQWRWDJCFP/qQjXHgO0tAIXWx
YXOIhT+uxPmf4kRLQB/dS3hBeYU/GCzS/OZWS0AXrYCl3VqFPwU5bYgnWUtA
F0cnKxFXhT/yRQgUaFtLQBbhzbBEU4U/zF8+K+lfS0AVFRu8q0uFP4GTqlnr
aEtAEn210nk8hT9uoEXlK2tLQBEXXFitOIU/XK3gcGxtS0APsQLe4DSFPzbH
FojtcUtADuVP6UcthT8j1LETLnRLQA1/9m57KYU/EOFMn252S0ANGZ30riWF
P+r6grbvektADE3q/xUehT/XJCm+CX1LQDCfrXyKGoU/xE7PxSN/S0BU8XD5
/haFP/XFEfz6f0tAjXgl+JMVhT+94I4k
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVz3s41XccwHHxiCkqm9mk54yI1nEp0zDH5+Pu/L6xGE6PopXWRRi5VMPZ
VuRSv99BLueXMKwyD50oIXLJcSu0J0xoj9uDNlNyPZnHmf3xft5/v/SOf+/1
naKCggKu9/9vC6KtcxZtMd5FDQIfsyCMqeacXLFFPweDMf9aFgT5K8p75bZo
ZmeXcKiGBdUp4YtWVR4OWZ575l7JQlB04tm57Ty0MBwUWJWxYJYpzuU78HBU
qSRMPZeF6hePNsgYHmITv7AqloWn7vIOb2M7XP0qWXmzLQv+Fyp3D0UCcvlv
inskYgjXEJuU+iDOve7/eJIrBi3NDtPhGcR7rtsUUkqzYVaSmi1Lt0fjevPW
A3rZIE2xOaNu4oD723p9/fKz4Ln8h0LVXgdcnQqQXtHMAt4uMyfZeUesabMq
c0rKhKLkFo/xrU6oYZP9rbtKJmDiXOODh06oKx2ajYzJgL6mDTd/9nTGppFf
yZTsOnSVxQ87/OWM/nWP9aYvXIdVi7yUv2kXLJfU9aq/SQeDZTaPNnLFm5bo
FROcDpe9uTra3a6IPb+VqoykgVPgvrWMcDd8ZRZ4ydA3Ddbu6hANNT5qcAr0
mb5UeJvBykMkfJQZtuRrUanwsmpFt4NP4aJwqPu5SASdWRo7Tx6g8KcFueDU
VRE0RenvVvqawg+CDEbXroigxIKy5HlTqOsTMm8iFEGshHUvD6DQaY9c+1qw
CD67YyVkIyhM79c/5sYXwems6OEzuRSamwfNNyqK4EhUysTGXyh8dIuJPbTG
gKd33nRRIYWO2+8rz75nwEazdfnPOxQKNq5qc94xsJnR2upVQaHwFW0bN8zA
vYQHaNNGYVdSeYJ1HQOyyLkCtXcUBo3KtCuiGKjQL76YM0/hP73L3IBwBoJ/
9/fkLlEY2r5krxbCwMieDgWPfykMlyycPX6Cgfax/KNpygTPx802aH7DAHvQ
fccnOgQvf/r6VIQ5A95riovFugSV1KdiOVwGNEqrO605BOMVJtOeGTFwScUg
9rABwaSp8dqdHAaC6lcG80wJMpXDW3rV1z3cYrGhI8Ecz/6qL6ZpWBjwD3vo
THCH8x+dI5M03E380M3VjWCeVd/otTEa9MeFy6fdCRZyejZNDNCgdsPHt1RA
sHim+2hmOw1S102mPD+Cn492RdpLaRAuNip3HyFY2tuZPNNAw9xBbuXbYwQl
tU/vO1fRMKii9JFFMMHK5FaVpVs0ZFRWTzeHEvwyrkW3sIAGj8DQZu9wgjVh
0r0euTSobjPImYggaHOi2WVFTMOT+oFz0dEE6wRPDt/OoCE2WESpXCRoR5rC
vFJp2K/jrC+OIdhg15iwdpWG2baV98ZCgvb7Gm6UJK57jUykCz8SnNjycktR
PA3/AZge3Bs=
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwVxX1Qy2EcAPCZrrelm+jCmZIphBxKJN9vL1v1e6yXUXRcdbk6Yb1wac6V
Vpc7opc9W8k2Io2m4k5ezpy3vBSKulJnWZ23ujS6sttQefnjc5/FKZniVDaL
xVrzz/+pNrA72QXwsST7Xj9XA8f9JWEv3AAFfkuKFc4akD4717yOB9g22S3a
6qSB3V9mKG2XAXaWBAzo7TTg5dUa1xAEaKz/M0M1rYY7ddt7LXsBJz+fDk8Y
VYPxkuRd6QNAv0RdV89zNSg6o7MS/RHroz4Od+SrYabTSDVvHFETq5slHVRB
zkbHG/svBGOgQ0XS+a0qIAe1uZGiEGS+b/Ns1J8FwZAu6Y5dKO617H+fvegs
hET7bbh1MxRXN9c+bS6phj0T3msFB8OQTddom0bPwPDFyr49PgKMrKm2lMac
gSxBScbsPgFuTPE8bLpfBQv5w94xVIj+QpaJvbgKXppfvOGFhKPBOFVeeboS
jF3Llx41haO5rreOO6UE19ExdfrlCFxYZnsjOFkJ0dYgm6HtkTiyMs401q6A
RpwoNXMZfD5qdd/hq4BMBf8pbWPQzSBtqaUUTmbrj4S9YrA2Qf8tsYKCNkq8
2tzBoG/f1PwFZRT67Quq4rsZFPYUZpWfpBCRZ0ifP8Dg4deneHkyCh5pcufz
Pxh821KTG59JoWsDa6fOnSBtaPVxIBRMc6ucdnkSdPfh7HgSQcF+fNUjzlKC
V+tFhceEFLY07FohWUGwRdvVZw6moPO4PenrR3Cipr/4QwCFIoeMCzcZgmLl
2IDei8K5LzbxaSKCxjnrOLl8CndbVI5uMQTT5Tn+az0pjOW1HZLGEZSV/Tp1
hUdh9zhfGJhM8PoJm03KuRRyX+t/fU0huNk+PDXGhYK8QXxNnUqw9fiJcg6X
QmtawbzpfQQHi5yHZBwKH0Pd2pskBA+wY12CHChMezTJkrIIWgtokNWWwnqD
YeRhDkFu/jxFBpsCJrA+XZUS5MduVln/yIH08t9XHiUYwE++WDglh/i4yLey
fIIiS1G90285JCoMYssxgj2Dro2dP+XwF56rYG8=
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwB4QIe/SFib1JlAgAAAC0AAAACAAAAN5yeAKuCQEAhSkcN/DqgP5An6aGw
hUBARjg407U5oD/osjNDtohAQGsmKZlvOKA/msnIhcGOQEC1Agsl4zWgP/32
8grYmkBASbvOPMowoD/DUUcVBbNAQG8sVmyYJqA/TwfwKV/jQEC+DmXLNBKg
P2dyQVMTREFAtaYFE9vSnz96t1ZbwBVCQLVSX6sFIp8/28xqTYjZQkBePvow
6HyePxKS+Rd5mUNAqodh3wfbnT8rxvqXrmlEQIBqqy1vK50/k8r6Af8rRUAC
jTZpjoecP909bSGU/kVAEkmkRPXVmz/8YFoZUs1GQMFi3kiZJ5s/alRG+yqO
R0AbvFk69YSaP7u2pJJIX0hAAa+3y5jUmT9a6QEUgSJJQJPhVkr0L5k/zsvZ
beLhSUDGccLxjI6YPyUdJH2IsUpAhJsQOW3flz+sQQmBj7RKQCnZ4pnf3Jc/
MmbuhJa3SkDPFrX6UdqXP0CvuIykvUpAGpJZvDbVlz9aQU2cwMlKQLGIoj8A
y5c/jmV2u/jhSkDfdTRGk7aXP/ityPloEktAOVBYU7mNlz9+0q39bxVLQN+N
KrQri5c/BfeSAXcYS0CEy/wUnoiXPxJAXQmFHktAz0ah1oKDlz8s0vEYoSpL
QGY96llMeZc/YfYaONlCS0CTKnxg32SXP+gaADzgRUtAOWhOwVFilz9uP+U/
50hLQN+lICLEX5c/fIivR/VOS0ApIcXjqFqXP5YaRFcRW0tAwBcOZ3JQlz8c
PylbGF5LQGZV4MfkTZc/o2MOXx9hS0AMk7IoV0uXP7Cs2GYtZ0tAVw5X6jtG
lz820b1qNGpLQP1LKUuuQ5c/vfWibjttS0CiifurIEGXP8o+bXZJc0tA7gSg
bQU8lz8MLSiNkXZLQPrM8exAOZc/Thvjo9l5S0AGlUNsfDaXP5AJnrohfUtA
El2V67czlz/iIPDN639LQIKtZ7FdMZc/Vu9Dxg==
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwBAQP+/CFib1JlAgAAAC8AAAACAAAA9Dlr/i5qQUDAafbiHPWhP1QS9vGG
bUFAn/o+8rPzoT+16oDl3nBBQH6LhwFL8qE/dpuWzI53QUA8rRggee+hP/j8
wZruhEFAt/A6XdXpoT/7vxg3rp9BQK53f9eN3qE/AkbGby3VQUCdhQjM/seh
PxFSIeErQEJAeaEateCaoT9YfASjKChDQAniV3cNOaE/E3tDzcUAREBNxFDM
td2gP38NJDIj1URAp2ok0yiEoD8VsjF2gLtFQNgZEcoEI6A/HyubIn6SRkB6
1XKnuJCfP1O2Ma57e0dA84j1mjnMnj841Wl0OWBIQJfELfJPC54/kcj9opc1
SUClQ91uXVedPxTOvrD1HEpAYNS+yzyUnD98QZeqVSBKQLA3yCVkkZw/5LRv
pLUjSkABm9F/i46cP7SbIJh1KkpAomHkM9qInD9TaYJ/9TdKQOPuCZx3fZw/
kgRGTvVSSkBpCVVssmacPxA7zev0iEpAcj7rDCg5nD94rqXlVIxKQMKh9GZP
Npw/4CF+37SPSkATBf7AdjOcP7AIL9N0lkpAtMsQdcUtnD9P1pC69KNKQPVY
Nt1iIpw/jnFUifS+SkB7c4GtnQucPwuo2yb09EpAhKgXThPemz/CoZ4hQ/hK
QPbhr/1I25s/eJthHJL7SkBnG0itftibP+aO5xEwAktASY54DOrSmz/AdfP8
aw9LQA902crAx5s/dUML0+MpS0CZP5tHbrGbPyw9zs0yLUtACnkz96Oumz/i
NpHIgTBLQHuyy6bZq5s/UCoXvh83S0BdJfwFRaabPyoRI6lbREtAIwtdxBub
mz/f3jp/015LQKzWHkHJhJs/ltj9eSJiS0AdELfw/oGbP0zSwHRxZUtAj0lP
oDR/mz+6xUZqD2xLQHG8f/+feZs/cL8JZV5vS0Dj9Rev1XabPye5zF+tcktA
Uy+wXgt0mz+UrFJVS3lLQDei4L12bps/SqYVUJp8S0Co23htrGubPwGg2Erp
f0tAGhURHeJomz8j1WC1
              "]]}}}, {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              GrayLevel[0.5]], 
             Line[CompressedData["
1:eJwBEQPu/CFib1JlAgAAADAAAAACAAAAiuPNgB9CQkBIXewsz7WjP95WrP/K
RUJATcuHAUO0oz8xyop+dklCQFM5I9a2sqM/2LBHfM1QQkBeFVp/nq+jPyd+
wXd7X0JAdM3H0W2poz/EGLVu13xCQKA9o3YMnaM//k2cXI+3QkD4HVrASYSj
P3O4ajj/LENAqN7HU8RSoz9+9FKOoCtEQP3WMMRk56I/bXZ1K2IZRUCiKnPC
IoOiP6qegtd5AkZAzOLKN9ggoj8JLtshU/9GQOwRsPY4tqE/TANus0zrR0Ba
nG5Dt1KhP7I/TOMH60hAvZ262eDmoD9mIhUiGeZJQKYDHOcBfaA/CC8t6MHp
SUCr7ojhdnugP6s7Ra5q7UlAsNn12+t5oD/wVHU6vPRJQLqvz9DVdqA/eYfV
Ul8DSkDOW4O6qXCgP4zslYOlIEpA9LPqjVFkoD+ythblMVtKQENkuTShS6A/
VMMuq9peSkBITyYvFkqgP/fPRnGDYkpATDqTKYtIoD886Xb91GlKQFYQbR51
RaA/xRvXFXh4SkBqvCAIST+gP9iAl0a+lUpAkRSI2/AyoD/9ShioStBKQODE
VoJAGqA/PIWpdELUSkDA5ekplBigP3q/OkE62EpAoQZ90ecWoD/4M13aKeBK
QGJIoyCPE6A/9ByiDAnwSkDly+++3QygP+zuK3HHD0tA1aUR9/X+nz8rKb09
vxNLQJXnN0ad+58/amNOCrcXS0BXKV6VRPifP+jXcKOmH0tA2qyqM5Pxnz/j
wLXVhS9LQN+zQ3Aw5J8/2pI/OkRPS0DswXXpasmfPxnN0AY8U0tArgOcOBLG
nz9YB2LTM1dLQG5Fwoe5wp8/1nuEbCNfS0DxyA4mCLyfPxW2FTkbY0tAswo1
da+4nz9U8KYFE2dLQHRMW8RWtZ8/0WTJngJvS0D4z6dipa6fPxCfWmv6cktA
uRHOsUyrnz9O2es38nZLQHtT9AD0p58/jRN9BOp6S0A9lRpQm6SfP8xNDtHh
fktA/tZAn0Khnz9YnDLE339LQHFnCnNsoJ8/XXxq4w==
              "]]}}}}, {}], $CellContext`null = 
       Graphics[{}], $CellContext`enthalpyPlot = {{
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJxF0mlMEgAUB3C6vM3yaMu0UVmS0NyEYeFRiYhppGBo4n1ihsUwLcyrzDQP
bC21SKihYtpBNZfOuaZZWVo6FznXgUW6yJpOyeyYI9vae297e/t9ee99+G9K
PsZLW04gEDhL/W+yToeTLl/I7CH8r5MDmyKvytBtDsYSZRV6jbp2vKkc/W7g
Td29YvRxx7RVg2K0qkWqXwxHE4ZUDSlr0fwHt7+cKjsMZph97uowQ1sO51Py
yjPAEupg7nmTECwysVndRWiCsOCbz3w6uIBtRwvIQlfWDJuOTKeBqdnBTfpU
tOjhzIv8iVSw7IyxVpGODtFrvK11KeD6VnlcQzy60MY/Nk+bDD5g8Puj24/W
kEUbhUNJ4DarCGdfFprOzZDTniSCY6l0o5SBHnXpHatMTQCvU0leZabHgyvi
a4s+8eLAxClHWiM3Flwu5GwX82PAbi4Lw6NMAVh/bbHwbGA0WCvIGR/0PAS+
Yq4uJhKjwEUlVI/uzZFgOd2rdNaOj/92Vhuy7A6CJymqqgWHCDBpzF3vvIIH
ruZZ7SldyQVzLLqV9h/DwH2WrkM33nPAuumZwuiJUHBSQPNFv559uJ/m2KHp
YYOjLqX58+tYYPIYie2UywQzu5oTU/L2gs85WXU9b/EH2xp9tIZGBt6v5876
ttPBxesp2oWjXmCuxnhXMUkB58sFvuaP0OrS3n6xEv07pkbHjEI3WZBtpp6R
wT+TkoX0Wx7g644jrsMSEnjA5N26Mww9P6WkqcjokF5RaM6EO/h7loV0QyQ6
uH+3VrhrG1hyX50w4oRWKGy/Mua2guey3y5bfRPdQDzh2e6Cfmqt63L95Qae
/REYVPYaHfTSPk4gQ4s7pYa+TLS88UP2Djb6sYxtqtuCnpHeqVhKMfgvYf84
hg==
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {-200., 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{-212.5185780439707, -10}, {-1., 1.}}, 
            PlotRangeClipping -> True, PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             
             Style[-10, 15, Background -> GrayLevel[1]], {-212.5185780439707, 
              0}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJxTTMoPSmViYGCQAWIQPf1oanfOO80DDFCw48HDkOQ3CP6N37FyUa8QfEmj
sI3uzxD82fPcrivdQ/Dnl6sr3zyL4C/XfLnLdS2Cv70355VcDoLvKlCUc/ue
Bpy/pPdIzpcoBJ9j9pczi2+qw/m3kpQDYn0R/BrV+YHFp9Tg/J5FkmWTbRD8
hesLf3luVIXz27eL/Y3RR/BvV+5SqlqkAuczmK8+9lkOwTcp2MX2QQbBz1x5
0u2NFIJ/SfrFsSdiCP5SBtXjV/kQ/FuWJuyXeBB8vmJn93NcCH7F08Tjx9gQ
/DVyheyHWRD8h+EN7vuZEPxyl5aXskh8ABoOboE=
               "]], 
              Line[CompressedData["
1:eJwB0QQu+yFib1JlAgAAAEwAAAACAAAAibt7FuL9I8DTw2ItQNxwP38Drge0
/CPAMs6ObkHbcD+0PL1HsPojwOhlQXeO2XA/Ha/bx6j2I8BRlaaIKNZwP/CT
GMiZ7iPAJvRwq1zPcD+VXZLIe94jwM6xBfHEwXA/ypahCHjcI8CDSbj5EcBw
P/7PsEh02iPAN+FqAl++cD9oQs/IbNYjwKIQ0BP5unA/OicMyV3OI8B1b5o2
LbRwP+Dwhck/viPAHi0vfJWmcD8qhHnKA54jwG6oWAdmi3A/SLgUM9SbI8AT
hY8WjolwP2fsr5ukmSPAuWHGJbaHcD+kVOZsRZUjwAQbNEQGhHA/HSVTD4eM
I8CajQ+BpnxwPxDGLFQKeyPAx3LG+uZtcD/2B+DdEFgjwCA9NO5nUHA/wYtG
8R0SI8DR0Q/VaRVwPymOYJaUjyLAAA0ChKVObz//SnleFQIiwKfuBqD6X24/
2pdvhix3IcB2B7r7rHVtP4bfsiyg9SDA3TbhlSmbbD+g4fT1HWkgwIveKnIp
rms/Fb0He/DLH8DSnOiM89BqP8UrI1C5rx7AX9PI6UDhaT+AuvnkrpgdwBZB
V4br9Wg/3D5qdl2UHMBjxVlhYBpoPxQ42E0gehvA+cF+flgsZz/tJuAhnHIa
wCbVF9oaTmY/0TWjtURwGcB8H191OnRlP5C5Y48BWBjAGeLIUt2HZD/xMr5l
d1IXwE+7pm5Kq2M/LSEWggE3FsDLDKfMOrxiP3MvKV64IBXAb5VVaojRYT9b
M9Y2KB0UwKw0eEag9mA/H6yAVawDE8AwTL1kOwlgP4QaxXDp/BHAmfTsgkFX
Xj/zqMRLU/sQwCG/u7vGpFw/e1iD2aLHD8A4es94Us1aP1NKsRQRvg3Af2LL
snIVWT/iJdrbp4gLwFU7DHGZOFc/tOw2nLB4CcBbQTWsVHtVP5vzCdwScwfA
srW6ZsrGUz855NennUEFwJcahaVG7VE/GsDZbJo1A8CsrDdhVzNQP7KF1r2/
/QDAoV5eQt2oTD+9FpMcfaD9v4lABsGA/Eg/nfjgr16Q+b/TfH45TY9FP+ut
JFuRKPW/OpqAuibYQT/AOdD4pwvxvwYkpmpSwDw/eovQKuMG6r/WzLxdQfM1
P09K7JMYR+G/vm/Ow5QkLT9jbK/DKzrSv6xeyWaVvh4/lCcRGUPx0b/7JasY
m0MeP8Ticm5aqNG/SO2MyqDIHT8mWTYZiRbRv+V7UC6s0hw/0It63czlz78d
mdf1wuYaP9k+ljNCV8u/jNPlhPAOFz/spM3fLDrCv9iQBEaXvg4/TRuRiluo
wb9zH8iposgNP66RVDWKFsG/D66LDa7SDD/h/LYVz+W/v0fLEtXE5go/6q/S
a0RXu7+3BSFk8g4HP/0VChgvOrK/LfV6BJu+/j7AApFtjBaxv2YSAsyx0vw+
BN8vhtPlr7+dL4mTyOb6Pg2SS9xIV6u/DGqXIvYO9z4g+IKIMzqiv9i9Z4Gi
vu4+SqMhZ9zln79J+HUQ0ObqPlNWPb1RV5u/uDKEn/0O5z5mvHRpPDqSvzBP
QXuxvt4+3t4gf2NXi78PxF2ZDA/XPvFEWCtOOoK/3XH0bs++zj4HVh+vcTpy
vzi3WlYLv74+swyLiOPBkb6HUq0is/PdPQLuVDM=
               "]]}, {}}, {{}, {}, {}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{-12.965672143585541`, 0}, {0., 
              0.004116297428638799}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[
             0, 15, Background -> GrayLevel[1]], {-12.965672143585541`, 0}, {
             1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwB4QQe+yFib1JlAgAAAE0AAAACAAAAmNykYw1cGsCkM4mFk/t7P2DiapTX
VhrAoHeaE2H5ez8o6DDFoVEawJy7q6Eu93s/uPO8JjZHGsCTQ869yfJ7P9kK
1eleMhrAg1MT9v/pez8aOQVwsAgawGFznWZs2Hs/nJVlfFO1GcAgs7FHRbV7
P6FOJpWZDhnAnDLaCfduez/Q4y9vGaUXwK0e1LmG1no/8WOsB45TFsDvIAd9
MEh6P8DhoqyhCBXAsCtDBqW8eT+1giH6qKETwIkjKLtFJXk/nQ4TBqVSEsCV
MUaDAJh4P6u9jLqU5xDAuSwNd+f+dz/O1AD3RgYPwFsw3TCZaHc/KwTO9U1t
DMAvSub9ZNx2P9R5q0U8nAnAG1GY9lxEdj9ixW4SFPsGwDlugwJvtnU/TAwm
+ClnBMDXk3fUSyt1P4KZ7S4nmwHAi6YU0lSUdD85+TXFG/79v3PP6uJ3B3Q/
BkyxzrdV+L9y5Wkfx25zP4yVFArQx/K/8QPyIeHYcj+4FYd+djPrv6E4szcV
TXI/DzNMWtTt379oWh15dbVxP6/TcT0P6MW/Y5LAze8ncT8EWrAoFY3HP3W3
DE6WjnA/e7Tk/5UL4T8LysMoD/BvP+H6BcJAdOs/klHg2yXXbj8MFPMfp17z
P0izTuaUpm0/3n4X5Vqj+D9jQS8XOIpsP/byU3iSzf0/e+Ah1HBzaz877be0
/bMBQMNZZugBRWo/FgtgsEhRBEBx/xwjxyppP6Xi91qsJgdATn8lteT4Zz/X
vpvs0e4JQCcQQNOXzGY/JMVZAQ6HDEBmzcwXf7RlPyaFB8ViVw9A1WSrs76E
ZD+ht+cF5/sQQKgo/HUyaWM/Aa/RnH1FEkB4/V7EO1NiPzuDM4sgqxNAeawT
ap0lYT+DbCK7zvgUQN2HOjYzDGA/pTKJQoliFkDjemazQrZdP9QNfQtPtBdA
1T48R4d8Wz9V6/bHdf8YQMIkNvP2TVk/sKXo26hmGkAPv9NNF/BWPxh1ZzHn
tRtAJbJV9Z+6VD9bIV7eMSEdQJpZe0vZVVI/78/aft2FHkAVRopze/hPP5GT
5GCU0h9Ah4rm6RSWSz8HGjPNq50gQLU3ir0P1UY/zHS6ChNGIUB3lvYq22RC
P7rQBMIq6yFAW3JWkfkVPD8VGwulSJ4iQEiJTof/pDI/9u/XKGxFI0DFBrBh
TasjPw8fB3hWSCNA/6bzMKBcIz8oTjbHQEsjQDhHNwDzDSM/W6yUZRVRI0CQ
h76emHAiP8BoUaK+XCNAXAjN2+M1IT+J4cobEXQjQBkU1Kv0gB0/HNO9Drai
I0CoGkiUTqsTPzUC7V2gpSNAG1vPMvQNEz9OMRytiqgjQI6bVtGZcBI/gY96
S1+uI0A+HGUO5TURP+ZLN4gIuiNAqTsEEfeADT+vxLABW9EjQG5CePlQqwM/
yPPfUEXUI0BUw4Y2nHACP+IiD6Av1yNAzkOVc+c1AT8UgW0+BN0jQDSLZNv7
gP0+eD0qe63oI0BlktjDVavzPpFsWcqX6yNAMZT1Pew18T6qm4gZgu4jQPor
JXAFge0+3fnmt1b0I0B7MZlYX6vjPvYoFgdB9yNAJmqmmRiB3T4QWEVWK/oj
QPdtGoJyq9M+KYd0pRX9I0BP6hzVmKvDPkK2o/T//yNAGiAsPoEp4z1Gzy+n

               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{-6.589895164444914, 10}, {0., 
              0.006831718689295583}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[10, 15, Background -> GrayLevel[1]], {-6.589895164444914, 
             0.0068317188287184165`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwB4QQe+yFib1JlAgAAAE0AAAACAAAA5HUd0CEE8r9hQvmuJNGBPxJL0ceX
6fG/SDM8kb7PgT8/IIW/Dc/xvy8kf3NYzoE/msrsrvmZ8b/9BQU4jMuBP1Af
vI3RL/G/l8kQwfPFgT+9yFpLgVvwv8xQKNPCuoE/LDcwjcFl7b83X1f3YKSB
P5GCJXo/w+a/DXy1P513gT/6E5x6/MDQvx30kvSNFoE/8f/A3tg4xD8n1/o/
7buAPwNwXoR2OeI//MB0phNjgD+0V+fzOUHwPzXpDzGyAoA/GeCyQbLr9j/R
+GqkflF/Pyxw3xoJJf4/A5z4LomOfj+j+fHvUp4CQMlMqu8hz30/ie99IB7t
BUCD03Ddlxx9P0dpupZYgwlAB9d5E/5afD9elwDbj9wMQIKwl3ZBpns/fF+Z
CnUSEECPl9kPE/V6PzW1ispZ2hFAZvtd8dQ0ej8a5YDxvIMTQDM19/9zgXk/
7FZPu9dQFUDK69JWA794P3/FEwCEFRdA86/S4yAAeD8+Dt2rrrsYQBJK550b
Tnc/6ph++pCFGkD7YD6gBo12P8L9JLDxMBxA202qz87YdT+GpKMICgAeQIS3
WEeHFXU/DEgY3LPGH0C/Liv1zVV0P9/iSAtutyBA8XsS0PGicz+uwvH5XZ0h
QOxFPPMF4XI/kw8dHA10IkDe5XpD9ytyP9law/uERiNAYpPdyXZ6cT8Vx9Ws
2CokQLC9gpjmuXA/Z6Bqkev/JED0vTyUMwZwP6+aa0fa5iVABHZysOGGbj9Y
k+e6kckmQESLs6R4CG0/F/nlYQidJ0BxTB7zyaNrP8x/UNpagihAMgcO0vsg
aj+Xcz2GbFgpQN9tJwvot2g/w2Wl70YqKkCw74iw8FVnP+V4eSr9DStAFWtv
5tnVZT8d+c+YcuIrQGeSf3Z9b2Q/S5qS2MPILEBNsxSXAetiP5Co10vUny1A
HoDTEUCAYT81tZd8rXIuQBRo2viaHGA/0OLDfmJXL0A9k8zgrDVdP8E+OVpr
FjBAJ643hJhlWj+VnMZdE4owQDq8rEhFWVc/mXkRwJ/7MECYALLlKltUPyiN
HbyLZTFAz5wKN4WQUT8ysd+gZdgxQFtY2lJBE00/xwtjH59DMkDMJkagYWxH
P43lo/y8rDJAxWHSnvPhQT/Oz5rCyB4zQBwG5b4Pvjc/mvBSIjSJM0AmUOUi
FgwpP9y1rFEPizNAH25z0OWnKD8fewaB6owzQOKLAX61Qyg/pAW636CQM0Cf
xx3ZVHsnP64aIZ0NmDNAGD9Wj5PqJT/BRO8X56YzQEEux/sQySI/6JiLDZrE
M0C4GFKpFwwZPype5Tx1xjNAqlRuBLdDGD9tIz9sUMgzQDGQil9Wexc/8q3y
ygbMM0CqB8MVleoVP/vCWYhz0zNACfczghLJEj8O7ScDTeIzQLSqK7YaDAk/
ULKBMijkM0CZImRsWXsHP5N322ED5jNAp5mcIpjqBT8YAo/AuekzQJmIDY8V
yQI/Ihf2fSbxM0D9zN7PIAz5PmTcT60B8zNAx7xPPJ7q9T6noanc3PQzQOKq
wKgbyfI+LCxdO5P4M0COEUUDLQzpPm7xtmpu+jNAI/Em3CfJ4j6wthCaSfwz
QHGhEWpFDNk+8ntqyST+M0A2wao3dgzJPjVBxPj//zNAQsWCjMxm6D3Ju0CC

               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{-1.126009240184576, 20}, {0., 
              0.008699690427563302}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[20, 15, Background -> GrayLevel[1]], {-1.126009240184576, 
             0.008699690605108008}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVj2k41AkcgGezk9lpBqUl5a6c5Qgzrv/8flpbOQtpZClNhmWmQ45QYdDo
KaVolrRCmdCQmhzbQT1lS1tIWbtoHD1W12Zm5b5m68P7vF/f14hzwJ+7iEQi
+Xzhq78Vp6w2y6Rht/ygzWEvIWyRFr59eJ6Gxa3ypQ0eQsi+Xy8JFdMwXLL/
88RmISzvGbHLe0xDeQS/PsFdCGvUd7svUOhI7ot0TSCE4J4E3M7TdLR9vmtL
vLUQMnxI5Wn5aniiwjssVlMI38yiiB+ogYw9ZmcP9B6HNmPHpgTRMtSV9OXM
7jkO9JOU3O01y1EwXTKdp8iE0Isu4eImLYx4F93PFWTCjOVQb/nMCuyqseM+
o2QCdY67cExjFT48QgkkCjIg0iv0MTlADx0NXw9t1M+AP90bskmnDNCW26AQ
XE2HXtZ4SmSbIYqvX4poZaTDaKHHyfJPRih+kXm0qlEAD3+h8jqmjdFoMmEu
31sAhW/n/qglrUGDpoNT92RpoDNVOa/QW4vloVHn47lp4FfxiKxtZoI7VV7b
x39IBZsVBQOiLaZ4eO5NmslkCmjLipzb9pphPmO62ZOSAg1uGtEKnjneSjKV
ZZkfgwUuweedtMChfQEO/zKPwoL5Xz+8EFmiGi9/T9SOIyCuthw53bAOvXW6
W+mcZNguvKlN7lyPpykWG9YeSoJ7C1e0ImRW+JSUFx2YmwjPGH7vDOatUefa
9Juq4sPgmVX3ZDDTBjkhidZ6jQlwS683+CzFFqu3Lo4j9cfDiOYuNi/fFtXH
zk1RR+JANTifdVd3A0aVOvhZ0eNgVLk+h1m9AbuVXe8TdWKBsy20WMPFDr2K
s5IZFoegRrGxcNd9O6zfvK2f5hUDbYrjC3/72qNjqVYmdedBeIapPi2d9rhX
9cO028h+8HJZGrI8yAHDfH/v3W63Dy6JSJ3Zww6YNXmRqPfnQTtcZSTzGPir
9PJmj9woeOlRuej8LAMH2ss6LKoi4dYVzm3jdCZqKrtUWMNc0K6otVZb7Ihb
b5iaMM3DwZcWrm4icsT6R7EtKZs4sPfB027pSidc8l6+bCojDDw7s+l8iRPq
DbbdSWWGQn3uO1K6kzNajM1Y9ybuBGXJTB+tyRlXWWaNX5gJhJXq0SbNPi74
swn17riNP2i25gQpXrng2lM9pVFbfSDHwdczie2KJR0rz6SGbYK++Six1bAr
nnI7N3apjoAlWq4fg3gEXujr0S1gW8O6/6KzJPsIVCn7rtmpxwq8n19YvXCA
wLIoR15viBVkp0/+dCWOwH/GRLf1OetBTS59/ukYgbNUvx1iviVotJhfTz9L
YB7zSY5UYApaydoxVXUE1hhGkgvZBsAI3ERXNhCokDQHyEL0gW0TX+l3h8DH
DOPLhhw9KBh+OTjRROBrbxmrnL8KdALO+Lu1EBiXFJBYK9AG3XVk+64eAmPK
UruK2Orgqmr/wkxG4Oc7zrFrOHQIecPhH+knML5jXF3CXwJFBQ/KDIcILJ3n
efwmUAV98tHveZ++/FTfSBSzlSzWwLWbjXICK3pMpFL+LGv33W4fjVEC58hF
H+8LJlklMUxh3QSBlfeWNday5awH3hHGlGkCpVpK63bBW9aAqagpePZL32DX
j6/Y/SySSnNw9TyBVMvdbI2gdpZR3+iEUkmgvQHPqPnECPE/Xisr+g==
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {5., 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{3.564529143902071, 30}, {0., 
              0.010886126676375273`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[30, 15, Background -> GrayLevel[1]], {3.564529143902071, 
             0.010886126898541128`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVzXk41AkYwPGRRjGSdiw5Go0jR6MMQ5HmfWd+LIM02nKU7SJK69wcU5jJ
DIPR6NhNkaJ1lcqRznmiw+1hla2RazdLssl6ZPGU2PaP7/P580s/GLXj0BIS
ibTta/+rdstGYzyFhm4HF3iaPjK4a07W0Muk4aB0ImHUSwZhBf3q3HM0TLw5
WPKUJ4OWbJn6hTIa3pirUxG4ySDz6Nhy1y4aUnOED0ZcZKBpVbLsEt0Y/1SQ
rOrXy2BVsRHZu8EYk79VXR6rLgOtDjLplWQt1rYsa1I2ZMHEL07BP4/QkbND
v2m1bRactqs/P7XBFIc8jrEcSjLh06xLR2+MGeazA1ZT1mSC0+nFo/Quc4zx
dxX5ZWaA8zy1b5meBQYNCPySF6WgvSWixltgiSHp96r0w6Vw62pdtuFLK5Rs
SBFFKdNBa/DApiz99fiAkNcV+qQDd5zn6S9gICWpVOT+MA02d4ptGp7YYCx9
eXXrxjSY7blDVahuxMnGKT9yuQTc9ugyM2xtMfvUiOiujgQmbx9/nNptiy5P
6fqETAzkeBUJQ8JEikGog9tMKgi9l/LymXY4GW3fTApJhV5N25nAbjscY3k2
5/adhCuOKcrmVHskGR3xKnY/CW6e/xamrWMhI/r51uxHItjVLL88pWRh/Cin
dsxCBK0BxQVm6Q5YqYhHFWsh0H4fkpRaOmJ+6vz0iF4KDN4nCpU9jvgk52z1
nYkkEEo7fg1I3oTaCQpPl9cnQBLeXX6ZthnlQTOdDq3H4ePdz2/OdWxGXgZn
j8FVARAfvFVfRzshQ27ccEeeCF+yHwd00J3Rq3eFg0tIAhhyqirTf3PGPDOt
Mw4QD4Z/tEzkxGzBlbyi1hGbOEh7q3rQg+6CT267apwkH4MuZdgjfqMLXpo7
btE9GQvCAXcDWuhWLNnybOOFNzFwwduzIk+Hje8bDNFDEQ1nS+LMwu6xsZav
tXuvbxTMhj17PhQGqFZMdl2y8CPQNArs/dUQb1aYjFJfhMNP4bpCY3/Eysrg
/ZTqw5C8WBhSfwvRGhvHeg6EQqI6sqUkDn6UeDN0nEPA0mOyel0gB1l+0ynm
wwdA48zeUssqDpa5i7Y72e2Dfp838h0qXMzxCqaqvt8NwZy4VTsDuXjksHQ2
0d0P+srXZCRXcHHww8y2tilfSDOQCNXnuWjSE1TUGeYFw48/a0d8T+BhNZ/R
/UwusPql5+eKCeyk3DDdybQH3TN6tSGlBHaptSnlw3Yw51b2vKuMwBcq72St
uXagqGzSvHadQMqc6TR7gQlcMVkcWEUgbzi/wardFnytxVEPFQQaCvTaF1oZ
EJmY4pH0gsCLva98djFNgW+jFfqum8CCrm/uteWagN1QgXjnSwKLmnyMcYEO
M16P6hg9BJbXNP1j3b4Wko3nWQMDBLrpRtBV2owgu0lAZ48R6J/AKPFnUiHy
hDpc/5vAfcHFcdyFVcC3vRikO05g6Haj72zatYGadz93YuLrn7+6k9ymCXkR
syuuTBMorlH6BjFVIclEup4yQ+DZrOYpZjsJ9ip1eQmzBHIbIy1Wts2zTTiO
ku2fCEwy31BxiPmRvXSmsUjxmUD7CsNeets4++31XfUWXwiMpPT9kMj8i92y
b6T/3AKBfCXrWQGzm31NJ+7T4iKBsfP8sRs1U1v/A8OqHfQ=
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {10., 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{7.62394663448943, 40}, {0., 
              0.013332458503826259`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[40, 15, Background -> GrayLevel[1]], {7.62394663448943, 
             0.013332458775917254`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVjH041AccwGWnI85bxlzRg3YONQ6HvH2/5+74hbw0PY2yZBxzXvJWGub9
iNKFUR0XlbDGqTAeq9RFV1lem/Qmajqk0uvULbM/Ps/n+fzzMQlP2BqprKSk
tGWZ/+0dXmyRF0xDI6UpP4ddQihV7Z4R7aLh4WeNrvOhQhhumWtqi6Sh8kCC
5emdQgj55Gs5nUjD6Zp/VXRDhBBToWW1uZiGEhfDi/NBQjjQV7FBq5uGHvsC
rOq9hSCzPGEtWmuOvBeXyHoOQvB8c4F5YcIcJQ9EPQsay//6Ft92gQUGYkNE
XtRh2LaGZSPRscJsf37ou55SaJaNnJip2IB9jd1dZ41KobLKkfre6Ru8M0DW
L4k9BHst7HZ/7LHG9VmNha7XD0Lyi6xgeZsNuik4i/p6B0E/gidLLmBgvDTu
NjOiBOy7jxp98rLFh7pznbSeYqCeskubo9qhvk3EKdQshoxYatfYhB0eusM4
tSH6AMgCV+DTWntc21uyMrS3CB5eD+gPTmJiau7kjx16RRC37rn7LaYDashK
piYTCqGX/KqjXs0R4+4zdjhcFICqxtuU2nFHnHaKcBygCKBvgW1YJXJCsfEc
3TmmALZEK66+j9uExsNx1Nud+eDfo/TtVltnfEThmtivzgfDpji5PtkFow2+
okt35cHt5nvST2MuqMbfV1YpyYXP5eUFD4674oynla6rei58WNXuS4t3w7JX
946sCs4B/g+mH/l27viT6QTt7PlsuDl2eH7o7XKLE9YJtbJh4UHkdG0foGDw
g7XrxZ/h5qR0islF/CWly0eRlAlZRmp3/CWIzm1JUZqUDLCI8pvdb8BCrSKO
d1PzT3Ckrut1XRoLw2Ivb5dH7ofQ9eOZnydZyH3OiNyvnAbPqowV33E88EzG
lpqWjr3AM4yokZ72QKe6nOrYxFTY/CT0SjiFjaG7m0UZ2ikwW5N5dymejUuM
3F6b60nwsjYwaeguG5liv5cO4YlwvsJnqdaFg3LqNfak3h6IqeRKsqs5WLH9
9CV6dRwIHr+ZrFDhYnar5J3tWAyErZGRG6K4yLOk5BawokEsDmidH+Ji8v1g
zYyUSBiyHk/nOHviZNsYPb8tHK6eK3Q+JvJEL0nD0VGzMDDImE03VfHCX6/8
qV32ewhYOia3NkV5YSfv1XF1wTawVVKQWTIvLNiZymqMDwCxzqYpDQaBXjnn
BgyHuCBbXS35q4zAW8dznqiSHMGVIg0qqSDQWFza+0+DA7SunF2ESgKT6kQN
ch8HqFp05DQdI9C/sZ0vK2cCb2LkbnotgSPtM28KzexB5ay6skkLgfWDgSQy
mwEeHulB/BsEKlE43qtI5tDhcnJx3S0CG1Z/rznrQwNL5g3xaD+BftS04Rvl
X4MO3WDGbZBAVfpvIQfM1sNjyoVM7TECddh6fFW2CWSNz55pf0pgzILMgEIy
gNfDOr4x0wQKlxQn+su/BF6/04KxnMBHGgz6QTM98LsscCmaIzDd/JiTOlsH
jOtNB0NeExjVNXxel0SGMvHmVK23BH4x6iw9YkaClUf3UK+9I7D2xckRbfYK
mC++FLFxkUBtn2m5EemDe1j+32pTHwlszOtQW8tecB/N1JBUKgi8mkjZZk96
5k7sswvy+Uwgr3PHxt2kMfc/9oQsLi0t//S2mpnHvnf7D1DNIxY=
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {15., 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{11.174828021338374`, 50}, {0., 
              0.015988205494522945`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[50, 15, Background -> GrayLevel[1]], {11.174828021338374`, 
             0.01598820582081286}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwV0Gs0lAkYwHE5zNpQcqewRSuaXCr3eJ4x4zZvjFW5tTXmbYZsyqRxj0hD
NApjwqlN9+aE2JMYREo2pTqlzSYbkslUJDou5ba7H/7n9/2/mowN4ikrKSkF
/tf/Rpdm62VeoGL7dHJ2DV0MgQKz4iopFWUfegM3eIrBOVCm/bqaipW97iuv
oxjU1D4u39RCxaI7S2ouuYtBmui/VP6aiuyc3J7TTmJQBOsu+upuwO/6ZdS0
9WKI0ruo0MrZgLaOsi4/HTHwipqbzsfYYJlgyvTdYBG0yCDG1tYOq42s3MeT
i2DnQp6gwMAe6/rO1X01KILcS7kictYe4/9cxxisLwRG05P+rImNKOjeG1LJ
KoQVVnNUy55NGEkZaf/tcwHs+5F/y+jFZizZvbZRRVgAwX4l/mkdDpjZE3cv
z6QAtvVL+8kqR5QpKFuXppyCN8OLlSVXnHDiQLFpnfQkpHjTBAH5zqjpIL3G
lOfDNRVHIoHvgqdxKLR+bT5wHPi7RiNd8fJZkV7vDhHY3C6Ofr/VDcXOTceH
xSfg+K2FGhvvLai6NviHirt5ELdslZrC1R3lwUY3vL/mQmyzeZi5mQdKO0j1
zo258K2PL6/SBxzNMxRQyOMgCZbua5wHNMjfLrYuzwH2+SJ99cOI9/rnmlUf
Z8OWdusj41OIvYlPtBrmhLBGTzZUGk3DVywL4x1uQmCZKoaH5TQMSRq2kUYf
A2GQpmI6zBMbBuy+v7uSBVmOGvzWTk/MPXlxdFp+FDpeVEnsfOjYK8oYuad3
FPTPMmScRjqu6By6kLAtEypM0pNcnRj4MOwW+TYjA9RYha2dfzDwzc5fS3y5
R+BARZmqqYUXfskK7y4fTIOVdxkKg/NeSPG3p/LwMDxfIn/QpeONQxLdsdmG
FGBN7Lb1FnrjuWhfZbpbMuicTd3MUfJBdt926syZRHjLz3d0P+SDQ13729IN
E2BygdbdOuaD/L3sg4cEAtCWfYpT5fpiW9oukctIHMz8FFui3O2LYyaV09X7
DoIFXRJ27Rc/ZLRc/bpOEgthBTWGmu1+6ILLuorzYuDl6QPxxp5M3Kxi2feP
RzQY+VPCB24zUfFmIE+oHAnnMkTx11uYyLKak8VN8cCiVrtQ0MrEGwKDYfZH
HtisNOtQu8/EVPUAumsXDzw/ODnadzJRz6Vp9vMFHsQIo7WP9jDRrVgSE0rj
QWvz40fmU0zMZjID1mdwwWs86P3oNBNHJbzDhgIuPLLoWSL7xsRtbzOuq+7l
wssTcuet80w0SqqnDLC48DFs4apAhcDKKxZ3is24oDNlm9WuTWCP0qLtQsse
iLQRu0XZEkitv7ni+TwJz0ZOTYbYE3jmgbCm4QsJrhWiat9NBC59FcK6+I6E
5euyza2dCBycmRUdekiCbHWy+qgHgaWuDDV9CQnqeuzeuAACF5r/WginkpDw
YqdkTyCBUU+v/k43I2GgMJS1PYjA7r6kLVRtEmqXBbU5BBNYu7gqZX6aA7vV
vCpmdhHIpfEmy9s4UDNrnZq+n8Bn9yc/DYVzwLjR0iE2lkB8+SDviT8HjiVZ
jLEPElgtL7OqQw6ETZrsocUTmEPxiMr5mQP3bxqbbEwkcExfi8I34oBNnMHf
a5IJZFsOXg7V4ECpnW6hTiqBT51q6bTFCFAe0yJU0gh0980etJqIgJgqTdXJ
9P/+hYZmassjoFxDgxw9QuB4xN1n2X0R8C/hrj7/
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {20., 0}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{14.315437026074243`, 60}, {0., 
              0.018812902648725833`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[60, 15, Background -> GrayLevel[1]], {14.315437026074243`, 
             0.01881290303266263}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVx3kw3HcYgHE0EdsUIUkZNspQEpGwjjjjfV3L7ndp7SZuglpl4igR8dul
6lhniHNJGhIRkUNH4ipaSppJVOMY10RIjGHqXjVIVIWmfzzzmUcrOJrLl5GS
krL/2P++iBvnnfuCgV4P3H835Igh0MFWT6jNQI8arjiaLYZtpertKj0G8qp4
4fUuYjCoj6haNWSg2/XzioZOYihY2JPkIAOdsr19T9uKwSdAN6c7iIGM8KB1
AyMxSJwvdZ2+y0DaiRht/SNiOKouf4p2whh/uV+QpjNZCqHvdwpVWCZoutVb
WhdcCn2S86cVPUxxeX/jObu1EpA0mWh0+ZvhqKf8HcXUElB+0ne9V3gGx/4J
touhlQCnZ5DTmWGOR31C86bKiyH7aEHuwfsWGPEp/+S0RjGkMEaOKT+zxI3d
UU96bRHkh6XMSfdZYfuTDaMQ8yK4NbpoQ5atsaxJwQ86C+G5f8cfSVs22Hh5
zETPtRBqm448DN87i1LCQzdc3hZArt3xz+vpgPxBJ+4HfgE8jRuajDqMeKjH
PSpp6Rp0z0RtNFQjiq4pTOpu5cOx9r5mHsMO/abqQx1o+bBPY1o5vNkOHz+q
Y1P6ebByc8jskaM9GqveHhq1uApBDxI2gnrt0Uh6tZF45sLY4E6Ck68DBuSY
Ws4H58D9Cw61ogUHXP0xYOJ9bDbsT7SNsYpyxA8nZsc0i7MgpFFFmr7riJZe
gfHf3c4Et4Qag9h0J1yTsYge78iA0rub0l/KMfGzMxvpzVMieLukXbGvjIke
tFrbVkk6NHTJjnjRnZHu3ew+Ip8OmY9fDI7XOaMyq11ORS0N2g6QKz9bueDF
7urJl/qpEL+c2kb7zQWxZZ52k6SA2XJ5d5YbCx2JzkSh9w+QTH3DTxxhYWZb
/EH71e9BN+rvhpeebHRdibzBNE2CgSTf56y/2BgdxI0p5wnBcUclz3+ejdoD
CWlijhBaBSO8mEU2vra5VVriJIQ7V1ynyyVstFddbiswF0J8DOzMvWOj0oBI
JltdCHS+tnHGAYItNm3F1IwAwjhLFU+PE5RS1WzxuSSAN721IWP6BJtEzB6v
CAFwWSEnFw0Ihq1HvPbgC8Ca+aZViUFwuL9tl+spAAUcGA60JFgj4jkTawE0
mzTS9lgEndczXll/IgD9huhBZQ7BfwN/WrTcoaDSyKBM141gQ//wjvkmBVmn
anTcuATVHmpqmc5R4KdXBhU+BBcC28MN/qRARl142foiwfz+lW16MQUzSl+t
CiMJOqyZ2KfnUvBMTjv812iCW4cF2UtpFIje9fqdjSP4rbesanscBaErlWNJ
8QTpiZwLWpEUMGdjv+5MIDhaWXQvi0+B3gSzd1dAMKf71cqqPwVyQ2qOkEQQ
ZjXMPD0oWOiRdCQnE9yU5Sd2ulGwWJxMW//40nb3cixdKfgPfYfW5g==
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {20., 0.0055}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{17.12237940696211, 70}, {0.006177162906525036, 
              0.021775003715825164`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[70, 15, Background -> GrayLevel[1]], {17.12237940696211, 
             0.021775004160213003`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVj3881Hccx5Uwk+xRmd8tDI/H1aPU3fxIer/lus73k5xfRdtlDIfHHics
uuPGct8vlStdx7maHtVUD45irR6MMMyys1k41lRG+dVak19NPO4x++P1eP7x
/OP5eDnHpYYlrDYyMgpY2f886axKr7nJRvG1wOAD6RpoLbspTKlmY+b56/oD
xzRgsGrke9SxUZZndjRYrAGpYWTT1e/ZWHRUJz6YooH0oe061S9s1NqHFwvi
NBBXonPNmWXjhDKuLyJMAwHmxnoKOBib/1W0cKcGjF6neU8OcDA8viVBPFMG
JWvPFlR84IXd8za2PaIyGPH1mlGHeeOh6SRJzLgajhQJZuhcH3TKNAxKRGqY
YlXK5n/0RYnu2G+9T0rBc0jh+vXCLhw/NZT1sbAUFIO1ER24GydtXBtcekvA
ZnGfw4TcH9133H6TEVQCUVtFy3hnD2beYY/NdamgVtuZ5LgEeMSk5PPvQAUx
mx5lqUsRQ1tfXfum+QLkLJqZXt4agHJTxYAjXoDrb/XRCT0BSBzfqei/p4TK
NS928UV70e1S9uYmLyU0cMpH/rIIROWUzmtUex5issz7imoCcXf7p5TS9TyM
tDWGBnG5+K/Jq7XpFcUg5liWdk5wkW8blVxsXwyDtypEMXn7MNzj+FQT+xyQ
kCFDvRsP4f4se8DxLESu1v1p9YCHN5KXThhbKMCv2UhwMmY/bp+cdSi2KIKt
V/Tyu8Z8HDG5MaNZOA2Lp6d5a8r5eG+e72E8dwo+KewIF7CD0GT5i0N5C4Xw
s9bbXTgQhLKrRxqkzwpg4+/TNC2m0NZuh7R/lAGhL8OyS6MwI9p4IPspAzcu
OvRUZ1DYo9HvcP2DAV8hz7b/BIVye+lU2kMGjo5eqnLJp/C1Q3uUVSsDlS95
PS1qCrs2RXpT5QzsWVVu+7aVQumHkrmWwwwUxu28r2insD+eCEThDDxs/ynW
uZNCz+tO1etCGIhnZqr4OgrH3No+E/IYOGXB91frKQzzsOh7y2Gg33o2lvOC
QharvO6j9Qwks4K04g0EH2//QaztpmE51XzfgjVBpUpmL3pAQ/HdrqcyW4K8
Rd9Olw4a6pFar3AieLvtW6eLjTSYHiYSrQdBeWRFd2EVDRX5wfsn/QhuyS5g
JRbS4NNlOZK6h+DwcOCAs5yG7nW/St8gQRXX6OSTXBpmNQdvmfIIGiwljyKy
aNhbG2LtJiDYeyWlMDCRhuHHoc9i4wlKO4PHN3NpSHdZL5tKJOi55V3lY1jp
J/W+n5ZMcOxcp3+ZHw3bZsOoPDHB4GgosWLT0Oaz4blZGsHVzUuo20ZD5Jd9
snMZBOtd6l8yLBpyzCPqLp8g6PLSk2twpuG9kI3EPZvgoODvfxqcVv6o+p/X
yAieuVt56bjdir+yqmkul+CFTNP8y9Y0/Ae/AtVh
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {20., 0.0095}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{19.654989118395893`, 80}, {0.010295141576359945`, 
              0.024850074973900176`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[80, 15, Background -> GrayLevel[1]], {19.654989118395893`, 
             0.024850075481044575`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVzn0wlAkcwPHFOR0azXkZ24uj4YhzIVZ5+/3YUM/jiBBnOhe5Nfa8HJtE
HF15Kc+zrFuve+Fovd7RoKS0sm1Ebwo3Z7XTDIWLvOVYKdf98Z3Pv1+TiPiA
KFUGg4Ef+9/uablzxYoDvktaQK2rIlBYDQ8vrTvg/S9p/sCfIvgQ9yCWYLCw
7G8rRV6zCNxWblUqNVm4HzhpW+pF0KNyWS3EmIWnNRUd6pUiuLv9+0E9koXL
VYOWDEoEAz6T39JVLJx9KNZbiRbBX62zZ7JIRxwzPz6tMBbBS+XM8p7b+/Ha
3KaG4HwFdPs2BHoYOmFhY2531VI5SK3ozgKuM0ZzOIH5keXQnRceUi13QVfW
2chj/WVwbnlJYbLPDXU2krdkOJaBsyKx+mQd4PizOrPz5aVQYJHfFncRsaHp
a1MOoxRmpiSfTdi7Iy+1ovNKQgncmppJ75xzR6cwN5l0uBh4c7yXnuUeuGnX
x3FlFwP7usA3js1Gqab4dVG7EPLviEdW19mY9bZr6j5TCF1DO44cEB9EGOk4
E5b3K0TszpmWh3viWt+rXx7MFoGJ44VzTAMvbOmKjd9+tAhk/pM6Oj1eGFU7
tiCVCmCi+cDNqBRvNKhK/8fHQgBTWxdCeaaHsE/waaptSSFEtYgMJhWHMLFE
lrWiLIB1vfHhN8LDuEM0FlMcXgC8zLPZV5HAnL1Nz8wq+WAq79IvZhP49vrJ
toPlfBh2UNamehF4Ao2KIoV82Pf6lJTtQ6CLf2FA9SU+LAXFM0aPEbiYeHpo
ZwoffrKKSF2PIzD0Gvuxrj8f4ka949i/EWjlOj6gosYHI9vs9+ZVBJbKhI3G
H2h4dOluvnYNgeq+fhdBSYO1u3vTSD2BL77rPZw+T8Nsk9M0p51AYWZ9/5qc
Bm6WdUT+IIHvpbx78+00RH+lGzyiJPAxsbX3+Q802Gh9IcvdIHBZNTnDL4KG
1RlLe5dNApk3FU53jtOQXefxec0nJEZatbbVBtJQszvxUYIOiWtaR69wPWhQ
GA55aZuRaPKwNFe5iwbx6niHxJxEzwsqnlwmDbGj06ZJliRyXWNUnuvRsFHE
UBvbS2LHH86pPVo0MHVsJHVOJBK0gpujpCBQne/IPkJikp+pn/4IBTsny8X/
BpBYokFp5TyhYKJXrN8YRGK3ZKVvbZCCxMzby9vCSNSw6cPxXgr47+ZaFFEk
irbF2NW0UhA8pjQSRJPY2//0jV4zBUY31GlPLomvMp2bsusoaE7e9WNzAol2
i9qmMZcp4AXtkYcnkRjccOqFvIwCZ3sHQjeZxLQTCtE3QgpUdd1v3EshsZrp
HSopoGBg0cciNY1E2VCLvm0+BYInISXWGSTO5Bk+/T2HgqLAOfX5nz/+qEgl
zecp+A9Il+WP
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {30., 0.014}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{21.95939854159661, 90}, {0.014413213350395186`, 
              0.02801911910875175}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[90, 15, Background -> GrayLevel[1]], {21.95939854159661, 
             0.02801911968057052}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVjmkwnHccgN2MNMSRqVHRbIUEY+nQWNf+frvOfV+VqbSo6DArjtJk48iu
+0wiGkr8F+uIjTOYJKqN0TjiyDApoQlpKouEVtIwhCBhRaL64Zlnnm8Pgy/w
DVNSUFBw3eV/N9tXPw7RZeGVEctgrtJVmHtxUe5nwMLJPI8yBcWrYFxyxuhL
YxbaSvobUnekULQOfAcLFloXWxUIt6SQ3Pp0SYfLQpMC5ZDIFSl4Wxqp3o1h
oVZ2i6L3lBSWjUttTR+ycDZK3V3vlhTs1PIL5wscMNexfbg6VAp5ZRofcq2c
0Pxt5w9H26pgoC4/uK/FGZ8McdQCdavAatGLCrNgo4p2s7Al9gqEbpKXBwcA
0wTtSSkDleDCju92qEHUnHcXTZhUwk1++MyrGA6+SEtUvx5fAfb1a54yFy66
nCs43XqvHFprz5vrbHOxtsZs1P1IOVw+92zu+JArBk7z+75KKgM+g234949u
yPj84I3FvyRAT9mLGzzdkb/eI7jNkkB5ovxfob4Hro+rDL6/VAqysZ62onEP
LLk/pP9woQQytHy+66jxxNzZLzY+cS4BdqSIZ3DaC9+GZf8sKSyGpdT6lj5L
HsYp+/LrVsSgJKxYFsp5yOkeuHbYVQxjIdmrwm0e5hV2r0hRDDV09BvhDg8n
QtscDNhi4DKc3glVKRRo1g9rOIgh+75MTaRDYaX/ueV5phhUTAyNReYUbr7m
2l83FIPqA4m36FsKW8x6B21WCTzuyDgmCqJwS96u3bRMoKE+0lcUTKH7SEsA
Y4mARzIrQBRG4VScdEHnJYELZhOhohgK9/Slaa1NE1BL/ThZlEthxAkXv7bf
CWhYlDSJblNoXNjx3KGaAN/u+WR7F4WyDYW9KVUEuth2Wps9FJYGe9rdqSAg
OD4WmzBI4T7rR1nckt2fFC3nxHEKlUeXPqUvEaj948Jo0hKF83sYgUFnCWw/
+VOhc4XCa3ERmVWxBPzmDtm+W6MwdPJG44yAgKa8vzR5a/e32XHjZBSBM5/t
hKSo0/iA97X4VDAB9lnRWiqDxracnNE0HgFJ+qDpnUM0xiyPvOn1ILCauz/g
w2Eamf76B5TdCNRX/dqVxqSx0aw6OodN4KN7y+fTnWgsH+jQKLQlED7G/q2H
TaO/laLNmA2B3qn8hR0OjXrFnv76TAJxry2PZXjRmH/yUb3kCAGZYaRB5jc0
Zii/4lYfIGBn2k71BdDoHG0X9Y8hgZ+s1VIVg2iUjyVdNjUgwHGrm83k0xhb
oz7TpEug3GdNrz+MRhtNH/VFbQLrAVwPpe9pXIwRM5l7CTSemmnOEtAYxmGk
/qJOQCnBero/lkZGU0TdugqBE1lp2spCGp/tuzl8VInArbwRjmsijZUJ66sJ
O0WgVWoUn51CY8CMo2HndhFEVkc33E2ncb9XJue9vAh6mLncpd2WhT81l+32
fzgH53I=
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {30., 0.018000000000000002`}, DisplayFunction :> 
            Identity, Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{24.071788587125006`, 100}, {0.018531235509363288`, 
              0.03126723682171504}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[100, 15, Background -> GrayLevel[1]], {24.071788587125006`,
              0.03126723745982192}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwVxXkwnHcYAGDSbhs1mCrTkAgybbFDDrcvkfclWPt9joZY0qCyjqEiTBx1
BHGkiE7F1d+6faKtYltZUWcTTacmyDhi3SRVlU1TKw1xZIm0/eOZx1AY7RW6
R0lJCf7z/1f7694QcCicD6LUR26xkPZaviVXpTCNKze50MpCopXdylVNCg1e
1DjvlbDwGTs81aZPYUgOJxV/ZOHjpB2xNkXhU/HI3y3fs6BrIvAbv0jhS0VY
f2E1Cy25KuIzUxRqlRZne+eyMMOLEXg3HUemf1kxcY6F5H8WrgzH2WNtii1H
uF0LhYMeJQp9wNfp45Gn2VqYL/3cWXgeUTI2q8Ph18K+2bLmL5wckPyxMZD0
oAa+6rTLzdzniA9/mdKV6NcAV9w0bL/riC8s5d+sBlSDZ3B77r1Hp7DFRXqn
u6YKWiT4E1fihBk7AUXuK5Vg/X6lp9vXzmjgolsrM6uETa34AOdIFxyzSAqj
kyvAcVw2p3aCh2a9jd1WA+UgaTS9V3rQFQW/q7uZqJZDoM4zo/XnrlhUr126
5FcGR6qy1t6b5GPVjodOIxGBqyCxmczwMdG0wr21RARCjajQ/Q/56O0vy+gp
FEFJhmDy0BIfVXrSnw7li0ARatJ9bI2PcSkt3WvpIug7PJzpqUEjX/FuoH24
CPx7dTXzeTRubErrRmxFkJCkMajO0DhqZDg5bSWCAvM3s4s8aGz2jVJdNBfB
3Xr5epkPjefbOXHrpiIwzuudbgim8X6CtbOuoQjWToexfek03lgnsmAVEVxb
vHl0TweNnmufmG5OE9hbnMjjd9PYJc7LspgkkOMIgddv0/hheMdMtJRANns/
/+BvNG7Paec9GSKQ+qnsMfWAxu/6RpamfyUQM3ugKnaZRqVyl5oeMYGVa4ut
Xc9ojDwTv7HVSOAC1TigvEbjpHq9u1UDgYgym62ClzSKs5R3xHUEhL5e3s1v
MXg2qsevhhDwGctRWTJgUILmmpkZBKSZHgamHzB4YDso4nYaAS9zbZtYIwZz
2wp6FSkEPArrQpQPMxjIlV+MTSDg6vnzHb3jDL6j1TAYEkmgbzdrIuQkgwlD
E4fYcAJOP9DyJgcGF3I5yfOhBBzUpnQpVwbbXwmNBUEEqMHVeIEPgyEyvas8
HwIdyZ1fVvkxOMy6zWV5EbDhXrnx5zkG7fxTLHo9CVjmqY1eEjKoMTq1YEsT
kNhKZZ2hDKbkv20XzyNw9En5rlIEg4+dra/fdCJgxjM2LYhmsKer+CQXCDRv
rDhOXGLQKP5uadgJAtxv287qJTBYdOT5cp0dgQafyzEhSQy++kvf6ZE1gY84
p3KaLjMYUe9Rsd+SQP0tlerVdAalgamrvscI/AuhH9lt
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {40., 0.022}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{26.020842008714787`, 110}, {0.022649168181799365`, 
              0.034582616555043556`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[110, 15, Background -> GrayLevel[1]], {26.020842008714787`,
              0.03458261726081125}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwBcQOO/CFib1JlAgAAADYAAAACAAAA/gQ8/13UO0B8gOnj8G6jPwfVB5ma
2ztA1+zzSGptoz8QpdMy1+I7QDNZ/q3ja6M/IUVrZlDxO0DrMRN41mijP0SF
ms1CDjxAWuM8DLxioz+KBfmbJ0g8QDhGkDSHVqM/FQa2OPG7PEDzCzeFHT6j
PywHMHKEoz1AaZeEJkoNoz8zej0QoJk/QE+04KZso6I//hMAyjq3QEAeJakf
k0CiP0cRol8MnUFAhXpP/anfoT/9xtCKWJZCQOXVthiKdqE/FRraqAF/Q0At
hYosbhShP5klcFwle0RAbjoffhuqoD+C18bjr3JFQEfUkTS5QaA/zSb4XZdZ
RkAUhOHGtcCfP4Uutm35U0dAiGshoIvtnj+e005wuD1IQM36OWppKJ4/HB+o
Rt4iSUBFUw7+J2edPwcjjrJ+G0pArLdkDXmVnD+MJQmoHh9KQN5zZXFqkpw/
EiiEnb4iSkAOMGbVW4+cPxwteoj+KUpAcahnnT6JnD8wN2ZefjhKQDWZai0E
fZw/Wks+Cn5VSkC8enBNj2ScP61z7mF9j0pAyz18jaUznD8ydmlXHZNKQPv5
fPGWMJw/uHjkTL2WSkArtn1ViC2cP8J92jf9nUpAji5/HWsnnD/Wh8YNfaxK
QFIfgq0wG5w/AJyeuXzJSkDZAIjNuwKcP1PEThF8A0tA5sOTDdLRmz+6+R/x
aQdLQEiIgruBzps/IC/x0FcLS0CpTHFpMcubP+6Zk5AzE0tAatVOxZDEmz+K
b9gP6yJLQO3mCX1Pt5s/8aSp79gmS0BOq/gq/7ObP1jaes/GKktArm/n2K6w
mz8mRR2PojJLQG/4xDQOqps/whpiDlpCS0DxCYDszJybPylQM+5HRktAU85u
mnyZmz+QhQTONUpLQLKSXUgslps/XvCmjRFSS0BzGzuki4+bP8UleG3/VUtA
1d8pUjuMmz8sW0lN7VlLQDWkGADriJs/+cXrDMlhS0D3LPZbSoKbP2D7vOy2
ZUtAV/HkCfp+mz/GMI7MpGlLQLi107epe5s/LWZfrJJtS0AaesJlWXibP5Sb
MIyAcUtAej6xEwl1mz/70AFsbnVLQNkCoMG4cZs/YgbTS1x5S0A7x45vaG6b
P8k7pCtKfUtAnIt9HRhrmz9Nax/9139LQA1Y8rTwaJs/kSiEOA==
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {40., 0.0265}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{27.82955739951217, 120}, {0.026767502826793122`, 
              0.03795578748827297}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[120, 15, Background -> GrayLevel[1]], {27.82955739951217, 
             0.037955788262880895`}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}, {
          Graphics[{{{}, {}, {
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Tiny], 
               RGBColor[0, 0, 1]], 
              Line[CompressedData["
1:eJwBQQO+/CFib1JlAgAAADMAAAACAAAALFgBBD+EPUADdN8toy+lPxtedLQi
jD1Ahb08WPktpT8KZOdkBpQ9QAgHmoJPLKU/6G/Nxc2jPUANmlTX+yilP6WH
mYdcwz1AFsDJgFQipT8etzELegI+QCgMtNMFFaU/DxZiErWAPkBNpIh5aPqk
P/LTwiArfT9AmNQxxS3FpD9CNW3zR9BAQEKpufPDUaQ/Wg8yKNfPQUBxi8sV
AOajP3WiAAVjykJAqfL1YVl8oz/2Qno2K9pDQPbNVUW+CaM/R/KsOdDXREDH
tj8cyZ6iP/6uipGx6kVArhNfit8qoj+2JHKRj/hGQKD1liITuaE/P6kSY0r0
R0AT5Viu7E6hPy47XolBBUlAnkhQ0dHboD/t22KBFQRKQKy50edccKA/VBXj
w/wHSkCEIdSIt26gP7xOYwbkC0pAXInWKRJtoD+KwWOLshNKQAxZ22vHaaA/
JqdklU8jSkBu+OTvMWOgP15yZqmJQkpAMTf49wZWoD/OCGrR/YBKQLe0Hgix
O6A/NULqE+WESkCPHCGpCzqgP5x7albMiEpAZ4QjSmY4oD9q7mrbmpBKQBhU
KIwbNaA/BtRr5TegSkB68zEQhi6gPz6fbflxv0pAPTJFGFshoD+vNXEh5v1K
QMKvaygFB6A/TBtEVSICS0Br7cr3OwWgP+gAF4leBktAFCsqx3IDoD8izLzw
1g5LQMlM0cvA/58/lGIIwMcfS0APOstGd/GfPzBI2/MDJEtAYbWJ5eTtnz/N
La4nQChLQLMwSIRS6p8/BvlTj7gwS0BVJ8XBLeOfP3iPn16pQUtAmxS/POTU
nz8UdXKS5UVLQO2PfdtR0Z8/sVpFxiFKS0A/Czx6v82fP+ol6y2aUktA4QG5
t5rGnz+HC75h1lZLQDJ9d1YIw58/JPGQlRJbS0CD+DX1db+fP128Nv2KY0tA
J++yMlG4nz/6oQkxx2dLQHhqcdG+tJ8/lofcZANsS0DK5S9wLLGfPzNtr5g/
cEtAGmHuDpqtnz/QUoLMe3RLQGzcrK0Hqp8/bDhVALh4S0C+V2tMdaafPwke
KDT0fEtAENMp6+Kinz/Evjsl639LQPrCSNpioJ8/qFpt4g==
               "]]}}}, {
           DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
            Axes -> {True, True}, AxesLabel -> {None, None}, 
            AxesOrigin -> {40., 0.0305}, DisplayFunction :> Identity, 
            Frame -> {{False, False}, {False, False}}, 
            FrameLabel -> {{None, None}, {None, None}}, 
            FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
            GridLines -> {None, None}, GridLinesStyle -> Directive[
              GrayLevel[0.5, 0.4]], 
            Method -> {
             "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
              AbsolutePointSize[6], "ScalingFunctions" -> None}, 
            PlotRange -> {{29.51658449176059, 130}, {0.030885262082111155`, 
              0.041379069661822164`}}, PlotRangeClipping -> True, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.02]}, {
               Scaled[0.05], 
               Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
          Graphics[{
            Text[
             Style[130, 15, Background -> GrayLevel[1]], {29.51658449176059, 
             0.04137907050629299}, {1, 0}], 
            Text[
             Rotate[
              Style["enthalpy (kJ/kg)", 17, Background -> GrayLevel[1]], 30 
              Degree], {-2, 0.012}]}]}}, $CellContext`volumePlot = 
       Graphics[{{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1:eJwVxX0803kcAPBV2I9ktnDh0JS6XuL0qtM81G+0JM3GZEWRp02kw8K29jvc
ks2dUKRwPZGwRPfilBOfr1vXpUiP165YD4688NqJkOe7++P9etOjEnmCpSQS
yf8//48/aCD1CmnIvaawhAgS4o/HrtCPCGjIipvP9PAX4hHWBd7T0TQ08+mH
D9M+QlyekJBlHklDbUz5N2J3IX7PxAHjHKAhb03Sk2S6EOcEFVOAS0M8Mscw
9h8BHt4jsb3CoCGRAJMG/ijACd02T4ERDano3+1fp47Bc/feCFp3jYoshrIz
11CjcZ4JxyTXl4oGQgJP9skicY35wed/jJgi9ry/o1PvIXzTIW6aZ44pujPg
ZuuecRBnzh1rCd5oiuZsqx50hobgrKbZ29x8CtoytXe3wXgwrqQMUS93mCCW
m+UbhzIezjD1+NmNaoIYRa0Hi6c5eF4RH9u5ewXSTHRccnb1xQPR88qSPGO0
akIT/LTfCy9SOIWWvlyOTAs2pGTFb8WJpwH3jKnLUeaRXcsXp9bgT+7+Kbm/
zwhl+n2wSInWg0739X0TeYaoADvg7WXvAj5sXkx3B4YiMjMqZZJt4KT/1nGM
iiFlOPc09xMLfvViXM/2I6PBO2HXVzbsgUaH8aSYAgPU07Zlg3AxAIJOSXQN
9/QRe1GqKju8F0QFGnk9SR/9/aLabLh9Hyy4l4V92qWHasP4vze+CwWXuK9G
VRnLELFTXfGSFQ6Ptq/qUN1diliJ+2Lcb0XASP372/wVS9ErA+9hc1YU3Lwq
jkjxWYLSOMaGF8ei4R0zkfM6l4RUOnO/6CwBJLVHDcYqFuH99kX6i62xYMP4
KTJ5bh6cQ8N0QX2H4ep8aeyK3DkwezTTSxHFQ9oD597cuRlY+CiOkdgngP2A
4s1FxTTIv91iYtt0FLoYxRRDq89g1SSofeyVCOozbvX8U5PQw28ZPSdOgkKP
8teu1hMwmd735QCeDHXDl8QzOeNgliErMrIUQcVQ1OWAlWOQ7thwoatPBOdX
v55cqBgF0TYH+jnVMahreSylO+ogbj151FWeAm+fpdrF7xiG2lZlQOqeVKie
YV2V2gzCmOPxuRyHNEjMT89yM+iH3xYr7Stn02Co3Tvddu170GYkvwpXi2FS
P6quiKyF+Ze1vboyCWSogwpdN2kgrkchshFKgRxm9bWb5CmE+1z4nrfxOIjX
x9MKT96HYKV9T9gyGRz4oiikQNsMpWm77pM7ZSBqPW5rIW4GjaCxQ9EtA2V0
ZF8ZpRnMg+kPyc9k8Eu989Eq5m04vXm2i/xKBhTfjsy28iZQjtY9Iw/KQC1Z
qBoRNkBqvMUbsh4B/MYnI6e1NRAY3j9B9iTgBOlS2gVKDeT786YUOAE32Qmk
GmY1dHnCZ/IOAoz6DcxQ+TXwtS6ZJfsR0Gbu6aETVgCuYS/B9hPA1rFXntWW
gBOv0RhLIeBa9od1tczzEO9FN1GKCSDZyd3V5cVQ7ZJHwWQENHJvRX4UFsJa
ymEaJieAEbUjokybA9ad1quwAgJGzkgUHeXZsL9FaaksJOCy+kbdlPAEFKsm
rLBzBFD8XGaqtFKg5nTbYBcJEF8v9dWLPQZciaed8goBrZZGzu3aODgVW7Ma
qyTAsrn17Lg2BB7yLeyV1QRYedR1/7VZ2ob5nFiD1RLwL6SWZmc=
              "]]}}}, 
          Text[
           Style[
            NumberForm[0.8, {2, 2}], 15, Background -> GrayLevel[1]], {
           0., -0.007}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1:eJwVjXs41GkcxVWmpMi6bK37GJfB/IiEIu+XrSkZTUmh5DLSjsk195nfJrfS
WppUtCEly7a16VEuq3hnMmJTa5OoGcW26CbFSqMRO/vHec7zec55zqFy4vwi
F6qoqPgq9b/fd28fKH9kCmu17VNLg0k0JRdXVfeaQpARW58aSCKD+tbo2sem
kEGPa6neSSIe0TQr6jeFPzxqF9VtJdFS4yuGwzJl/6C9sNOVRMx5YbDNsLIv
sb/8UZdEYnHwQMOUKbSlrJaxHwhQA3NK1q1HBbbMAal6CFDuYrnXqX1UKCG9
7+5YwkcnY1+6nrlAhTjPcjvnkTTU8qT5OvMFFcJv3Yvu6kxFD+Qc4XFrM8jV
0OBtOp2C9MXTc+rRZuCWnb9ld1IyYqHQx0Y3zcDkofGoj3sSKsdXiKHPZkDt
zQ+aXJqIGK/+0f3bnQa1n52u2Y8loIq7HyISc2gQNzMp3tEQj9i+rz03dtAg
y0Uao2cTh0z62i9K1Mxhz2jmoteT0eiRbmpUH9scijftXHk0n4faFToiyyJz
GH9b9m67LxeVns09rCY1h2ovLa+R55HopIus9SdTCyha5OIlE0QgyWHDwiiO
BVQu61Od9wxHMoFj+73LFsDI25D/pHYfWk11yueNWQDrGD6paReEokj130ud
LIHx8vTpfh9/dOephEsKLEHuXPmsQ4WNAgd5NaUtlrDqtqK0RJOJes6N+LIo
ViCkyH/Wb3RFP8z5ZLttsQKwf3v+ryh9xNlfvF563ApErn9OeG+zxMZH6oPU
H1pBfKYb/RDPA6/cKFqSrkOH632jF+mOW/BUS4VR+l46CM/kGMx82o4n1kXU
0yvpEPb2WqG+aBdmhGgPfD1MB3ndK3Jo7R7s41rMK7a1hvvfdMfqLA/FNc2U
PP9Ya2Ckv4j52BGOaSjI6k6tNXgoLqdlzEXg7PRMO/G0NYzf30yByAOYGnxG
MudqA1kBMd09lVx8aer7Ow+O2MBNhyiDMq2DmLPWjy1rswGxZKzKZVcM9kxT
DzlLsYXSd7ezEgrjsGpCSe8oyxaW3nCY+KCIxxRtLWniCVto6OpE2oaH8Bvu
vs1F/bawZrlP9zb/RDwuLnQOM2ZAUcm/edKjSXh125Wb0WEM4MyHhndXJePd
/PJz6r8wYMGJRv6gNAU3P+WvePmGATqKnrrA2VS8wc19cSKDgMV1unrUVem4
yq9nvzCRgE6hZ5Mqi4+9tf39xuoJ+OLjyN9xUIC3Nsov6DYSMLhA5O8fr+Tg
8vfuTQS0NPraByQLMKt69MeCZgIyaVHDwRkCvH19eocdJkBdUbGNe0qAAznn
3RM6CTD4VYOWcUuAv6t7ZTktJWCd2uuuq8tIzA0oSDYeUOatKdW1WkqedZAw
nxEwk6iaWadHYh5TEF4yqPwbNHFuMiFxrFSjzHWYAGbj7gtta0icsnDNV4J3
BAQckCRJ95I4taY/9NK4ct/Qj/0sjMRpLPJa13vlfs+g9VAkifnF7T6GkwQM
bVA8H4kj8WGbwKMt0wRw9Ry9J7JJnNE92zvyiYCtXZg2lUfiI0kXaZozBBCZ
vnPTBSTOan0jClEQMDHGvTFbQuLsiBMrjs0S8KhyumC+jMQ5ak4htV8IqA/M
4S6sVPJvT672zxFwSlP7W0oNiXP9vlfMzxOQLKkwUrtK4v8A00NFlg==
              "]]}}}, 
          Text[
           Style[
            NumberForm[0.8500000000000001, {2, 2}], 15, Background -> 
            GrayLevel[1]], {15., -0.007}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1:eJwVx3tUjGkcwPHKngjZNrPJLFNqNiZtYq5NvT0/zDJSuoguBu3YYo9QUal5
dRsZXaabkpIsXU46GS1tRsqTRCrCVOYUslEpRKNkprKt/eN7vuezTHzIO8hA
T0/P/Vv/v7T7p8yUJ0zo95k7mX1LjsqEPLavigneHd3aJTe/+bpPj3UHExq9
Ln0puy5H5blyen0nEwq2CD/XVslRpdeM8qOaCa7CE6OvLsrR1ZZXfT69TKh2
MnizRiZHDTcuMS3eMSHearJD5SFHz/O56mvfscBsdPiyaV8aKrUMbrV1ZkGv
zvrG6GgqOiDofjB+iAUFBxtSlCapKHhffH3tRRbYTP6wdZCVgjTe/ID2bhYI
x+vDwzckI0kPz5BtzIZd/g/8hvaeRGdWuO4aFrDB8Bf26bpIGRqIzCjJl7Dh
+KKtrRPJJ9Bq8eLJQgUbxkM6mqiXk5AJpWZqZIANEw4Ks3P1x9EHcd787MUc
+LD7nb1RrxR9/aty3ho3DlSXviCeGUhRUXNnjYWUA6YBtiXzfkxELjFrwwJr
OCCO7n78MzcBhY01qD+McEAw+7VP0YZ41BlyxC6azgWd7/rzuupYxJGGZG73
5YJHVNKylGkSrQyM+jMhnQsth0lvNU2CLHru4ZnbXFi5gWeiDYxGZVRGapuO
C9c+l5Ndx6LQzh1YcMqBB69V0qexxRFooWOBsWIPD3RJ1vVTQ4eR6IUs0ews
D9hmR73ZRuGohFZrqGrngT+ZdWTdplC0JNAyOlnfEVwtbedw6QfQ8n35eek8
R7A1OHtcvP8PtNrY9+7gfkfoycilsj8FoYdHl59PK3aEV2qdcYK9GBX0r9xr
3+MIoonflS1aEQoeOeJibcyHtJxh2cuF21FT3ePbQQI+DG2R0h8z3ZEVI8xn
KooPnhurXaZIF1SV+2tXWgUf9HbY+JVr56An9+0MQvr4AL0iwvAUH2vO+LkU
UZxAmaMUjVtvxsWr8mxobk4QOiQ3Bco27LOHStPEOcF7+8o73EUizMl7Mqvh
qhOEv8x8GSf5DVdknc19PuwElJG+uLfsIExjVHDcljqDdsslQ0XVPkyXtUmN
tjlD4oShgzYiBAcMWOLGVGfYuUyIuiihOPOfWqNHt5yhQNPc3dMehv0u7tVj
TDhDRX/2XWvFYWyh72/4lEFAp34+Pf9ABF4UGDsZKyJApGGdXkePwheSagoi
ThGgnLXEf5VeNLYVMl3xPQLswCVDWBeDPZOn3UqaCWimu8tnN8XgyNa7Hsn3
CRAbiVLvtcXgRje/bVtbCTijipYJnsXgAK9jgW8eEjAr6O84mIzByQHNkd93
EaBKtgvl8SR4KGRH8e7XBBztoHqtqJbgBQp6maCfgIVKhsebmxLM+jhSzhgg
QFHIcy+7I8HxYfGKsUEC+oO2b6J3SLB5ZOkN2VsCPLRZay0/SfDGuI+PrmgI
oC01WmPuQOKQBqUq5xMBVfrmDmouibP1E7uixwjYPGhjfxqRuFdKebb+MwEJ
VwS2FA8SR550HFRrCXi/Nt7K5CCJC1sMhut0BMhsMiwfRZC4ce6DdxcmCbCa
V0RLP0biBfJdmv3TBPh13qTOl5OY1b583PMrAWPKVvO2HBIHfK+ZYP9LQPq5
brOUQhLHe9bqqDMEMBKHKJtKSFyWJZ2e+eam4C+mcypJ/B8N2EXT
              "]]}}}, 
          Text[
           Style[
            NumberForm[0.9, {2, 2}], 15, Background -> GrayLevel[1]], {
           30., -0.007}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1:eJwVz3s01GkcBnDbqFQcg65OKYnNrdSxO7My3u/cfqUyCqNorBlDch06mMb8
XFYl41KTa6ahVhtOkc3oqnqNamW3i8MSm9lcWtWu5JBYjdrZP57znM9/z2Mb
JvGLmGdkZORjyP+dr5tKt0higPL+xl3ppArpOzNnvZMZkKp419cnU6G4R0tS
slIYIPRtPPSNVIV4Gtu4ySMM2PpiW/ZoogpRFT4HutMY0DnB0wZHqlCR+0Va
+QkGLF+fTKP5qZAqL2B83VkGVGZq7ca/VqHa7zQit1YG1DGC9aKucpRU4iAd
XO4FQ04PHE1Xl6OCho62qQgvOCJpVfYnnEG4IvsTqfGC2qWDapP2MvRj3oSo
dCGCSRe6/SfLMtRBK6FYBSKoUNu9tooqRQ3D757bXkYgzNhuP/lzCaoR+526
8BlBS2ueySZ9MfrY8RE4DgBpIeH2p/yL0bjkXFfGHoB9Mcn3rquLEDV+mPJO
ClDYYX3aeKIQMQLrLxZVAhwsHTC5srMQsbw6hUcfAQQ8+1O/puQ0ijteeOun
9wAXQhOdmv5RooTH9c7m1kwwFXv+TnVXosw5nrmGzQSbk75E4ZeT6HpBnjIn
mgkjxr77fBsK0IM1ds41xUwYEGFhOSsfzZgGiqebmaCO26/bPJaL5uuHm5Qj
TDgWGubnn6ZANt3TUjGVBbWW9RabrHJQiFlNbySNBflJ6zh8bTZK4l71uyZi
QfUdY8ki/+OosT8w2l3BghSNhdniuaNIH5I1OdrAgmMxoVPa+ixk89KkdKyP
Bb8ssulZwPoBRWKnHtuv2PBD/eIAN10GyjlXs7nSmQ06q+bR2DkSXYu6NOvP
Z4NGP7pqpXMqMinaId5GsmEJO8FVoJAi9zvMv2Kq2XCL373l9pUklM3pMX76
hA1vH+atvmp8GL26Pl4S9YENDoknaK4d8cja8SDwbDiw8/3tFS72UUg6m5IT
zuUAb+PpB4IXYlT329Db+xIO7P7Ar85CArRQ//ZNQBkH9GbPBA25e5FkuTRo
7T0OuD2klwRt8kQNbqHDW99wwOh1vUeMYAtedmlo8RFzLihDcGfHmA/2t9Pu
WuDBBZfGfODJg3Fltv3nJ2IuzHT3Dd15FYbNve15bblc6C37tfe80yG8f0nm
jUXXuPC6ZXp0z1AcbnNJuZfWzwXZCqYqUp2I2fSJb50pBKx4fMyR7pGEy9jt
j2xdCdjdNNI2RpViiyvbZrwDCDBC0xmmN2T4w6o9HTMGnz1HiR9oleGe4+G1
NXwCNhhRBU1PZVgdUrB//j4CgrUb6YIRGXYwe3mzJYiAKnbw+OVlqdgzNktG
CyWAv+OucFdSKj7o1D67IZqAM3uPMnO3yPGOUl1nl8HrG09t/p4hx87zJi5l
xRBw11K9Zqu3HI/3WR8YiCVgsKvp3z6hHMsVsc1nJQR4BI5cdVTKsfKNOWmZ
TEB/sPf69jE5PhywIUBrcEQzn1oxK8f8FrpLQorhz+qwzwkLSGx9RtT/RGrY
r0v9Y6UNiS9u13gqUglID60rPORD4hxN21K6nICVLTczPYNIHL22f3TE4Kp1
D+OpESR2mzau4KQR8HxQt/MmSWJL8arkSYNFrL/p+Tkknnrq6lOVTsCnqo8O
wmIS93qw7PdmEFBKoSxzP0/i29WBc18MXhtuTjGpI/F/1vc3Ow==
              "]]}}}, 
          Text[
           Style[
            NumberForm[0.9500000000000001, {2, 2}], 15, Background -> 
            GrayLevel[1]], {45., -0.007}], {{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[1, 0, 0]], 
             Line[CompressedData["
1:eJwVx3k41HkcwPGhpyUNtascSY4yWk3hme7o+2kOx4wfkXV7SkM0EmU8NDOP
WoVNz4QaRa5pDClEIWqn/c6USDNdjg4todWWza6RbO5t/3g/7+dlsz/eL0qX
RCIR3/r/zwyoSo/f6GAzkRdZ8VCOIlb166zDdPgo4xYqWuVozFnCMFTS4YaP
c0dHixwtC55pfa6iA/2qBs0r5Sj4iuZxyAM67AtbYBF0W44GGXFvDmnoIL2X
8HzRNTn6Iro+kdNDh1XZnJ1xZ+RoxT9O619P0MFirY7ZRm85OrPDuGTdRgaM
vjG0TGovQ5HkbhwXx4DxXxqs04gyNKSrDsopZ4DBzX/Pz3bKkDii5At/kAHT
Yb8HUXfLUAnTl+FpwQRzndCV9t2X0YvsAcnbICb8YC907va5jG6RKsID8phg
2b7lllYjRXNfPF8qHjMhMPLsth4/KYrbo/YfMmDBK11Dy09FpYi5iXpylsGC
fY7OLb+Wl6D7Lqq1E0IWkP3PsmPqixGvmtZR18wCnmgDX1hdhI5J06mhWhZQ
LuoWUpoKUe1MQ1bbBjfIbzSP2lpzCYlTzfYti3WDDZqDRvaVBajzVOj73WVu
YNM90lDTkI/gszDBp98N1AMNc5eqLyKT98IqV3N3eNxfy7K+dQEZ7woeHglw
h8x3I47kqjzUrOJJU8+7Q1Rf5GSXXIIetIbqzavdQapeotxUdx5N0hyO7lrk
AbmK2R9nK86hPLtX4kS6B/SXWuWG1eai1y53rDMEHrBHKHiZr8hBLMWxppAm
DxhtcEpL5mUjc6XZ/KpRD5gI7PIZSRWjZdQ8dvl6T4jRneM68c6gprssQzLP
E2yLCzav33sa3evsPrFf5gn5K4sXhCRnonFfxlfBW08QlFFM/Q+ko2z/HOuT
ZmwwWmJml5pyEnWIvlfG7mbDME+ojZD8jFwME7gmYjZEF7XrU4yOIyPb6011
D9gQTz20+sM2IdIrbV9iuIADe9Qr1EzjZBQjbTELduFAFa0gWoeWiI60fc5P
53OAMjmhw9UcRrIAkiX/BgeyKju9v4oPoB28T75+wxyo7i41KGwOR9NDjVlj
9l6QsC43cK8pG3Ez67cnRnpBP5qcjit0wLSanMJ3Rd+MMwMXF/hhhx0ckkmP
F1CN6sKtJBE4ixhavtWYANnVGbtJ74P4XHq9bDuHgBkVTCUdScAqu720+UwC
2NbJXV1iPg5iD/PrlQRQGntvd3JTsGCz3pU6FQFhvbVZ4/wUXGi75nXNPQLS
FqaFLs9IwX1T4a6VLQT0/kSZDahMwZFVzxcWPyRAMnEYej6l4Hjy7QsZzwjQ
biG19ScdwxlPMpuD+wlQ3LHtGskU4Mo78uGAAQLGBsflRgUC3F6hWuk/SIDp
4rYkx2sCTD4+fcL7DwISQ2NNj2gE+JxjvCfjAwEOM/Uh40uFuCQnoIc6SkC+
K2tgqkCIlaJEsoOWgCdRpjctqoR4ICZnp/0YAePij2kuCiFes+uRzGacAJ8+
8ZrUPiG+pnWNNflKwHfHX0TrrBZhTW9IsfEkAa5XKrfabhThkfbkp0unCNj/
VLCIwRJhJ9kN2uIZAu5aWVWdihZh37NPovRnCRh01wrLU0T4qOCviwvnCNBP
uO/VelqEJQf0H+nOE7AzP8/yz0si3OhnNzP/zVxl9N961SL8H/kLSTY=
              "]]}}}, 
          Text[
           Style[
            NumberForm[1., {2, 2}], 15, Background -> GrayLevel[1]], {
           60., -0.007}], 
          Text[
           Style[
            Row[{"volume (", 
              Superscript["m", 3], "/kg dry air)"}], 17], {35, -0.009}]}, {
         DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None}, 
          PlotRange -> {{-4.600452527447646, 0}, {-0.006999999801523334, 
            0.002725356444547658}}, PlotRangeClipping -> True, 
          PlotRangePadding -> {{
             Scaled[0.02], 
             Scaled[0.02]}, {
             Scaled[0.05], 
             Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
       Attributes[Superscript] = {
        NHoldRest, ReadProtected}, $CellContext`relhumidityPlot = {
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk4lAkcAGAVKUe1o8kQSkMzCLlSrt+PBpnPleuZHMkxIjEeK1qa0sxX
UdqdDnRZkl2iqN2UIzVUG9ZR2MqZK0PaZ1SOtNbs9sf7vLrhPB/uUjk5OY//
fTtgK79TJqOLL36WOQhPMmBhtaiveYYujp2qkSmIGHBdWvgue5IujjmsZpx1
mQEfyhvnjF7TxUNBkpeFtxggMF6rxSmni30vmIXPdzCgwrAs8k4wXVzXPfOj
+0YmrNDvntlXvUls77278nwdE2o0rGgNibriYUf+8r6lhvBXIa2NHqItPl8b
31o9twXkzd+05pvTxOFfyz3PLJrCVaUqquomNbFnhQ//Up4Z5MpujRi6Kovf
rCp62pBhAdkGKvumFZaIh93P5XD5VqBhUaj24obksVZBdMWdVmsYn55QL5Yb
BZ7qnZI0Nxuw+yn5snbQIhx5eZNsbbOD9jeLpXXblDApIEv5/XMAM6poWMOJ
gvOKdCeDKEe4mJRePOKpjjZPfv8yIHOCEGtzzvkmLTzATIKHQyzYEhfja/55
I4osye6+RhcITrgydbaKjjnOHzk18m7Q7Vk7MZWwGfNKwgYKuQTw8jrvcr8y
8Vr7Ns3BZg+oymuRttQYIXzod0h09wbNVXULzu4mOOnPuih/fzfQaM8fc05v
RfuhK4EFwb7QlMMwpYyb4ThlZ3qblj+cal120s/EAi1vznVnDwSATsgL9TUi
S1wQrehdNsmBhiLaOb8eK+RkRrKD5wNBpYdTpaVjjdQNRsoS3RAwjc7U3Mvf
jnYLN3yqi0IhtNwqkvlsB/ZLquxG1cIg2qNjPJZpi/9KTE33ZIYDrSdqvcUJ
O1SKtrrRRImELp0UK2GzPQZlTFRpXeXCgYcpp92NAI8fcY3rDtsPy1emRnjZ
IPoUE42RjBgoNbzHqelFhGPqwQ1ysVB7OGpy6LQj9juMnonQi4OOwlcfPUyc
0Nrv2qFZFg8C5h9lJ791wlYHJ+mS/gQYNOLeHiF3okyfdaiXmgj2/orXKAwW
anfmXk8L+h4Uy3SZi69YWFYPcbMdSfC6b55hkuaMjb6WrRGuybDWlv1M09gF
D3BKuiynU0BPlLOjqdcFRV/s76++9wPY1BfoPjzqimKB1x4VXhrU6dCLY013
4QNuJYV1kA8unIiC0K5daBWiwN8QeQwKM/ITqMlu2JvfoCL/IB1i3/kOnNJn
o6yAPZcxfBxsdf547NDExtvWiSfoSkL4JLjyVKOFjc1lHWO81UIolcQ3Tbex
sfqc4tm6tUKg3VXvLO1io2actCR4gxBmd8aMrRtkY2r2I/1SSyH8FqOiKp1l
o7fCvVhBqBCYlT6B+XoEvt/85G+D+0IY1GCEpjIIbB9riMqvFULu0X8i/A0J
zIyo2LKuXgjLdxXFKW8lMNfAr0CxRQgjPTPpKbYE0nVnjb8OCeFnucvFXj4E
EkUKWjqrSAjgxt0y9CfQ40uWoESNBNVmx7sKHAL3ta23sdQg4ciF9zW1IQQe
XcnJ89IjIXCzXRsjhsBs7RO2OTYkUM6s6Vx6kMDvCgRmRkhCk3T0dX88gbzK
S6n1ziRsrz47dCGJwI196oqfvEmQaoePxacQ+LJYgcgKIOFXwbZJt1QCDdOo
I4xgEvZKlKb0+ARO/JnZ/jSMBKr722nZMQJbNH5ZE7GfhP8A4Ggp4g==
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.009962820001089855}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk4lAkcAGCVSTmqHcnQUBoaR4ho5Pr9XKn5BuV6ppBjjHWE1qO0NGUn
FWEbzYcuS5NdoqjdlCM1VBvWUdjKmStH2ofKkdaa3f3jfV6dkFhP/nI5OTm3
//y/73ZBh0zGkJKfZfanz7Jgca2ot2mWIY2arpZRRCy4PiV5lz3JkEYcVzXO
uMyCD2UN80avGdJBv7GXklssEBqvp3PLGFIvsVnIQjsLyg1LQ+/4M6S1XbM/
cjZbwSq9rtmgqi1Su337Ky7WWkG1hiWtPk5HOuQgWNm73Br+lNBaGQFa0os1
MS1V87Ygb/6mJd+cJg35WuaevgRwVbFSTWWLqtS93FNwKc8BcmW3hg1dlaRv
1hQ+rU91gmwD5aAZyjLpECcrhy9wAY0dEtUXN8Ye0wvCy++0uML4zIR6kdwI
xKrcKU7aywbbC8cua/ktwYmXN1NaWjnQ9mappHanIsb7Zii9f+4BZmqiIQ1H
Ki4oMBwNwvYDGZ9cNOyujtZPfvvSL/OEAJY592IjHSP14+HhoDdsi47wMv+8
GUUWKV29Db7gf+TKdGYlA3NcPnKr5Q9Al3vNxPSRrZhXHNwv4ftBbF7HXf5X
fbzWtlNzoCkAKvOap5qrjRA+9NnHcYJAc03togvHBCd9nEn5+8FAoz1/zD2/
He0Grxws8OdBYw7TlDpuhuNUp+RWOh/Otaw4622yAy1uzndl94eBdsAL9XUi
C1wUrepZMRkO9YW0LO9uS+SmhbL9FyJBuZtbSddmodomI6UxnWgwDU/TPCSw
QtvFG55VhbEQWGYZqv9sF/aNVdqOqH4H4W7t41H6NvjPmKnpgbQ4oHWHbdxx
xhYVwy1vNFLjoVM7wfJ0kx36pU5U0q8ehciHCec5RoA/nHCN7gpOgJWrE3ke
1oieRURDKPN7KDG8x63uQYRT6v71cklQczxscvC8A/bZj6TzdAXQLnn10c3E
EVne147OOZ8C34VH2cfeOmKLvePUsr5kGDDi3x5OcUKZnvPRHjUh2PkoXKMy
nVGrI/d6kt9pUCjV0V965YyldRA9154Cr3sXmCZJLtjgZdHCcz0L623YzzSN
d2Mkt7jTYuYc6IpydjX27EbRF7v7a++lgXVdgc7Dk64oFXocUI5Nh1ptRlGU
6R58wK+gOh/OhN1cXkFg5x60DKAINoVeAElq/hG1Y3uxJ79eWf6BCKLeefWf
02OjrIA9nzqUBTbavz+2b2TjbVbcGYaiGD4JrzzVaGZjU2n7aOxaMZSMxTTO
tLKxKkshs3a9GGh31TtKOtmoGT1V7L9JDHNOEaMbBtiYmP1Ir8RCDL9GKKtM
zbFxH+VelDBQDPoVngfzdQl8v/XJXwb3xTCgwQxMZBLYNlofll8jhtyTf/N8
DAlM45Vv21AnhpV7CqOVthOYa+BdoNAshuHu2eQEGwIZOnPGXwfF8JPc5SIP
TwKJQgpdew0JvvzoW4Y+BLp9yRAWq5Kg0uRwl8IlMKh1o7WFBgknxO+rawII
PLmam+ehS8LBrbatzAgCs7XO2ORYk0BNX9ex/DCB3xQIzYyQhMapkdd9MQTG
VlxKrHMhwaoqc1AcT+DmXnWFT/tImNIKGY1JIPBlEYXI8CXhF+HOyb2JBBom
qQ0z/Uk4NKY4rSsgcOKPtLanwSSocd7OyE4R2Kzx8zretyT8C1i8LrI=
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.01992564000217971}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVznk41AkYwHGVoxzlNoQnDUascWc08r6G0PxQSGblqkGEyIqiXCnFVqRY
MoOhFJZUnhWpX3cjzfYgZ0nIsXqeYdexldj2j+/z+ferdyDWO2y1hISEx4/+
d6/5ya6VFSrZsACxI1WOsLQh7137PJX0su5Ik6xzhAqx4NOVaSq5q0Skt+WO
I3yuf7lo0kslp7JidJIfOUKmqao2p55KptGvrWMOOUKDcW3orQAq6cllRNlR
WLDWoH8+5N5mkr60JEO/wIIWTRvK43g98tDse0mDTCd4K6CIqIE6ZL28iv+r
eztA0rLvdZklhWxnrkmZXHaFq7LNagqbVcgF6aXW0Gg2FK3UjRq7ypHO6guG
+h4ecGWLfMic1Cqy5stnc3nd3aBpJVB5UznxUP3YhVPOA14wOTelUS0xBqqy
WQ+0//AB+4uJxTr7lkEnMI2qddUX/uxbrmnbKou9ePOs+K0fWKjljWiylHEh
13p0u6Y/XE5Irx711MC+KoWjorQACLS15FwSamO5PT24xDsYfoqJ9LH8ZxNG
06iV19T3Q0Bcycz5ZipazN19nPvkAPR7tk7NxBliooPQcNuvoRDL62oM+2qE
TRtvqhhxwqGZ1yHuaDHBkBH3oNr4CNBa37a0w52OI+nhQ9L5h4BCefGQk2OO
77wms2dkY0BYSDNTnrTAgNJQ0qY2FrJfrzmzh26Fkw+Oc2cMj4Bu4BsNxTxr
bIt2GWPdiofHVZT8PQM2uObgK1spZgLID3CatXVt0csvxC2m/yiYRZzTCjrJ
QNPvX7/ntCZBcL1NqNEzO+zYp7avh3ccIjw6J6OMmLg0+OK5lCgFKAPhG61O
26Oi9psEunYqdOsm2Zxq347Ohg05vtbpcOh+Uo67CeB+3rwS91wGSK9L5u7a
hpjaxijMfZ8JNcZ3OS2DiHFlSs/yMQtaj4VPf8xxRJrZ9A324GnoFPTMetBZ
aAw2fc2/ZMPeLw+uJH5goXXQ6HgmcQ6GTcJ+H81ywhXGuJlwUy5s95UpVaY5
Y919brzduvMgU6tntNzjjBmCD5VH7C9C77svNHrKDuxxmOjPacoDVSb7mZap
C+5mpZbRFvNBP6/QTjjogjHJ9S/lXAtg26Nyvfuprqgk+MbaWXAZ2nSp1VFm
bsiWX7veSqkQXDjc8uBuN5ySesrTyC0CwdmyOLXEnSgUU1XOKBdD1CefoWwD
NqbPiuNfd5UAU/f5QwchG7N8TNxsLpbC35klTzU72Hhrlf0AragUaiYOC+dE
bCz0z/XRLisFSqNGV003G29QD36XbSiFBafIcfVhNjKGeYwVUSncjpRXEC+w
8V+ZCxVOG3hg1OTtX6ZPYEhL1ZhDPg+GNWnByTQCbf31tWKLeVCU+o3ra0yg
p5qMU0UFD6TdqmLkzAnkOqTGyd3mwejAfHoSk8Ami1nnxU4e8CWKq3d5E3gk
ca2xqRof9obF1Bn7EpiQ0PXkhA4fFNodG6U4BOY3bfETGfDhRMFfLa2BBDqs
l4xO2soHf0N7ES3yx0+d688f/fignKvYtTqaQK0Zp3YM4YNQPNb7/jCBNMVP
toIIPjDunf9YkECgeXulbNRxPoh1DowfTiKwJeVsXGcGH65nbp3emUwgySjv
ZubwIWhCdkb/JIFDjZ621Zf4oOb+YW4ljcA71xd/U73Kh/8AY7olng==
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.029888460003269567`}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk4lAkcAGAVKUe1IxlypKFxhIiU6/dLNJpvUK6dGMkxluTYVvTQdEwU
YZucqaxp5tslitpNOVJDtWEdha2cuXKkfagcaa3Z3T/e59UNivbgLpeRkXH9
z//7bON1SKU0SfZnqcO58wxYXCvobZqlSSKmq6VyAgbcmBK9y5mkScJPqJik
5zPgQ1nDvPFrmmTQb+yl6BYD+CbrNdllNIlnlnnQQjsDyo1KQ+5waJLartkf
WZtcYJV+1+zhqs0S+/0HKjJrXaBa3Ypaf0xXMrSbt7J3ORP+FFFbaf5aksya
qJaqeRbIWrxpKbSgSoK+lrmlLbnDNYVKVeXNKhK3cg/elYIDkCe9NWzEUJS8
WUM+rU/xhBxDpcMzcsskQ6zLuVyeN6hvF6m8EI891hSGld9p+RbGZybUimRG
IFr5TnHiPl+wuxSXr+W3BCdf3kxqaeVA25ulktodChjrk674/nkAmKsKhtQd
KbggT3M0DA2E7NgzRcNuamjz5Lcv/dIg8Le2YGc2auIRg1h4OBgCWyPDPS0+
b0KBZVJXb0MocGKuTmdU0jDX+SO7WjYcutxqJqZjtmBBcWC/iBsB0QUdd7lf
DfB62w6NgaZIqCxonmquNkb40OdwjBUDGmtqF51Zpjjp7ZQte/97oFKfP2Zf
3Ib2g1d9hZwfoDGXbkYZN8dxyp4zrZrH4ULLivNeptvR8uZ8V05/HGj7v1Bb
J7DERcGqnhWTJ6CepF726rZCdmoIk7OQAErd7EpNbWtU1TFWHNPlgVlYqsYh
3k60WxR7VJGnIaDMKsTg2S7sG6u0G1E5C2Gu7eMRBrb4z5iZ2cFUPlC7Qzdu
T7ZDhTArcSMlCTq1463ONdmjX8pEpea1ZDjyMP4iyxjw7ElGZFfgBVi5OiHY
3QbRo4hoCKGnQonRPXZ1DyKcVuPUy6RBzYnQycGLu7HPYSQtWC8D2kWvPrqa
OqK11/Xjc06XwGfhUU7cW0dscXCcWtYngAFj7u3hpD0o1Xc63qOaCfbe8tcp
dCfU6si7keiXBfKlugZLr5ywtA4i59qz4XXvAt000RkbPC1bghm5sN6W+UzD
ZC8eYRd3Ws7kgZ4gd1djz14UfLG/v/ZePtjUCXUfnmKghO9+UCn6GtRq04oi
zFzwAbeC4nS0APayg4UBnS5o5S/H0wkpBFFKYYxq3D7sKaxXkn0ghIh3nv0X
9JkoFTLnU4ZugK32748dGpl42/pYMk1BDJ/4V5+qNzOxqbR9NHqtGErGohpn
WplYdVk+o3a9GKh31TpKOpmoETlVzNERw9ye8NENA0xMyHmkX2Iphl/DlZSn
5pi4X+5eBD9ADAYVHr6FegS+3/LkL8P7YhhQpwck0AlsG60PLawRQ96pv4O9
jQhMDS7fuqFODCtdyEjFbQTmGXoJ5ZvFMNw9eybelkCa7pzJ10Ex/CSTX+Tu
QSBBymlqryHBhxt5y8ibQNcv6fxiFRKUm3bflWMTeLh1o42lOgkns95X1/gT
eGo1u8BdjwTfLXat9HACc7SSbXNtSKCkretYfpTAb4R8c2MkoXFq5HVfFIHR
FVcS6pxJ2FmVMZgVS+CmXjX5T/tJmNIKGo2KJ/BlkRyR7kPCL/wdk/sSCDRK
VB2mc0g4NKYwrccjcOKP1LangSSost7OSE8T2Kz+87rg70j4F9EBM4I=
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.03985128000435942}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVyX080wkcwHFUHopInNmhNJqzPO5Gmfp+pwe2n+GI24vEYSIPpYSUx0hy
ShylR0bN5Dil8pBMr8ScdmkrzcOlKHp6UfQkcd0fn9f7j49pyC5vvoqSkhL3
e//rZ5sim5+niJMm25aaRXBhVrtgsPsDRZxdI0pTi+dC+YTgefFriviQH2/t
RBoX3tR2faL1UcQK+98O/32SC5lWeka8WoqY+rm1+UYnF+osL4f9tY0iXuN1
9UqQhQeomys+BDetErtXXgz59MYDmg0ZpNt7TMVW7KVZEpYXPBSQpJRAYzGT
wV8pJ3vDQvvH9y7Yk8Qp26yWGcz7wJnFjfpaq5aLTQOEZ+cW+sHJ+ZoRS9cl
4nzde/umdvKg+CfN4OlFymJyGWP21qA/GNIFy+9XjLVRulwGjNoDYXz6pYFQ
aRT46rHstzHB4Hw8odQ4YA7ernq1B5VD4J/Hc9WtDotR/bqj6/vBULDTL3hm
6KKLnySXC6+28eGP+HThiIcBqjcMX3/UtgMCHe15hRIjzLL/xZNG3glrYiJ9
7KdW4lXWc229A9GwbffpyfxGCn4tsZoY37wLFB4tLyd3r8YQjW/d2SviYNc5
WT1/xgLbWSE6Pef3QOO5nomeZhp67iiWHguKB/LS1tnN7tYYHuXblE1JABKp
s4131BZ/L2XFddGTQFJCtdEdt8PyPp+VKmHJkHNvweGt1nTMKNrnxSw5CCaB
9w10Cn5Gp2vdvXfM0+B2JenE1n4G9j1MrVUMpINmP6/RyMQRY6Zmwm0ZmWAT
kUvenrIWL6Zckk3dPQRBtYwwi451KDcdI4Z42RDBfTAeZcHE2adfk+toOUDq
D/+Rnu2MmrdVNA8a5ILcJJFxqHs9xr2ijI0o58HOm4lH3WmA5QGlXZ5O+aCq
kRzq6YS4+sT2mfVxx6HasoHXPICYU3ds//7hAmhJCn/99CgLOcJYx1sOhfBA
8Ogd19oFBQ0ZGuS8IvD7cqs44YkLpkt1o1z0imGYxv9zJGsjptoUe3ufKYH1
vmpndambcLTzW66//SlQu2xqMfdoE+pfOa7eoHYa+ga/UK0PbMamiAyxs+IM
6DE5HWSrLZgV+0DD5d05MCsoWScZ2IL+LS96c3XKwKm9zPRmqis21vfe2GFe
Dq0mFGGUjRsWBtXnVYcKYAsvtCxI7oYsf0pt0fkKEBy5sFs/gY29rlPaHaOV
EPXc598ccw4C25hBC7gETJO7bRskHDzVIQ2v6RHC+8zTdwx7OHjTL2eYkAmh
eixWMi3lIDWBPflGIQRSvYGsWs7BYDeajD4mhI8bI1/8MMzBx07WdXLlKrgS
qak18ZGDFarlqqGOVWBxzdv/ghmBlZP0yIaKKhg2pAYlUwnMLNuLOdVVcDL1
a6ivJYFRzgM3AuqrQNWtMmaJLYGz9MgjGm1VMNL/IT2R+f2L9jYl9VfBeaVS
oac3gYFaahUXl4nAjx9TY+lLYLCDbUUhSQRa3az6RTwCP7cL3DJWiOBg0avm
lkACh5bUZoVaicB/tbOUGkngTFh4N5MtAt08HZlKNIH6biPfGF4ikEyM9g3F
Etj9bIPC7lcRrG3Kf1oUTyBVNnTEmi+CCeOQF7GJBHYs6wy0iRbBpUyH1+xk
AqcV/QN2e0WwfWzxpFkKgSMbohc4JItA3/3J9HwagRAslTMzRPAfmoQ0wg==

              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.04981410000544927}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk01AkcAHCVo1yJJkPDS4NxZAjjaOT7DTnm51gks8pRQyVEEqVQUooS
lSwShljM/ErHW3fT3UizPaSQIkKr94Zdx6scu/vH53309sb6RSyXkZHx+s//
77RI6VpaoovIWYj9XOkL86tzP7TP0EW/WHekyQp8oVzK/5I/QRd5F0n0jO/5
wjfy5ZzpO7poPCNGJ/mRL6SbraVxSboolXlrFfujL9w2qQu/s5su8uLZRdlT
/WClQe9MWONGkdn8vAIzxw+atFjUx/F6osipAVmDdH94y6dK6ME6IqGyRtCr
xgCQtXz/utSSKhKzV5wYXwyEYsUGispGDdG0/HxzeHQQFCwJhk3clERO62YN
9b2CId9YOWxabpmo5vs3C2XdMNCy4mu8qRh7SDmWc8albw+MT3/VrJYZAQ3F
jDbaHzxwuJxYqLNrEWjBaXTt4gj48/1ibauNIvZgzXnp2/2wmZL7WctJHWey
rYe3ah2Eawmnqoe9NbGnUuWoJC0agm0tuVfENLzpwAwt8ouFTTGR/pb/bMAo
Br3i1rrDsDuuaPJSAx0tpu8/zn4SD73ezV8n4wzxqKPYcMvFBIgt6aqP+GGE
99fXaBhxE6GhpEPa0WSKoZ89Q+rij4G2auv8dk8mDp3a91E+Lxmo1BcPuVkW
2O87njmpmALi6wxz9fHNGHQjXMSqS4PM1yvO7WBa4Vjbcd6k4WnQDX6jqZZr
jS3RriNOd9LhcSU1b0cfC5fvf2Urx84A5T5uA03XFn0Cw9xjes+C+YEL2iEp
drhp4cdCVnMmhJKscKNn9vhqF2VXT8kFOODVOR5lxMaf/S+ey0mygdq3b73V
WQdUpb1JYNJyoFs3iXWmfSu6GN7OCrDOhYMtSVmepoBhJTNreBfyQH5VMs9n
C2JKq9317IErUGtyn9vUjxhbuuZZHl6D5mP7JoaytqGB+cTvnP586OT3THkx
ndAYWO8bjhTAzu9t+YmfnNAqZHg0nSiEQdMI4XCGMy7YjZqLNxTD1gCFG+oM
F6xr4cXbryoBhTo9o8UeF0zjf6o47FAK7z58ZzBPbMe3jmO9WQ/KYC2b80zb
zBV9nFJLGXPloJ973V7c74rRyeRLJbcK2PKoTK8l1Q3V+D+dPK5WQqsuvTrK
3B09lFeqWq2pAlcuryy02x3H5J6WaGZXA/98aRwl0QNfSOka59RrIOqL/8dM
Aw6mTUnjX3fVAlv3+UNHMQfP+Ju6sy4L4O/0oqdaHRwklzn0MQoEUDt2SDwt
4WB+ULY/rVQA1HrNrtpuDlbR9y8o3hbArHPk6LpBDtoMltgtSQRwN1JZRTrL
wVmFnHLn1UIweuAXVKpPYEhT5YhjnhAGtRihyQwCWUH62rGFQihI/ckLMCHQ
i6LgXF4uBHn3yhglCwL3OKbGKd0VwnDfzKkkNoH3Nk+5zHUK4aZMYbWPH4Gx
iStNzCgk7IyIEZgEEHgkoevJSR0SVNq31ctxCcx9YBwoMSDh5NW/mpqDCXRQ
lY1OsiEhyNBBwogkMFTg9utQIAnq2Wpdy6MJ1Jp0bscwEsTSkXcDhwg0UPti
yz9Agl3jpaGrCQQy2ysUo46TINXZO3ooicDGE+fjOk+TUJVuM+GRTGCbXVk3
O4uEkDHFSf0UAgfqvW2rr5BA8fw0vZRG4N2qud/WFpPwL/k4Kgk=
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.05977692000653913}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxX040wkcAPClV6I6r5u0S0vEhbxEpO837/YjHaMloxOVFFJZKS/n6EU8
La9HMYfbakX7qZ6GtJlTzVtdU0R3qSmkawpddcXd/fF5PqZRCUExGhQKJeA/
/x9qm6qcmWHITKe+7a0vYsGXxbyn7VMMWUR+K8ytYMEv6qqXRWMMWbjmAWGY
gAVv6u79bdXLkMUkiriLbrIgc42+CbuOIRvdMeZY1seCq5aXo8XhDNkJutFX
d5MQWGD2ZGpHwwrZulXCiMFfQ6CR5kiVJ5nKBKW12RnyUHhURe1mcJbJlg/J
CuTsbTDHrq+Lb0eVGS59MtQwvR3Oa0kMdFboyRT1WwbalRFQMnNFZemzUPY1
d/E+kdEPULRae8fk3Fkyb4ZUJemKApp9ld6D6mEpLfdY6WdlNIxMjhoJKUPQ
srDM3p+yGzacTS5dtn0a/Ev0eyYcYuF+37SoeZ0WCjqM2990x8FaA94Lmrsu
TgY0299LiofCQxlC1WYjVDLLaSp+InCc7Nj5ChPkVGffzPJKgu/2xwbbTSzH
6drgjS3qgxCeWDaeJ2GgykSpwxg6DE82N42OJ67CnINFmW8/ciGhXEnGfLbA
i1Nqw6xvUkBS3qnubLTCBM6ct3ezj4PxouYvXv7WGF7MnX1qOg2o1LtSdo4t
Gmb7BGq/ywBFsbmN7shaPCN2ETsczYSTXbNPsKztcdF1Cb1VIwvonAdGS3gO
+DRNGFndlQ3yGuo5Vr8jWn80arEtOwna/WyJCd0J7ZvaVotST4PNntPGEanO
eON4oMUK8RmIrHOMtmhbj61FHnvvv8iDPQEPR+IsXHH6tZ+mtTMPqP27ltpn
b0DNpu74RN456KFzHX9qd8MtWztNG4bzYe8tbo6/FeC73AqoOFwI8zRTdga6
IO6xc7c5olEMIsvr7MYBxK1nC5eIKkug6ciusec5m1Dj5m7j3vRSeFj1+F2A
tTuKFSOCreHnIfTT7aLkZ+44/Ne1qNbMchi0iqlVZXlgmruTDgr44BYy/4Ku
uSc29kWv0R6vhPmXTS2mH3tisqKEX+JcBb1PP5lbH/PCQEVeMDetGvRdmW3G
a7yRE6DnUjdVAyt5xesVA96Yvj5ZmpcqAJeWStNbaT4Ym2/WbTnrIjTTGcI4
G1+kNETwmm5fAm/2zsrIHl88S0bnnedehqpT/ESDZD+UlrAMfbAW4l4G/3nS
jInSUrk4wf8quNLvSDcqmCgZb9V/dlEM7zPLfqN1MvH70I+jP9aKQTQcr5js
ZmImf9eAWb0YqKSRUtTDRG7673oHmsTwwSP2leEgEzvk857rd4uhPlZbR/2B
iYIsN3r+hBgsbgSF8VcSqCPXEkcDCYM088gUcwKnTr8+auVJQknaPztDLAmk
cmm7J3xJmOdbs3+hLYHRNX5XTgSRoOqfyuC6EjgT7jTSGENCBaVUGBhEoFyd
xQ7LJSE0Zv8VyxACPbe5JtmfI0GnfRM5l01gIauvXqeYhOMFrxubOARuXlB7
qY1PQtiqDd3msQSqjuof8rhGgu6ZJUqNfQQu9g/qMJOQoFAP9f4RT2BLhReh
2UyCc0Pe84JDBF4YdLijvEOCelnUq3gugb3va1oaO0gQZK4b80shsK2j/lXV
AxIihrXGV6YSuC//Z8fcRyQY+D+bnEknsCCZV5fcT8K/IxdAbw==
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.06973974000762899}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk4lAkcAGAVKUe1JEMoDY0jRKRcv18iNZ+jdU6MxBg5QusRLU1JKcQ2
5EhlTcNGlGPnU47UUG1YR2ErZ64caR8qR1prtv3jfV51v3Bn9koxMTGH7/7f
fSenUySiCjO+iKwuXPKApfXcvuY5qjBkpkYkwfWA29P895lTVGHQaXm9lBwP
+FjauKD7hioc8hp/xb/nAfF6G1UYpVShyzVDv8UODyjTKfEvZ1KFdd1zv9hv
ZcAaze65Y9XbhJaHf6xMr2NAjZIJpSFCXTi8j7O6b6Un/MWntFG9VYXptWGt
1QtMEDd625pnRBH6fSt1vLLsAzelqhRkt8kLHcucOddzfSFbdG9Ex05a+HZd
wbOGRBZkasscm5VYIRy2T8tic9igtIsv/zJ//IkKL7CsvPU4TMxOKhaKjUK4
bHlR7KFgsLgalaPqtQxnXt292Np2AtrfLhfX7ZbCSPcU6Q8vwsFQgTusZC2H
i5JUa+2AnyAjMq5wxFERzZ4Kvg6IIsDb1IiR3qSCwVqR8GgoEnaEBrkYfdmK
XOOL3X2NUcA8eWMmtYqKWbafGDXiP0O3Y+3kzMntmFvkO8Bnx0J4bmcF+5sW
3mrfrTzYzIGq3JbplhpdhI/9VhH2caC8rm7J1l4fp9xsMsQfnAcK5cUTRvJO
tBy64cljXoCmLJqB3IQhTsjtj2tTSYDLrasuuervQuO7C92ZA5dAzful4gau
MS5x1/SumkqEhgJKmmuPCTKS/OnMxWSQ6WFUqaiZosIWXelx9VQwCExSPsrZ
gxZL+c7VBVfBp9TEX+v5Xuwfr7IYlU+DQIeOiRAtc/x33MDgSFI6UHoCNu9K
sECpQJP8JrkM6FKLNrnQbIleiZNVKjczIfhRdLK9LuD5M3ah3b7ZsHptDMvJ
DNG5kGj0p+VAsQ7JqOlFhHOKzAaxm1B7OmBqKHkf9luNXmFp5EIH//UnB31r
NHW9dWreJg/cFx9nRr2zxlYr6+kV/TwY1GXfH7m4H0WaNqd6Ffhg6SZ5S45m
g6qd2bdjvfJBskRda/m1DZbUQ+h8RwG86Vuk6cfaYqOLcSvL7g5sNKc/V9Y7
gMGMoi7j2ULQ4Gbtbeo9gNyvlg/Wk3fBrJ6n/uisHQrjnY7IhJdAnRq1MMTg
ID5kV8rZnLgPBxgsnk/XQTTxluBs8S8DfmLeSYWoQ9ib1yAj/rAcQt67DFzW
pKOIR19IHK4Ac7U/nlg10fG+aUQCVUoAn+NvPFNqoWNzScdY+HoBFI+HNc22
0bE6TTK1bqMAKBWKncVddFQOnS5ibhHA/P6gsU2DdIzJfKxZbCyA34NkZKfn
6XhYggyJ9xGAVqWzZ54GgR+2P/1b+4EABpVoPjE0AtvHGgLyagWQffYflpsO
gUmssh2b6gWw+mBBqPROArO1XXmSLQIY6ZmLizYnkKo+r/dtSAC/iuUUOjkT
SBRIqKitI8GdHXpPx41Ah68p8UXyJMg276uQYBB4rG2zmbESCWeufaip9Sbw
7FpGrpMGCZ7bLdpoQQRmqiaYZ5mRIHdlQ+fKEwT+wIs31EUSmqZH3/SHERhe
eT2m3paEPdWpQ9ciCdzapyj5+TAJ06p+Y2HRBL4qlCBS3Em4E7976lAMgTqx
CiM0JglHx6VmNDgETv6Z1P7MlwQF+3ezonMEtij9toF1nIT/AElVOFI=
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.07970256000871884}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVxXk4lAkcAGAdVGQTyRCzNELjSOQ+fr8IYz6hNJpnGNSgQY5SpoS1hA4J
OTYpGTZH2HjMt45k9CQRto2SUWEplYoVNh3s7h/v82odjNwbtFxKSmr3f/7f
2zi+b2mJJpaZGb7hJeDAt3WZz7vmaOIT7nWtMkkcKJ4SvsqdpIljJkR1Lekc
eF/z4B/9AZqY66JtYCHkQJLhBnV2DU3c0i7IYPdw4Df6zcBbvjTxXE6/pre2
D6zeMjgX0LhZ7BT7Vc7piQ80qZpR7h7VElPfuaVZOHLhiZDSS+NqiJNcM5LZ
RACsNHnWU2RCEQ8cdvA1WjoAV2QblOU3K4ktpL+nE3/yIH+paozuIieuy7TU
GFoIgtytawNmpZeJE2J4roqGfFA1FSo9Kplo1axntQd3hMKb2bcqZVLjoL7u
vsbN7HCwvRhzWcNnEZ6kFBV47YiCP54tVraYy2LxdMKN6JEjsF058y9VB0X8
zD8U+jE7GnKOJZaNuatgsU3XgMT/OHAtTNjZneooqD7Y8SleAAbhIV4mnzRR
q7n+2Ofik+AbVTB9oYGGjIh1pXu2xMGge/Pb6SgdrH1haL3/cQJEXu2rDfqi
hx39d36g3k2EhqvdU91N+thR0Zgq5Z0Eaj+0fHNyM8KKkW6d9vfJQKF0tLLP
GWOQ3cegHQ9SoDNPd5vim+246zjhyRenQVrPitR9Rqboc808l990FqjcRyoK
mTtwU0mId+DqdLhbSsnaJzHDZLXavjR2BqyVsBvUqRYYt5Mxv56XCdv4Z9X8
4i1x1C7Ovrw7C/xrzAL12q1wcKXnvQDzS8Df/fhNmJ4Nfh9XZp2W5ABFErzJ
NMUW5ZQLBzbn5kE/VWCW3GWHwY0ynonuv0DobcE5N33A9YenCza4F4DMmlie
hzWirTrrwB63Qqik17ObhhB1IgvKJAHXoPlE8OTouZ3oy7u1KAi8Do+FT//e
beSA/lO6wq68YvBeuJMbM+yAZal0Q+FnIYzoB1WPnXbEO5Xvx/LYpWDHWlWo
qLsLf+7pUp68/yusuqmlt/h0F440Tlizwstg4PmCrtEpJ8SXEmdPhQrYYMNs
VzN0RgHPLrJ5phK0M/OsOoecUfi7dHXWuyqwbruudTvBBSnRJ8c/PK+BFiqt
LGwbAy3WpDJfp98CZzbvun8/AyNWepF7ymtBeKYoSjnGFZ9+4mSM99RB2Cuv
l2lbmPjjnOlGCbUebKj3W+07mViSoDl/KEwEM0kF91S7mei4rHqMe0QElRMR
nbO9TJxOLrdnCURAqVXpq+xnYgtH3p6RLIJ5x5DXG0eYuJUfEwpXRFAXslZ+
ap6JCyn0xqMPRaAn2ssp0iaw4/wp/SkDEkZUdf1jdQksd7zipWRKQn7CVx6L
TuAXD6cZSysSZBil4XLGBHbW+OWccSJhTDKXKLAh0OVVfbSVHwnXpC6Xeewl
sJ+dOjx6kQTvoPAqOovA/fkvszXySJDv2lkrzSbQgOHfxikkIe7Su6ZmLoHV
siuyBstJ4OjY9uqGEMhom1v+to0ExfMKfcsPE6g0W5dv/ICEzqnxgRcRBKp3
T1ac7CXBsvHC6KVjBJYMfHFRGCJhSuPg6wgBgQ99g/u5oyTcSDKfdI0l8CL9
xHDVBAl+E7LT2vEEBkufCvn+gQRlt+HZpZ8IlGlpPOoxS8K/Tk49vw==
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.0896653800098087}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{}, {}, {
             Directive[
              Opacity[1.], 
              AbsoluteThickness[1.6], 
              Thickness[Tiny], 
              RGBColor[0.13, 0.62, 0.]], 
             Line[CompressedData["
1:eJwVyXk41AkYwHFUjqIk1rAoDY01uXcoo96XDmZ+SqvYeWiwjolESlEKEZEu
sVhdGGQbIkeZH8noScysZtMojWNTFF3PKLoktv74Pp8/vqbBu73DVJSUlDZ9
74e+tomy2Vmq6MB460KzcC5ML8oekHygitKrriSr7eNCiYL/PO81VXTUl7NK
kcyFN9Wdn+i9VJHc/o9j/xRwIdVK14hTTRXRPrc0NXZwocayMvTadqpo5Zb6
ukCLAFA3l38IIpeLPMvKgz+9CYAmAwbl9l5TkRVrYZrYNQge8ilSKtdYxGSE
LesxDIa59o/vFdlTRInbrRbrz4bA+flCPa3lS0Sm/hUXZubyoGC2atjSfYHo
lM69/RM7wyHvF82gyXnKIsNixvStgZ1g4MBfcr90tJXa6dZv1BYFY5Mv9SuU
RiBMPZr1NioGXM7EFRr7z8Db5a/2ovJe+PfxjKDFcT6q33Byfz8QC3Z62c8M
3HTwk7gyp751P/y570jF8GZ9VG8YuvGoNR64TvacHLERptn/5kU3TICVURFb
7SeWYb3r80W6hw7D9phz46eEVPyab6UY25AM8s3NL8djVmCwxjdJ+tIU2H1R
Vhs2ZYFtrsHaXZdSQXixS9HVREevHXnS04FpYLiwZXqDpzXyIn3IdOoxoFA6
WjlZtniy0HVPp0MmiPNpNjpjdljSu3WZSmgWZNybc2ybtQOm5O7fwsw/CSbc
+/ra2b+i83VJ9x3zM3C7jHJ2Wx8Dex8mVcv7s0GzjyM0MnHCqIkpni0jB2zC
jxsGJK7C8sTLsom7uRBYzQi1aF+NPaajxCAnD8I3PRiLtGDi9NOvCTX0AqD0
8X52SHdBzdsqmof1C6HHJJ5xVLIG97yijg4rn4edN+OzPOmAJf6FnV7OF0FV
IyHEyxlxxdmAqTV7ikBg2cBp6kfMqDl98OBQMTQf4L1+muWK7Ipop1uOfHjA
f/Ruk7Ub8htSNAxPlILvl1t5cU/c8IhUJ9JNtxyG6GFXh9PWYZJNnrf3+cuw
xkftgg5tPY50fDvuZ/83qFWaWsw8Wo96dWfUG9QE0DvwhWZ9aAOS4SkiF3kl
6DLZ7YZWGzEt+oGG27urYJadv1rcvxH9ml90H9e+Bs5txaY3k9xRWNvduMO8
FlpMqBWRNh6YE1h7QhBSBxs5IcWBPR7o6ketzr1UD/zMohi9OBZ2u08sah9p
gMjnW//LMGcjsIwZdP8bwDS527pWzMa/2qW8qq5GeJ967o5BFxtv+mYMEbJG
EIxGiyelbKTFscbfyBuBUqsvE/SwMciDLnMYbYSP6yJe/DTExsfO1jU9ykKo
i9DUUnxkY6lqiWqIkxAsrnv7FZkRWDbuENFQKoQhA1pgAo3A1OJYzBAIoSDp
a4iPJYGRLv2N/rVCUPUoi1pgS+C0Q0SmRqsQhvs+HIlnfv9XYskDfUK4pFRY
4eVNIFdLrbR8MQm+YVFVlj4EBjnaluZQSNCSuNbO4xD4uY3vkbKUhMO5r5qa
uQQOLqhOC7EiwW+Fi5QWQeBUKE/CZJGgc0JbprKLQD2P4W+MLSSIFSO9g9EE
Sp6tldv9TsIq8tTT3H0E0mSDmdZhJCiMg19ExxPYvriDa7OLhMupjq9ZCQRO
yvv67WJJCBidP26WSODw2l1zHBNI0PN8MjmbTCAESXuYKST8DxLYOZI=
              "]]}}}, {
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
           Axes -> {True, True}, AxesLabel -> {None, None}, 
           AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
           Frame -> {{False, False}, {False, False}}, 
           FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLines -> {None, None}, GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
             AbsolutePointSize[6], "ScalingFunctions" -> None}, 
           PlotRange -> {{-10, 55}, {0., 0.09962820001089855}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {{
              Scaled[0.02], 
              Scaled[0.02]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, 
           Ticks -> {Automatic, Automatic}}]}, $CellContext`relhumidityLabels = {
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{10, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           46.58526001869584, 0.006560760320476981}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{20, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           44.19967846675383, 0.011603879721282427`}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{30, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           42.25251099621035, 0.015720191754011383`}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{40, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           40.603300503938094`, 0.019206622734674845`}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{50, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           39.17074363124753, 0.022235047963542694`}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{60, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           37.903281702157614`, 0.02491446248163879}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{70, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           36.766047456719996`, 0.027318575676493886`}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{80, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           35.734303389927604`, 0.02949968263369306}]], 
         Graphics[
          Text[
           Rotate[
            Style[
             Row[{90, "%"}], 15, Background -> GrayLevel[1]], 40 Degree], {
           34.789833324504215`, 0.0314962923519981}]]}, $CellContext`fontsize = 
       17}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.1 for Microsoft Windows (64-bit) (March 23, 2015)",
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
Cell[1464, 33, 13775, 373, 691, "Input",
 CellOpen->False,
 InitializationCell->True],
Cell[CellGroupData[{
Cell[15264, 410, 22003, 520, 1092, "Input"],
Cell[37270, 932, 128360, 2483, 560, "Output"]
}, {2}]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature bwDm7dgZ#U#ieAKhxMbn04ua *)
