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
NotebookDataLength[     77954,       2022]
NotebookOptionsPosition[     74771,       1908]
NotebookOutlinePosition[     76466,       1962]
CellTagsIndexPosition[     76138,       1950]
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
   RowBox[{"unit", "[", 
    RowBox[{"pos_", ",", "side_"}], "]"}], ":=", 
   RowBox[{"Rectangle", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "-", "1.5"}], ",", 
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "-", 
        RowBox[{"side", "*", "1.5"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "+", "1.5"}], ",", 
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "+", 
        RowBox[{"side", "*", "1.5"}]}]}], "}"}]}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->260197163],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"border", "[", 
    RowBox[{"pos_", ",", "side_"}], "]"}], ":=", 
   RowBox[{"Rectangle", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "-", "2"}], ",", 
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "-", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"side", "*", "1.5"}], "+", "0.5"}], ")"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "+", "2"}], ",", 
       RowBox[{
        RowBox[{"pos", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "+", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"side", "*", "1.5"}], "+", "0.5"}], ")"}]}]}], "}"}]}], 
    "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->525239390],

Cell[BoxData[
 RowBox[{
  RowBox[{"equipment", "=", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\"\<distillation column\>\"", ",", 
       RowBox[{"unit", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", "2.5"}], "]"}], ",", 
       RowBox[{"border", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", "2.5"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"\"\<distillation\>\"", ",", "\"\<column\>\""}], "}"}], 
             ",", "Center"}], "]"}], ",", "16"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<condenser\>\"", ",", 
       RowBox[{"unit", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"6", ",", "5.25"}], "}"}], ",", "1"}], "]"}], ",", 
       RowBox[{"border", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"6", ",", "5.25"}], "}"}], ",", "1"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<condenser\>\"", ",", "16"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"6", ",", "5.25"}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<reboiler\>\"", ",", 
       RowBox[{"unit", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"6", ",", 
           RowBox[{"-", "5.25"}]}], "}"}], ",", "1"}], "]"}], ",", 
       RowBox[{"border", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"6", ",", 
           RowBox[{"-", "5.25"}]}], "}"}], ",", "1"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<reboiler\>\"", ",", "16"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"6", ",", 
           RowBox[{"-", "5.25"}]}], "}"}]}], "]"}]}], "}"}]}], "}"}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->7890047],

