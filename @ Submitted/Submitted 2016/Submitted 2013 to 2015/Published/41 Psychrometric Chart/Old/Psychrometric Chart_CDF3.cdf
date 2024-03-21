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
NotebookDataLength[     14719,        414]
NotebookOptionsPosition[     15243,        408]
NotebookOutlinePosition[     15679,        427]
CellTagsIndexPosition[     15636,        424]
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
 InitializationCell->True]
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
 InitializationCell->True]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature NuTo8r2XmCJs4AwCqPXJZbhX *)
