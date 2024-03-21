(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

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
NotebookDataLength[     59569,       1751]
NotebookOptionsPosition[     54959,       1594]
NotebookOutlinePosition[     56651,       1648]
CellTagsIndexPosition[     56323,       1636]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Membrane Concentration Profile", "DemoTitle"],

Cell["", "InitializationSection"],

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
      "C1", ",", "C2", ",", "kc1", ",", "kc2", ",", "\[Chi]", ",", 
       "\[CapitalPi]", ",", "nA", ",", "C1i", ",", "C2i", ",", "C1is", ",", 
       "C2is", ",", "d", ",", "\[Delta]x", ",", "membrane"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"C1", "=", "30"}], ";", 
      RowBox[{"C2", "=", "5"}], ";", 
      RowBox[{"(*", 
       RowBox[{"mol", "/", "m3"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"kc1", "=", "4*^-5"}], ";", 
      RowBox[{"kc2", "=", "2.02*^-5"}], ";", 
      RowBox[{"(*", 
       RowBox[{"m", "/", "s"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[Chi]", "=", 
       RowBox[{"DA", "/", 
        SuperscriptBox[
         RowBox[{"(", "1*^6", ")"}], "2"]}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"m2", "/", "s"}], "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"\[CapitalPi]", "=", 
       FractionBox[
        RowBox[{"\[Chi]", "*", "k"}], 
        RowBox[{"L", "*", "1*^-6"}]]}], ";", 
      RowBox[{"nA", "=", 
       FractionBox[
        RowBox[{"C1", "-", "C2"}], 
        RowBox[{
         FractionBox["1", "kc1"], "+", 
         FractionBox["1", "\[CapitalPi]"], "+", 
         FractionBox["1", "kc2"]}]]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"C1i", "=", 
       RowBox[{"C1", "-", 
        FractionBox["nA", "kc1"]}]}], ";", 
      RowBox[{"C2i", "=", 
       RowBox[{"C2", "+", 
        FractionBox["nA", "kc2"]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"C1is", "=", 
       RowBox[{"k", "*", "C1i"}]}], ";", 
      RowBox[{"C2is", "=", 
       RowBox[{"k", "*", "C2i"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"d", "=", 
       RowBox[{"L", "/", "620.2"}]}], ";", 
      RowBox[{"\[Delta]x", "=", "0.015"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"membrane", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "@", "Thick"}], ",", 
             RowBox[{"FaceForm", "@", "None"}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "0.1"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2", ",", "1.1"}], "}"}]}], "]"}], ",", 
             RowBox[{"FaceForm", "@", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"0.65", ",", "0.95", ",", "0.85"}], "]"}]}], ",", 
             RowBox[{"Rectangle", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "0.3"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2", ",", "0.7"}], "}"}]}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", 
             RowBox[{"Arrowheads", "@", "0.08"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1"}], ",", "0.5"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0.5"}], "}"}]}], "}"}], "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"2", ",", "0.5"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"3", ",", "0.5"}], "}"}]}], "}"}], "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"1.65", ",", 
                  RowBox[{"-", "0.1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1.65", ",", 
                  RowBox[{"-", "0.5"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2.5", ",", 
                  RowBox[{"-", "0.5"}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
            "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<membrane\>\"", ",", "17"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "0.5"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<feed\>\"", ",", "17"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.5"}], ",", "0.5"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"-", "1.2"}]}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<retentate\>\"", ",", "17"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", "0.5"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.2"}], ",", 
               RowBox[{"-", "1.2"}]}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<permeate\>\"", ",", "17"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2.5", ",", 
               RowBox[{"-", "0.5"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.2"}], ",", "0"}], "}"}]}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "250"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"EdgeForm", "@", "Thick"}], ",", 
            RowBox[{"FaceForm", "@", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"0.65", ",", "0.95", ",", "0.85"}], "]"}]}], ",", 
            RowBox[{"Rectangle", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", "d"}], "/", "2"}], ",", "0"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"d", "/", "2"}], ",", "62"}], "}"}]}], "]"}]}], "}"}],
           ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "\[IndentingNewLine]", 
            RowBox[{"BezierCurve", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "d"}], "/", "2"}], "-", "\[Delta]x"}], ",", 
                 "C1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "d"}], "/", "2"}], "-", 
                  RowBox[{"0.05", "*", "\[Delta]x"}]}], ",", "C1"}], "}"}], 
               ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1i"}], "}"}]}], 
              "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"BezierCurve", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2i"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"d", "/", "2"}], "+", 
                  RowBox[{"0.05", "*", "\[Delta]x"}]}], ",", "C2"}], "}"}], 
               ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"d", "/", "2"}], "+", "\[Delta]x"}], ",", "C2"}], 
                "}"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1is"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2is"}], "}"}]}], "}"}], 
             "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "@", "0.017"}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"-", "d"}], "/", "2"}], "-", "\[Delta]x"}], ",", 
               "C1"}], "}"}]}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "d"}], "/", "2"}], ",", "C1i"}], "}"}]}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"d", "/", "2"}], ",", "C2i"}], "}"}]}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"d", "/", "2"}], "+", "\[Delta]x"}], ",", "C2"}], 
              "}"}]}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "d"}], "/", "2"}], ",", "C1is"}], "}"}]}], ",", 
            RowBox[{"Point", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"d", "/", "2"}], ",", "C2is"}], "}"}]}]}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", 
            RowBox[{"Arrowheads", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.03"}], ",", "0.03"}], "}"}]}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "60"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "60"}], "}"}]}], "}"}], 
             "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\< L \>\"", ",", "18", ",", "Italic", ",", 
              RowBox[{"Background", "\[Rule]", 
               RowBox[{"RGBColor", "[", 
                RowBox[{"0.65", ",", "0.95", ",", "0.85"}], "]"}]}]}], "]"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "60"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<C\>\"", ",", "Italic"}], "]"}], ",", "#1"}], 
                 "]"}], ",", "18"}], "]"}], ",", "#2", ",", 
              RowBox[{"1.5", "*", "#3"}]}], "]"}], "&"}], "@@@", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "d"}], "/", "2"}], "-", "\[Delta]x"}], ",", 
                 "C1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"d", "/", "2"}], "+", "\[Delta]x"}], ",", "C2"}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\"\<1,i\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1i"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\"\<2,i\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2i"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0"}], "}"}]}], "}"}]}], "}"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subsuperscript", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<C\>\"", ",", "Italic"}], "]"}], ",", 
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"#1", ",", "\"\<,i\>\""}], "}"}]}], ",", 
                  "\"\<\[Star]\>\""}], "]"}], ",", "18"}], "]"}], ",", "#2", 
              ",", 
              RowBox[{"1.5", "*", "#3"}]}], "]"}], "&"}], "@@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1is"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2is"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "}"}]}], "}"}]}], 
          ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<membrane\>\"", ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<feed\>\"", ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"-", "d"}], "/", "2"}], "-", "\[Delta]x"}], ",", 
              "C1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", 
              RowBox[{"-", "2"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<permeate\>\"", ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"d", "/", "2"}], "+", "\[Delta]x"}], ",", "C2"}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.5"}], ",", 
              RowBox[{"-", "2"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"**", "**", "**", "**", "**", "**"}], "*****)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<flux = \>\"", ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{
                   RowBox[{"nA", "*", "1*^6"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                 "\"\< \[Mu]mol/[\>\"", ",", 
                 RowBox[{"Superscript", "[", 
                  RowBox[{"\"\<m\>\"", ",", "2"}], "]"}], ",", 
                 "\"\< s]\>\""}], "}"}]}], ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.045", ",", "55"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Mouseover", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Transparent", ",", 
                RowBox[{"PointSize", "@", "0.03"}], ",", 
                RowBox[{"Point", "@", "#4"}]}], "}"}], ",", 
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
                    RowBox[{"\"\<C\>\"", ",", "Italic"}], "]"}], ",", "#1"}], 
                    "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"#2", ",", "2"}], "]"}], ",", "\"\< mol/\>\"", 
                    ",", 
                    RowBox[{"Superscript", "[", 
                    RowBox[{"\"\<m\>\"", ",", "3"}], "]"}], ",", "\"\< \>\"", 
                    ",", "#3"}], "}"}]}], ",", "17"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.045", ",", "46"}], "}"}]}], "]"}]}], "]"}], "&"}],
            "@@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", "C1", ",", "\"\<feed\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "d"}], "/", "2"}], "-", "\[Delta]x"}], ",", 
                 "C1"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", "C2", ",", "\"\<permeate\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"d", "/", "2"}], "+", "\[Delta]x"}], ",", "C2"}], 
                "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "\"\<1i\>\"", ",", "C1i", ",", "\"\<interface 1\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1i"}], "}"}]}], 
              "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "\"\<2i\>\"", ",", "C2i", ",", "\"\<interface 2\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2i"}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "\"\<1is\>\"", ",", "C1is", ",", "\"\<surface 1\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "d"}], "/", "2"}], ",", "C1is"}], "}"}]}], 
              "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "\"\<2is\>\"", ",", "C2is", ",", "\"\<surface 2\>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"d", "/", "2"}], ",", "C2is"}], "}"}]}], "}"}]}], 
            "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{"membrane", ",", 
            RowBox[{"{", 
             RowBox[{"0.05", ",", "29"}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "400"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "0.04"}], ",", "Automatic"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "3.5"}], ",", "62.2"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRangePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"None", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Scaled", "@", "0.02"}], ",", "None"}], "}"}]}], 
          "}"}]}]}], "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
   "\[IndentingNewLine]", 
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
             RowBox[{"DA", ",", "70", ",", 
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<diffusion constant (\>\"", ",", 
                 RowBox[{"Superscript", "[", 
                  RowBox[{"\"\<\[Mu]m\>\"", ",", "2"}], "]"}], ",", 
                 "\"\</s)\>\""}], "}"}]}]}], "}"}], ",", "20", ",", "95", ",",
             "5", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "L", ",", "15", ",", "\"\<membrane thickness (\[Mu]m)\>\""}], 
             "}"}], ",", "8", ",", "20", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"k", ",", "1.5", ",", "\"\<equilirium constant\>\""}], 
             "}"}], ",", "0.5", ",", "2", ",", "0.1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
        "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`DA$$ = 70, $CellContext`k$$ = 
    1.5, $CellContext`L$$ = 15, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`DA$$], 70, 
       Row[{"diffusion constant (", 
         Superscript["\[Mu]m", 2], "/s)"}]}, 20, 95, 5}, {{
       Hold[$CellContext`L$$], 15, "membrane thickness (\[Mu]m)"}, 8, 20, 
      1}, {{
       Hold[$CellContext`k$$], 1.5, "equilirium constant"}, 0.5, 2, 0.1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], SpanFromLeft}, {
          Manipulate`Place[2], 
          Manipulate`Place[3]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`DA$531$$ = 
    0, $CellContext`L$532$$ = 0, $CellContext`k$533$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`DA$$ = 70, $CellContext`k$$ = 
        1.5, $CellContext`L$$ = 15}, "ControllerVariables" :> {
        Hold[$CellContext`DA$$, $CellContext`DA$531$$, 0], 
        Hold[$CellContext`L$$, $CellContext`L$532$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$533$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`C1$, $CellContext`C2$, $CellContext`kc1$, \
$CellContext`kc2$, $CellContext`\[Chi]$, $CellContext`\[CapitalPi]$, \
$CellContext`nA$, $CellContext`C1i$, $CellContext`C2i$, $CellContext`C1is$, \
$CellContext`C2is$, $CellContext`d$, $CellContext`\[Delta]x$, \
$CellContext`membrane$}, $CellContext`C1$ = 30; $CellContext`C2$ = 
         5; $CellContext`kc1$ = Rational[1, 25000]; $CellContext`kc2$ = 
         0.0000202; $CellContext`\[Chi]$ = $CellContext`DA$$/
          1000000^2; $CellContext`\[CapitalPi]$ = $CellContext`\[Chi]$ \
$CellContext`k$$/($CellContext`L$$ 
          Rational[
           1, 1000000]); $CellContext`nA$ = ($CellContext`C1$ - \
