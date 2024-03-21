(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.2' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     96466,       2301]
NotebookOptionsPosition[     87598,       2130]
NotebookOutlinePosition[     89749,       2185]
CellTagsIndexPosition[     89421,       2173]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Adiabatic Flash Drum with Binary Liquid Feed", "DemoTitle",ExpressionUUID->"f0e1b853-8d98-4bac-9a1d-76b689ba08bf"],

Cell["", "InitializationSection",ExpressionUUID->"027b122f-940f-4404-8c49-cf9e6aa4cf09"],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"13fa4ce2-4f8d-46d1-b326-5fae36da89a1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "Psat1", ",", "Psat2", ",", "Tref", ",", "CpL1", ",", "CpL2", ",", 
       "CpV1", ",", "CpV2", ",", "\[CapitalDelta]Hvap1", ",", 
       "\[CapitalDelta]Hvap2", ",", "nf", ",", "Hf1", ",", "Hf2", ",", "sol", 
       ",", "x1", ",", "y1", ",", "nL", ",", "nV", ",", "T", ",", "amounts"}],
       "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"Psat1", "[", "t_", "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "/", "750.06"}], ")"}], "*", 
        RowBox[{"10", "^", 
         RowBox[{"(", 
          RowBox[{"8.08097", "-", 
           FractionBox["1582.271", 
            RowBox[{"t", "+", "239.726"}]]}], ")"}]}]}]}], ";", 
      RowBox[{"(*", "methanol", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Psat2", "[", "t_", "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "/", "750.06"}], ")"}], "*", 
        RowBox[{"10", "^", 
         RowBox[{"(", 
          RowBox[{"8.07131", "-", 
           FractionBox["1730.63", 
            RowBox[{"t", "+", "233.426"}]]}], ")"}]}]}]}], ";", 
      RowBox[{"(*", "water", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Tref", "=", "25"}], ";", 
      RowBox[{"(*", "\[Degree]C", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"CpL1", "=", "0.11"}], ";", 
      RowBox[{"CpL2", "=", "0.076"}], ";", 
      RowBox[{"CpV1", "=", "0.052"}], ";", 
      RowBox[{"CpV2", "=", "0.034"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"kJ", "/", "K"}], "/", "mol"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"\[CapitalDelta]Hvap1", "=", "35.3"}], ";", 
      RowBox[{"\[CapitalDelta]Hvap2", "=", "40.656"}], ";", 
      RowBox[{"(*", 
       RowBox[{"kJ", "/", "mol"}], "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"nf", "=", "10"}], ";", 
      RowBox[{"(*", "moles", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", "feed", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Hf1", "=", 
       RowBox[{"z1", "*", "nf", "*", "CpL1", "*", 
        RowBox[{"(", 
         RowBox[{"Tf", "-", "Tref"}], ")"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Hf2", "=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "z1"}], ")"}], "*", "nf", "*", "CpL2", "*", 
        RowBox[{"(", 
         RowBox[{"Tf", "-", "Tref"}], ")"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"sol", "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Hf1", "+", "Hf2"}], "\[Equal]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"x", "*", "L", "*", "CpL1", "*", 
                 RowBox[{"(", 
                  RowBox[{"t", "-", "Tref"}], ")"}]}], "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "-", "x"}], ")"}], "*", "L", "*", "CpL2", "*", 
                 RowBox[{"(", 
                  RowBox[{"t", "-", "Tref"}], ")"}]}]}], ")"}], "+", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"y", "*", "V", "*", 
                 RowBox[{"(", 
                  RowBox[{"\[CapitalDelta]Hvap1", "+", 
                   RowBox[{"CpV1", "*", 
                    RowBox[{"(", 
                    RowBox[{"t", "-", "Tref"}], ")"}]}]}], ")"}]}], "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "-", "y"}], ")"}], "*", "V", "*", 
                 RowBox[{"(", 
                  RowBox[{"\[CapitalDelta]Hvap2", "+", 
                   RowBox[{"CpV2", "*", 
                    RowBox[{"(", 
                    RowBox[{"t", "-", "Tref"}], ")"}]}]}], ")"}]}]}], 
               ")"}]}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"nf", "\[Equal]", 
             RowBox[{"L", "+", "V"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"z1", "*", "nf"}], "\[Equal]", 
             RowBox[{
              RowBox[{"x", "*", "L"}], "+", 
              RowBox[{"y", "*", "V"}]}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"x", "*", 
              RowBox[{"Psat1", "[", "t", "]"}]}], "\[Equal]", 
             RowBox[{"y", "*", "P"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", "x"}], ")"}], "*", 
              RowBox[{"Psat2", "[", "t", "]"}]}], "\[Equal]", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", "y"}], ")"}], "*", "P"}]}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x", ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"y", ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"L", ",", "5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"V", ",", "5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"t", ",", "100"}], "}"}]}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"x", "/.", "sol"}]}], ";", 
      RowBox[{"y1", "=", 
       RowBox[{"y", "/.", "sol"}]}], ";", 
      RowBox[{"nL", "=", 
       RowBox[{"L", "/.", "sol"}]}], ";", 
      RowBox[{"nV", "=", 
       RowBox[{"V", "/.", "sol"}]}], ";", 
      RowBox[{"T", "=", 
       RowBox[{"t", "/.", "sol"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"amounts", "[", 
        RowBox[{"comp_", ",", "mol_", ",", "title_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "val", "}"}], ",", 
         RowBox[{
          RowBox[{"val", "=", 
           RowBox[{
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"#", "<", "0"}], ",", "0", ",", "#"}], "]"}], "&"}], "/@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"comp", "*", "mol"}], ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"1", "-", "comp"}], ")"}], "*", "mol"}]}], "}"}]}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"BarChart", "[", 
           RowBox[{"val", ",", 
            RowBox[{"ChartStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"RGBColor", "[", 
                RowBox[{"0.04", ",", "0.87", ",", "0.26"}], "]"}], ",", 
               RowBox[{"RGBColor", "[", 
                RowBox[{"0", ",", "0.4", ",", "0.8"}], "]"}]}], "}"}]}], ",", 
            RowBox[{"PlotRange", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.5", ",", "2.5"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", "nf"}], "}"}]}], "}"}]}], ",", 
            RowBox[{"PlotRangePadding", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"None", ",", 
               RowBox[{"{", 
                RowBox[{"None", ",", 
                 RowBox[{"Scaled", "@", "0.2"}]}], "}"}]}], "}"}]}], ",", 
            RowBox[{"Frame", "\[Rule]", "True"}], ",", 
            RowBox[{"FrameTicks", "\[Rule]", "None"}], ",", 
            RowBox[{"Axes", "\[Rule]", "False"}], ",", 
            RowBox[{"ImageSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"130", ",", "150"}], "}"}]}], ",", 
            RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
            RowBox[{"ImagePadding", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"Automatic", ",", "Automatic"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"20", ",", "None"}], "}"}]}], "}"}]}], ",", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "@", 
                RowBox[{"{", 
                 RowBox[{"\"\<moles in \>\"", ",", "title"}], "}"}]}], ",", 
               "17", ",", "Black"}], "]"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"Epilog", "\[Rule]", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"#1", "<", "0.006"}], ",", "0", ",", "#1"}], 
                    "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "1"}], "}"}]}], "]"}], ",", "18"}], 
                    "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"#2", ",", "#1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}], "&"}], "@@@", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"First", "@", "val"}], ",", "1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Last", "@", "val"}], ",", "2"}], "}"}]}], 
                 "}"}]}], ",", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"#1", ",", "17"}], "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"#2", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "]"}], "&"}], "@@@", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"\"\<methanol\>\"", ",", "1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"\"\<water\>\"", ",", "2"}], "}"}]}], "}"}]}]}], 
              "\[IndentingNewLine]", "}"}]}]}], "]"}]}]}], 
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"RGBColor", "[", 
             RowBox[{"0.65", ",", "1", ",", "1"}], "]"}], ",", 
            RowBox[{"EdgeForm", "@", 
             RowBox[{"RGBColor", "[", 
              RowBox[{"0.65", ",", "1", ",", "1"}], "]"}]}], ",", 
            RowBox[{"Disk", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"3.5", ",", "2.25"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1.5", ",", "0.75"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "\[Pi]"}], "}"}]}], "]"}], ",", 
            RowBox[{"Disk", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"3.5", ",", 
                RowBox[{"-", "2.25"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1.5", ",", "0.75"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Pi]", ",", 
                RowBox[{"2", "*", "\[Pi]"}]}], "}"}]}], "]"}], ",", 
            RowBox[{"Rectangle", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"2", ",", 
                RowBox[{"-", "2.25"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"5", ",", "2.25"}], "}"}]}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", 
            RowBox[{
             RowBox[{
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"#", ",", 
                   RowBox[{"-", "2.25"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"#", ",", "2.25"}], "}"}]}], "}"}], "]"}], "&"}], "/@", 
             RowBox[{"{", 
              RowBox[{"2", ",", "5"}], "}"}]}], ",", 
            RowBox[{"Circle", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"3.5", ",", "2.25"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1.5", ",", "0.75"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "\[Pi]"}], "}"}]}], "]"}], ",", 
            RowBox[{"Circle", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"3.5", ",", 
                RowBox[{"-", "2.25"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1.5", ",", "0.75"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Pi]", ",", 
                RowBox[{"2", "*", "\[Pi]"}]}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Arrowheads", "@", "Large"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"3.5", ",", "3"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"3.5", ",", "3.5"}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"7", ",", " ", "3.5"}], "}"}]}], "}"}], "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"3.5", ",", 
                 RowBox[{"-", "3"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"3.5", ",", 
                 RowBox[{"-", "3.5"}]}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"7", ",", " ", 
                 RowBox[{"-", "3.5"}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"T", ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< \[Degree]C\>\""}], "}"}]}], ",", 
                  "\[IndentingNewLine]", "\"\<flash drum\>\"", ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"x1", "*", 
                    RowBox[{"Psat1", "[", "T", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "x1"}], ")"}], "*", 
                    RowBox[{"Psat2", "[", "T", "]"}]}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}]}], "\[IndentingNewLine]", "}"}],
                 ",", "Center"}], "]"}], ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<liquid feed\>\"", ",", 
                 RowBox[{"Spacer", "@", "10"}], ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{"Tf", ",", 
                   RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                 "\"\< \[Degree]C\>\""}], "}"}]}], ",", "17"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.9"}], ",", 
              RowBox[{"-", "2.85"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"amounts", "[", 
             RowBox[{"z1", ",", "nf", ",", "\"\<feed\>\""}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2.1"}], ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"amounts", "[", 
             RowBox[{"y1", ",", "nV", ",", "\"\<vapor\>\""}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"9.1", ",", "3.5"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"amounts", "[", 
             RowBox[{"x1", ",", "nL", ",", "\"\<liquid\>\""}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"9.1", ",", 
              RowBox[{"-", "3.5"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<vapor = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"nV", "<", "0"}], ",", "0", ",", "nV"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< mol\>\""}], "}"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<y\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<m\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"y1", "<", "0.001"}], ",", "0", ",", "y1"}], 
                    "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}]}], 
                 "\[IndentingNewLine]", "}"}], ",", "Center"}], "]"}], ",", 
              "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"5", ",", "3.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"-", "1.2"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<liquid = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"nL", "<", "0"}], ",", "0", ",", "nL"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< mol\>\""}], "}"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<x\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<m\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"x1", "<", "0.001"}], ",", "0", ",", "x1"}], 
                    "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}]}], 
                 "\[IndentingNewLine]", "}"}], ",", "Center"}], "]"}], ",", 
              "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"5", ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1.5"}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], ",", 
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
             RowBox[{
             "z1", ",", "0.5", ",", "\"\<feed mole fraction methanol\>\""}], 
             "}"}], ",", "0", ",", "1", ",", "0.01", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "Tf", ",", "271", ",", "\"\<feed temperature (\[Degree]C)\>\""}],
              "}"}], ",", "120", ",", "300", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "P", ",", "0.25", ",", "\"\<flash drum pressure (bar)\>\""}], 
             "}"}], ",", "0.25", ",", "4", ",", "0.25", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft"}], "}"}]}], "\[IndentingNewLine]", "}"}],
      ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellID->216804462,ExpressionUUID->"3e15ceab-121f-4dd8-8306-a79b2abb69bf"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 0.25, $CellContext`Tf$$ = 
    271, $CellContext`z1$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`z1$$], 0.5, "feed mole fraction methanol"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`Tf$$], 271, "feed temperature (\[Degree]C)"}, 120, 
      300, 1}, {{
       Hold[$CellContext`P$$], 0.25, "flash drum pressure (bar)"}, 0.25, 4, 
      0.25}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`z1$83915$$ = 
    0, $CellContext`Tf$83916$$ = 0, $CellContext`P$83917$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 0.25, $CellContext`Tf$$ = 
        271, $CellContext`z1$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`z1$$, $CellContext`z1$83915$$, 0], 
        Hold[$CellContext`Tf$$, $CellContext`Tf$83916$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$83917$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Tref$, \
$CellContext`CpL1$, $CellContext`CpL2$, $CellContext`CpV1$, \
$CellContext`CpV2$, $CellContext`\[CapitalDelta]Hvap1$, $CellContext`\
\[CapitalDelta]Hvap2$, $CellContext`nf$, $CellContext`Hf1$, \
$CellContext`Hf2$, $CellContext`sol$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`nL$, $CellContext`nV$, $CellContext`T$, $CellContext`amounts$}, \
$CellContext`Psat1$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.08097 - 1582.271/($CellContext`t + 
            239.726)); $CellContext`Psat2$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.07131 - 1730.63/($CellContext`t + 
            233.426)); $CellContext`Tref$ = 25; $CellContext`CpL1$ = 
         0.11; $CellContext`CpL2$ = 0.076; $CellContext`CpV1$ = 
         0.052; $CellContext`CpV2$ = 
         0.034; $CellContext`\[CapitalDelta]Hvap1$ = 
         35.3; $CellContext`\[CapitalDelta]Hvap2$ = 40.656; $CellContext`nf$ = 
         10; $CellContext`Hf1$ = (($CellContext`z1$$ $CellContext`nf$) \
$CellContext`CpL1$) ($CellContext`Tf$$ - $CellContext`Tref$); \
$CellContext`Hf2$ = (((
             1 - $CellContext`z1$$) $CellContext`nf$) $CellContext`CpL2$) \