Cell[BoxData[
 RowBox[{
  RowBox[{"streams", "=", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\"\<feed\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "4"}], ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1.5"}], ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<feed\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "3"}], ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<vapor\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "3.75"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "5.25"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"4.5", ",", "5.25"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<vapor\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"2.75", ",", "5.25"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<liquid\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", 
            RowBox[{"-", "3.75"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", 
            RowBox[{"-", "5.25"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"4.5", ",", 
            RowBox[{"-", "5.25"}]}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<liquid\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.5", ",", 
           RowBox[{"-", "5.25"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<overhead\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"7.5", ",", "5.25"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"11", ",", "5.25"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<overhead\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"9.2", ",", "5.25"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<bottoms\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"7.5", ",", 
            RowBox[{"-", "5.25"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"11", ",", 
            RowBox[{"-", "5.25"}]}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<bottoms\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"9.2", ",", 
           RowBox[{"-", "5.25"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<reflux\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"6", ",", "3.75"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"6", ",", "2"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"1.5", ",", "2"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<reflux\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"4.5", ",", "2"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"\"\<reboil\>\"", ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"6", ",", 
            RowBox[{"-", "3.75"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"6", ",", 
            RowBox[{"-", "2"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"1.5", ",", 
            RowBox[{"-", "2"}]}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<reboil\>\"", ",", "15"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"3", ",", 
           RowBox[{"-", "2"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}]}], "}"}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->94267642]
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
      "compList", ",", "components", ",", "balance", ",", "colBalance", ",", 
       "condBalance", ",", "rebBalance", ",", "overallBalance", ",", "dof", 
       ",", "color"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"compList", "[", 
        RowBox[{"comp_", ",", "pos_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Subscript", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"comp", ",", "Italic"}], "]"}], ",", "#"}], "]"}], 
             ",", "15"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"pos", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{
              RowBox[{"pos", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"#", "-", "1"}], ")"}], "*", "0.75"}]}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1.15"}], "}"}]}], "]"}], "&"}], "/@", 
        RowBox[{"Range", "@", "species"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"components", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\"\<feed\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<z\>\"", ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "3"}], ",", "0"}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<vapor\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<y\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"2.75", ",", "5.25"}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<liquid\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<x\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"1.5", ",", 
               RowBox[{"-", "5.25"}]}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<overhead\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<y\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"9.2", ",", "5.25"}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<bottoms\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<x\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"9.2", ",", 
               RowBox[{"-", "5.25"}]}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<reflux\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<x\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"4.5", ",", "2"}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<reboil\>\"", ",", 
           RowBox[{"compList", "[", 
            RowBox[{"\"\<y\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"3", ",", 
               RowBox[{"-", "2"}]}], "}"}]}], "]"}]}], "}"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"balance", "[", "list_", "]"}], ":=", 
       RowBox[{
        RowBox[{"Length", "@", 
         RowBox[{"DeleteCases", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"TrueQ", "@", 
                RowBox[{"MemberQ", "[", 
                 RowBox[{
                  RowBox[{"Flatten", "@", "list"}], ",", 
                  RowBox[{"s", "[", 
                   RowBox[{"[", "#", "]"}], "]"}]}], "]"}]}], ",", 
               RowBox[{"s", "[", 
                RowBox[{"[", "#", "]"}], "]"}]}], "]"}], "&"}], "/@", 
            RowBox[{"Range", "@", 
             RowBox[{"Length", "@", "s"}]}]}], ",", "Null"}], "]"}]}], "+", 
        "\[IndentingNewLine]", 
        RowBox[{"Length", "@", 
         RowBox[{"DeleteCases", "[", 
          RowBox[{
           RowBox[{"Flatten", "@", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"TrueQ", "@", 
                   RowBox[{"MemberQ", "[", 
                    RowBox[{
                    RowBox[{"Flatten", "@", "list"}], ",", 
                    RowBox[{"c1", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}]}], ",", 
                  RowBox[{"c1", "[", 
                   RowBox[{"[", "#", "]"}], "]"}]}], "]"}], "&"}], "/@", 
               RowBox[{"Range", "@", 
                RowBox[{"Length", "@", "c1"}]}]}], ",", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"TrueQ", "@", 
                   RowBox[{"MemberQ", "[", 
                    RowBox[{
                    RowBox[{"Flatten", "@", "list"}], ",", 
                    RowBox[{"c2", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}]}], ",", 
                  RowBox[{"c2", "[", 
                   RowBox[{"[", "#", "]"}], "]"}]}], "]"}], "&"}], "/@", 
               RowBox[{"Range", "@", 
                RowBox[{"Length", "@", "c2"}]}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"species", "\[GreaterEqual]", "3"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"TrueQ", "@", 
                    RowBox[{"MemberQ", "[", 
                    RowBox[{
                    RowBox[{"Flatten", "@", "list"}], ",", 
                    RowBox[{"c3", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}]}], ",", 
                    RowBox[{"c3", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}], "&"}], "/@", 
                 RowBox[{"Range", "@", 
                  RowBox[{"Length", "@", "c3"}]}]}], ",", "Null"}], "]"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"species", "\[GreaterEqual]", "4"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"TrueQ", "@", 
                    RowBox[{"MemberQ", "[", 
                    RowBox[{
                    RowBox[{"Flatten", "@", "list"}], ",", 
                    RowBox[{"c4", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}]}], ",", 
                    RowBox[{"c4", "[", 
                    RowBox[{"[", "#", "]"}], "]"}]}], "]"}], "&"}], "/@", 
                 RowBox[{"Range", "@", 
                  RowBox[{"Length", "@", "c4"}]}]}], ",", "Null"}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], ",", "Null"}], "]"}]}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"colBalance", "=", 
       RowBox[{"balance", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"1", ";;", "3"}], ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"6", ";;", "7"}], ",", "1"}], "]"}], "]"}]}], "}"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"condBalance", "=", 
       RowBox[{"balance", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"2", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"4", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"6", ",", "1"}], "]"}], "]"}]}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"rebBalance", "=", 
       RowBox[{"balance", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"3", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"5", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"7", ",", "1"}], "]"}], "]"}]}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"overallBalance", "=", 
       RowBox[{"balance", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"4", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"streams", "[", 
           RowBox[{"[", 
            RowBox[{"5", ",", "1"}], "]"}], "]"}]}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"dof", "[", 
        RowBox[{"num_", ",", "bal_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"num", "*", 
         RowBox[{"(", 
          RowBox[{"1", "+", "species"}], ")"}]}], "-", "bal", "-", "species", 
        "-", "num"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"color", "[", 
        RowBox[{"num_", ",", "bal_"}], "]"}], ":=", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"dof", "[", 
           RowBox[{"num", ",", "bal"}], "]"}], ">", "0"}], ",", 
         RowBox[{"Opacity", "[", 
          RowBox[{"0.3", ",", "Red"}], "]"}], ",", 
         RowBox[{
          RowBox[{"dof", "[", 
           RowBox[{"num", ",", "bal"}], "]"}], "\[Equal]", "0"}], ",", 
         RowBox[{"Opacity", "[", 
          RowBox[{"0.5", ",", "Green"}], "]"}], ",", 
         RowBox[{
          RowBox[{"dof", "[", 
           RowBox[{"num", ",", "bal"}], "]"}], "<", "0"}], ",", 
         RowBox[{"Opacity", "[", 
          RowBox[{"0.5", ",", "Yellow"}], "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Grid", "[", 
       RowBox[{"{", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Graphics", "[", 
           RowBox[{
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{"Text", "@", 
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Style", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "\"\<distillation column\>\"", ",", "\[IndentingNewLine]", 
                    RowBox[{"Framed", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"Grid", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<unknowns =\>\"", ",", 
                    RowBox[{
                    RowBox[{"5", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "species"}], ")"}]}], "-", 
                    "colBalance"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<equations =\>\"", ",", 
                    RowBox[{"species", "+", "5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<dof =\>\"", ",", 
                    RowBox[{"dof", "[", 
                    RowBox[{"5", ",", "colBalance"}], "]"}]}], "}"}]}], "}"}],
                     ",", 
                    RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"Background", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    RowBox[{"color", "[", 
                    RowBox[{"5", ",", "colBalance"}], "]"}], ",", "None"}], 
                    "]"}]}]}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
                    "Center"}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    "Black", ",", "White"}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Spacer", "[", "10", "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Style", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<condenser\>\"", ",", "\[IndentingNewLine]", 
                    RowBox[{"Framed", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"Grid", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<unknowns =\>\"", ",", 
                    RowBox[{
                    RowBox[{"3", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "species"}], ")"}]}], "-", 
                    "condBalance"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<equations =\>\"", ",", 
                    RowBox[{"species", "+", "3"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<dof =\>\"", ",", 
                    RowBox[{"dof", "[", 
                    RowBox[{"3", ",", "condBalance"}], "]"}]}], "}"}]}], 
                    "}"}], ",", 
                    RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"Background", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    RowBox[{"color", "[", 
                    RowBox[{"3", ",", "condBalance"}], "]"}], ",", "None"}], 
                    "]"}]}]}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
                    "Center"}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    "Black", ",", "White"}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Spacer", "[", "10", "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Style", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<reboiler\>\"", ",", "\[IndentingNewLine]", 
                    RowBox[{"Framed", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"Grid", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<unknowns =\>\"", ",", 
                    RowBox[{
                    RowBox[{"3", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "species"}], ")"}]}], "-", 
                    "rebBalance"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<equations =\>\"", ",", 
                    RowBox[{"species", "+", "3"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<dof =\>\"", ",", 
                    RowBox[{"dof", "[", 
                    RowBox[{"3", ",", "rebBalance"}], "]"}]}], "}"}]}], "}"}],
                     ",", 
                    RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"Background", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"3", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    RowBox[{"color", "[", 
                    RowBox[{"3", ",", "rebBalance"}], "]"}], ",", "None"}], 
                    "]"}]}]}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
                    "Center"}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"MemberQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"equipment", "[", 
                    RowBox[{"[", 
                    RowBox[{"3", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                    "Black", ",", "White"}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Spacer", "[", "10", "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Style", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<overall\>\"", ",", "\[IndentingNewLine]", 
                    RowBox[{"Framed", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"Grid", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"\"\<unknowns =\>\"", ",", 
                    RowBox[{
                    RowBox[{"3", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "species"}], ")"}]}], "-", 
                    "overallBalance"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<equations =\>\"", ",", 
                    RowBox[{"species", "+", "3"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"\"\<dof =\>\"", ",", 
                    RowBox[{"dof", "[", 
                    RowBox[{"3", ",", "overallBalance"}], "]"}]}], "}"}]}], 
                    "}"}], ",", 
                    RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"Background", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"overall", "\[Equal]", "1"}], ",", 
                    RowBox[{"color", "[", 
                    RowBox[{"3", ",", "overallBalance"}], "]"}], ",", 
                    "None"}], "]"}]}]}], "]"}]}], "\[IndentingNewLine]", 
                    "}"}], ",", "Center"}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"overall", "\[Equal]", "1"}], ",", "Black", ",", 
                    "White"}], "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}],
                 ",", "Left"}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
            RowBox[{"ImageSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"125", ",", "400"}], "}"}]}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"Graphics", "[", 
           RowBox[{
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{"(*", "equipment", "*)"}], "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"FaceForm", "[", "Transparent", "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"FreeQ", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", "Thick", "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "4", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"AbsoluteThickness", "[", "3", "]"}], "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"{", 
                    RowBox[{"Thick", ",", "Dashed", ",", "Blue"}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "4", "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}]}], "}"}], ",", 
                    RowBox[{"e", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"e", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                    "}"}]}], "\[IndentingNewLine]", "]"}], "&"}], "/@", 
                 "equipment"}]}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"(*", "streams", "*)"}], "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"FreeQ", "[", 
                    RowBox[{"s", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"Thick", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"s", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"AbsoluteThickness", "[", "3", "]"}], ",", "Blue",
                     ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}]}], "}"}], ",", 
                    RowBox[{"s", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"s", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                   "\[IndentingNewLine]", "]"}], "&"}], "/@", "streams"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"(*", "components", "*)"}], "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"FreeQ", "[", 
                   RowBox[{"c1", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Button", "[", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"c1", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Button", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "1"}], "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}], ",", 
                    RowBox[{"c1", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"c1", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                 "\[IndentingNewLine]", "]"}], "&"}], "/@", "components"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"FreeQ", "[", 
                   RowBox[{"c2", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Button", "[", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "2"}], "]"}], "]"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"c2", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Button", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "2"}], "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}], ",", 
                    RowBox[{"c2", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"c2", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                 "\[IndentingNewLine]", "]"}], "&"}], "/@", "components"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"species", "\[GreaterEqual]", "3"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"FreeQ", "[", 
                    RowBox[{"c3", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "3"}], "]"}], "]"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"c3", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "3"}], "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}], ",", 
                    RowBox[{"c3", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"c3", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                   "\[IndentingNewLine]", "]"}], "&"}], "/@", 
                 "components"}]}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"species", "\[Equal]", "4"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"FreeQ", "[", 
                    RowBox[{"c4", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "4"}], "]"}], "]"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"c4", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "4"}], "]"}], "]"}], ",", "Bold", ",", 
                    "Blue"}], "]"}], ",", 
                    RowBox[{"c4", "=", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"c4", ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "]"}]}], 
                   "\[IndentingNewLine]", "]"}], "&"}], "/@", 
                 "components"}]}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"(*", "overall", "*)"}], "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"overall", "\[Equal]", "1"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", 
                   RowBox[{"{", 
                    RowBox[{"Thick", ",", "Dashed", ",", "Blue"}], "}"}], 
                   "]"}], ",", 
                  RowBox[{"FaceForm", "[", "None", "]"}], ",", 
                  RowBox[{"Rectangle", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "3.75"}], ",", 
                    RowBox[{"-", "7.5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"10.25", ",", "7.5"}], "}"}]}], "]"}]}], "}"}]}], 
               "]"}], ","}], "\[IndentingNewLine]", "}"}], ",", 
            RowBox[{"ImageSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"475", ",", "400"}], "}"}]}], ",", 
            RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
            RowBox[{"PlotRange", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "8.5"}], ",", "7.5"}], "}"}]}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<click on a unit, stream, or species to select it\>\"", ",", 
          "Bold"}], "]"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"species", ",", "3", ",", "\"\<number of species\>\""}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", "3", ",", "4"}], "}"}], ",", "Setter"}], "}"}],
           "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"overall", ",", "0", ",", "\"\<overall balance\>\""}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", "Checkbox"}], "}"}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"e", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"s", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"c1", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"c2", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"c3", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"c4", ",", 
              RowBox[{"{", "}"}]}], "}"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], "]"}]}], 
        "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`c1$$ = {}, $CellContext`c2$$ = {}, \
$CellContext`c3$$ = {}, $CellContext`c4$$ = {}, $CellContext`e$$ = {}, \
$CellContext`overall$$ = 0, $CellContext`s$$ = {}, $CellContext`species$$ = 3,
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`species$$], 3, "number of species"}, {2, 3, 4}}, {{
       Hold[$CellContext`overall$$], 0, "overall balance"}, {0, 1}}, {{
       Hold[$CellContext`e$$], {}}}, {{
       Hold[$CellContext`s$$], {}}}, {{
       Hold[$CellContext`c1$$], {}}}, {{
       Hold[$CellContext`c2$$], {}}}, {{
       Hold[$CellContext`c3$$], {}}}, {{
       Hold[$CellContext`c4$$], {}}}, {
      Hold[
       Grid[{{
          Style["click on a unit, stream, or species to select it", Bold]}, {
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    608., {196.5, 203.5}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`species$2507$$ = 
    0, $CellContext`overall$2508$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`c1$$ = {}, $CellContext`c2$$ = {}, \
$CellContext`c3$$ = {}, $CellContext`c4$$ = {}, $CellContext`e$$ = {}, \
$CellContext`overall$$ = 0, $CellContext`s$$ = {}, $CellContext`species$$ = 
        3}, "ControllerVariables" :> {
        Hold[$CellContext`species$$, $CellContext`species$2507$$, 0], 
        Hold[$CellContext`overall$$, $CellContext`overall$2508$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`compList$, $CellContext`components$, \
$CellContext`balance$, $CellContext`colBalance$, $CellContext`condBalance$, \
$CellContext`rebBalance$, $CellContext`overallBalance$, $CellContext`dof$, \
$CellContext`color$}, $CellContext`compList$[
           Pattern[$CellContext`comp$, 
            Blank[]], 
           Pattern[$CellContext`pos$, 
            Blank[]]] := Map[Text[
            Style[
             Subscript[
              Style[$CellContext`comp$, Italic], #], 15], {
             Part[$CellContext`pos$, 1], Part[$CellContext`pos$, 2] - (# - 1) 
             0.75}, {0, 1.15}]& , 
           Range[$CellContext`species$$]]; $CellContext`components$ = {{
           "feed", 
            $CellContext`compList$["z", {-3, 0}]}, {"vapor", 
            $CellContext`compList$["y", {2.75, 5.25}]}, {"liquid", 
            $CellContext`compList$["x", {1.5, -5.25}]}, {"overhead", 
            $CellContext`compList$["y", {9.2, 5.25}]}, {"bottoms", 
            $CellContext`compList$["x", {9.2, -5.25}]}, {"reflux", 
            $CellContext`compList$["x", {4.5, 2}]}, {"reboil", 
            $CellContext`compList$["y", {3, -2}]}}; $CellContext`balance$[
           Pattern[$CellContext`list$, 
            Blank[]]] := Length[
            DeleteCases[
             Map[If[
               TrueQ[
                MemberQ[
                 Flatten[$CellContext`list$], 
                 Part[$CellContext`s$$, #]]], 
               Part[$CellContext`s$$, #]]& , 
              Range[
               Length[$CellContext`s$$]]], Null]] + Length[
            DeleteCases[
             Flatten[{
               Map[If[
                 TrueQ[
                  MemberQ[
                   Flatten[$CellContext`list$], 
                   Part[$CellContext`c1$$, #]]], 
                 Part[$CellContext`c1$$, #]]& , 
                Range[
                 Length[$CellContext`c1$$]]], 
               Map[If[
                 TrueQ[
                  MemberQ[
                   Flatten[$CellContext`list$], 
                   Part[$CellContext`c2$$, #]]], 
                 Part[$CellContext`c2$$, #]]& , 
                Range[
                 Length[$CellContext`c2$$]]], 
               If[$CellContext`species$$ >= 3, 
                Map[If[
                  TrueQ[
                   MemberQ[
                    Flatten[$CellContext`list$], 
                    Part[$CellContext`c3$$, #]]], 
                  Part[$CellContext`c3$$, #]]& , 
                 Range[
                  Length[$CellContext`c3$$]]], Null], 
               If[$CellContext`species$$ >= 4, 
                Map[If[
                  TrueQ[
                   MemberQ[
                    Flatten[$CellContext`list$], 
                    Part[$CellContext`c4$$, #]]], 
                  Part[$CellContext`c4$$, #]]& , 
                 Range[
                  Length[$CellContext`c4$$]]], Null]}], 
             Null]]; $CellContext`colBalance$ = $CellContext`balance$[{
            Part[$CellContext`streams, 
             Span[1, 3], 1], 
            Part[$CellContext`streams, 
             Span[6, 7], 
             1]}]; $CellContext`condBalance$ = $CellContext`balance$[{
            Part[$CellContext`streams, 2, 1], 
            Part[$CellContext`streams, 4, 1], 
            
            Part[$CellContext`streams, 6, 
             1]}]; $CellContext`rebBalance$ = $CellContext`balance$[{
            Part[$CellContext`streams, 3, 1], 
            Part[$CellContext`streams, 5, 1], 
            Part[$CellContext`streams, 7, 
             1]}]; $CellContext`overallBalance$ = $CellContext`balance$[{
            Part[$CellContext`streams, 1, 1], 
            Part[$CellContext`streams, 4, 1], 
            Part[$CellContext`streams, 5, 1]}]; $CellContext`dof$[
           Pattern[$CellContext`num$, 
            Blank[]], 
           Pattern[$CellContext`bal$, 
            Blank[]]] := $CellContext`num$ (
            1 + $CellContext`species$$) - $CellContext`bal$ - \
$CellContext`species$$ - $CellContext`num$; $CellContext`color$[
           Pattern[$CellContext`num$, 
            Blank[]], 
           Pattern[$CellContext`bal$, 
            Blank[]]] := 
         Which[$CellContext`dof$[$CellContext`num$, $CellContext`bal$] > 0, 
           Opacity[
           0.3, Red], $CellContext`dof$[$CellContext`num$, $CellContext`bal$] == 
           0, 
           Opacity[
           0.5, Green], $CellContext`dof$[$CellContext`num$, \
$CellContext`bal$] < 0, 
           Opacity[0.5, Yellow]]; Grid[{{
            Graphics[{
              Text[
               Column[{
                 Style[
                  Column[{"distillation column", 
                    Framed[
                    
                    Grid[{{"unknowns =", 
                    5 (1 + $CellContext`species$$) - \
$CellContext`colBalance$}, {"equations =", $CellContext`species$$ + 5}, {
                    "dof =", 
                    $CellContext`dof$[5, $CellContext`colBalance$]}}, 
                    Alignment -> "="], Background -> If[
                    MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 1, 1]], 
                    $CellContext`color$[5, $CellContext`colBalance$], None]]},
                    Center], 16, 
                  If[
                   MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 1, 1]], Black, White]], 
                 Spacer[10], 
                 Style[
                  Column[{"condenser", 
                    Framed[
                    Grid[{{
                    "unknowns =", 
                    3 (1 + $CellContext`species$$) - \
$CellContext`condBalance$}, {"equations =", $CellContext`species$$ + 3}, {
                    "dof =", 
                    $CellContext`dof$[3, $CellContext`condBalance$]}}, 
                    Alignment -> "="], Background -> If[
                    MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 2, 1]], 
                    $CellContext`color$[3, $CellContext`condBalance$], 
                    None]]}, Center], 16, 
                  If[
                   MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 2, 1]], Black, White]], 
                 Spacer[10], 
                 Style[
                  Column[{"reboiler", 
                    Framed[
                    
                    Grid[{{"unknowns =", 
                    3 (1 + $CellContext`species$$) - \
$CellContext`rebBalance$}, {"equations =", $CellContext`species$$ + 3}, {
                    "dof =", 
                    $CellContext`dof$[3, $CellContext`rebBalance$]}}, 
                    Alignment -> "="], Background -> If[
                    MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 3, 1]], 
                    $CellContext`color$[3, $CellContext`rebBalance$], None]]},
                    Center], 16, 
                  If[
                   MemberQ[$CellContext`e$$, 
                    Part[$CellContext`equipment, 3, 1]], Black, White]], 
                 Spacer[10], 
                 Style[
                  Column[{"overall", 
                    Framed[
                    
                    Grid[{{"unknowns =", 
                    3 (1 + $CellContext`species$$) - \
$CellContext`overallBalance$}, {"equations =", $CellContext`species$$ + 3}, {
                    "dof =", 
                    $CellContext`dof$[3, $CellContext`overallBalance$]}}, 
                    Alignment -> "="], Background -> 
                    If[$CellContext`overall$$ == 1, 
                    $CellContext`color$[3, $CellContext`overallBalance$], 
                    None]]}, Center], 16, 
                  If[$CellContext`overall$$ == 1, Black, White]]}, Left]]}, 
             ImageSize -> {125, 400}], 
            Graphics[{{
               FaceForm[Transparent], 
               Map[If[
                 FreeQ[$CellContext`e$$, 
                  Part[#, 1]], 
                 Button[{
                   EdgeForm[Thick], 
                   Part[#, 2], 
                   Part[#, 4]}, 
                  AppendTo[$CellContext`e$$, 
                   Part[#, 1]]], {{
                   EdgeForm[
                    AbsoluteThickness[3]], 
                   Part[#, 2]}, 
                  Button[{
                    EdgeForm[{Thick, Dashed, Blue}], 
                    Part[#, 3], 
                    Style[
                    Part[#, 4], Bold, Blue]}, $CellContext`e$$ = 
                   DeleteCases[$CellContext`e$$, 
                    Part[#, 1]]]}]& , $CellContext`equipment]}, {
               Arrowheads[0.03], 
               Map[If[
                 FreeQ[$CellContext`s$$, 
                  Part[#, 1]], 
                 Button[{Thick, 
                   Part[#, 2], 
                   Part[#, 3]}, 
                  AppendTo[$CellContext`s$$, 
                   Part[#, 1]]], 
                 Button[{
                   AbsoluteThickness[3], Blue, 
                   Part[#, 2], 
                   Style[
                    Part[#, 3], Bold, Blue]}, $CellContext`s$$ = 
                  DeleteCases[$CellContext`s$$, 
                    Part[#, 1]]]]& , $CellContext`streams]}, 
              Map[If[
                FreeQ[$CellContext`c1$$, 
                 Part[#, 1]], 
                Button[
                 Part[#, 2, 1], 
                 AppendTo[$CellContext`c1$$, 
                  Part[#, 1]]], 
                Button[
                 Style[
                  Part[#, 2, 1], Bold, Blue], $CellContext`c1$$ = 
                 DeleteCases[$CellContext`c1$$, 
                   Part[#, 1]]]]& , $CellContext`components$], 
              Map[If[
                FreeQ[$CellContext`c2$$, 
                 Part[#, 1]], 
                Button[
                 Part[#, 2, 2], 
                 AppendTo[$CellContext`c2$$, 
                  Part[#, 1]]], 
                Button[
                 Style[
                  Part[#, 2, 2], Bold, Blue], $CellContext`c2$$ = 
                 DeleteCases[$CellContext`c2$$, 
                   Part[#, 1]]]]& , $CellContext`components$], 
              If[$CellContext`species$$ >= 3, 
               Map[If[
                 FreeQ[$CellContext`c3$$, 
                  Part[#, 1]], 
                 Button[
                  Part[#, 2, 3], 
                  AppendTo[$CellContext`c3$$, 
                   Part[#, 1]]], 
                 Button[
                  Style[
                   Part[#, 2, 3], Bold, Blue], $CellContext`c3$$ = 
                  DeleteCases[$CellContext`c3$$, 
                    Part[#, 1]]]]& , $CellContext`components$]], 
              If[$CellContext`species$$ == 4, 
               Map[If[
                 FreeQ[$CellContext`c4$$, 
                  Part[#, 1]], 
                 Button[
                  Part[#, 2, 4], 
                  AppendTo[$CellContext`c4$$, 
                   Part[#, 1]]], 
                 Button[
                  Style[
                   Part[#, 2, 4], Bold, Blue], $CellContext`c4$$ = 
                  DeleteCases[$CellContext`c4$$, 
                    Part[#, 1]]]]& , $CellContext`components$]], 
              If[$CellContext`overall$$ == 1, {
                EdgeForm[{Thick, Dashed, Blue}], 
                FaceForm[None], 
                Rectangle[{-3.75, -7.5}, {10.25, 7.5}]}], Null}, 
             ImageSize -> {475, 400}, AspectRatio -> Full, 
             PlotRange -> {-8.5, 7.5}]}}]], 
      "Specifications" :> {{{$CellContext`species$$, 3, 
          "number of species"}, {2, 3, 4}, ControlType -> Setter, 
         ControlPlacement -> 
         1}, {{$CellContext`overall$$, 0, "overall balance"}, {0, 1}, 
         ControlType -> Checkbox, ControlPlacement -> 
         2}, {{$CellContext`e$$, {}}, ControlType -> None, ControlPlacement -> 
         3}, {{$CellContext`s$$, {}}, ControlType -> None, ControlPlacement -> 
         4}, {{$CellContext`c1$$, {}}, ControlType -> None, ControlPlacement -> 
         5}, {{$CellContext`c2$$, {}}, ControlType -> None, ControlPlacement -> 
         6}, {{$CellContext`c3$$, {}}, ControlType -> None, ControlPlacement -> 
         7}, {{$CellContext`c4$$, {}}, ControlType -> None, ControlPlacement -> 
         8}, 
        Grid[{{
           Style["click on a unit, stream, or species to select it", Bold]}, {
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8]}}, Alignment -> Left]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{657., {248., 255.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[Subscript] = {NHoldRest}, 
       Subscript[Notebook$$18$257955`c1, 0] = 
       0, $CellContext`streams = {{"feed", 
          Arrow[{{-4, 0}, {-1.5, 0}}], 
          Text[
           Style["feed", 15], {-3, 0}, {0, -1.5}]}, {"vapor", 
          Arrow[{{0, 3.75}, {0, 5.25}, {4.5, 5.25}}], 
          Text[
           Style["vapor", 15], {2.75, 5.25}, {0, -1.5}]}, {"liquid", 
          Arrow[{{0, -3.75}, {0, -5.25}, {4.5, -5.25}}], 
          Text[
           Style["liquid", 15], {1.5, -5.25}, {0, -1.5}]}, {"overhead", 
          Arrow[{{7.5, 5.25}, {11, 5.25}}], 
          Text[
           Style["overhead", 15], {9.2, 5.25}, {0, -1.5}]}, {"bottoms", 
          Arrow[{{7.5, -5.25}, {11, -5.25}}], 
          Text[
           Style["bottoms", 15], {9.2, -5.25}, {0, -1.5}]}, {"reflux", 
          Arrow[{{6, 3.75}, {6, 2}, {1.5, 2}}], 
          Text[
           Style["reflux", 15], {4.5, 2}, {0, -1.5}]}, {"reboil", 
          Arrow[{{6, -3.75}, {6, -2}, {1.5, -2}}], 
          Text[
           Style["reboil", 15], {3, -2}, {
           0, -1.5}]}}, $CellContext`equipment = {{"distillation column", 
          Rectangle[{-1.5, -3.75}, {1.5, 3.75}], 
          Rectangle[{-2, -4.25}, {2, 4.25}], 
          Text[
           Style[
            Column[{"distillation", "column"}, Center], 16], {0, 0}]}, {
         "condenser", 
          Rectangle[{4.5, 3.75}, {7.5, 6.75}], 
          Rectangle[{4, 3.25}, {8, 7.25}], 
          Text[
           Style["condenser", 16], {6, 5.25}]}, {"reboiler", 
          Rectangle[{4.5, -6.75}, {7.5, -3.75}], 
          Rectangle[{4, -7.25}, {8, -3.25}], 
          Text[
           Style["reboiler", 16], {6, -5.25}]}}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->867884253]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell["XXXX", "ManipulateCaption"]
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

Cell[TextData[{
 "Total variables ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", "T"], "=", 
    RowBox[{
     SubscriptBox["N", "S"], "+", 
     RowBox[{
      SubscriptBox["N", "S"], " ", 
      SubscriptBox["N", "C"]}]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->512879913],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", "S"], TraditionalForm]], "InlineMath"],
 " is the number of streams and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", "C"], TraditionalForm]], "InlineMath"],
 " is the number of components or species."
}], "DetailNotes",
 CellID->797656683],

Cell[TextData[{
 "The number of equations ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", "E"], "=", 
    RowBox[{"1", "+", 
     SubscriptBox["N", "C"], "+", 
     SubscriptBox["N", "S"]}]}], TraditionalForm]], "InlineMath"],
 ", or 1 overall balance, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", "C"], TraditionalForm]], "InlineMath"],
 " species balances, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", "S"], TraditionalForm]], "InlineMath"],
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["z", "i"]}], "=", "1"}], TraditionalForm]], "InlineMath"],
 " mole fraction balances."
}], "DetailNotes",
 CellID->265453496],

Cell[TextData[{
 "The degrees of freedom ",
 Cell[BoxData[
  FormBox[
   RowBox[{"dof", "=", 
    RowBox[{
     SubscriptBox["N", "T"], "-", 
     SubscriptBox["N", "K"], "-", 
     SubscriptBox["N", "E"]}]}], TraditionalForm]], "InlineMath"],
 ", where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", "K"], TraditionalForm]], "InlineMath"],
 " are the number of known or set variables."
}], "DetailNotes",
 CellID->60460601],

Cell["", "DetailNotes",
 CellID->35183566]
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
  Cell[69065, 1748, 312, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[69380, 1758, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[70061, 1776, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[70404, 1789, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[71044, 1806, 844, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[71891, 1829, 304, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[72198, 1839, 1464, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[73665, 1872, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 75239, 1923},
 {"RotateAndZoomIn3D", 75348, 1926},
 {"DragLocators", 75458, 1929},
 {"CreateAndDeleteLocators", 75574, 1932},
 {"SliderZoom", 75688, 1935},
 {"GamepadControls", 75794, 1938},
 {"AutomaticAnimation", 75907, 1941},
 {"BookmarkAnimation", 76024, 1944}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 36, 0, 74, "DemoTitle"],
Cell[CellGroupData[{
Cell[1547, 39, 33, 0, 287, "InitializationSection"],
Cell[1583, 41, 795, 26, 23, "Input",
 InitializationCell->True,
 CellID->260197163],
Cell[2381, 69, 924, 31, 27, "Input",
 InitializationCell->True,
 CellID->525239390],
Cell[3308, 102, 2221, 65, 88, "Input",
 InitializationCell->True,
 CellID->7890047],
Cell[5532, 169, 5429, 161, 168, "Input",
 InitializationCell->True,
 CellID->94267642]
}, Closed]],
Cell[CellGroupData[{
Cell[10998, 335, 29, 0, 192, "ManipulateSection"],
Cell[CellGroupData[{
Cell[11052, 339, 36100, 840, 2028, "Input"],
Cell[47155, 1181, 17228, 390, 515, "Output",
 CellID->867884253]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[64429, 1577, 36, 0, 169, "ManipulateCaptionSection"],
Cell[64468, 1579, 33, 0, 22, "ManipulateCaption"]
}, Open  ]],
Cell[CellGroupData[{
Cell[64538, 1584, 28, 0, 173, "ThumbnailSection"],
Cell[64569, 1586, 1242, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65848, 1625, 28, 0, 143, "SnapshotsSection"],
Cell[65879, 1627, 1241, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[67157, 1666, 26, 0, 336, "DetailsSection"],
Cell[67186, 1668, 320, 13, 23, "DetailNotes",
 CellID->512879913],
Cell[67509, 1683, 318, 11, 23, "DetailNotes",
 CellID->797656683],
Cell[67830, 1696, 683, 25, 23, "DetailNotes",
 CellID->265453496],
Cell[68516, 1723, 427, 15, 23, "DetailNotes",
 CellID->60460601],
Cell[68946, 1740, 42, 1, 22, "DetailNotes",
 CellID->35183566]
}, Open  ]],
Cell[CellGroupData[{
Cell[69025, 1746, 37, 0, 126, "ControlSuggestionsSection"],
Cell[69065, 1748, 312, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[69380, 1758, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[70061, 1776, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[70404, 1789, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[71044, 1806, 844, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[71891, 1829, 304, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[72198, 1839, 1464, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[73665, 1872, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[74588, 1896, 30, 0, 155, "SearchTermsSection"],
Cell[74621, 1898, 31, 0, 129, "RelatedLinksSection"],
Cell[CellGroupData[{
Cell[74677, 1902, 25, 0, 129, "AuthorSection"],
Cell[74705, 1904, 38, 0, 22, "Author"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 5u0yCeDPQar51C1wHctweJA@ *)