$CellContext`C2$)/(1/$CellContext`kc1$ + 1/$CellContext`\[CapitalPi]$ + 
          1/$CellContext`kc2$); $CellContext`C1i$ = $CellContext`C1$ - \
$CellContext`nA$/$CellContext`kc1$; $CellContext`C2i$ = $CellContext`C2$ + \
$CellContext`nA$/$CellContext`kc2$; $CellContext`C1is$ = $CellContext`k$$ \
$CellContext`C1i$; $CellContext`C2is$ = $CellContext`k$$ $CellContext`C2i$; \
$CellContext`d$ = $CellContext`L$$/620.2; $CellContext`\[Delta]x$ = 
         0.015; $CellContext`membrane$ = Graphics[{{
             EdgeForm[Thick], 
             FaceForm[None], 
             Rectangle[{0, -0.1}, {2, 1.1}], 
             FaceForm[
              RGBColor[0.65, 0.95, 0.85]], 
             Rectangle[{0, 0.3}, {2, 0.7}]}, {Thick, 
             Arrowheads[0.08], 
             Arrow[{{-1, 0.5}, {0, 0.5}}], 
             Arrow[{{2, 0.5}, {3, 0.5}}], 
             Arrow[{{1.65, -0.1}, {1.65, -0.5}, {2.5, -0.5}}]}, 
            Text[
             Style["membrane", 17], {1, 0.5}], 
            Text[
             Style["feed", 17], {-0.5, 0.5}, {0, -1.2}], 
            Text[
             Style["retentate", 17], {2, 0.5}, {-1.2, -1.2}], 
            Text[
             Style["permeate", 17], {2.5, -0.5}, {-1.2, 0}]}, ImageSize -> 
           250]; Graphics[{{
            EdgeForm[Thick], 
            FaceForm[
             RGBColor[0.65, 0.95, 0.85]], 
            Rectangle[{(-$CellContext`d$)/2, 0}, {$CellContext`d$/2, 62}]}, {
           Thick, 
            
            BezierCurve[{{(-$CellContext`d$)/
                2 - $CellContext`\[Delta]x$, $CellContext`C1$}, \
{(-$CellContext`d$)/2 - 
               0.05 $CellContext`\[Delta]x$, $CellContext`C1$}, \
{(-$CellContext`d$)/2, $CellContext`C1i$}}], 
            
            BezierCurve[{{$CellContext`d$/
               2, $CellContext`C2i$}, {$CellContext`d$/2 + 
               0.05 $CellContext`\[Delta]x$, $CellContext`C2$}, \
{$CellContext`d$/2 + $CellContext`\[Delta]x$, $CellContext`C2$}}], 
            
            Line[{{(-$CellContext`d$)/
               2, $CellContext`C1is$}, {$CellContext`d$/
               2, $CellContext`C2is$}}]}, {
            PointSize[0.017], 
            
            Point[{(-$CellContext`d$)/
               2 - $CellContext`\[Delta]x$, $CellContext`C1$}], 
            Point[{(-$CellContext`d$)/2, $CellContext`C1i$}], 
            Point[{$CellContext`d$/2, $CellContext`C2i$}], 
            
            Point[{$CellContext`d$/
               2 + $CellContext`\[Delta]x$, $CellContext`C2$}], 
            Point[{(-$CellContext`d$)/2, $CellContext`C1is$}], 
            Point[{$CellContext`d$/2, $CellContext`C2is$}]}, {Thick, 
            Arrowheads[{-0.03, 0.03}], 
            Arrow[{{(-$CellContext`d$)/2, 60}, {$CellContext`d$/2, 60}}]}, 
           Text[
            Style[
            " L ", 18, Italic, Background -> RGBColor[0.65, 0.95, 0.85]], {0, 
            60}], 
           Apply[Text[
             Style[
              Subscript[
               Style["C", Italic], #], 18], #2, 1.5 #3]& , {{
             1, {(-$CellContext`d$)/
                2 - $CellContext`\[Delta]x$, $CellContext`C1$}, {1, 0}}, {
             2, {$CellContext`d$/
                2 + $CellContext`\[Delta]x$, $CellContext`C2$}, {-1, 0}}, {
             "1,i", {(-$CellContext`d$)/2, $CellContext`C1i$}, {-1, 0}}, {
             "2,i", {$CellContext`d$/2, $CellContext`C2i$}, {1, 0}}}, {1}], 
           Apply[Text[
             Style[
              Subsuperscript[
               Style["C", Italic], 
               Row[{#, ",i"}], "\[Star]"], 18], #2, 1.5 #3]& , {{
             1, {(-$CellContext`d$)/2, $CellContext`C1is$}, {1, 0}}, {
             2, {$CellContext`d$/2, $CellContext`C2is$}, {-1, 0}}}, {1}], 
           Text[
            Style["membrane", 18], {0, 0}, {0, 1}], 
           Text[
            Style[
            "feed", 18], {(-$CellContext`d$)/
              2 - $CellContext`\[Delta]x$, $CellContext`C1$}, {1, -2}], 
           Text[
            Style[
            "permeate", 
             18], {$CellContext`d$/
              2 + $CellContext`\[Delta]x$, $CellContext`C2$}, {-0.5, -2}], 
           Text[
            Style[
             Row[{"flux = ", 
               NumberForm[$CellContext`nA$ 1000000, {4, 0}], " \[Mu]mol/[", 
               Superscript["m", 2], " s]"}], 18], {0.045, 55}], 
           Apply[Mouseover[{Transparent, 
              PointSize[0.03], 
              Point[#4]}, 
             Text[
              Style[
               Row[{
                 Subscript[
                  Style["C", Italic], #], " = ", 
                 NumberForm[#2, 2], " mol/", 
                 Superscript["m", 3], " ", #3}], 17], {0.045, 46}]]& , {{
             1, $CellContext`C1$, 
              "feed", {(-$CellContext`d$)/
                2 - $CellContext`\[Delta]x$, $CellContext`C1$}}, {
             2, $CellContext`C2$, 
              "permeate", {$CellContext`d$/
                2 + $CellContext`\[Delta]x$, $CellContext`C2$}}, {
             "1i", $CellContext`C1i$, 
              "interface 1", {(-$CellContext`d$)/2, $CellContext`C1i$}}, {
             "2i", $CellContext`C2i$, 
              "interface 2", {$CellContext`d$/2, $CellContext`C2i$}}, {
             "1is", $CellContext`C1is$, 
              "surface 1", {(-$CellContext`d$)/2, $CellContext`C1is$}}, {
             "2is", $CellContext`C2is$, 
              "surface 2", {$CellContext`d$/2, $CellContext`C2is$}}}, {1}], 
           Inset[$CellContext`membrane$, {0.05, 29}]}, 
          ImageSize -> {600, 400}, AspectRatio -> Full, 
          PlotRange -> {{-0.04, Automatic}, {-3.5, 62.2}}, 
          PlotRangePadding -> {None, {
             Scaled[0.02], None}}]], 
      "Specifications" :> {{{$CellContext`DA$$, 70, 
          Row[{"diffusion constant (", 
            Superscript["\[Mu]m", 2], "/s)"}]}, 20, 95, 5, Appearance -> 
         "Labeled", ControlPlacement -> 
         1}, {{$CellContext`L$$, 15, "membrane thickness (\[Mu]m)"}, 8, 20, 1,
          Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, {{$CellContext`k$$, 1.5, "equilirium constant"}, 0.5, 2, 0.1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 3}, 
        Grid[{{
           Manipulate`Place[1], SpanFromLeft}, {
           Manipulate`Place[2], 
           Manipulate`Place[3]}}, Alignment -> Left]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {254., 261.}},
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
 CellID->235105280]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell[TextData[{
 "This Demonstration shows the concentration profile and the molar flux \
through a membrane with a diffusion boundary layer on the feed and permeate \
sides. You can change the membrane diffusion constant, the equilibrium \
constant, and the membrane thickness with sliders. The feed concentration ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "1"], TraditionalForm]], "InlineMath"],
 " and the desired permeate concentration ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "2"], TraditionalForm]], "InlineMath"],
 " are set. Move your cursor over a black dot to see its concentration \
displayed on the right."
}], "ManipulateCaption"]
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

Cell["\<\
The molar flux at steady-state is calculated using series resistances. The \
flux through each layer is:\
\>", "DetailNotes",
 CellID->2031893],

Cell["feed:", "DetailNotes",
 CellID->266245018],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["k", 
      RowBox[{
       StyleBox["c",
        FontSlant->"Plain"], ",", "1"}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["C", "1"], "-", 
       SubscriptBox["C", 
        RowBox[{"1", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}]]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->440864258],

Cell["membrane:", "DetailNotes",
 CellID->346542716],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     FractionBox[
      SubscriptBox["D", 
       StyleBox["A",
        FontSlant->"Plain"]], "L"], " ", 
     RowBox[{"(", 
      RowBox[{
       SubsuperscriptBox["C", 
        RowBox[{"1", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}], "\[Star]"], "-", 
       SubsuperscriptBox["C", 
        RowBox[{"2", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}], "\[Star]"]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->71157767],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["C", 
     RowBox[{"1", ",", 
      StyleBox["i",
       FontSlant->"Plain"]}], "\[Star]"], "=", 
    RowBox[{"K", " ", 
     SubscriptBox["C", 
      RowBox[{"1", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->127774980],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["C", 
     RowBox[{"2", ",", 
      StyleBox["i",
       FontSlant->"Plain"]}], "\[Star]"], "=", 
    RowBox[{"K", " ", 
     SubscriptBox["C", 
      RowBox[{"2", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->58364766],

Cell["permeate:", "DetailNotes",
 CellID->212780798],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubscriptBox["k", 
      RowBox[{
       StyleBox["c",
        FontSlant->"Plain"], ",", "2"}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["C", 
        RowBox[{"2", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}]], "-", 
       SubscriptBox["C", "2"]}], ")"}]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->87848500],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["k", 
    StyleBox["c",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " is the mass transfer coefficient, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "1"], TraditionalForm]], "InlineMath"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "2"], TraditionalForm]], "InlineMath"],
 " are the feed and permeate concentrations, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", 
    RowBox[{"1", ",", 
     StyleBox["i",
      FontSlant->"Plain"]}]], TraditionalForm]], "InlineMath"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", 
    RowBox[{"2", ",", 
     StyleBox["i",
      FontSlant->"Plain"]}]], TraditionalForm]], "InlineMath"],
 " are the concentrations at the interface, ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["C", 
    RowBox[{"1", ",", 
     StyleBox["i",
      FontSlant->"Plain"]}], "\[Star]"], TraditionalForm]], "InlineMath"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["C", 
    RowBox[{"2", ",", 
     StyleBox["i",
      FontSlant->"Plain"]}], "\[Star]"], TraditionalForm]], "InlineMath"],
 " are the concentrations at the surfaces, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["D", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " is diffusivity in the membrane, ",
 Cell[BoxData[
  FormBox["L", TraditionalForm]], "InlineMath"],
 " is membrane thickness, and ",
 Cell[BoxData[
  FormBox["K", TraditionalForm]], "InlineMath"],
 " is the equilibrium constant."
}], "DetailNotes",
 CellID->24333366],

Cell[TextData[{
 "The flux through the membrane can be written in terms of permeance ",
 Cell[BoxData[
  FormBox["\[ScriptCapitalP]", TraditionalForm]], "InlineMath"],
 ":"
}], "DetailNotes",
 CellID->536233442],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"\[ScriptCapitalP]", "=", 
    RowBox[{
     SubscriptBox["D", 
      StyleBox["A",
       FontSlant->"Plain"]], " ", 
     RowBox[{"K", "/", "L"}]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->138478836],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{"\[ScriptCapitalP]", " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["C", 
        RowBox[{"1", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}]], "-", 
       SubscriptBox["C", 
        RowBox[{"2", ",", 
         StyleBox["i",
          FontSlant->"Plain"]}]]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath"],
 "."
}], "DetailNotes",
 CellID->161895453],

Cell[TextData[{
 "Because the system is at steady-state, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " is the same through all three layers:"
}], "DetailNotes",
 CellID->82499652],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["k", 
       RowBox[{
        StyleBox["c",
         FontSlant->"Plain"], ",", "1"}]], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["C", "1"], "-", 
        SubscriptBox["C", 
         RowBox[{"1", ",", 
          StyleBox["i",
           FontSlant->"Plain"]}]]}], ")"}]}], "=", 
     RowBox[{
      RowBox[{"\[ScriptCapitalP]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["C", 
          RowBox[{"1", ",", 
           StyleBox["i",
            FontSlant->"Plain"]}], "\[Star]"], "-", 
         SubsuperscriptBox["C", 
          RowBox[{"2", ",", 
           StyleBox["i",
            FontSlant->"Plain"]}], "\[Star]"]}], ")"}]}], "=", 
      RowBox[{
       SubscriptBox["k", 
        RowBox[{
         StyleBox["c",
          FontSlant->"Plain"], ",", "2"}]], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["C", 
          RowBox[{"2", ",", 
           StyleBox["i",
            FontSlant->"Plain"]}]], "-", 
         SubscriptBox["C", "2"]}], ")"}]}]}]}]}], TraditionalForm]], 
  "InlineMath"],
 "."
}], "DetailNotes",
 CellID->354645497],