($CellContext`Tf$$ - $CellContext`Tref$); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Hf1$ + $CellContext`Hf2$ == \
((($CellContext`x $CellContext`L) $CellContext`CpL1$) ($CellContext`t - \
$CellContext`Tref$) + (((
                   1 - $CellContext`x) $CellContext`L) $CellContext`CpL2$) \
($CellContext`t - $CellContext`Tref$)) + (($CellContext`y $CellContext`V) \
($CellContext`\[CapitalDelta]Hvap1$ + $CellContext`CpV1$ ($CellContext`t - \
$CellContext`Tref$)) + ((
                  1 - $CellContext`y) $CellContext`V) ($CellContext`\
\[CapitalDelta]Hvap2$ + $CellContext`CpV2$ ($CellContext`t - \
$CellContext`Tref$))), $CellContext`nf$ == $CellContext`L + $CellContext`V, \
$CellContext`z1$$ $CellContext`nf$ == $CellContext`x $CellContext`L + \
$CellContext`y $CellContext`V, $CellContext`x \
$CellContext`Psat1$[$CellContext`t] == $CellContext`y $CellContext`P$$, (
               1 - $CellContext`x) $CellContext`Psat2$[$CellContext`t] == (
               1 - $CellContext`y) $CellContext`P$$}, {{$CellContext`x, 
              0.5}, {$CellContext`y, 0.5}, {$CellContext`L, 
              5}, {$CellContext`V, 5}, {$CellContext`t, 
              100}}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`x, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`y, $CellContext`sol$]; $CellContext`nL$ = 
         ReplaceAll[$CellContext`L, $CellContext`sol$]; $CellContext`nV$ = 
         ReplaceAll[$CellContext`V, $CellContext`sol$]; $CellContext`T$ = 
         ReplaceAll[$CellContext`t, $CellContext`sol$]; $CellContext`amounts$[
           Pattern[$CellContext`comp$, 
            Blank[]], 
           Pattern[$CellContext`mol$, 
            Blank[]], 
           Pattern[$CellContext`title$, 
            Blank[]]] := 
         Module[{$CellContext`val$}, $CellContext`val$ = 
            Map[If[# < 0, 
               0, #]& , {$CellContext`comp$ $CellContext`mol$, (
                1 - $CellContext`comp$) $CellContext`mol$}]; 
           BarChart[$CellContext`val$, ChartStyle -> {
               RGBColor[0.04, 0.87, 0.26], 
               RGBColor[0, 0.4, 0.8]}, 
             PlotRange -> {{0.5, 2.5}, {0, $CellContext`nf$}}, 
             PlotRangePadding -> {None, {None, 
                Scaled[0.2]}}, Frame -> True, FrameTicks -> None, Axes -> 
             False, ImageSize -> {130, 150}, AspectRatio -> Full, 
             ImagePadding -> {{Automatic, Automatic}, {20, None}}, PlotLabel -> 
             Style[
               Row[{"moles in ", $CellContext`title$}], 17, Black], Epilog -> {
               Apply[Text[
                 Style[
                  NumberForm[
                   If[# < 0.006, 0, #], {2, 1}], 18], {#2, #}, {0, -1}]& , {{
                  First[$CellContext`val$], 1}, {
                  Last[$CellContext`val$], 2}}, {1}], 
               Apply[Text[
                 Style[#, 17], {#2, 0}, {0, 1}]& , {{"methanol", 1}, {
                 "water", 2}}, {1}]}]]; Graphics[{{
            RGBColor[0.65, 1, 1], 
            EdgeForm[
             RGBColor[0.65, 1, 1]], 
            Disk[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Disk[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Rectangle[{2, -2.25}, {5, 2.25}]}, {Thick, 
            Map[Line[{{#, -2.25}, {#, 2.25}}]& , {2, 5}], 
            Circle[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Circle[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Arrowheads[Large], 
            Arrow[{{0, 0}, {2, 0}}], 
            Arrow[{{3.5, 3}, {3.5, 3.5}, {7, 3.5}}], 
            Arrow[{{3.5, -3}, {3.5, -3.5}, {7, -3.5}}]}, 
           Text[
            Style[
             Column[{
               Row[{
                 NumberForm[$CellContext`T$, {3, 0}], " \[Degree]C"}], 
               "flash drum", 
               Row[{
                 
                 NumberForm[$CellContext`x1$ \
$CellContext`Psat1$[$CellContext`T$] + (
                    1 - $CellContext`x1$) \
$CellContext`Psat2$[$CellContext`T$], {4, 2}], " bar"}]}, Center], 18], {
            3.5, 0}], 
           Text[
            Style[
             Row[{"liquid feed", 
               Spacer[10], 
               NumberForm[$CellContext`Tf$$, {3, 0}], " \[Degree]C"}], 
             17], {-1.9, -2.85}], 
           Inset[
            $CellContext`amounts$[$CellContext`z1$$, $CellContext`nf$, 
             "feed"], {-2.1, 0}], 
           Inset[
            $CellContext`amounts$[$CellContext`y1$, $CellContext`nV$, 
             "vapor"], {9.1, 3.5}], 
           Inset[
            $CellContext`amounts$[$CellContext`x1$, $CellContext`nL$, 
             "liquid"], {9.1, -3.5}], 
           Text[
            Style[
             Column[{
               Row[{"vapor = ", 
                 NumberForm[
                  If[$CellContext`nV$ < 0, 0, $CellContext`nV$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["y", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`y1$ < 0.001, 0, $CellContext`y1$], {2, 
                  2}]}]}, Center], 18], {5, 3.5}, {0, -1.2}], 
           Text[
            Style[
             Column[{
               Row[{"liquid = ", 
                 NumberForm[
                  If[$CellContext`nL$ < 0, 0, $CellContext`nL$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["x", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`x1$ < 0.001, 0, $CellContext`x1$], {2, 
                  2}]}]}, Center], 18], {5, -3.5}, {0, 1.5}]}, 
          ImageSize -> {600, 400}]], 
      "Specifications" :> {{{$CellContext`z1$$, 0.5, 
          "feed mole fraction methanol"}, 0, 1, 0.01, Appearance -> "Labeled",
          ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`Tf$$, 271, "feed temperature (\[Degree]C)"}, 120, 
         300, 1, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         2}, {{$CellContext`P$$, 0.25, "flash drum pressure (bar)"}, 0.25, 4, 
         0.25, Appearance -> "Labeled", ControlPlacement -> 3}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
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
 CellID->237808380,ExpressionUUID->"caae1721-c1aa-4a51-8faa-3d0b165171a3"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"e3b5bb68-7b05-40f2-b3bc-bc65899a05cf"],

Cell["\<\
A high-pressure, hot, liquid mixture of methanol and water is fed into an \
adiabatic flash drum (or vapor-liquid separator). Because the flash drum \
pressure is below the bubble pressure, some of the liquid evaporates and the \
temperature decreases because energy is needed to evaporate the liquid. Thus, \
a vapor-liquid mixture in equilibrium exits the drum. You can vary the feed \
mole fraction of methanol, the feed temperature and flash drum pressure with \
sliders. This is a continuous process, but calculations are presented for 10 \
moles of feed. Material balances, an energy balance and Raoult's law for \
vapor-liquid equilibrium are used to determine the amounts of liquid and \
vapor exiting the drum and the mole fractions in each phase.\
\>", "ManipulateCaption",ExpressionUUID->"72b9abca-4e50-450b-b769-\
f250a503d66a"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"a1a07c7b-7f45-444a-950c-bf3ece48f491"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 0.25, $CellContext`Tf$$ = 
    271, $CellContext`z1$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`z1$$], 0.5, "feed mole fraction methanol"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`Tf$$], 271, "feed temperature (\[Degree]C)"}, 120, 
      300, 1}, {{
       Hold[$CellContext`P$$], 0.25, "flash drum pressure (bar)"}, 0.25, 4, 
      0.25}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`z1$101896$$ = 
    0, $CellContext`Tf$101897$$ = 0, $CellContext`P$101898$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 0.25, $CellContext`Tf$$ = 
        271, $CellContext`z1$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`z1$$, $CellContext`z1$101896$$, 0], 
        Hold[$CellContext`Tf$$, $CellContext`Tf$101897$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$101898$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Tref$, \
$CellContext`CpL1$, $CellContext`CpL2$, $CellContext`CpV1$, \
$CellContext`CpV2$, $CellContext`\[CapitalDelta]Hvap1$, $CellContext`\
\[CapitalDelta]Hvap2$, $CellContext`nf$, $CellContext`Hf1$, \
$CellContext`Hf2$, $CellContext`sol$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`nL$, $CellContext`nV$, $CellContext`T$, $CellContext`amounts$}, \
$CellContext`Psat1$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.08097 - 1582.271/($CellContext`t + 
            239.726)); $CellContext`Psat2$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.07131 - 1730.63/($CellContext`t + 
            233.426)); $CellContext`Tref$ = 25; $CellContext`CpL1$ = 
         0.11; $CellContext`CpL2$ = 0.076; $CellContext`CpV1$ = 
         0.052; $CellContext`CpV2$ = 
         0.034; $CellContext`\[CapitalDelta]Hvap1$ = 
         35.3; $CellContext`\[CapitalDelta]Hvap2$ = 40.656; $CellContext`nf$ = 
         10; $CellContext`Hf1$ = (($CellContext`z1$$ $CellContext`nf$) \
$CellContext`CpL1$) ($CellContext`Tf$$ - $CellContext`Tref$); \
$CellContext`Hf2$ = (((
             1 - $CellContext`z1$$) $CellContext`nf$) $CellContext`CpL2$) \
($CellContext`Tf$$ - $CellContext`Tref$); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Hf1$ + $CellContext`Hf2$ == \
((($CellContext`x $CellContext`L) $CellContext`CpL1$) ($CellContext`t - \
$CellContext`Tref$) + (((
                   1 - $CellContext`x) $CellContext`L) $CellContext`CpL2$) \
($CellContext`t - $CellContext`Tref$)) + (($CellContext`y $CellContext`V) \
($CellContext`\[CapitalDelta]Hvap1$ + $CellContext`CpV1$ ($CellContext`t - \
$CellContext`Tref$)) + ((
                  1 - $CellContext`y) $CellContext`V) ($CellContext`\
\[CapitalDelta]Hvap2$ + $CellContext`CpV2$ ($CellContext`t - \
$CellContext`Tref$))), $CellContext`nf$ == $CellContext`L + $CellContext`V, \
$CellContext`z1$$ $CellContext`nf$ == $CellContext`x $CellContext`L + \
$CellContext`y $CellContext`V, $CellContext`x \
$CellContext`Psat1$[$CellContext`t] == $CellContext`y $CellContext`P$$, (
               1 - $CellContext`x) $CellContext`Psat2$[$CellContext`t] == (
               1 - $CellContext`y) $CellContext`P$$}, {{$CellContext`x, 
              0.5}, {$CellContext`y, 0.5}, {$CellContext`L, 
              5}, {$CellContext`V, 5}, {$CellContext`t, 
              100}}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`x, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`y, $CellContext`sol$]; $CellContext`nL$ = 
         ReplaceAll[$CellContext`L, $CellContext`sol$]; $CellContext`nV$ = 
         ReplaceAll[$CellContext`V, $CellContext`sol$]; $CellContext`T$ = 
         ReplaceAll[$CellContext`t, $CellContext`sol$]; $CellContext`amounts$[
           Pattern[$CellContext`comp$, 
            Blank[]], 
           Pattern[$CellContext`mol$, 
            Blank[]], 
           Pattern[$CellContext`title$, 
            Blank[]]] := 
         Module[{$CellContext`val$}, $CellContext`val$ = 
            Map[If[# < 0, 
               0, #]& , {$CellContext`comp$ $CellContext`mol$, (
                1 - $CellContext`comp$) $CellContext`mol$}]; 
           BarChart[$CellContext`val$, ChartStyle -> {
               RGBColor[0.04, 0.87, 0.26], 
               RGBColor[0, 0.4, 0.8]}, 
             PlotRange -> {{0.5, 2.5}, {0, $CellContext`nf$}}, 
             PlotRangePadding -> {None, {None, 
                Scaled[0.2]}}, Frame -> True, FrameTicks -> None, Axes -> 
             False, ImageSize -> {130, 150}, AspectRatio -> Full, 
             ImagePadding -> {{Automatic, Automatic}, {20, None}}, PlotLabel -> 
             Style[
               Row[{"moles in ", $CellContext`title$}], 17, Black], Epilog -> {
               Apply[Text[
                 Style[
                  NumberForm[
                   If[# < 0.006, 0, #], {2, 1}], 18], {#2, #}, {0, -1}]& , {{
                  First[$CellContext`val$], 1}, {
                  Last[$CellContext`val$], 2}}, {1}], 
               Apply[Text[
                 Style[#, 18], {#2, 0}, {0, 1}]& , {{"methanol", 1}, {
                 "water", 2}}, {1}]}]]; Graphics[{{
            RGBColor[0.65, 1, 1], 
            EdgeForm[
             RGBColor[0.65, 1, 1]], 
            Disk[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Disk[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Rectangle[{2, -2.25}, {5, 2.25}]}, {Thick, 
            Map[Line[{{#, -2.25}, {#, 2.25}}]& , {2, 5}], 
            Circle[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Circle[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Arrowheads[Large], 
            Arrow[{{0, 0}, {2, 0}}], 
            Arrow[{{3.5, 3}, {3.5, 3.5}, {7, 3.5}}], 
            Arrow[{{3.5, -3}, {3.5, -3.5}, {7, -3.5}}]}, 
           Text[
            Style[
             Column[{
               Row[{
                 NumberForm[$CellContext`T$, {3, 0}], " \[Degree]C"}], 
               "flash drum", 
               Row[{
                 
                 NumberForm[$CellContext`x1$ \
$CellContext`Psat1$[$CellContext`T$] + (
                    1 - $CellContext`x1$) \
$CellContext`Psat2$[$CellContext`T$], {4, 2}], " bar"}]}, Center], 18], {
            3.5, 0}], 
           Text[
            Style[
             Row[{"liquid feed", 
               Spacer[10], 
               NumberForm[$CellContext`Tf$$, {3, 0}], " \[Degree]C"}], 
             17], {-1.9, -2.85}], 
           Inset[
            $CellContext`amounts$[$CellContext`z1$$, $CellContext`nf$, 
             "feed"], {-2.1, 0}], 
           Inset[
            $CellContext`amounts$[$CellContext`y1$, $CellContext`nV$, 
             "vapor"], {9.1, 3.5}], 
           Inset[
            $CellContext`amounts$[$CellContext`x1$, $CellContext`nL$, 
             "liquid"], {9.1, -3.5}], 
           Text[
            Style[
             Column[{
               Row[{"vapor = ", 
                 NumberForm[
                  If[$CellContext`nV$ < 0, 0, $CellContext`nV$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["y", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`y1$ < 0.001, 0, $CellContext`y1$], {2, 
                  2}]}]}, Center], 18], {5, 3.5}, {0, -1.2}], 
           Text[
            Style[
             Column[{
               Row[{"liquid = ", 
                 NumberForm[
                  If[$CellContext`nL$ < 0, 0, $CellContext`nL$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["x", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`x1$ < 0.001, 0, $CellContext`x1$], {2, 
                  2}]}]}, Center], 18], {5, -3.5}, {0, 1.5}]}, 
          ImageSize -> {600, 400}]], 
      "Specifications" :> {{{$CellContext`z1$$, 0.5, 
          "feed mole fraction methanol"}, 0, 1, 0.01, Appearance -> "Labeled",
          ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`Tf$$, 271, "feed temperature (\[Degree]C)"}, 120, 
         300, 1, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         2}, {{$CellContext`P$$, 0.25, "flash drum pressure (bar)"}, 0.25, 4, 
         0.25, Appearance -> "Labeled", ControlPlacement -> 3}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
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
 CellID->315958875,ExpressionUUID->"b6fd5308-10a9-480d-bf3e-f839bc0c0fde"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"85853b5e-13b5-43a9-91ab-b7c06a6e49fa"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 2.75, $CellContext`Tf$$ = 
    271, $CellContext`z1$$ = 0.15, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`z1$$], 0.15, "feed mole fraction methanol"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`Tf$$], 271, "feed temperature (\[Degree]C)"}, 120, 
      300, 1}, {{
       Hold[$CellContext`P$$], 2.75, "flash drum pressure (bar)"}, 0.25, 4, 
      0.25}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`z1$101958$$ = 
    0, $CellContext`Tf$101959$$ = 0, $CellContext`P$101960$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 2.75, $CellContext`Tf$$ = 
        271, $CellContext`z1$$ = 0.15}, "ControllerVariables" :> {
        Hold[$CellContext`z1$$, $CellContext`z1$101958$$, 0], 
        Hold[$CellContext`Tf$$, $CellContext`Tf$101959$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$101960$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Tref$, \
$CellContext`CpL1$, $CellContext`CpL2$, $CellContext`CpV1$, \
$CellContext`CpV2$, $CellContext`\[CapitalDelta]Hvap1$, $CellContext`\
\[CapitalDelta]Hvap2$, $CellContext`nf$, $CellContext`Hf1$, \
$CellContext`Hf2$, $CellContext`sol$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`nL$, $CellContext`nV$, $CellContext`T$, $CellContext`amounts$}, \
$CellContext`Psat1$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.08097 - 1582.271/($CellContext`t + 
            239.726)); $CellContext`Psat2$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.07131 - 1730.63/($CellContext`t + 
            233.426)); $CellContext`Tref$ = 25; $CellContext`CpL1$ = 
         0.11; $CellContext`CpL2$ = 0.076; $CellContext`CpV1$ = 
         0.052; $CellContext`CpV2$ = 
         0.034; $CellContext`\[CapitalDelta]Hvap1$ = 
         35.3; $CellContext`\[CapitalDelta]Hvap2$ = 40.656; $CellContext`nf$ = 
         10; $CellContext`Hf1$ = (($CellContext`z1$$ $CellContext`nf$) \
$CellContext`CpL1$) ($CellContext`Tf$$ - $CellContext`Tref$); \
$CellContext`Hf2$ = (((
             1 - $CellContext`z1$$) $CellContext`nf$) $CellContext`CpL2$) \
($CellContext`Tf$$ - $CellContext`Tref$); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Hf1$ + $CellContext`Hf2$ == \
((($CellContext`x $CellContext`L) $CellContext`CpL1$) ($CellContext`t - \
$CellContext`Tref$) + (((
                   1 - $CellContext`x) $CellContext`L) $CellContext`CpL2$) \
($CellContext`t - $CellContext`Tref$)) + (($CellContext`y $CellContext`V) \
($CellContext`\[CapitalDelta]Hvap1$ + $CellContext`CpV1$ ($CellContext`t - \
$CellContext`Tref$)) + ((
                  1 - $CellContext`y) $CellContext`V) ($CellContext`\
\[CapitalDelta]Hvap2$ + $CellContext`CpV2$ ($CellContext`t - \
$CellContext`Tref$))), $CellContext`nf$ == $CellContext`L + $CellContext`V, \
$CellContext`z1$$ $CellContext`nf$ == $CellContext`x $CellContext`L + \
$CellContext`y $CellContext`V, $CellContext`x \
$CellContext`Psat1$[$CellContext`t] == $CellContext`y $CellContext`P$$, (
               1 - $CellContext`x) $CellContext`Psat2$[$CellContext`t] == (
               1 - $CellContext`y) $CellContext`P$$}, {{$CellContext`x, 
              0.5}, {$CellContext`y, 0.5}, {$CellContext`L, 
              5}, {$CellContext`V, 5}, {$CellContext`t, 
              100}}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`x, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`y, $CellContext`sol$]; $CellContext`nL$ = 
         ReplaceAll[$CellContext`L, $CellContext`sol$]; $CellContext`nV$ = 
         ReplaceAll[$CellContext`V, $CellContext`sol$]; $CellContext`T$ = 
         ReplaceAll[$CellContext`t, $CellContext`sol$]; $CellContext`amounts$[
           Pattern[$CellContext`comp$, 
            Blank[]], 
           Pattern[$CellContext`mol$, 
            Blank[]], 
           Pattern[$CellContext`title$, 
            Blank[]]] := 
         Module[{$CellContext`val$}, $CellContext`val$ = 
            Map[If[# < 0, 
               0, #]& , {$CellContext`comp$ $CellContext`mol$, (
                1 - $CellContext`comp$) $CellContext`mol$}]; 
           BarChart[$CellContext`val$, ChartStyle -> {
               RGBColor[0.04, 0.87, 0.26], 
               RGBColor[0, 0.4, 0.8]}, 
             PlotRange -> {{0.5, 2.5}, {0, $CellContext`nf$}}, 
             PlotRangePadding -> {None, {None, 
                Scaled[0.2]}}, Frame -> True, FrameTicks -> None, Axes -> 
             False, ImageSize -> {130, 150}, AspectRatio -> Full, 
             ImagePadding -> {{Automatic, Automatic}, {20, None}}, PlotLabel -> 
             Style[
               Row[{"moles in ", $CellContext`title$}], 17, Black], Epilog -> {
               Apply[Text[
                 Style[
                  NumberForm[
                   If[# < 0.006, 0, #], {2, 1}], 18], {#2, #}, {0, -1}]& , {{
                  First[$CellContext`val$], 1}, {
                  Last[$CellContext`val$], 2}}, {1}], 
               Apply[Text[
                 Style[#, 18], {#2, 0}, {0, 1}]& , {{"methanol", 1}, {
                 "water", 2}}, {1}]}]]; Graphics[{{
            RGBColor[0.65, 1, 1], 
            EdgeForm[
             RGBColor[0.65, 1, 1]], 
            Disk[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Disk[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Rectangle[{2, -2.25}, {5, 2.25}]}, {Thick, 
            Map[Line[{{#, -2.25}, {#, 2.25}}]& , {2, 5}], 
            Circle[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Circle[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Arrowheads[Large], 
            Arrow[{{0, 0}, {2, 0}}], 
            Arrow[{{3.5, 3}, {3.5, 3.5}, {7, 3.5}}], 
            Arrow[{{3.5, -3}, {3.5, -3.5}, {7, -3.5}}]}, 
           Text[
            Style[
             Column[{
               Row[{
                 NumberForm[$CellContext`T$, {3, 0}], " \[Degree]C"}], 
               "flash drum", 
               Row[{
                 
                 NumberForm[$CellContext`x1$ \
$CellContext`Psat1$[$CellContext`T$] + (
                    1 - $CellContext`x1$) \
$CellContext`Psat2$[$CellContext`T$], {4, 2}], " bar"}]}, Center], 18], {
            3.5, 0}], 
           Text[
            Style[
             Row[{"liquid feed", 
               Spacer[10], 
               NumberForm[$CellContext`Tf$$, {3, 0}], " \[Degree]C"}], 
             17], {-1.9, -2.85}], 
           Inset[
            $CellContext`amounts$[$CellContext`z1$$, $CellContext`nf$, 
             "feed"], {-2.1, 0}], 
           Inset[
            $CellContext`amounts$[$CellContext`y1$, $CellContext`nV$, 
             "vapor"], {9.1, 3.5}], 
           Inset[
            $CellContext`amounts$[$CellContext`x1$, $CellContext`nL$, 
             "liquid"], {9.1, -3.5}], 
           Text[
            Style[
             Column[{
               Row[{"vapor = ", 
                 NumberForm[
                  If[$CellContext`nV$ < 0, 0, $CellContext`nV$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["y", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`y1$ < 0.001, 0, $CellContext`y1$], {2, 
                  2}]}]}, Center], 18], {5, 3.5}, {0, -1.2}], 
           Text[
            Style[
             Column[{
               Row[{"liquid = ", 
                 NumberForm[
                  If[$CellContext`nL$ < 0, 0, $CellContext`nL$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["x", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`x1$ < 0.001, 0, $CellContext`x1$], {2, 
                  2}]}]}, Center], 18], {5, -3.5}, {0, 1.5}]}, 
          ImageSize -> {600, 400}]], 
      "Specifications" :> {{{$CellContext`z1$$, 0.15, 
          "feed mole fraction methanol"}, 0, 1, 0.01, Appearance -> "Labeled",
          ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`Tf$$, 271, "feed temperature (\[Degree]C)"}, 120, 
         300, 1, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         2}, {{$CellContext`P$$, 2.75, "flash drum pressure (bar)"}, 0.25, 4, 
         0.25, Appearance -> "Labeled", ControlPlacement -> 3}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
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
 CellID->261094896,ExpressionUUID->"0cb0bb43-1e0f-4b41-b155-3b5e436beee4"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 3.75, $CellContext`Tf$$ = 
    150, $CellContext`z1$$ = 0.86, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`z1$$], 0.86, "feed mole fraction methanol"}, 0, 1, 
      0.01}, {{
       Hold[$CellContext`Tf$$], 150, "feed temperature (\[Degree]C)"}, 120, 
      300, 1}, {{
       Hold[$CellContext`P$$], 3.75, "flash drum pressure (bar)"}, 0.25, 4, 
      0.25}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`z1$102020$$ = 
    0, $CellContext`Tf$102021$$ = 0, $CellContext`P$102022$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 3.75, $CellContext`Tf$$ = 
        150, $CellContext`z1$$ = 0.86}, "ControllerVariables" :> {
        Hold[$CellContext`z1$$, $CellContext`z1$102020$$, 0], 
        Hold[$CellContext`Tf$$, $CellContext`Tf$102021$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$102022$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Tref$, \
$CellContext`CpL1$, $CellContext`CpL2$, $CellContext`CpV1$, \
$CellContext`CpV2$, $CellContext`\[CapitalDelta]Hvap1$, $CellContext`\
\[CapitalDelta]Hvap2$, $CellContext`nf$, $CellContext`Hf1$, \
$CellContext`Hf2$, $CellContext`sol$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`nL$, $CellContext`nV$, $CellContext`T$, $CellContext`amounts$}, \
$CellContext`Psat1$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.08097 - 1582.271/($CellContext`t + 
            239.726)); $CellContext`Psat2$[
           Pattern[$CellContext`t, 
            Blank[]]] := (1/750.06) 
          10^(8.07131 - 1730.63/($CellContext`t + 
            233.426)); $CellContext`Tref$ = 25; $CellContext`CpL1$ = 
         0.11; $CellContext`CpL2$ = 0.076; $CellContext`CpV1$ = 
         0.052; $CellContext`CpV2$ = 
         0.034; $CellContext`\[CapitalDelta]Hvap1$ = 
         35.3; $CellContext`\[CapitalDelta]Hvap2$ = 40.656; $CellContext`nf$ = 
         10; $CellContext`Hf1$ = (($CellContext`z1$$ $CellContext`nf$) \
$CellContext`CpL1$) ($CellContext`Tf$$ - $CellContext`Tref$); \
$CellContext`Hf2$ = (((
             1 - $CellContext`z1$$) $CellContext`nf$) $CellContext`CpL2$) \
($CellContext`Tf$$ - $CellContext`Tref$); $CellContext`sol$ = Quiet[
           
           FindRoot[{$CellContext`Hf1$ + $CellContext`Hf2$ == \
((($CellContext`x $CellContext`L) $CellContext`CpL1$) ($CellContext`t - \
$CellContext`Tref$) + (((
                   1 - $CellContext`x) $CellContext`L) $CellContext`CpL2$) \
($CellContext`t - $CellContext`Tref$)) + (($CellContext`y $CellContext`V) \
($CellContext`\[CapitalDelta]Hvap1$ + $CellContext`CpV1$ ($CellContext`t - \
$CellContext`Tref$)) + ((
                  1 - $CellContext`y) $CellContext`V) ($CellContext`\
\[CapitalDelta]Hvap2$ + $CellContext`CpV2$ ($CellContext`t - \
$CellContext`Tref$))), $CellContext`nf$ == $CellContext`L + $CellContext`V, \
$CellContext`z1$$ $CellContext`nf$ == $CellContext`x $CellContext`L + \
$CellContext`y $CellContext`V, $CellContext`x \
$CellContext`Psat1$[$CellContext`t] == $CellContext`y $CellContext`P$$, (
               1 - $CellContext`x) $CellContext`Psat2$[$CellContext`t] == (
               1 - $CellContext`y) $CellContext`P$$}, {{$CellContext`x, 
              0.5}, {$CellContext`y, 0.5}, {$CellContext`L, 
              5}, {$CellContext`V, 5}, {$CellContext`t, 
              100}}]]; $CellContext`x1$ = 
         ReplaceAll[$CellContext`x, $CellContext`sol$]; $CellContext`y1$ = 
         ReplaceAll[$CellContext`y, $CellContext`sol$]; $CellContext`nL$ = 
         ReplaceAll[$CellContext`L, $CellContext`sol$]; $CellContext`nV$ = 
         ReplaceAll[$CellContext`V, $CellContext`sol$]; $CellContext`T$ = 
         ReplaceAll[$CellContext`t, $CellContext`sol$]; $CellContext`amounts$[
           Pattern[$CellContext`comp$, 
            Blank[]], 
           Pattern[$CellContext`mol$, 
            Blank[]], 
           Pattern[$CellContext`title$, 
            Blank[]]] := 
         Module[{$CellContext`val$}, $CellContext`val$ = 
            Map[If[# < 0, 
               0, #]& , {$CellContext`comp$ $CellContext`mol$, (
                1 - $CellContext`comp$) $CellContext`mol$}]; 
           BarChart[$CellContext`val$, ChartStyle -> {
               RGBColor[0.04, 0.87, 0.26], 
               RGBColor[0, 0.4, 0.8]}, 
             PlotRange -> {{0.5, 2.5}, {0, $CellContext`nf$}}, 
             PlotRangePadding -> {None, {None, 
                Scaled[0.2]}}, Frame -> True, FrameTicks -> None, Axes -> 
             False, ImageSize -> {130, 150}, AspectRatio -> Full, 
             ImagePadding -> {{Automatic, Automatic}, {20, None}}, PlotLabel -> 
             Style[
               Row[{"moles in ", $CellContext`title$}], 17, Black], Epilog -> {
               Apply[Text[
                 Style[
                  NumberForm[
                   If[# < 0.006, 0, #], {2, 1}], 18], {#2, #}, {0, -1}]& , {{
                  First[$CellContext`val$], 1}, {
                  Last[$CellContext`val$], 2}}, {1}], 
               Apply[Text[
                 Style[#, 18], {#2, 0}, {0, 1}]& , {{"methanol", 1}, {
                 "water", 2}}, {1}]}]]; Graphics[{{
            RGBColor[0.65, 1, 1], 
            EdgeForm[
             RGBColor[0.65, 1, 1]], 
            Disk[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Disk[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Rectangle[{2, -2.25}, {5, 2.25}]}, {Thick, 
            Map[Line[{{#, -2.25}, {#, 2.25}}]& , {2, 5}], 
            Circle[{3.5, 2.25}, {1.5, 0.75}, {0, Pi}], 
            Circle[{3.5, -2.25}, {1.5, 0.75}, {Pi, 2 Pi}], 
            Arrowheads[Large], 
            Arrow[{{0, 0}, {2, 0}}], 
            Arrow[{{3.5, 3}, {3.5, 3.5}, {7, 3.5}}], 
            Arrow[{{3.5, -3}, {3.5, -3.5}, {7, -3.5}}]}, 
           Text[
            Style[
             Column[{
               Row[{
                 NumberForm[$CellContext`T$, {3, 0}], " \[Degree]C"}], 
               "flash drum", 
               Row[{
                 
                 NumberForm[$CellContext`x1$ \
$CellContext`Psat1$[$CellContext`T$] + (
                    1 - $CellContext`x1$) \
$CellContext`Psat2$[$CellContext`T$], {4, 2}], " bar"}]}, Center], 18], {
            3.5, 0}], 
           Text[
            Style[
             Row[{"liquid feed", 
               Spacer[10], 
               NumberForm[$CellContext`Tf$$, {3, 0}], " \[Degree]C"}], 
             17], {-1.9, -2.85}], 
           Inset[
            $CellContext`amounts$[$CellContext`z1$$, $CellContext`nf$, 
             "feed"], {-2.1, 0}], 
           Inset[
            $CellContext`amounts$[$CellContext`y1$, $CellContext`nV$, 
             "vapor"], {9.1, 3.5}], 
           Inset[
            $CellContext`amounts$[$CellContext`x1$, $CellContext`nL$, 
             "liquid"], {9.1, -3.5}], 
           Text[
            Style[
             Column[{
               Row[{"vapor = ", 
                 NumberForm[
                  If[$CellContext`nV$ < 0, 0, $CellContext`nV$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["y", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`y1$ < 0.001, 0, $CellContext`y1$], {2, 
                  2}]}]}, Center], 18], {5, 3.5}, {0, -1.2}], 
           Text[
            Style[
             Column[{
               Row[{"liquid = ", 
                 NumberForm[
                  If[$CellContext`nL$ < 0, 0, $CellContext`nL$], {2, 1}], 
                 " mol"}], 
               Row[{
                 Subscript[
                  Style["x", Italic], "m"], " = ", 
                 NumberForm[
                  If[$CellContext`x1$ < 0.001, 0, $CellContext`x1$], {2, 
                  2}]}]}, Center], 18], {5, -3.5}, {0, 1.5}]}, 
          ImageSize -> {600, 400}]], 
      "Specifications" :> {{{$CellContext`z1$$, 0.86, 
          "feed mole fraction methanol"}, 0, 1, 0.01, Appearance -> "Labeled",
          ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`Tf$$, 150, "feed temperature (\[Degree]C)"}, 120, 
         300, 1, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         2}, {{$CellContext`P$$, 3.75, "flash drum pressure (bar)"}, 0.25, 4, 
         0.25, Appearance -> "Labeled", ControlPlacement -> 3}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
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
 CellID->17326423,ExpressionUUID->"84fbfdcb-cd86-4743-af87-c0611e5d1ab4"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"2b6265ce-2e0e-486c-8adc-52e5c54a3e9b"],

Cell["An overall and component mole balance are performed:", "DetailNotes",
 CellID->1697620,ExpressionUUID->"6f46bdb7-b396-464e-91d4-74b59eaf8754"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["n", 
     StyleBox["F",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SuperscriptBox["n", 
      StyleBox["L",
       FontSlant->"Plain"]], "+", 
     SuperscriptBox["n", 
      StyleBox["V",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"db50fb69-7d0d-4aec-8d53-ff8bfb40511d"],
 ","
}], "DetailNotes",
 CellID->66422524,ExpressionUUID->"e7077381-dd1d-4d71-8976-ecf60be4b329"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["n", "i", 
     StyleBox["F",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubsuperscriptBox["n", "i", 
      StyleBox["L",
       FontSlant->"Plain"]], "+", 
     SubsuperscriptBox["n", "i", 
      StyleBox["V",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3443195d-5a48-4846-9e46-f3bcb8e92687"],
 ","
}], "DetailNotes",
 CellID->677276917,ExpressionUUID->"4f0c245a-3b67-447e-8056-47b7d8ac252d"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "a72394fa-3486-4528-b534-c123c38adca4"],
 " is the number of moles, the superscripts ",
 Cell[BoxData[
  FormBox[
   StyleBox["F",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "f911f08a-9aab-4404-b3ec-891006554594"],
 ", ",
 Cell[BoxData[
  FormBox[
   StyleBox["L",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "f4e1f087-3375-4cef-9206-1332114b96ff"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["V",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "2a9711a4-a72c-41c1-8e86-93625c19fa43"],
 " refer to the feed, liquid and vapor streams and the subscript ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", 
    RowBox[{
     StyleBox["m",
      FontSlant->"Plain"], " ", "or", " ", 
     StyleBox["w",
      FontSlant->"Plain"]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f082dd3a-546e-43b3-84aa-39687cccfa43"],
 " refers to a component (methanol or water)."
}], "DetailNotes",
 CellID->111136167,ExpressionUUID->"18dbbe53-561c-40c8-9f86-d5e72f861582"],

Cell[TextData[{
 "Overall and component energy balances with the reference state ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["T", "ref"], "=", 
    RowBox[{"25", " ", "\[Degree]C"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"d28cf115-61df-46bf-a841-4e243e71114a"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", "ref"], "=", 
    RowBox[{"1", " ", "bar"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3390e295-168d-47f4-91fc-54673b4b07b0"],
 ":"
}], "DetailNotes",
 CellID->61839144,ExpressionUUID->"fab743e6-c820-4261-bf21-12c4c1397221"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["H", "in"], "=", 
    SubscriptBox["H", "out"]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"85eb5864-494e-4efc-a906-0bd0ac1a0563"],
 ","
}], "DetailNotes",
 CellID->177600225,ExpressionUUID->"e35509e1-a928-4c2a-b8e0-ceb4084e8ba0"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["H", 
     StyleBox["F",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SuperscriptBox["H", 
      StyleBox["L",
       FontSlant->"Plain"]], "+", 
     SuperscriptBox["H", 
      StyleBox["V",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"d3449dd6-7d34-4dac-9716-c1685afa9077"],
 ","
}], "DetailNotes",
 CellID->19041160,ExpressionUUID->"dc2b7d17-137d-43ee-ae0d-e74676cef96c"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["H", "i", 
     StyleBox["F",
      FontSlant->"Plain"]], "=", 
    RowBox[{
     SubsuperscriptBox["H", "i", 
      StyleBox["L",
       FontSlant->"Plain"]], "+", 
     SubsuperscriptBox["H", "i", 
      StyleBox["V",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f3f6bfca-5ac6-457a-b34a-c45424d1f784"],
 ","
}], "DetailNotes",
 CellID->394327200,ExpressionUUID->"d8ab5ad0-8a33-4db6-8f73-68c1bb4d5ef3"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]], "InlineMath",ExpressionUUID->
  "219e9346-29c5-4813-99a1-1d57be0d1747"],
 " is enthalpy (kJ)."
}], "DetailNotes",
 CellID->329556513,ExpressionUUID->"36ceb2bc-57e1-4f55-ac2b-f73bc0b761e1"],

Cell[TextData[{
 "The enthalpies of each stream are calculated using heat capacities ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]], "InlineMath",ExpressionUUID->
  "b5006291-e60a-4d99-9ebe-0bb6f3c44991"],
 " (kJ/(mol K)) and heat of vaporization ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
    SuperscriptBox["H", "vap"]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"0fc744fc-e87b-4239-9703-7768a60308a1"],
 " (kJ/mol):"
}], "DetailNotes",
 CellID->929224508,ExpressionUUID->"3e766528-b6db-4373-8caa-19ce415978a9"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["H", 
     StyleBox["F",
      FontSlant->"Plain"]], "=", 
    RowBox[{"\[Sum]", " ", 
     RowBox[{
      SubsuperscriptBox["n", "i", 
       StyleBox["F",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["Cp", "i", 
       StyleBox["L",
        FontSlant->"Plain"]], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["T", "in"], "-", 
        SubscriptBox["T", "ref"]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"6f9aa1be-633f-47c6-862e-97f0ee5a3eb6"],
 ","
}], "DetailNotes",
 CellID->640773967,ExpressionUUID->"0242ff08-cd97-4373-a815-1e40687918ec"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["H", 
     StyleBox["L",
      FontSlant->"Plain"]], "=", 
    RowBox[{"\[Sum]", " ", 
     RowBox[{
      SubsuperscriptBox["n", "i", 
       StyleBox["L",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["Cp", "i", 
       StyleBox["L",
        FontSlant->"Plain"]], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["T", "out"], "-", 
        SubscriptBox["T", "ref"]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"082eb10e-8fb7-4d7b-a484-7ab197faa38d"],
 ","
}], "DetailNotes",
 CellID->109738931,ExpressionUUID->"77e7ae2a-9d8f-4e21-a960-40b1a87bf65f"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["H", 
     StyleBox["V",
      FontSlant->"Plain"]], "=", 
    RowBox[{"\[Sum]", " ", 
     RowBox[{
      SubsuperscriptBox["n", "i", 
       StyleBox["V",
        FontSlant->"Plain"]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Cp", "i", 
          StyleBox["V",
           FontSlant->"Plain"]], " ", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["T", "out"], "-", 
           SubscriptBox["T", "ref"]}], ")"}]}], "+", 
        RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", 
         SubsuperscriptBox["H", "i", "vap"]}]}], ")"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "ca9a6654-8abd-48a0-9636-bb1e703075e4"],
 "."
}], "DetailNotes",
 CellID->182517345,ExpressionUUID->"e04c41ed-32c9-41e9-87ee-d760a1acf75a"],

Cell[TextData[{
 "The flash drum has a single equilibrium stage, so the exiting liquid and \
vapor streams are at the same temperature, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "out"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "bb3b5bab-9fdc-4146-9607-28108199d8c8"],
 "."
}], "DetailNotes",
 CellID->491141317,ExpressionUUID->"9f3e6dc9-eb98-447f-8abc-ba555eda7af7"],

Cell[TextData[{
 "Saturation pressure ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["P", "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"343b9621-94c8-4bc6-b7ab-b534315d3ad8"],
 " of the components in vapor-liquid equilibrium is calculated using the \
Antoine equation:"
}], "DetailNotes",
 CellID->469914745,ExpressionUUID->"8e615840-4061-4d9e-8d27-7d14c3678819"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox["P", "i", "sat"], "=", 
    RowBox[{"10", "^", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["A", "i"], "-", 
       FractionBox[
        SubscriptBox["B", "i"], 
        RowBox[{"T", "+", 
         SubscriptBox["C", "i"]}]]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"74debfd5-cdde-4c2b-8707-c8eb55fbcc1e"],
 ","
}], "DetailNotes",
 CellID->47170115,ExpressionUUID->"dedec6f2-01bf-4176-8136-9dac2e4cd86f"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["A", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "6a8a6957-0505-4c29-b626-19df680fad48"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["B", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "62b21bd4-312f-40fd-8d4e-a44618c2d6b5"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "5be6d423-c431-4634-b2b9-d5e06fce020f"],
 " are Antoine constants for each component, and ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["P", "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"670ebc9c-5e6a-4123-9679-1abb6abf50cb"],
 " is in bar."
}], "DetailNotes",
 CellID->552455075,ExpressionUUID->"5e76578d-1e06-46af-bbf3-0cc50488fa44"],

Cell["\<\
Raoult's law is used for the exit streams to find the vapor-liquid \
equilibrium compositions:\
\>", "DetailNotes",
 CellID->474223289,ExpressionUUID->"c3d92da4-981a-482d-b777-d397b03e1e7a"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["x", "i"], " ", 
     SubsuperscriptBox["P", "i", "sat"]}], "=", 
    RowBox[{
     SubscriptBox["y", "i"], " ", "P"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"7be1bf5f-cfcd-480c-873f-d9c184a5f0a2"],
 ","
}], "DetailNotes",
 CellID->310122310,ExpressionUUID->"f17820f4-cdcd-47b9-9130-a1dba5e63751"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "0f18172b-ffc3-492f-8455-5aefa4a389f9"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "bcec8d56-6a20-4aa5-8212-4581909a3e38"],
 " are the liquid and vapor mole fractions."
}], "DetailNotes",
 CellID->69505780,ExpressionUUID->"87b05aca-36cd-4f8c-9efe-e152859ef9e7"],

Cell[TextData[{
 "The sum of the mole fractions times their saturation pressures is the total \
pressure",
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["x", 
       StyleBox["m",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["P", 
       StyleBox["m",
        FontSlant->"Plain"], "sat"]}], "+", 
     RowBox[{
      SubscriptBox["x", 
       StyleBox["w",
        FontSlant->"Plain"]], " ", 
      SubsuperscriptBox["P", 
       StyleBox["w",
        FontSlant->"Plain"], "sat"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"9291a27e-23f7-4a39-aa85-249e5a27fff6"],
 "."
}], "DetailNotes",
 CellID->472810260,ExpressionUUID->"f8a5538f-58fa-45a0-83a3-73cac471497d"],

Cell["\<\
The screencast video at [1] explains how to use this Demonstration.\
\>", "DetailNotes",
 CellID->368914587,ExpressionUUID->"2a68b1f6-267f-4d14-831c-a556eeb11f77"],

Cell["Reference", "DetailNotes",
 CellID->259359028,ExpressionUUID->"e03d6128-a8fb-4c06-af4f-7f20b8f0ea40"],

Cell[TextData[{
 "[1] ",
 StyleBox["Adiabatic Flash Drum with Binary Liquid Feed ",
  FontSlant->"Italic"],
 "[Video]. (Dec 8, 2016) ",
 ButtonBox["www.colorado.edu/learncheme/separations/AdiabaticFlash.html",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.colorado.edu/learncheme/separations/AdiabaticFlash.html"],
     None},
  ButtonNote->
   "http://www.colorado.edu/learncheme/separations/AdiabaticFlash.html"],
 "."
}], "DetailNotes",
 CellID->25798271,ExpressionUUID->"ed6825c6-212a-40fa-be9d-fb8cf671a5da"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"0b8024f6-4c89-4598-8829-4921ea059b5e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"9b592d47-70f7-4c2a-8953-9f57b07f7974"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"4f06e057-0fa9-4c6c-9386-fccc70e8522d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "2dfe472a-7010-4db8-9771-42dc3fdda4ea"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"f31fcdfe-e3d8-4b2b-ba42-4da079dfb49c"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"5ae939da-9aac-4384-93cb-98fd17cb82ac"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"a4c90d0f-69d4-42d4-9b15-f06ea704fbe2"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "55c45851-8c87-462f-a7bc-bca9fa98a7d5"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"ac7665eb-88d8-4b71-b033-\
513f7480e8df"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"445ee86e-6f80-4eda-af63-0120fcd29ad3"]}],
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
  "SliderZoom",ExpressionUUID->"21ddd3a6-66ba-4584-a82b-2a8c3a3f3c80"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "034b95ae-161e-488f-bd77-e10a3cf0b150"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"828d972f-6679-481c-b08b-a0002bd197f9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "7b5fa522-3dd7-485e-8f2f-93e3f9ea3359"]}],
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
  "AutomaticAnimation",ExpressionUUID->"52f15d76-88ec-4560-bbb9-25bf22379ecf"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "3066e3cb-9de0-4702-9ef2-c7b954f5da4c"]}],
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
  "BookmarkAnimation",ExpressionUUID->"7e2de57c-51c1-4ffb-81fc-ba01d4267245"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"d91d9c85-7f4d-4d9b-9e59-1a7dc0bca180"],

Cell["chemical engineering", "SearchTerms",
 CellID->63500681,ExpressionUUID->"e321bfe4-1e60-4a5d-9ae2-f13ffe2d89bb"],

Cell["thermodynamics", "SearchTerms",
 CellID->201466145,ExpressionUUID->"a8b75838-6bfa-42ee-9a42-97dca1dd4654"],

Cell["separations", "SearchTerms",
 CellID->866214553,ExpressionUUID->"c05f9df3-c426-4ea0-83e8-87f5f423661c"],

Cell["adiabatic flash", "SearchTerms",
 CellID->871961041,ExpressionUUID->"47ca0236-3b8e-4131-8e8b-66823a2fc887"],

Cell["vapor-liquid equilibrium", "SearchTerms",
 CellID->158170442,ExpressionUUID->"502dea8a-005f-4561-92fc-92989870ab11"],

Cell["single equilibrium stage", "SearchTerms",
 CellID->56787359,ExpressionUUID->"43b673e0-c053-48d3-9d8a-50c0b0f8757d"],

Cell["material and energy balances", "SearchTerms",
 CellID->63850823,ExpressionUUID->"93aedf8d-1918-4ed1-bfc6-70a2fd880985"],

Cell["Raoult's law", "SearchTerms",
 CellID->376965515,ExpressionUUID->"6b0b87b4-3ef8-4134-88f9-d839b32a885c"],

Cell["mole balance", "SearchTerms",
 CellID->101651402,ExpressionUUID->"f9583c85-6e0b-4eb4-ab6f-56c7504211e0"],

Cell["energy balance", "SearchTerms",
 CellID->380324425,ExpressionUUID->"b8e85d21-b7a7-4e4c-bb4f-ef133ea15f15"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"f44aaa3b-9dcc-4517-8f51-3e0f6166b896"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"eb99fb87-4bbb-41b5-9ddb-c0b015abb2cb"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Derek Machalek",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Derek+Machalek"]\
, None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Derek+Machalek"],
 " and ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael+L.+\
Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael+L.+Baumann"]
}], "Author",
 CellID->181910846,ExpressionUUID->"c4a81231-951b-4117-83ab-87ede75a7a0c"],

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
 CellID->12174779,ExpressionUUID->"6c6a524e-8645-4206-9840-7fe001fcb595"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->1644623,ExpressionUUID->"4e973e73-2bca-41d6-a6d2-4c47d20a0f56"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.2 for Microsoft Windows (64-bit) (September 10, 2017)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[78363, 1879, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"4f06e057-0fa9-4c6c-9386-fccc70e8522d",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[78794, 1891, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"f31fcdfe-e3d8-4b2b-ba42-4da079dfb49c",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[79597, 1912, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"a4c90d0f-69d4-42d4-9b15-f06ea704fbe2",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[80057, 1927, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"ac7665eb-88d8-4b71-b033-513f7480e8df",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[80821, 1948, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"21ddd3a6-66ba-4584-a82b-2a8c3a3f3c80",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[81784, 1973, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"828d972f-6679-481c-b08b-a0002bd197f9",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[82212, 1986, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"52f15d76-88ec-4560-bbb9-25bf22379ecf",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[83800, 2022, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"7e2de57c-51c1-4ffb-81fc-ba01d4267245",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 88079, 2146},
 {"RotateAndZoomIn3D", 88244, 2149},
 {"DragLocators", 88409, 2152},
 {"CreateAndDeleteLocators", 88580, 2155},
 {"SliderZoom", 88749, 2158},
 {"GamepadControls", 88910, 2161},
 {"AutomaticAnimation", 89079, 2164},
 {"BookmarkAnimation", 89251, 2167}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 120, 0, 74, "DemoTitle",ExpressionUUID->"f0e1b853-8d98-4bac-9a1d-76b689ba08bf"],
Cell[1633, 37, 88, 0, 275, "InitializationSection",ExpressionUUID->"027b122f-940f-4404-8c49-cf9e6aa4cf09"],
Cell[CellGroupData[{
Cell[1746, 41, 84, 0, 189, "ManipulateSection",ExpressionUUID->"13fa4ce2-4f8d-46d1-b326-5fae36da89a1"],
Cell[CellGroupData[{
Cell[1855, 45, 23403, 569, 1289, "Input",ExpressionUUID->"3e15ceab-121f-4dd8-8306-a79b2abb69bf",
 CellID->216804462],
Cell[25261, 616, 9884, 204, 527, "Output",ExpressionUUID->"caae1721-c1aa-4a51-8faa-3d0b165171a3",
 CellID->237808380]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[35194, 826, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"e3b5bb68-7b05-40f2-b3bc-bc65899a05cf"],
Cell[35288, 828, 850, 12, 67, "ManipulateCaption",ExpressionUUID->"72b9abca-4e50-450b-b769-f250a503d66a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36175, 845, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"a1a07c7b-7f45-444a-950c-bf3ece48f491"],
Cell[36261, 847, 9890, 204, 527, "Output",ExpressionUUID->"b6fd5308-10a9-480d-bf3e-f839bc0c0fde",
 CellID->315958875]
}, Open  ]],
Cell[CellGroupData[{
Cell[46188, 1056, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"85853b5e-13b5-43a9-91ab-b7c06a6e49fa"],
Cell[46274, 1058, 9894, 204, 527, "Output",ExpressionUUID->"0cb0bb43-1e0f-4b41-b155-3b5e436beee4",
 CellID->261094896],
Cell[56171, 1264, 9893, 204, 527, "Output",ExpressionUUID->"84fbfdcb-cd86-4743-af87-c0611e5d1ab4",
 CellID->17326423]
}, Open  ]],
Cell[CellGroupData[{
Cell[66101, 1473, 81, 0, 335, "DetailsSection",ExpressionUUID->"2b6265ce-2e0e-486c-8adc-52e5c54a3e9b"],
Cell[66185, 1475, 148, 1, 22, "DetailNotes",ExpressionUUID->"6f46bdb7-b396-464e-91d4-74b59eaf8754",
 CellID->1697620],
Cell[66336, 1478, 494, 17, 23, "DetailNotes",ExpressionUUID->"e7077381-dd1d-4d71-8976-ecf60be4b329",
 CellID->66422524],
Cell[66833, 1497, 519, 17, 25, "DetailNotes",ExpressionUUID->"4f0c245a-3b67-447e-8056-47b7d8ac252d",
 CellID->677276917],
Cell[67355, 1516, 1167, 35, 23, "DetailNotes",ExpressionUUID->"18dbbe53-561c-40c8-9f86-d5e72f861582",
 CellID->111136167],
Cell[68525, 1553, 597, 17, 23, "DetailNotes",ExpressionUUID->"fab743e6-c820-4261-bf21-12c4c1397221",
 CellID->61839144],
Cell[69125, 1572, 311, 9, 23, "DetailNotes",ExpressionUUID->"e35509e1-a928-4c2a-b8e0-ceb4084e8ba0",
 CellID->177600225],
Cell[69439, 1583, 494, 17, 23, "DetailNotes",ExpressionUUID->"dc2b7d17-137d-43ee-ae0d-e74676cef96c",
 CellID->19041160],
Cell[69936, 1602, 519, 17, 25, "DetailNotes",ExpressionUUID->"d8ab5ad0-8a33-4db6-8f73-68c1bb4d5ef3",
 CellID->394327200],
Cell[70458, 1621, 264, 7, 23, "DetailNotes",ExpressionUUID->"36ceb2bc-57e1-4f55-ac2b-f73bc0b761e1",
 CellID->329556513],
Cell[70725, 1630, 566, 13, 23, "DetailNotes",ExpressionUUID->"3e766528-b6db-4373-8caa-19ce415978a9",
 CellID->929224508],
Cell[71294, 1645, 673, 22, 25, "DetailNotes",ExpressionUUID->"0242ff08-cd97-4373-a815-1e40687918ec",
 CellID->640773967],
Cell[71970, 1669, 674, 22, 25, "DetailNotes",ExpressionUUID->"77e7ae2a-9d8f-4e21-a960-40b1a87bf65f",
 CellID->109738931],
Cell[72647, 1693, 873, 28, 26, "DetailNotes",ExpressionUUID->"e04c41ed-32c9-41e9-87ee-d760a1acf75a",
 CellID->182517345],
Cell[73523, 1723, 384, 9, 23, "DetailNotes",ExpressionUUID->"9f3e6dc9-eb98-447f-8abc-ba555eda7af7",
 CellID->491141317],
Cell[73910, 1734, 377, 9, 23, "DetailNotes",ExpressionUUID->"8e615840-4061-4d9e-8d27-7d14c3678819",
 CellID->469914745],
Cell[74290, 1745, 513, 16, 39, "DetailNotes",ExpressionUUID->"dedec6f2-01bf-4176-8136-9dac2e4cd86f",
 CellID->47170115],
Cell[74806, 1763, 788, 23, 23, "DetailNotes",ExpressionUUID->"5e76578d-1e06-46af-bbf3-0cc50488fa44",
 CellID->552455075],
Cell[75597, 1788, 200, 4, 22, "DetailNotes",ExpressionUUID->"c3d92da4-981a-482d-b777-d397b03e1e7a",
 CellID->474223289],
Cell[75800, 1794, 397, 12, 25, "DetailNotes",ExpressionUUID->"f17820f4-cdcd-47b9-9130-a1dba5e63751",
 CellID->310122310],
Cell[76200, 1808, 464, 13, 23, "DetailNotes",ExpressionUUID->"87b05aca-36cd-4f8c-9efe-e152859ef9e7",
 CellID->69505780],
Cell[76667, 1823, 746, 25, 25, "DetailNotes",ExpressionUUID->"f8a5538f-58fa-45a0-83a3-73cac471497d",
 CellID->472810260],
Cell[77416, 1850, 173, 3, 22, "DetailNotes",ExpressionUUID->"2a68b1f6-267f-4d14-831c-a556eeb11f77",
 CellID->368914587],
Cell[77592, 1855, 107, 1, 22, "DetailNotes",ExpressionUUID->"e03d6128-a8fb-4c06-af4f-7f20b8f0ea40",
 CellID->259359028],
Cell[77702, 1858, 529, 14, 22, "DetailNotes",ExpressionUUID->"ed6825c6-212a-40fa-be9d-fb8cf671a5da",
 CellID->25798271]
}, Open  ]],
Cell[CellGroupData[{
Cell[78268, 1877, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"0b8024f6-4c89-4598-8829-4921ea059b5e"],
Cell[78363, 1879, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"4f06e057-0fa9-4c6c-9386-fccc70e8522d",
 CellTags->"ResizeImages"],
Cell[78794, 1891, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"f31fcdfe-e3d8-4b2b-ba42-4da079dfb49c",
 CellTags->"RotateAndZoomIn3D"],
Cell[79597, 1912, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"a4c90d0f-69d4-42d4-9b15-f06ea704fbe2",
 CellTags->"DragLocators"],
Cell[80057, 1927, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"ac7665eb-88d8-4b71-b033-513f7480e8df",
 CellTags->"CreateAndDeleteLocators"],
Cell[80821, 1948, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"21ddd3a6-66ba-4584-a82b-2a8c3a3f3c80",
 CellTags->"SliderZoom"],
Cell[81784, 1973, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"828d972f-6679-481c-b08b-a0002bd197f9",
 CellTags->"GamepadControls"],
Cell[82212, 1986, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"52f15d76-88ec-4560-bbb9-25bf22379ecf",
 CellTags->"AutomaticAnimation"],
Cell[83800, 2022, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"7e2de57c-51c1-4ffb-81fc-ba01d4267245",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[84867, 2051, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"d91d9c85-7f4d-4d9b-9e59-1a7dc0bca180"],
Cell[84955, 2053, 117, 1, 22, "SearchTerms",ExpressionUUID->"e321bfe4-1e60-4a5d-9ae2-f13ffe2d89bb",
 CellID->63500681],
Cell[85075, 2056, 112, 1, 22, "SearchTerms",ExpressionUUID->"a8b75838-6bfa-42ee-9a42-97dca1dd4654",
 CellID->201466145],
Cell[85190, 2059, 109, 1, 22, "SearchTerms",ExpressionUUID->"c05f9df3-c426-4ea0-83e8-87f5f423661c",
 CellID->866214553],
Cell[85302, 2062, 113, 1, 22, "SearchTerms",ExpressionUUID->"47ca0236-3b8e-4131-8e8b-66823a2fc887",
 CellID->871961041],
Cell[85418, 2065, 122, 1, 22, "SearchTerms",ExpressionUUID->"502dea8a-005f-4561-92fc-92989870ab11",
 CellID->158170442],
Cell[85543, 2068, 121, 1, 22, "SearchTerms",ExpressionUUID->"43b673e0-c053-48d3-9d8a-50c0b0f8757d",
 CellID->56787359],
Cell[85667, 2071, 125, 1, 22, "SearchTerms",ExpressionUUID->"93aedf8d-1918-4ed1-bfc6-70a2fd880985",
 CellID->63850823],
Cell[85795, 2074, 110, 1, 22, "SearchTerms",ExpressionUUID->"6b0b87b4-3ef8-4134-88f9-d839b32a885c",
 CellID->376965515],
Cell[85908, 2077, 110, 1, 22, "SearchTerms",ExpressionUUID->"f9583c85-6e0b-4eb4-ab6f-56c7504211e0",
 CellID->101651402],
Cell[86021, 2080, 112, 1, 22, "SearchTerms",ExpressionUUID->"b8e85d21-b7a7-4e4c-bb4f-ef133ea15f15",
 CellID->380324425]
}, Open  ]],
Cell[86148, 2084, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"f44aaa3b-9dcc-4517-8f51-3e0f6166b896"],
Cell[CellGroupData[{
Cell[86259, 2088, 80, 0, 129, "AuthorSection",ExpressionUUID->"eb99fb87-4bbb-41b5-9ddb-c0b015abb2cb"],
Cell[86342, 2090, 646, 18, 22, "Author",ExpressionUUID->"c4a81231-951b-4117-83ab-87ede75a7a0c",
 CellID->181910846],
Cell[86991, 2110, 392, 10, 22, "Author",ExpressionUUID->"6c6a524e-8645-4206-9840-7fe001fcb595",
 CellID->12174779],
Cell[87386, 2122, 184, 4, 22, "Author",ExpressionUUID->"4e973e73-2bca-41d6-a6d2-4c47d20a0f56",
 CellID->1644623]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Gw0mMA85fWonYD1F05SeNI6T *)