Cell[TextData[{
 "Solving each ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " equation for the concentration differences:"
}], "DetailNotes",
 CellID->88071049],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["C", "1"], "-", 
     SubscriptBox["C", 
      RowBox[{"1", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]]}], "=", 
    RowBox[{
     SubscriptBox["N", 
      StyleBox["A",
       FontSlant->"Plain"]], "/", 
     SubscriptBox["k", 
      RowBox[{
       StyleBox["c",
        FontSlant->"Plain"], ",", "1"}]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->81950073],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["C", 
      RowBox[{"1", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]], "-", 
     SubscriptBox["C", 
      RowBox[{"2", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]]}], "=", 
    RowBox[{
     SubscriptBox["N", 
      StyleBox["A",
       FontSlant->"Plain"]], "/", "\[ScriptCapitalP]"}]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->98299520],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["C", 
      RowBox[{"2", ",", 
       StyleBox["i",
        FontSlant->"Plain"]}]], "-", 
     SubscriptBox["C", "2"]}], "=", 
    RowBox[{
     SubscriptBox["N", 
      StyleBox["A",
       FontSlant->"Plain"]], "/", 
     SubscriptBox["k", 
      RowBox[{
       StyleBox["c",
        FontSlant->"Plain"], ",", "2"}]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->590214707],

Cell[TextData[{
 "adding these equations together and solving for ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["N", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath"],
 " gives the flux in terms of series resistances:"
}], "DetailNotes",
 CellID->418632046],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["N", 
     StyleBox["A",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["C", "1"], "-", 
       SubscriptBox["C", "2"]}], ")"}], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", 
         SubscriptBox["k", 
          RowBox[{
           StyleBox["c",
            FontSlant->"Plain"], ",", "1"}]]], "+", 
        FractionBox["1", "\[ScriptCapitalP]"], "+", 
        FractionBox["1", 
         SubscriptBox["k", 
          RowBox[{
           StyleBox["c",
            FontSlant->"Plain"], ",", "2"}]]]}], ")"}], 
      RowBox[{"-", "1"}]]}]}], TraditionalForm]], "InlineMath"],
 "."
}], "DetailNotes",
 CellID->97486587],

Cell["\<\
For more information on how these equations were derived, view the screencast \
videos at [1] and [2]. For an example problem, view the screencast video at \
[3].\
\>", "DetailNotes",
 CellID->450032094],

Cell["References", "DetailNotes",
 CellID->200078071],

Cell[TextData[{
 "[1] ",
 StyleBox["Membrane Transport: Series Resistances Part 1",
  FontSlant->"Italic"],
 " [Video]. (Nov 30, 2016) ",
 ButtonBox["www.youtube.com/watch?v=hlJA-St-x5w&t=36s",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=hlJA-St-x5w&t=36s"], None},
  ButtonNote->"https://www.youtube.com/watch?v=hlJA-St-x5w&t=36s"],
 "."
}], "DetailNotes",
 CellID->87174389],

Cell[TextData[{
 "[2] ",
 StyleBox["Membrane Transport: Series Resistances Part 2",
  FontSlant->"Italic"],
 " [Video]. (Nov 30, 2016) ",
 ButtonBox["www.youtube.com/watch?v=xMl7_tXOSMQ",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=xMl7_tXOSMQ"], None},
  ButtonNote->"https://www.youtube.com/watch?v=xMl7_tXOSMQ"],
 "."
}], "DetailNotes",
 CellID->546835463],

Cell[TextData[{
 "[3] ",
 StyleBox["Membrane Transport: Series Resistances Part 3",
  FontSlant->"Italic"],
 " [Video]. (Nov 30, 2016) ",
 ButtonBox["www.youtube.com/watch?v=NEroL-x_g-M",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=NEroL-x_g-M"], None},
  ButtonNote->"https://www.youtube.com/watch?v=NEroL-x_g-M"],
 "."
}], "DetailNotes",
 CellID->332903029]
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
 CellID->239743369],

Cell["mass transfer", "SearchTerms",
 CellID->522693189],

Cell["separations", "SearchTerms",
 CellID->226094044],

Cell["diffusion", "SearchTerms",
 CellID->71557719]
}, Open  ]],

Cell["", "RelatedLinksSection"],

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
   "http://demonstrations.wolfram.com/author.html?author=John+L.+Falconer"]
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
FrontEndVersion->"11.0 for Microsoft Windows (64-bit) (September 21, 2016)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[48219, 1391, 311, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[48533, 1401, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[49214, 1419, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[49557, 1432, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[50197, 1449, 843, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[51043, 1472, 304, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[51350, 1482, 1463, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[52816, 1515, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 55424, 1609},
 {"RotateAndZoomIn3D", 55533, 1612},
 {"DragLocators", 55643, 1615},
 {"CreateAndDeleteLocators", 55759, 1618},
 {"SliderZoom", 55873, 1621},
 {"GamepadControls", 55979, 1624},
 {"AutomaticAnimation", 56092, 1627},
 {"BookmarkAnimation", 56209, 1630}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 51, 0, 74, "DemoTitle"],
Cell[1540, 37, 33, 0, 275, "InitializationSection"],
Cell[CellGroupData[{
Cell[1598, 41, 29, 0, 189, "ManipulateSection"],
Cell[CellGroupData[{
Cell[1652, 45, 22600, 576, 1069, "Input"],
Cell[24255, 623, 9250, 195, 527, "Output",
 CellID->235105280]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[33551, 824, 36, 0, 169, "ManipulateCaptionSection"],
Cell[33590, 826, 659, 14, 53, "ManipulateCaption"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34286, 845, 28, 0, 172, "ThumbnailSection"],
Cell[34317, 847, 1242, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[35596, 886, 28, 0, 142, "SnapshotsSection"],
Cell[35627, 888, 1241, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36905, 927, 26, 0, 335, "DetailsSection"],
Cell[36934, 929, 153, 4, 22, "DetailNotes",
 CellID->2031893],
Cell[37090, 935, 48, 1, 22, "DetailNotes",
 CellID->266245018],
Cell[37141, 938, 525, 22, 25, "DetailNotes",
 CellID->440864258],
Cell[37669, 962, 52, 1, 22, "DetailNotes",
 CellID->346542716],
Cell[37724, 965, 633, 25, 33, "DetailNotes",
 CellID->71157767],
Cell[38360, 992, 380, 15, 26, "DetailNotes",
 CellID->127774980],
Cell[38743, 1009, 379, 15, 26, "DetailNotes",
 CellID->58364766],
Cell[39125, 1026, 52, 1, 22, "DetailNotes",
 CellID->212780798],
Cell[39180, 1029, 521, 21, 25, "DetailNotes",
 CellID->87848500],
Cell[39704, 1052, 1583, 57, 42, "DetailNotes",
 CellID->24333366],
Cell[41290, 1111, 211, 6, 23, "DetailNotes",
 CellID->536233442],
Cell[41504, 1119, 283, 11, 23, "DetailNotes",
 CellID->138478836],
Cell[41790, 1132, 522, 21, 25, "DetailNotes",
 CellID->161895453],
Cell[42315, 1155, 266, 9, 23, "DetailNotes",
 CellID->82499652],
Cell[42584, 1166, 1281, 47, 26, "DetailNotes",
 CellID->354645497],
Cell[43868, 1215, 246, 9, 23, "DetailNotes",
 CellID->88071049],
Cell[44117, 1226, 486, 20, 25, "DetailNotes",
 CellID->81950073],
Cell[44606, 1248, 480, 20, 25, "DetailNotes",
 CellID->98299520],
Cell[45089, 1270, 487, 20, 25, "DetailNotes",
 CellID->590214707],
Cell[45579, 1292, 285, 9, 23, "DetailNotes",
 CellID->418632046],
Cell[45867, 1303, 783, 29, 42, "DetailNotes",
 CellID->97486587],
Cell[46653, 1334, 213, 5, 22, "DetailNotes",
 CellID->450032094],
Cell[46869, 1341, 53, 1, 22, "DetailNotes",
 CellID->200078071],
Cell[46925, 1344, 415, 12, 22, "DetailNotes",
 CellID->87174389],
Cell[47343, 1358, 398, 12, 22, "DetailNotes",
 CellID->546835463],
Cell[47744, 1372, 398, 12, 22, "DetailNotes",
 CellID->332903029]
}, Open  ]],
Cell[CellGroupData[{
Cell[48179, 1389, 37, 0, 126, "ControlSuggestionsSection"],
Cell[48219, 1391, 311, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[48533, 1401, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[49214, 1419, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[49557, 1432, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[50197, 1449, 843, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[51043, 1472, 304, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[51350, 1482, 1463, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[52816, 1515, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[53761, 1541, 30, 0, 155, "SearchTermsSection"],
Cell[53794, 1543, 63, 1, 22, "SearchTerms",
 CellID->239743369],
Cell[53860, 1546, 56, 1, 22, "SearchTerms",
 CellID->522693189],
Cell[53919, 1549, 54, 1, 22, "SearchTerms",
 CellID->226094044],
Cell[53976, 1552, 51, 1, 22, "SearchTerms",
 CellID->71557719]
}, Open  ]],
Cell[54042, 1556, 31, 0, 141, "RelatedLinksSection"],
Cell[CellGroupData[{
Cell[54098, 1560, 25, 0, 129, "AuthorSection"],
Cell[54126, 1562, 330, 10, 22, "Author",
 CellID->31372289],
Cell[54459, 1574, 338, 10, 22, "Author",
 CellID->344056814],
Cell[54800, 1586, 131, 4, 22, "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature yvToEP35D0IXQC1i3FAGTHR5 *)
