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
NotebookDataLength[    301296,       6508]
NotebookOptionsPosition[    292949,       6341]
NotebookOutlinePosition[    295116,       6396]
CellTagsIndexPosition[    294780,       6384]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Construct a Pressure-Composition Diagram for Immiscible Liquids\
\>", "DemoTitle",ExpressionUUID->"6afc1073-fc46-4969-8e18-380bbd3209b7"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"58b4dd60-f48f-4854-8d32-2d0bb9722f73"],

Cell[BoxData[
 RowBox[{
  RowBox[{"colC", "=", 
   RowBox[{"RGBColor", "[", 
    RowBox[{"1", ",", "0.4", ",", "0"}], "]"}]}], ";", 
  RowBox[{"colW", "=", "Blue"}], ";", 
  RowBox[{"colV", "=", "Purple"}], ";", 
  RowBox[{"colS", "=", 
   RowBox[{"RGBColor", "[", 
    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->377804671,ExpressionUUID->"edf921f1-b19d-4bb9-a3a8-5f7d62785a43"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"pt1", "[", 
    RowBox[{"pt_", ",", "col_"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{"col", ",", 
     RowBox[{"PointSize", "@", "0.025"}], ",", 
     RowBox[{"Point", "@", "pt"}], ",", "White", ",", 
     RowBox[{"PointSize", "@", "0.015"}], ",", 
     RowBox[{"Point", "@", "pt"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->350103,ExpressionUUID->"ac2c6c92-bb62-4ecc-9397-ac21bf6ccd81"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"pt2", "[", 
    RowBox[{"pt_", ",", "col_"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{"col", ",", 
     RowBox[{"PointSize", "@", "0.025"}], ",", 
     RowBox[{"Point", "@", "pt"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->112037437,ExpressionUUID->"e69f9fea-0ef5-4e62-9a1e-bde8680e5787"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p", "=", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->11297781,ExpressionUUID->"e8d6ba8a-318f-4bbe-bc79-8d336487b0ba"]
}, Closed]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"441322ef-a556-4351-9f2d-77e4f100545c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "part", ",", "Psat", ",", "P", ",", "Py", ",", "ypoint", ",", 
       "Pdp", ",", "component", ",", "comp", ",", "range", ",", "phase1", ",",
        "phase2", ",", "phase3", ",", "phase4", ",", "phase5", ",", "phase6", 
       ",", "plotlabel"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"SeedRandom", "[", "reset", "]"}], ";", 
      RowBox[{"T", "=", 
       RowBox[{"RandomInteger", "[", 
        RowBox[{"{", 
         RowBox[{"105", ",", "125"}], "}"}], "]"}]}], ";", 
      RowBox[{"part", "=", 
       RowBox[{"RandomInteger", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", "3"}], "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Psat", "[", "1", "]"}], "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"10", "^", 
          RowBox[{"(", 
           RowBox[{"4.72583", "-", 
            FractionBox["1660.652", 
             RowBox[{"T", "+", "271.5"}]]}], ")"}]}], ",", "2", ",", 
         RowBox[{"10", "^", 
          RowBox[{"(", 
           RowBox[{"4.07827", "-", 
            FractionBox["1343.943", 
             RowBox[{"T", "+", "219.227"}]]}], ")"}]}], ",", "3", ",", 
         RowBox[{"10", "^", 
          RowBox[{"(", 
           RowBox[{"4.00266", "-", 
            FractionBox["1171.53", 
             RowBox[{"T", "+", "224.216"}]]}], ")"}]}]}], "]"}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"benzene", ",", " ", "toluene", ",", " ", "hexane"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Psat", "[", "2", "]"}], "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"5.0768", "-", 
          FractionBox["1659.793", 
           RowBox[{"T", "+", "227.1"}]]}], ")"}]}]}], ";", 
      RowBox[{"(*", "water", "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"P", "=", 
       RowBox[{
        RowBox[{"Psat", "[", "1", "]"}], "+", 
        RowBox[{"Psat", "[", "2", "]"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Py", "[", "1", "]"}], "[", "y_", "]"}], ":=", 
       FractionBox[
        RowBox[{"Psat", "[", "1", "]"}], "y"]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Py", "[", "2", "]"}], "[", "y_", "]"}], ":=", 
       FractionBox[
        RowBox[{"Psat", "[", "2", "]"}], 
        RowBox[{"1", "-", "y"}]]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"ypoint", "=", 
       FractionBox[
        RowBox[{"Psat", "[", "1", "]"}], 
        RowBox[{
         RowBox[{"Psat", "[", "1", "]"}], "+", 
         RowBox[{"Psat", "[", "2", "]"}]}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Pdp", "[", "y_", "]"}], ":=", 
       RowBox[{"Piecewise", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"Py", "[", "2", "]"}], "[", "y", "]"}], ",", 
            RowBox[{"0", "\[LessEqual]", "y", "\[LessEqual]", "ypoint"}]}], 
           "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"Py", "[", "1", "]"}], "[", "y", "]"}], ",", 
            RowBox[{"ypoint", "<", "y", "\[LessEqual]", "1"}]}], "}"}]}], 
         "}"}], "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"component", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{
        "part", ",", "1", ",", "\"\<benzene\>\"", ",", "2", ",", 
         "\"\<toluene\>\"", ",", "3", ",", 
         RowBox[{"Row", "@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<n\>\"", ",", "Italic"}], "]"}], ",", 
            "\"\<-hexane\>\""}], "}"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"comp", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{
        "part", ",", "1", ",", "\"\<b\>\"", ",", "2", ",", "\"\<t\>\"", ",", 
         "3", ",", "\"\<h\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"range", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "6.5"}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "4.3"}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "7.5"}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"phase1", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.1", ",", 
           RowBox[{"phase1B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.1", ",", 
           RowBox[{"phase1T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.1", ",", 
           RowBox[{"phase1H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"phase2", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.3", ",", 
           RowBox[{"phase2B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.2", ",", 
           RowBox[{"phase2T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.35", ",", 
           RowBox[{"phase2H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"phase3", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.5", ",", 
           RowBox[{"phase3B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.3", ",", 
           RowBox[{"phase3T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.6", ",", 
           RowBox[{"phase3H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"phase4", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.65", ",", 
           RowBox[{"phase4B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.5", ",", 
           RowBox[{"phase4T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.75", ",", 
           RowBox[{"phase4H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"phase5", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.75", ",", 
           RowBox[{"phase5B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.7", ",", 
           RowBox[{"phase5T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.85", ",", 
           RowBox[{"phase5H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"phase6", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"part", ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0.9", ",", 
           RowBox[{"phase6B", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "2", ",", 
         RowBox[{"{", 
          RowBox[{"0.9", ",", 
           RowBox[{"phase6T", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "3", ",", 
         RowBox[{"{", 
          RowBox[{"0.95", ",", 
           RowBox[{"phase6H", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"plotlabel", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"CS", ",", "\[IndentingNewLine]", "1", ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", "\"\<hint: sum the saturation pressures\>\"", ",", 
           "\"\<step 1: drag the line to the pressure where three phases \
coexist, then check solution\>\""}], "]"}], ",", "\[IndentingNewLine]", "2", 
         ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", 
           "\"\<hint: liquids are more stable at higher pressures\>\"", ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 2: move the point to the region where the two liquids \
are in equilibrium\>\"", ",", 
              "\"\<(and no vapor is present), then check solution\>\""}], 
             "}"}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", "3", ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", "\"\<hint: pure-component saturation pressures\>\"", 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 3: drag the blue point to the location where pure \
water is in VLE and drag\>\"", ",", 
              "\"\<the orange point to the location where the pure organic is \
in VLE, then check solution\>\""}], "}"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "4", ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", 
           "\"\<hint: each liquid exerts its saturation pressure\>\"", ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium\>\"", ",", 
              "\"\<with two liquid phases, then check solution\>\""}], "}"}], 
            "]"}]}], "]"}], ",", "\[IndentingNewLine]", "5", ",", 
         RowBox[{"If", "[", 
          RowBox[{"hint", ",", 
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{
             "\"\<hint: the vapor mole fraction for water is \>\"", ",", 
              RowBox[{"Subsuperscript", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", 
                "\"\<w\>\"", ",", "\"\<sat\>\""}], "]"}], ",", "\"\</\>\"", 
              ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}]}], "}"}]}], ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 5: drag each point vertically to the pressure where \
vapor with that mole fraction\>\"", ",", 
              "\"\<is in equilibrium with liquid water, then check solution\>\
\""}], "}"}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", "6", ",", 
         RowBox[{"If", "[", 
          RowBox[{"hint", ",", 
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{
             "\"\<hint: the vapor mole fraction for \>\"", ",", "component", 
              ",", "\"\< is \>\"", ",", 
              RowBox[{"Subsuperscript", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", "comp", 
                ",", "\"\<sat\>\""}], "]"}], ",", "\"\</\>\"", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}]}], "}"}]}], ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 6: drag each point vertically to the pressure where \
vapor with that mole fraction\>\"", ",", 
              "\"\<is in equilibrium with pure organic liquid, then check \
solution\>\""}], "}"}], "]"}]}], "]"}], ",", "7", ",", "\"\<\>\""}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Thick", ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"#", ",", 
                 RowBox[{"range", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"#", ",", 
                 RowBox[{"0.02", "*", 
                  RowBox[{"range", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "}"}], "]"}], 
            "&"}], "/@", 
           RowBox[{"Range", "[", 
            RowBox[{"0.1", ",", "0.9", ",", "0.1"}], "]"}]}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", "LABELS", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<z\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<w\>\""}], "]"}], ",", "\"\< = 1\>\""}], "}"}]}], ",",
                    "colW"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<z\>\"", ",", "Italic"}], "]"}], ",", 
                    "comp"}], "]"}], ",", "\"\< = 0\>\""}], "}"}]}], ",", 
                   "colC"}], "]"}]}], "\[IndentingNewLine]", "}"}], "]"}], 
              ",", "17"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"range", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "2.25"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<z\>\"", ",", "Italic"}], "]"}], ",", 
                    "comp"}], "]"}], ",", "\"\< = 1\>\""}], "}"}]}], ",", 
                   "colC"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<z\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<w\>\""}], "]"}], ",", "\"\< = 0\>\""}], "}"}]}], ",",
                    "colW"}], "]"}]}], "\[IndentingNewLine]", "}"}], "]"}], 
              ",", "17"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", 
              RowBox[{"range", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "2.25"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"PRESSURE", " ", "LINE"}], ",", " ", 
            RowBox[{"CS", "=", "1"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "1"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"solution", "\[Equal]", "False"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<pressure = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", 
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ">", 
                    RowBox[{
                    RowBox[{"range", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", "0.5"}]}], ",", 
                    "1.5", ",", 
                    RowBox[{"-", "1.5"}]}], "]"}]}], "}"}]}], "]"}]}], "]"}], 
              ",", "\[IndentingNewLine]", 
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
                    "\"\<temperature = \>\"", ",", "T", ",", 
                    "\"\< \[Degree]C\>\""}], "}"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<saturation pressures: \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "comp", ",", "\"\<sat\>\""}], "]"}], 
                    ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "1", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar, \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "\"\<w\>\"", ",", "\"\<sat\>\""}], 
                    "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}]}], "\[IndentingNewLine]", "}"}],
                     ",", "Center"}], "]"}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", 
                  RowBox[{"range", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1.5"}]}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Dashed", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}], "]"}]}],
                "}"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"pressure", ",", "Black"}], "]"}], ",", 
              RowBox[{"(*", 
               RowBox[{
                RowBox[{"pt1", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", 
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "Black"}], 
                 "]"}], ",", 
                RowBox[{"pt1", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"1", ",", 
                    RowBox[{"pressure", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", "Black"}], 
                 "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{"colS", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                  RowBox[{"(*", 
                   RowBox[{
                    RowBox[{"pt2", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "P"}], "}"}], ",", "Black"}], "]"}], 
                    ",", 
                    RowBox[{"pt2", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", "P"}], "}"}], ",", "Black"}], "]"}], 
                    ","}], "*)"}], 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<total pressure = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"P", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "}"}]}], 
               "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", ">", "1"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "P"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "P"}], "}"}]}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"TWO", " ", "LIQUIDS"}], ",", " ", 
            RowBox[{"CS", "=", "2"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "2"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"pt1", "[", 
               RowBox[{"twoliquids", ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{"twoliquids", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ">", "P"}], "\[And]", 
                   "solution"}], ",", "colS", ",", "Black"}], "]"}]}], "]"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    "\"\<two liquids are in equilibrium in the region above \
\>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"P", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", "colS", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "P"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", 
                    RowBox[{"-", "2.5"}]}], "}"}]}], "]"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"PURE", " ", "COMPONENTS", " ", "IN", " ", "VLE"}], ",", 
            " ", 
            RowBox[{"CS", "=", "3"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "3"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<saturation pressures: \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "comp", ",", "\"\<sat\>\""}], "]"}], 
                    ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "1", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar, \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "\"\<w\>\"", ",", "\"\<sat\>\""}], 
                    "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", 
                  RowBox[{"range", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1.5"}]}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"pureC", ",", "colC"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"pureW", ",", "colW"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"pt2", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{
                    RowBox[{"Py", "[", "2", "]"}], "[", "0", "]"}]}], "}"}], 
                    ",", "colW"}], "]"}], ",", 
                  RowBox[{"pt2", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{
                    RowBox[{"Py", "[", "1", "]"}], "[", "1", "]"}]}], "}"}], 
                    ",", "colC"}], "]"}]}], "}"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", ">", "3"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{
                    RowBox[{"Py", "[", "2", "]"}], "[", "0", "]"}]}], "}"}], 
                 ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{"range", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}], "]"}], 
              ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"1", ",", 
                   RowBox[{
                    RowBox[{"Py", "[", "1", "]"}], "[", "1", "]"}]}], "}"}], 
                 ",", 
                 RowBox[{"{", 
                  RowBox[{"1", ",", 
                   RowBox[{"range", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}], "]"}]}],
              "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"3", "<", "CS", "<", "7"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"pt2", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{
                   RowBox[{"Py", "[", "2", "]"}], "[", "0", "]"}]}], "}"}], 
                ",", "Black"}], "]"}], ",", 
              RowBox[{"pt2", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"1", ",", 
                  RowBox[{
                   RowBox[{"Py", "[", "1", "]"}], "[", "1", "]"}]}], "}"}], 
                ",", "Black"}], "]"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"VAPOR", " ", "MOLE", " ", "FRACTION"}], ",", " ", 
            RowBox[{"CS", "=", "4"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "4"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<saturation pressures: \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "comp", ",", "\"\<sat\>\""}], "]"}], 
                    ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "1", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar, \>\"", ",", 
                    RowBox[{"Subsuperscript", "[", 
                    RowBox[{"p", ",", "\"\<w\>\"", ",", "\"\<sat\>\""}], 
                    "]"}], ",", "\"\< = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"Psat", "[", "2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", 
                  RowBox[{"range", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1.5"}]}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"solution", "\[Equal]", "False"}], ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Column", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<mole fraction = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"vapor", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"vapor", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}]}], "}"}], ",", "Center"}], 
                    "]"}], ",", "17", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  "vapor", ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "2"}], "}"}]}], "]"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"vapor", ",", "Black"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"pt2", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"ypoint", ",", "P"}], "}"}], ",", "colS"}], 
                 "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"4", "<", "CS", "<", "7"}], ",", 
            RowBox[{"pt2", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"ypoint", ",", "P"}], "}"}], ",", "Black"}], "]"}]}], 
           "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"DRAW", " ", "WATER"}], "-", 
             RowBox[{"VAPOR", " ", "PHASE", " ", "BOUNDARY"}]}], ",", " ", 
            RowBox[{"CS", "=", "5"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "5"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{
                    RowBox[{"Py", "[", "2", "]"}], "[", "0", "]"}]}], "}"}], 
                   ",", "phase1", ",", "phase2", ",", "phase3", ",", 
                   RowBox[{"{", 
                    RowBox[{"ypoint", ",", "P"}], "}"}]}], "}"}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase1", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Switch", "[", 
                   RowBox[{
                   "part", ",", "1", ",", "0", ",", "2", ",", "0.5", ",", "3",
                     ",", "0"}], "]"}], ",", "2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase2", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase2", ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase3", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase3", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Switch", "[", 
                   RowBox[{"part", ",", "1", ",", "0", ",", "2", ",", 
                    RowBox[{"-", "0.5"}], ",", "3", ",", "0"}], "]"}], ",", 
                  "2"}], "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase1", ",", "Black"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase2", ",", "Black"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase3", ",", "Black"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{"colS", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{"Pdp", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "ypoint", ",", "0.01"}], "]"}]}], 
                   "]"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}], 
           "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", ">", "5"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"{", 
                RowBox[{"#", ",", 
                 RowBox[{"Pdp", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
              RowBox[{"Range", "[", 
               RowBox[{"0", ",", "ypoint", ",", "0.01"}], "]"}]}], "]"}]}], 
           "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"DRAW", " ", "O"}], "-", 
             RowBox[{"VAPOR", " ", "PHASE", " ", "BOUNDARY"}]}], ",", " ", 
            RowBox[{"CS", "=", "6"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "6"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"ypoint", ",", "P"}], "}"}], ",", "phase4", ",", 
                   "phase5", ",", "phase6", ",", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{
                    RowBox[{"Py", "[", "1", "]"}], "[", "1", "]"}]}], "}"}]}],
                   "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase4", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase4", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Switch", "[", 
                   RowBox[{
                   "part", ",", "1", ",", "0.5", ",", "2", ",", "0", ",", "3",
                     ",", "0.5"}], "]"}], ",", "2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase5", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase5", ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"phase6", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "2"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                "phase6", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Switch", "[", 
                   RowBox[{
                   "part", ",", "1", ",", "0", ",", "2", ",", "0", ",", "3", 
                    ",", 
                    RowBox[{"-", "0.5"}]}], "]"}], ",", "2"}], "}"}]}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase4", ",", "Black"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase5", ",", "Black"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"phase6", ",", "Black"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{"colS", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{"Pdp", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"ypoint", ",", "1", ",", "0.01"}], "]"}]}], 
                   "]"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}], 
           "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", ">", "6"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"{", 
                RowBox[{"#", ",", 
                 RowBox[{"Pdp", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
              RowBox[{"Range", "[", 
               RowBox[{"ypoint", ",", "1", ",", "0.01"}], "]"}]}], "]"}]}], 
           "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"SOLVED", " ", "DIAGRAM"}], ",", " ", 
            RowBox[{"CS", "=", "7"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"CS", "\[Equal]", "7"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<liquid \>\"", ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<water\>\"", ",", "colW"}], "]"}], ",", 
                    "\"\< + liquid \>\"", ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{"component", ",", "colC"}], "]"}]}], "}"}]}], ",",
                   "18"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", "P"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "2.5"}]}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<liquid \>\"", ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<water\>\"", ",", "colW"}], "]"}], ",", 
                    "\"\< + \>\"", ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<vapor\>\"", ",", "colV"}], "]"}]}], "}"}]}], 
                  ",", "18", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "P"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1.2"}], ",", "1.2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<vapor\>\"", ",", "colV"}], "]"}], ",", 
                    "\"\< + liquid \>\"", ",", 
                    RowBox[{"Style", "[", 
                    RowBox[{"component", ",", "colC"}], "]"}]}], "}"}]}], ",",
                   "18", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "P"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "1.2"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<vapor\>\"", ",", "18", ",", "colV"}], "]"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", 
                  RowBox[{"range", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "5"}]}], "}"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}]}], "\[IndentingNewLine]", 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", "range"}], "}"}]}], ",", 
        RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{"component", ",", "\"\< mole fraction\>\""}], "}"}]}], 
           ",", "\"\<pressure (bar)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
        RowBox[{"FrameTicks", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"All", ",", "All"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"FrameTicksStyle", "\[Rule]", "Black"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "420"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"40", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"70", ",", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"CS", "\[Equal]", "1"}], "\[Or]", 
                  RowBox[{"CS", "\[Equal]", "7"}]}], ")"}], "\[Or]", "hint"}],
                ",", "30", ",", "10"}], "]"}]}], "}"}]}], "}"}]}], ",", 
        RowBox[{"GridLines", "\[Rule]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"CS", "<", "7"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "1", ",", "0.05"}], "]"}], ",", 
             RowBox[{"Range", "[", 
              RowBox[{
               RowBox[{"range", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", 
               RowBox[{"range", "[", 
                RowBox[{"[", "2", "]"}], "]"}], ",", "0.5"}], "]"}]}], "}"}], 
           ",", "None"}], "]"}]}], ",", 
        RowBox[{"GridLinesStyle", "\[Rule]", 
         RowBox[{"GrayLevel", "@", "0.85"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{"plotlabel", ",", "17"}], "]"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Button", "[", 
        RowBox[{"\"\< new problem \>\"", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"reset", "<", "1000"}], ",", 
             RowBox[{"reset", "=", 
              RowBox[{"reset", "+", "1"}]}], ",", 
             RowBox[{"reset", "=", 
              RowBox[{"reset", "-", "1"}]}]}], "]"}], ";", 
           RowBox[{"CS", "=", "1"}], ";", 
           RowBox[{"hint", "=", "False"}], ";", 
           RowBox[{"solution", "=", "False"}], ";"}], "}"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"reset", ",", "1"}], "}"}], ",", "1", ",", "1000", ",", 
          "1", ",", "None"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Button", "[", 
        RowBox[{
         RowBox[{"Dynamic", "@", 
          RowBox[{"Switch", "[", 
           RowBox[{
           "CS", ",", "1", ",", "\"\<(1) three phases coexist\>\"", ",", "2", 
            ",", "\"\<(2) two liquids present\>\"", ",", "3", ",", 
            "\"\<(3) vapor-liquid equilibrium\>\"", ",", "4", ",", 
            "\"\<(4) vapor mole fraction\>\"", ",", "5", ",", 
            "\"\<(5) draw water phase boundary\>\"", ",", "6", ",", 
            "\"\<(6) draw organic phase boundary\>\"", ",", "7", ",", 
            "\"\<(7) solved diagram\>\""}], "]"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "195"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"##", "&"}], "@@", 
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", "2", ",", "3", ",", "4", ",", "5", ",", "6"}],
               "}"}], "\[Rule]", 
             RowBox[{"Button", "[", 
              RowBox[{"\"\< next \>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"1", "\[LessEqual]", "CS", "<", "7"}], ",", 
                   RowBox[{"CS", "=", 
                    RowBox[{"CS", "+", "1"}]}], ",", 
                   RowBox[{"CS", "=", "7"}]}], "]"}], ",", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"CS", "\[Equal]", "CS"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"solution", "=", "False"}], ";", 
                    RowBox[{"hint", "=", "False"}], ";"}], "}"}]}], "]"}]}], 
                "}"}]}], "]"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"Dynamic", "@", "CS"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"CS", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
          RowBox[{"Range", "@", "7"}], ",", "None"}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"##", "&"}], "@@", 
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", "2", ",", "3", ",", "4", ",", "5", ",", "6"}],
               "}"}], "\[Rule]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"solution", ",", "False", ",", "\"\<solution\>\""}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"True", ",", "False"}], "}"}], ",", 
                RowBox[{"Enabled", "\[Rule]", 
                 RowBox[{"If", "[", 
                  RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], 
               "}"}], "]"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"Dynamic", "@", "CS"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"##", "&"}], "@@", 
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", "2", ",", "3", ",", "4", ",", "5", ",", "6"}],
               "}"}], "\[Rule]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"hint", ",", "False", ",", "\"\<hint\>\""}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], 
            "]"}]}], "}"}], ",", 
         RowBox[{"Dynamic", "@", "CS"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"1", "\[Rule]", 
            RowBox[{"Control", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pressure", ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", "4"}], "}"}]}], "}"}], ",", "Locator", 
               ",", 
               RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
               RowBox[{"Enabled", "\[Rule]", 
                RowBox[{"If", "[", 
                 RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], 
              "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"2", "\[Rule]", 
            RowBox[{"Control", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"twoliquids", ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", "4"}], "}"}]}], "}"}], ",", "Locator", 
               ",", 
               RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
               RowBox[{"Enabled", "\[Rule]", 
                RowBox[{"If", "[", 
                 RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], 
              "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"3", "\[Rule]", 
            RowBox[{"Row", "@", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"pureC", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.7", ",", "4"}], "}"}]}], "}"}], ",", "Locator",
                   ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"pureW", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.3", ",", "4"}], "}"}]}], "}"}], ",", "Locator",
                   ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"4", "\[Rule]", 
            RowBox[{"Control", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"vapor", ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", "4"}], "}"}]}], "}"}], ",", "Locator", 
               ",", 
               RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
               RowBox[{"Enabled", "\[Rule]", 
                RowBox[{"If", "[", 
                 RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], 
              "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"5", "\[Rule]", 
            RowBox[{"PaneSelector", "[", 
             RowBox[{
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"1", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase1B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase2B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.3", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase3B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"2", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase1T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase2T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.2", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase3T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.3", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"3", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase1H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase2H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.35", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase3H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.6", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}]}], 
               "\[IndentingNewLine]", "}"}], ",", 
              RowBox[{"Dynamic", "@", "part"}]}], "]"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"6", "\[Rule]", 
            RowBox[{"PaneSelector", "[", 
             RowBox[{
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"1", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase4B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.65", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase5B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase6B", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.9", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"2", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase4T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase5T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.7", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase6T", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.9", ",", "0.6"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"3", "\[Rule]", 
                 RowBox[{"Row", "@", 
                  RowBox[{"{", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase4H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase5H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.85", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"phase6H", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.95", ",", "0.65"}], "}"}]}], "}"}], ",", 
                    "Locator", ",", 
                    RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                    RowBox[{"Enabled", "\[Rule]", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}]}], 
               "\[IndentingNewLine]", "}"}], ",", 
              RowBox[{"Dynamic", "@", "part"}]}], "]"}]}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"Dynamic", "@", "CS"}]}], "]"}]}], "\[IndentingNewLine]", 
      "}"}], "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",Expressio\
nUUID->"976fb571-c511-409a-8c90-b24b233a5b81"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`CS$$ = 1, $CellContext`hint$$ = 
    False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {0.1,
     0.65}, $CellContext`phase1T$$ = {0.1, 0.6}, $CellContext`phase2B$$ = {
    0.3, 0.6}, $CellContext`phase2H$$ = {0.35, 
    0.65}, $CellContext`phase2T$$ = {0.2, 0.6}, $CellContext`phase3B$$ = {0.5,
     0.6}, $CellContext`phase3H$$ = {0.6, 0.65}, $CellContext`phase3T$$ = {
    0.3, 0.6}, $CellContext`phase4B$$ = {0.65, 
    0.6}, $CellContext`phase4H$$ = {0.75, 0.65}, $CellContext`phase4T$$ = {
    0.5, 0.6}, $CellContext`phase5B$$ = {0.75, 
    0.6}, $CellContext`phase5H$$ = {0.85, 0.65}, $CellContext`phase5T$$ = {
    0.7, 0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
    0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
    0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
    0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
    1, $CellContext`solution$$ = False, $CellContext`twoliquids$$ = {
    0.5, 4}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`CS$$], 1, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`pressure$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`twoliquids$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`pureC$$], {0.7, 4}}, Automatic}, {{
       Hold[$CellContext`pureW$$], {0.3, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`phase1B$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2B$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3B$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1T$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2T$$], {0.2, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3T$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1H$$], {0.1, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase2H$$], {0.35, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase3H$$], {0.6, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase4B$$], {0.65, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5B$$], {0.75, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6B$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4T$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5T$$], {0.7, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6T$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4H$$], {0.75, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase5H$$], {0.85, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase6H$$], {0.95, 0.65}}, Automatic}, {
      Hold[
       Grid[{{
          Button[
          " new problem ", {
           If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
             False; $CellContext`solution$$ = False; Null}], 
          Manipulate`Place[1], 
          Button[
           Dynamic[
            
            Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
             "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4, 
             "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 6,
              "(6) draw organic phase boundary", 7, "(7) solved diagram"]], 
           ImageSize -> 195], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
           Dynamic[$CellContext`CS$$]], 
          Manipulate`Place[2], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
            Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
               Manipulate`Place[7], 
               Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
            PaneSelector[{1 -> Row[{
                  Manipulate`Place[10], 
                  Manipulate`Place[11], 
                  Manipulate`Place[12]}], 2 -> Row[{
                  Manipulate`Place[13], 
                  Manipulate`Place[14], 
                  Manipulate`Place[15]}], 3 -> Row[{
                  Manipulate`Place[16], 
                  Manipulate`Place[17], 
                  Manipulate`Place[18]}]}, 
              Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                  Manipulate`Place[19], 
                  Manipulate`Place[20], 
                  Manipulate`Place[21]}], 2 -> Row[{
                  Manipulate`Place[22], 
                  Manipulate`Place[23], 
                  Manipulate`Place[24]}], 3 -> Row[{
                  Manipulate`Place[25], 
                  Manipulate`Place[26], 
                  Manipulate`Place[27]}]}, 
              Dynamic[$CellContext`part]]}, 
           Dynamic[$CellContext`CS$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {207., 213.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`reset$52748$$ = 
    0, $CellContext`CS$52749$$ = 0, $CellContext`solution$52750$$ = 
    False, $CellContext`hint$52751$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`CS$$ = 1, $CellContext`hint$$ = 
        False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {
         0.1, 0.65}, $CellContext`phase1T$$ = {0.1, 
         0.6}, $CellContext`phase2B$$ = {0.3, 0.6}, $CellContext`phase2H$$ = {
         0.35, 0.65}, $CellContext`phase2T$$ = {0.2, 
         0.6}, $CellContext`phase3B$$ = {0.5, 0.6}, $CellContext`phase3H$$ = {
         0.6, 0.65}, $CellContext`phase3T$$ = {0.3, 
         0.6}, $CellContext`phase4B$$ = {0.65, 
         0.6}, $CellContext`phase4H$$ = {0.75, 
         0.65}, $CellContext`phase4T$$ = {0.5, 
         0.6}, $CellContext`phase5B$$ = {0.75, 
         0.6}, $CellContext`phase5H$$ = {0.85, 
         0.65}, $CellContext`phase5T$$ = {0.7, 
         0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
         0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
         0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
         0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
        1, $CellContext`solution$$ = 
        False, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
         0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$52748$$, 0], 
        Hold[$CellContext`CS$$, $CellContext`CS$52749$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$52750$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$52751$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`part$, $CellContext`Psat$, \
$CellContext`P$, $CellContext`Py$, $CellContext`ypoint$, $CellContext`Pdp$, \
$CellContext`component$, $CellContext`comp$, $CellContext`range$, \
$CellContext`phase1$, $CellContext`phase2$, $CellContext`phase3$, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, \
$CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{105, 125}]; $CellContext`part$ = 
         RandomInteger[{1, 3}]; $CellContext`Psat$[1] = 
         Switch[$CellContext`part$, 1, 
           10^(4.72583 - 1660.652/($CellContext`T$ + 271.5)), 2, 
           10^(4.07827 - 1343.943/($CellContext`T$ + 219.227)), 3, 
           10^(4.00266 - 1171.53/($CellContext`T$ + 
            224.216))]; $CellContext`Psat$[2] = 
         10^(5.0768 - 1659.793/($CellContext`T$ + 
           227.1)); $CellContext`P$ = $CellContext`Psat$[
           1] + $CellContext`Psat$[2]; $CellContext`Py$[1][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[
           1]/$CellContext`y$; $CellContext`Py$[2][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[2]/(
          1 - $CellContext`y$); $CellContext`ypoint$ = $CellContext`Psat$[
           1]/($CellContext`Psat$[1] + $CellContext`Psat$[
           2]); $CellContext`Pdp$[
           Pattern[$CellContext`y$, 
            Blank[]]] := Piecewise[{{
             $CellContext`Py$[2][$CellContext`y$], 
             0 <= $CellContext`y$ <= $CellContext`ypoint$}, {
             $CellContext`Py$[1][$CellContext`y$], 
             
             Inequality[$CellContext`ypoint$, Less, $CellContext`y$, 
              LessEqual, 1]}}]; $CellContext`component$ = 
         Switch[$CellContext`part$, 1, "benzene", 2, "toluene", 3, 
           Row[{
             Style["n", Italic], "-hexane"}]]; $CellContext`comp$ = 
         Switch[$CellContext`part$, 1, "b", 2, "t", 3, 
           "h"]; $CellContext`range$ = 
         Switch[$CellContext`part$, 1, {0, 6.5}, 2, {0, 4.3}, 3, {
           0, 7.5}]; $CellContext`phase1$ = 
         Switch[$CellContext`part$, 1, {0.1, 
            Part[$CellContext`phase1B$$, 2]}, 2, {0.1, 
            Part[$CellContext`phase1T$$, 2]}, 3, {0.1, 
            Part[$CellContext`phase1H$$, 2]}]; $CellContext`phase2$ = 
         Switch[$CellContext`part$, 1, {0.3, 
            Part[$CellContext`phase2B$$, 2]}, 2, {0.2, 
            Part[$CellContext`phase2T$$, 2]}, 3, {0.35, 
            Part[$CellContext`phase2H$$, 2]}]; $CellContext`phase3$ = 
         Switch[$CellContext`part$, 1, {0.5, 
            Part[$CellContext`phase3B$$, 2]}, 2, {0.3, 
            Part[$CellContext`phase3T$$, 2]}, 3, {0.6, 
            Part[$CellContext`phase3H$$, 2]}]; $CellContext`phase4$ = 
         Switch[$CellContext`part$, 1, {0.65, 
            Part[$CellContext`phase4B$$, 2]}, 2, {0.5, 
            Part[$CellContext`phase4T$$, 2]}, 3, {0.75, 
            Part[$CellContext`phase4H$$, 2]}]; $CellContext`phase5$ = 
         Switch[$CellContext`part$, 1, {0.75, 
            Part[$CellContext`phase5B$$, 2]}, 2, {0.7, 
            Part[$CellContext`phase5T$$, 2]}, 3, {0.85, 
            Part[$CellContext`phase5H$$, 2]}]; $CellContext`phase6$ = 
         Switch[$CellContext`part$, 1, {0.9, 
            Part[$CellContext`phase6B$$, 2]}, 2, {0.9, 
            Part[$CellContext`phase6T$$, 2]}, 3, {0.95, 
            Part[$CellContext`phase6H$$, 2]}]; $CellContext`plotlabel$ = 
         Switch[$CellContext`CS$$, 1, 
           
           If[$CellContext`hint$$, "hint: sum the saturation pressures", 
            "step 1: drag the line to the pressure where three phases \
coexist, then check solution"], 2, 
           
           If[$CellContext`hint$$, 
            "hint: liquids are more stable at higher pressures", 
            
            Column[{"step 2: move the point to the region where the two \
liquids are in equilibrium", 
              "(and no vapor is present), then check solution"}]], 3, 
           
           If[$CellContext`hint$$, 
            "hint: pure-component saturation pressures", 
            
            Column[{"step 3: drag the blue point to the location where pure \
water is in VLE and drag", 
              "the orange point to the location where the pure organic is in \
VLE, then check solution"}]], 4, 
           If[$CellContext`hint$$, 
            "hint: each liquid exerts its saturation pressure", 
            
            Column[{"step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium", "with two liquid phases, then check solution"}]], 5, 
           If[$CellContext`hint$$, 
            Row[{"hint: the vapor mole fraction for water is ", 
              Subsuperscript[
               Style["P", Italic], "w", "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 5: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with liquid water, then check solution"}]], 
           6, 
           If[$CellContext`hint$$, 
            
            Row[{"hint: the vapor mole fraction for ", \
$CellContext`component$, " is ", 
              Subsuperscript[
               Style["P", Italic], $CellContext`comp$, "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 6: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with pure organic liquid, then check \
solution"}]], 7, ""]; Graphics[{Thick, 
           Map[Line[{{#, 
               Part[$CellContext`range$, 1]}, {#, 0.02 
               Part[$CellContext`range$, 2]}}]& , 
            Range[0.1, 0.9, 0.1]], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 1"}], $CellContext`colW], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 0"}], $CellContext`colC]}], 17], {0, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 1"}], $CellContext`colC], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 0"}], $CellContext`colW]}], 
             17], {1, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           If[$CellContext`CS$$ == 1, {
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Row[{"pressure = ", 
                  NumberForm[
                   Part[$CellContext`pressure$$, 2], {4, 1}], " bar"}], 17, 
                Background -> White], {0.5, 
                Part[$CellContext`pressure$$, 2]}, {0, 
                If[
                Part[$CellContext`pressure$$, 2] > 
                 Part[$CellContext`range$, 2] - 0.5, 1.5, -1.5]}]], 
             Text[
              Style[
               Column[{
                 Row[{"temperature = ", $CellContext`T$, " \[Degree]C"}], 
                 Row[{"saturation pressures: ", 
                   Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                   " = ", 
                   NumberForm[
                    $CellContext`Psat$[1], {4, 1}], " bar, ", 
                   Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                   NumberForm[
                    $CellContext`Psat$[2], {4, 1}], " bar"}]}, Center], 17, 
               Background -> White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], {Dashed, 
              Line[{{0, 
                 Part[$CellContext`pressure$$, 2]}, {1, 
                 Part[$CellContext`pressure$$, 2]}}]}, 
             $CellContext`pt1[$CellContext`pressure$$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}], 
               Text[
                Style[
                 Row[{"total pressure = ", 
                   NumberForm[$CellContext`P$, {4, 1}], " bar"}], 17, 
                 Background -> White], {0.5, $CellContext`P$}, {0, -1.5}]}]}], 
           If[$CellContext`CS$$ > 1, 
            Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}]], 
           If[$CellContext`CS$$ == 2, {
             $CellContext`pt1[$CellContext`twoliquids$$, 
              If[
               And[
               Part[$CellContext`twoliquids$$, 
                  2] > $CellContext`P$, $CellContext`solution$$], \
$CellContext`colS, Black]], 
             If[$CellContext`solution$$, 
              Text[
               Style[
                Row[{"two liquids are in equilibrium in the region above ", 
                  NumberForm[$CellContext`P$, {4, 1}], " bar"}], 
                17, $CellContext`colS, Background -> White], {
               0.5, $CellContext`P$}, {0, -2.5}]]}], 
           If[$CellContext`CS$$ == 3, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             $CellContext`pt1[$CellContext`pureC$$, $CellContext`colC], 
             $CellContext`pt1[$CellContext`pureW$$, $CellContext`colW], 
             If[$CellContext`solution$$, {
               $CellContext`pt2[{0, 
                 $CellContext`Py$[2][0]}, $CellContext`colW], 
               $CellContext`pt2[{1, 
                 $CellContext`Py$[1][1]}, $CellContext`colC]}]}], 
           If[$CellContext`CS$$ > 3, {
             Line[{{0, 
                $CellContext`Py$[2][0]}, {0, 
                Part[$CellContext`range$, 2]}}], 
             Line[{{1, 
                $CellContext`Py$[1][1]}, {1, 
                Part[$CellContext`range$, 2]}}]}], 
           If[3 < $CellContext`CS$$ < 7, {
             $CellContext`pt2[{0, 
               $CellContext`Py$[2][0]}, Black], 
             $CellContext`pt2[{1, 
               $CellContext`Py$[1][1]}, Black]}], 
           If[$CellContext`CS$$ == 4, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Column[{
                  Row[{"mole fraction = ", 
                    NumberForm[
                    Part[$CellContext`vapor$$, 1], {2, 2}]}], 
                  Row[{
                    NumberForm[
                    Part[$CellContext`vapor$$, 2], {3, 2}], " bar"}]}, 
                 Center], 17, Background -> White], $CellContext`vapor$$, {0, 
               2}]], 
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`colS]]}], 
           If[4 < $CellContext`CS$$ < 7, 
            $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, Black]], 
           If[$CellContext`CS$$ == 5, {{Dashed, 
              Line[{{0, 
                 $CellContext`Py$[2][
                 0]}, $CellContext`phase1$, $CellContext`phase2$, \
$CellContext`phase3$, {$CellContext`ypoint$, $CellContext`P$}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase1$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase1$, {
               Switch[$CellContext`part$, 1, 0, 2, 0.5, 3, 0], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase2$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase2$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase3$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase3$, {
               Switch[$CellContext`part$, 1, 0, 2, -0.5, 3, 0], 2}], 
             $CellContext`pt1[$CellContext`phase1$, Black], 
             $CellContext`pt1[$CellContext`phase2$, Black], 
             $CellContext`pt1[$CellContext`phase3$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[0, $CellContext`ypoint$, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 5, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[0, $CellContext`ypoint$, 0.01]]]], 
           If[$CellContext`CS$$ == 6, {{Dashed, 
              
              Line[{{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, {1, 
                 $CellContext`Py$[1][1]}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase4$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase4$, {
               Switch[$CellContext`part$, 1, 0.5, 2, 0, 3, 0.5], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase5$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase5$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase6$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase6$, {
               Switch[$CellContext`part$, 1, 0, 2, 0, 3, -0.5], 2}], 
             $CellContext`pt1[$CellContext`phase4$, Black], 
             $CellContext`pt1[$CellContext`phase5$, Black], 
             $CellContext`pt1[$CellContext`phase6$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[$CellContext`ypoint$, 1, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 6, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[$CellContext`ypoint$, 1, 0.01]]]], 
           If[$CellContext`CS$$ == 7, {
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18], {
              0.5, $CellContext`P$}, {0, -2.5}], 
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + ", 
                 Style["vapor", $CellContext`colV]}], 18, Background -> 
               White], {0, $CellContext`P$}, {-1.2, 1.2}], 
             Text[
              Style[
               Row[{
                 Style["vapor", $CellContext`colV], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18, 
               Background -> White], {1, $CellContext`P$}, {1, 1.2}], 
             Text[
              Style["vapor", 18, $CellContext`colV], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -5}]}]}, 
          PlotRange -> {{0, 1}, $CellContext`range$}, PlotRangeClipping -> 
          False, Frame -> True, FrameLabel -> {
            Row[{$CellContext`component$, " mole fraction"}], 
            "pressure (bar)"}, LabelStyle -> {17, Black}, 
          FrameTicks -> {{All, All}, {All, None}}, FrameTicksStyle -> Black, 
          ImageSize -> {600, 420}, AspectRatio -> Full, 
          ImagePadding -> {{40, 25}, {70, 
             If[
              Or[
               
               Or[$CellContext`CS$$ == 1, $CellContext`CS$$ == 
                7], $CellContext`hint$$], 30, 10]}}, GridLines -> 
          If[$CellContext`CS$$ < 7, {
             Range[0, 1, 0.05], 
             Range[
              Part[$CellContext`range$, 1], 
              Part[$CellContext`range$, 2], 0.5]}, None], GridLinesStyle -> 
          GrayLevel[0.85], PlotLabel -> Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`CS$$, 1, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`pressure$$, {0.5, 4}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`twoliquids$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`pureC$$, {0.7, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`pureW$$, {0.3, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`phase1B$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`phase2B$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`phase3B$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`phase1T$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`phase2T$$, {0.2, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         14}, {{$CellContext`phase3T$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         15}, {{$CellContext`phase1H$$, {0.1, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         16}, {{$CellContext`phase2H$$, {0.35, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         17}, {{$CellContext`phase3H$$, {0.6, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         18}, {{$CellContext`phase4B$$, {0.65, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         19}, {{$CellContext`phase5B$$, {0.75, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         20}, {{$CellContext`phase6B$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         21}, {{$CellContext`phase4T$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         22}, {{$CellContext`phase5T$$, {0.7, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         23}, {{$CellContext`phase6T$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         24}, {{$CellContext`phase4H$$, {0.75, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         25}, {{$CellContext`phase5H$$, {0.85, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         26}, {{$CellContext`phase6H$$, {0.95, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 27}, 
        Grid[{{
           Button[
           " new problem ", {
            If[$CellContext`reset$$ < 
               1000, $CellContext`reset$$ = $CellContext`reset$$ + 
                1, $CellContext`reset$$ = $CellContext`reset$$ - 
                1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
              False; $CellContext`solution$$ = False; Null}], 
           Manipulate`Place[1], 
           Button[
            Dynamic[
             
             Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
              "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4,
               "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 
              6, "(6) draw organic phase boundary", 7, "(7) solved diagram"]],
             ImageSize -> 195], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
            Dynamic[$CellContext`CS$$]], 
           Manipulate`Place[2], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
             Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
                Manipulate`Place[7], 
                Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
             PaneSelector[{1 -> Row[{
                   Manipulate`Place[10], 
                   Manipulate`Place[11], 
                   Manipulate`Place[12]}], 2 -> Row[{
                   Manipulate`Place[13], 
                   Manipulate`Place[14], 
                   Manipulate`Place[15]}], 3 -> Row[{
                   Manipulate`Place[16], 
                   Manipulate`Place[17], 
                   Manipulate`Place[18]}]}, 
               Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                   Manipulate`Place[19], 
                   Manipulate`Place[20], 
                   Manipulate`Place[21]}], 2 -> Row[{
                   Manipulate`Place[22], 
                   Manipulate`Place[23], 
                   Manipulate`Place[24]}], 3 -> Row[{
                   Manipulate`Place[25], 
                   Manipulate`Place[26], 
                   Manipulate`Place[27]}]}, 
               Dynamic[$CellContext`part]]}, 
            Dynamic[$CellContext`CS$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {256., 263.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`part = 1, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`colW = 
       RGBColor[0, 0, 1], $CellContext`colC = 
       RGBColor[1, 0.4, 0], $CellContext`p = 
       Style["P", Italic], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colS = 
       RGBColor[0, 0.6, 0], $CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0.5, 0, 0.5], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->95579805,ExpressionUUID->"b7fbf61d-1c38-457b-92a8-c47097d5b8a4"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"b479676e-d1a5-4994-b969-cee65c61aa02"],

Cell[TextData[{
 "In this Demonstration, the user is lead through a step-by-step procedure to \
create a pressure-composition diagram for two immiscible liquids (water and \
an organic) at a fixed temperature. The organic can be benzene, toluene, or ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "bcaab8bf-1610-4de9-a21a-f5a0d9b77a0c"],
 "-hexane. In each step, the user drags a line or point to its correct \
location and then checks the \"solution\" box to show the correct answer. The \
user can only move forward or select \"new problem\" to start over at a \
different temperature and a different organic. For any step, check \"hint\" \
for help."
}], "ManipulateCaption",
 CellID->768350101,ExpressionUUID->"b2129e35-390e-4c1e-a4d3-6773dffb944e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"30d0b4b0-ce4c-4ddf-93f1-84ca772360da"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`CS$$ = 1, $CellContext`hint$$ = 
    False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {0.1,
     0.65}, $CellContext`phase1T$$ = {0.1, 0.6}, $CellContext`phase2B$$ = {
    0.3, 0.6}, $CellContext`phase2H$$ = {0.35, 
    0.65}, $CellContext`phase2T$$ = {0.2, 0.6}, $CellContext`phase3B$$ = {0.5,
     0.6}, $CellContext`phase3H$$ = {0.6, 0.65}, $CellContext`phase3T$$ = {
    0.3, 0.6}, $CellContext`phase4B$$ = {0.65, 
    0.6}, $CellContext`phase4H$$ = {0.75, 0.65}, $CellContext`phase4T$$ = {
    0.5, 0.6}, $CellContext`phase5B$$ = {0.75, 
    0.6}, $CellContext`phase5H$$ = {0.85, 0.65}, $CellContext`phase5T$$ = {
    0.7, 0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
    0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
    0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
    0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
    1, $CellContext`solution$$ = False, $CellContext`twoliquids$$ = {
    0.5, 4}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`CS$$], 1, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`pressure$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`twoliquids$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`pureC$$], {0.7, 4}}, Automatic}, {{
       Hold[$CellContext`pureW$$], {0.3, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`phase1B$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2B$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3B$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1T$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2T$$], {0.2, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3T$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1H$$], {0.1, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase2H$$], {0.35, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase3H$$], {0.6, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase4B$$], {0.65, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5B$$], {0.75, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6B$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4T$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5T$$], {0.7, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6T$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4H$$], {0.75, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase5H$$], {0.85, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase6H$$], {0.95, 0.65}}, Automatic}, {
      Hold[
       Grid[{{
          Button[
          " new problem ", {
           If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
             False; $CellContext`solution$$ = False; Null}], 
          Manipulate`Place[1], 
          Button[
           Dynamic[
            
            Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
             "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4, 
             "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 6,
              "(6) draw organic phase boundary", 7, "(7) solved diagram"]], 
           ImageSize -> 195], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
           Dynamic[$CellContext`CS$$]], 
          Manipulate`Place[2], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
            Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
               Manipulate`Place[7], 
               Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
            PaneSelector[{1 -> Row[{
                  Manipulate`Place[10], 
                  Manipulate`Place[11], 
                  Manipulate`Place[12]}], 2 -> Row[{
                  Manipulate`Place[13], 
                  Manipulate`Place[14], 
                  Manipulate`Place[15]}], 3 -> Row[{
                  Manipulate`Place[16], 
                  Manipulate`Place[17], 
                  Manipulate`Place[18]}]}, 
              Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                  Manipulate`Place[19], 
                  Manipulate`Place[20], 
                  Manipulate`Place[21]}], 2 -> Row[{
                  Manipulate`Place[22], 
                  Manipulate`Place[23], 
                  Manipulate`Place[24]}], 3 -> Row[{
                  Manipulate`Place[25], 
                  Manipulate`Place[26], 
                  Manipulate`Place[27]}]}, 
              Dynamic[$CellContext`part]]}, 
           Dynamic[$CellContext`CS$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {207., 213.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`reset$52887$$ = 
    0, $CellContext`CS$52888$$ = 0, $CellContext`solution$52889$$ = 
    False, $CellContext`hint$52890$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`CS$$ = 1, $CellContext`hint$$ = 
        False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {
         0.1, 0.65}, $CellContext`phase1T$$ = {0.1, 
         0.6}, $CellContext`phase2B$$ = {0.3, 0.6}, $CellContext`phase2H$$ = {
         0.35, 0.65}, $CellContext`phase2T$$ = {0.2, 
         0.6}, $CellContext`phase3B$$ = {0.5, 0.6}, $CellContext`phase3H$$ = {
         0.6, 0.65}, $CellContext`phase3T$$ = {0.3, 
         0.6}, $CellContext`phase4B$$ = {0.65, 
         0.6}, $CellContext`phase4H$$ = {0.75, 
         0.65}, $CellContext`phase4T$$ = {0.5, 
         0.6}, $CellContext`phase5B$$ = {0.75, 
         0.6}, $CellContext`phase5H$$ = {0.85, 
         0.65}, $CellContext`phase5T$$ = {0.7, 
         0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
         0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
         0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
         0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
        1, $CellContext`solution$$ = 
        False, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
         0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$52887$$, 0], 
        Hold[$CellContext`CS$$, $CellContext`CS$52888$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$52889$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$52890$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`part$, $CellContext`Psat$, \
$CellContext`P$, $CellContext`Py$, $CellContext`ypoint$, $CellContext`Pdp$, \
$CellContext`component$, $CellContext`comp$, $CellContext`range$, \
$CellContext`phase1$, $CellContext`phase2$, $CellContext`phase3$, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, \
$CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{105, 125}]; $CellContext`part$ = 
         RandomInteger[{1, 3}]; $CellContext`Psat$[1] = 
         Switch[$CellContext`part$, 1, 
           10^(4.72583 - 1660.652/($CellContext`T$ + 271.5)), 2, 
           10^(4.07827 - 1343.943/($CellContext`T$ + 219.227)), 3, 
           10^(4.00266 - 1171.53/($CellContext`T$ + 
            224.216))]; $CellContext`Psat$[2] = 
         10^(5.0768 - 1659.793/($CellContext`T$ + 
           227.1)); $CellContext`P$ = $CellContext`Psat$[
           1] + $CellContext`Psat$[2]; $CellContext`Py$[1][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[
           1]/$CellContext`y$; $CellContext`Py$[2][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[2]/(
          1 - $CellContext`y$); $CellContext`ypoint$ = $CellContext`Psat$[
           1]/($CellContext`Psat$[1] + $CellContext`Psat$[
           2]); $CellContext`Pdp$[
           Pattern[$CellContext`y$, 
            Blank[]]] := Piecewise[{{
             $CellContext`Py$[2][$CellContext`y$], 
             0 <= $CellContext`y$ <= $CellContext`ypoint$}, {
             $CellContext`Py$[1][$CellContext`y$], 
             
             Inequality[$CellContext`ypoint$, Less, $CellContext`y$, 
              LessEqual, 1]}}]; $CellContext`component$ = 
         Switch[$CellContext`part$, 1, "benzene", 2, "toluene", 3, 
           Row[{
             Style["n", Italic], "-hexane"}]]; $CellContext`comp$ = 
         Switch[$CellContext`part$, 1, "b", 2, "t", 3, 
           "h"]; $CellContext`range$ = 
         Switch[$CellContext`part$, 1, {0, 6.5}, 2, {0, 4.3}, 3, {
           0, 7.5}]; $CellContext`phase1$ = 
         Switch[$CellContext`part$, 1, {0.1, 
            Part[$CellContext`phase1B$$, 2]}, 2, {0.1, 
            Part[$CellContext`phase1T$$, 2]}, 3, {0.1, 
            Part[$CellContext`phase1H$$, 2]}]; $CellContext`phase2$ = 
         Switch[$CellContext`part$, 1, {0.3, 
            Part[$CellContext`phase2B$$, 2]}, 2, {0.2, 
            Part[$CellContext`phase2T$$, 2]}, 3, {0.35, 
            Part[$CellContext`phase2H$$, 2]}]; $CellContext`phase3$ = 
         Switch[$CellContext`part$, 1, {0.5, 
            Part[$CellContext`phase3B$$, 2]}, 2, {0.3, 
            Part[$CellContext`phase3T$$, 2]}, 3, {0.6, 
            Part[$CellContext`phase3H$$, 2]}]; $CellContext`phase4$ = 
         Switch[$CellContext`part$, 1, {0.65, 
            Part[$CellContext`phase4B$$, 2]}, 2, {0.5, 
            Part[$CellContext`phase4T$$, 2]}, 3, {0.75, 
            Part[$CellContext`phase4H$$, 2]}]; $CellContext`phase5$ = 
         Switch[$CellContext`part$, 1, {0.75, 
            Part[$CellContext`phase5B$$, 2]}, 2, {0.7, 
            Part[$CellContext`phase5T$$, 2]}, 3, {0.85, 
            Part[$CellContext`phase5H$$, 2]}]; $CellContext`phase6$ = 
         Switch[$CellContext`part$, 1, {0.9, 
            Part[$CellContext`phase6B$$, 2]}, 2, {0.9, 
            Part[$CellContext`phase6T$$, 2]}, 3, {0.95, 
            Part[$CellContext`phase6H$$, 2]}]; $CellContext`plotlabel$ = 
         Switch[$CellContext`CS$$, 1, 
           
           If[$CellContext`hint$$, "hint: sum the saturation pressures", 
            "step 1: drag the line to the pressure where three phases \
coexist, then check solution"], 2, 
           
           If[$CellContext`hint$$, 
            "hint: liquids are more stable at higher pressures", 
            
            Column[{"step 2: move the point to the region where the two \
liquids are in equilibrium", 
              "(and no vapor is present), then check solution"}]], 3, 
           
           If[$CellContext`hint$$, 
            "hint: pure-component saturation pressures", 
            
            Column[{"step 3: drag the blue point to the location where pure \
water is in VLE and drag", 
              "the orange point to the location where the pure organic is in \
VLE, then check solution"}]], 4, 
           If[$CellContext`hint$$, 
            "hint: each liquid exerts its saturation pressure", 
            
            Column[{"step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium", "with two liquid phases, then check solution"}]], 5, 
           If[$CellContext`hint$$, 
            Row[{"hint: the vapor mole fraction for water is ", 
              Subsuperscript[
               Style["P", Italic], "w", "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 5: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with liquid water, then check solution"}]], 
           6, 
           If[$CellContext`hint$$, 
            
            Row[{"hint: the vapor mole fraction for ", \
$CellContext`component$, " is ", 
              Subsuperscript[
               Style["P", Italic], $CellContext`comp$, "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 6: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with pure organic liquid, then check \
solution"}]], 7, ""]; Graphics[{Thick, 
           Map[Line[{{#, 
               Part[$CellContext`range$, 1]}, {#, 0.02 
               Part[$CellContext`range$, 2]}}]& , 
            Range[0.1, 0.9, 0.1]], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 1"}], $CellContext`colW], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 0"}], $CellContext`colC]}], 17], {0, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 1"}], $CellContext`colC], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 0"}], $CellContext`colW]}], 
             17], {1, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           If[$CellContext`CS$$ == 1, {
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Row[{"pressure = ", 
                  NumberForm[
                   Part[$CellContext`pressure$$, 2], {4, 1}], " bar"}], 17, 
                Background -> White], {0.5, 
                Part[$CellContext`pressure$$, 2]}, {0, 
                If[
                Part[$CellContext`pressure$$, 2] > 
                 Part[$CellContext`range$, 2] - 0.5, 1.5, -1.5]}]], 
             Text[
              Style[
               Column[{
                 Row[{"temperature = ", $CellContext`T$, " \[Degree]C"}], 
                 Row[{"saturation pressures: ", 
                   Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                   " = ", 
                   NumberForm[
                    $CellContext`Psat$[1], {4, 1}], " bar, ", 
                   Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                   NumberForm[
                    $CellContext`Psat$[2], {4, 1}], " bar"}]}, Center], 17, 
               Background -> White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], {Dashed, 
              Line[{{0, 
                 Part[$CellContext`pressure$$, 2]}, {1, 
                 Part[$CellContext`pressure$$, 2]}}]}, 
             $CellContext`pt1[$CellContext`pressure$$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}], 
               Text[
                Style[
                 Row[{"total pressure = ", 
                   NumberForm[$CellContext`P$, {4, 1}], " bar"}], 17, 
                 Background -> White], {0.5, $CellContext`P$}, {0, -1.5}]}]}], 
           If[$CellContext`CS$$ > 1, 
            Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}]], 
           If[$CellContext`CS$$ == 2, {
             $CellContext`pt1[$CellContext`twoliquids$$, 
              If[
               And[
               Part[$CellContext`twoliquids$$, 
                  2] > $CellContext`P$, $CellContext`solution$$], \
$CellContext`colS, Black]], 
             If[$CellContext`solution$$, 
              Text[
               Style[
                Row[{"two liquids are in equilibrium in the region above ", 
                  NumberForm[$CellContext`P$, {4, 1}], " bar"}], 
                17, $CellContext`colS, Background -> White], {
               0.5, $CellContext`P$}, {0, -2.5}]]}], 
           If[$CellContext`CS$$ == 3, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             $CellContext`pt1[$CellContext`pureC$$, $CellContext`colC], 
             $CellContext`pt1[$CellContext`pureW$$, $CellContext`colW], 
             If[$CellContext`solution$$, {
               $CellContext`pt2[{0, 
                 $CellContext`Py$[2][0]}, $CellContext`colW], 
               $CellContext`pt2[{1, 
                 $CellContext`Py$[1][1]}, $CellContext`colC]}]}], 
           If[$CellContext`CS$$ > 3, {
             Line[{{0, 
                $CellContext`Py$[2][0]}, {0, 
                Part[$CellContext`range$, 2]}}], 
             Line[{{1, 
                $CellContext`Py$[1][1]}, {1, 
                Part[$CellContext`range$, 2]}}]}], 
           If[3 < $CellContext`CS$$ < 7, {
             $CellContext`pt2[{0, 
               $CellContext`Py$[2][0]}, Black], 
             $CellContext`pt2[{1, 
               $CellContext`Py$[1][1]}, Black]}], 
           If[$CellContext`CS$$ == 4, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Column[{
                  Row[{"mole fraction = ", 
                    NumberForm[
                    Part[$CellContext`vapor$$, 1], {2, 2}]}], 
                  Row[{
                    NumberForm[
                    Part[$CellContext`vapor$$, 2], {3, 2}], " bar"}]}, 
                 Center], 17, Background -> White], $CellContext`vapor$$, {0, 
               2}]], 
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`colS]]}], 
           If[4 < $CellContext`CS$$ < 7, 
            $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, Black]], 
           If[$CellContext`CS$$ == 5, {{Dashed, 
              Line[{{0, 
                 $CellContext`Py$[2][
                 0]}, $CellContext`phase1$, $CellContext`phase2$, \
$CellContext`phase3$, {$CellContext`ypoint$, $CellContext`P$}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase1$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase1$, {
               Switch[$CellContext`part$, 1, 0, 2, 0.5, 3, 0], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase2$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase2$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase3$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase3$, {
               Switch[$CellContext`part$, 1, 0, 2, -0.5, 3, 0], 2}], 
             $CellContext`pt1[$CellContext`phase1$, Black], 
             $CellContext`pt1[$CellContext`phase2$, Black], 
             $CellContext`pt1[$CellContext`phase3$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[0, $CellContext`ypoint$, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 5, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[0, $CellContext`ypoint$, 0.01]]]], 
           If[$CellContext`CS$$ == 6, {{Dashed, 
              
              Line[{{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, {1, 
                 $CellContext`Py$[1][1]}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase4$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase4$, {
               Switch[$CellContext`part$, 1, 0.5, 2, 0, 3, 0.5], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase5$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase5$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase6$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase6$, {
               Switch[$CellContext`part$, 1, 0, 2, 0, 3, -0.5], 2}], 
             $CellContext`pt1[$CellContext`phase4$, Black], 
             $CellContext`pt1[$CellContext`phase5$, Black], 
             $CellContext`pt1[$CellContext`phase6$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[$CellContext`ypoint$, 1, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 6, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[$CellContext`ypoint$, 1, 0.01]]]], 
           If[$CellContext`CS$$ == 7, {
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18], {
              0.5, $CellContext`P$}, {0, -2.5}], 
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + ", 
                 Style["vapor", $CellContext`colV]}], 18, Background -> 
               White], {0, $CellContext`P$}, {-1.2, 1.2}], 
             Text[
              Style[
               Row[{
                 Style["vapor", $CellContext`colV], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18, 
               Background -> White], {1, $CellContext`P$}, {1, 1.2}], 
             Text[
              Style["vapor", 18, $CellContext`colV], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -5}]}]}, 
          PlotRange -> {{0, 1}, $CellContext`range$}, PlotRangeClipping -> 
          False, Frame -> True, FrameLabel -> {
            Row[{$CellContext`component$, " mole fraction"}], 
            "pressure (bar)"}, LabelStyle -> {17, Black}, 
          FrameTicks -> {{All, All}, {All, None}}, FrameTicksStyle -> Black, 
          ImageSize -> {600, 420}, AspectRatio -> Full, 
          ImagePadding -> {{40, 25}, {70, 
             If[
              Or[
               
               Or[$CellContext`CS$$ == 1, $CellContext`CS$$ == 
                7], $CellContext`hint$$], 30, 10]}}, GridLines -> 
          If[$CellContext`CS$$ < 7, {
             Range[0, 1, 0.05], 
             Range[
              Part[$CellContext`range$, 1], 
              Part[$CellContext`range$, 2], 0.5]}, None], GridLinesStyle -> 
          GrayLevel[0.85], PlotLabel -> Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`CS$$, 1, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`pressure$$, {0.5, 4}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`twoliquids$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`pureC$$, {0.7, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`pureW$$, {0.3, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`phase1B$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`phase2B$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`phase3B$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`phase1T$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`phase2T$$, {0.2, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         14}, {{$CellContext`phase3T$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         15}, {{$CellContext`phase1H$$, {0.1, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         16}, {{$CellContext`phase2H$$, {0.35, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         17}, {{$CellContext`phase3H$$, {0.6, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         18}, {{$CellContext`phase4B$$, {0.65, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         19}, {{$CellContext`phase5B$$, {0.75, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         20}, {{$CellContext`phase6B$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         21}, {{$CellContext`phase4T$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         22}, {{$CellContext`phase5T$$, {0.7, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         23}, {{$CellContext`phase6T$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         24}, {{$CellContext`phase4H$$, {0.75, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         25}, {{$CellContext`phase5H$$, {0.85, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         26}, {{$CellContext`phase6H$$, {0.95, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 27}, 
        Grid[{{
           Button[
           " new problem ", {
            If[$CellContext`reset$$ < 
               1000, $CellContext`reset$$ = $CellContext`reset$$ + 
                1, $CellContext`reset$$ = $CellContext`reset$$ - 
                1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
              False; $CellContext`solution$$ = False; Null}], 
           Manipulate`Place[1], 
           Button[
            Dynamic[
             
             Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
              "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4,
               "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 
              6, "(6) draw organic phase boundary", 7, "(7) solved diagram"]],
             ImageSize -> 195], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
            Dynamic[$CellContext`CS$$]], 
           Manipulate`Place[2], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
             Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
                Manipulate`Place[7], 
                Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
             PaneSelector[{1 -> Row[{
                   Manipulate`Place[10], 
                   Manipulate`Place[11], 
                   Manipulate`Place[12]}], 2 -> Row[{
                   Manipulate`Place[13], 
                   Manipulate`Place[14], 
                   Manipulate`Place[15]}], 3 -> Row[{
                   Manipulate`Place[16], 
                   Manipulate`Place[17], 
                   Manipulate`Place[18]}]}, 
               Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                   Manipulate`Place[19], 
                   Manipulate`Place[20], 
                   Manipulate`Place[21]}], 2 -> Row[{
                   Manipulate`Place[22], 
                   Manipulate`Place[23], 
                   Manipulate`Place[24]}], 3 -> Row[{
                   Manipulate`Place[25], 
                   Manipulate`Place[26], 
                   Manipulate`Place[27]}]}, 
               Dynamic[$CellContext`part]]}, 
            Dynamic[$CellContext`CS$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {256., 263.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`part = 1, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`colW = 
       RGBColor[0, 0, 1], $CellContext`colC = 
       RGBColor[1, 0.4, 0], $CellContext`p = 
       Style["P", Italic], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colS = 
       RGBColor[0, 0.6, 0], $CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0.5, 0, 0.5], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->544167155,ExpressionUUID->"52f2b943-7805-438d-9564-9605b557abbf"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"1cd3326e-b44f-4e40-957b-8b812a0e39d7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`CS$$ = 3, $CellContext`hint$$ = 
    True, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {0.1, 
    0.65}, $CellContext`phase1T$$ = {0.1, 0.6}, $CellContext`phase2B$$ = {0.3,
     0.6}, $CellContext`phase2H$$ = {0.35, 0.65}, $CellContext`phase2T$$ = {
    0.2, 0.6}, $CellContext`phase3B$$ = {0.5, 0.6}, $CellContext`phase3H$$ = {
    0.6, 0.65}, $CellContext`phase3T$$ = {0.3, 
    0.6}, $CellContext`phase4B$$ = {0.65, 0.6}, $CellContext`phase4H$$ = {
    0.75, 0.65}, $CellContext`phase4T$$ = {0.5, 
    0.6}, $CellContext`phase5B$$ = {0.75, 0.6}, $CellContext`phase5H$$ = {
    0.85, 0.65}, $CellContext`phase5T$$ = {0.7, 
    0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {0.95,
     0.65}, $CellContext`phase6T$$ = {0.9, 0.6}, $CellContext`pressure$$ = {
    0.5, 4}, $CellContext`pureC$$ = {0.7, 4}, $CellContext`pureW$$ = {
    0.3, 4}, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
    True, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
    0.5, 4}, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`CS$$], 3, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], True, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], True, "hint"}, {True, False}}, {{
       Hold[$CellContext`pressure$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`twoliquids$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`pureC$$], {0.7, 4}}, Automatic}, {{
       Hold[$CellContext`pureW$$], {0.3, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`phase1B$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2B$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3B$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1T$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2T$$], {0.2, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3T$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1H$$], {0.1, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase2H$$], {0.35, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase3H$$], {0.6, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase4B$$], {0.65, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5B$$], {0.75, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6B$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4T$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5T$$], {0.7, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6T$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4H$$], {0.75, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase5H$$], {0.85, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase6H$$], {0.95, 0.65}}, Automatic}, {
      Hold[
       Grid[{{
          Button[
          " new problem ", {
           If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
             False; $CellContext`solution$$ = False; Null}], 
          Manipulate`Place[1], 
          Button[
           Dynamic[
            
            Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
             "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4, 
             "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 6,
              "(6) draw organic phase boundary", 7, "(7) solved diagram"]], 
           ImageSize -> 195], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
           Dynamic[$CellContext`CS$$]], 
          Manipulate`Place[2], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
            Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
               Manipulate`Place[7], 
               Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
            PaneSelector[{1 -> Row[{
                  Manipulate`Place[10], 
                  Manipulate`Place[11], 
                  Manipulate`Place[12]}], 2 -> Row[{
                  Manipulate`Place[13], 
                  Manipulate`Place[14], 
                  Manipulate`Place[15]}], 3 -> Row[{
                  Manipulate`Place[16], 
                  Manipulate`Place[17], 
                  Manipulate`Place[18]}]}, 
              Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                  Manipulate`Place[19], 
                  Manipulate`Place[20], 
                  Manipulate`Place[21]}], 2 -> Row[{
                  Manipulate`Place[22], 
                  Manipulate`Place[23], 
                  Manipulate`Place[24]}], 3 -> Row[{
                  Manipulate`Place[25], 
                  Manipulate`Place[26], 
                  Manipulate`Place[27]}]}, 
              Dynamic[$CellContext`part]]}, 
           Dynamic[$CellContext`CS$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {207., 213.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`reset$53026$$ = 
    0, $CellContext`CS$53027$$ = 0, $CellContext`solution$53028$$ = 
    False, $CellContext`hint$53029$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`CS$$ = 3, $CellContext`hint$$ = 
        True, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {
         0.1, 0.65}, $CellContext`phase1T$$ = {0.1, 
         0.6}, $CellContext`phase2B$$ = {0.3, 0.6}, $CellContext`phase2H$$ = {
         0.35, 0.65}, $CellContext`phase2T$$ = {0.2, 
         0.6}, $CellContext`phase3B$$ = {0.5, 0.6}, $CellContext`phase3H$$ = {
         0.6, 0.65}, $CellContext`phase3T$$ = {0.3, 
         0.6}, $CellContext`phase4B$$ = {0.65, 
         0.6}, $CellContext`phase4H$$ = {0.75, 
         0.65}, $CellContext`phase4T$$ = {0.5, 
         0.6}, $CellContext`phase5B$$ = {0.75, 
         0.6}, $CellContext`phase5H$$ = {0.85, 
         0.65}, $CellContext`phase5T$$ = {0.7, 
         0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
         0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
         0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
         0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
        1, $CellContext`solution$$ = 
        True, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
         0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$53026$$, 0], 
        Hold[$CellContext`CS$$, $CellContext`CS$53027$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$53028$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$53029$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`part$, $CellContext`Psat$, \
$CellContext`P$, $CellContext`Py$, $CellContext`ypoint$, $CellContext`Pdp$, \
$CellContext`component$, $CellContext`comp$, $CellContext`range$, \
$CellContext`phase1$, $CellContext`phase2$, $CellContext`phase3$, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, \
$CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{105, 125}]; $CellContext`part$ = 
         RandomInteger[{1, 3}]; $CellContext`Psat$[1] = 
         Switch[$CellContext`part$, 1, 
           10^(4.72583 - 1660.652/($CellContext`T$ + 271.5)), 2, 
           10^(4.07827 - 1343.943/($CellContext`T$ + 219.227)), 3, 
           10^(4.00266 - 1171.53/($CellContext`T$ + 
            224.216))]; $CellContext`Psat$[2] = 
         10^(5.0768 - 1659.793/($CellContext`T$ + 
           227.1)); $CellContext`P$ = $CellContext`Psat$[
           1] + $CellContext`Psat$[2]; $CellContext`Py$[1][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[
           1]/$CellContext`y$; $CellContext`Py$[2][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[2]/(
          1 - $CellContext`y$); $CellContext`ypoint$ = $CellContext`Psat$[
           1]/($CellContext`Psat$[1] + $CellContext`Psat$[
           2]); $CellContext`Pdp$[
           Pattern[$CellContext`y$, 
            Blank[]]] := Piecewise[{{
             $CellContext`Py$[2][$CellContext`y$], 
             0 <= $CellContext`y$ <= $CellContext`ypoint$}, {
             $CellContext`Py$[1][$CellContext`y$], 
             
             Inequality[$CellContext`ypoint$, Less, $CellContext`y$, 
              LessEqual, 1]}}]; $CellContext`component$ = 
         Switch[$CellContext`part$, 1, "benzene", 2, "toluene", 3, 
           Row[{
             Style["n", Italic], "-hexane"}]]; $CellContext`comp$ = 
         Switch[$CellContext`part$, 1, "b", 2, "t", 3, 
           "h"]; $CellContext`range$ = 
         Switch[$CellContext`part$, 1, {0, 6.5}, 2, {0, 4.3}, 3, {
           0, 7.5}]; $CellContext`phase1$ = 
         Switch[$CellContext`part$, 1, {0.1, 
            Part[$CellContext`phase1B$$, 2]}, 2, {0.1, 
            Part[$CellContext`phase1T$$, 2]}, 3, {0.1, 
            Part[$CellContext`phase1H$$, 2]}]; $CellContext`phase2$ = 
         Switch[$CellContext`part$, 1, {0.3, 
            Part[$CellContext`phase2B$$, 2]}, 2, {0.2, 
            Part[$CellContext`phase2T$$, 2]}, 3, {0.35, 
            Part[$CellContext`phase2H$$, 2]}]; $CellContext`phase3$ = 
         Switch[$CellContext`part$, 1, {0.5, 
            Part[$CellContext`phase3B$$, 2]}, 2, {0.3, 
            Part[$CellContext`phase3T$$, 2]}, 3, {0.6, 
            Part[$CellContext`phase3H$$, 2]}]; $CellContext`phase4$ = 
         Switch[$CellContext`part$, 1, {0.65, 
            Part[$CellContext`phase4B$$, 2]}, 2, {0.5, 
            Part[$CellContext`phase4T$$, 2]}, 3, {0.75, 
            Part[$CellContext`phase4H$$, 2]}]; $CellContext`phase5$ = 
         Switch[$CellContext`part$, 1, {0.75, 
            Part[$CellContext`phase5B$$, 2]}, 2, {0.7, 
            Part[$CellContext`phase5T$$, 2]}, 3, {0.85, 
            Part[$CellContext`phase5H$$, 2]}]; $CellContext`phase6$ = 
         Switch[$CellContext`part$, 1, {0.9, 
            Part[$CellContext`phase6B$$, 2]}, 2, {0.9, 
            Part[$CellContext`phase6T$$, 2]}, 3, {0.95, 
            Part[$CellContext`phase6H$$, 2]}]; $CellContext`plotlabel$ = 
         Switch[$CellContext`CS$$, 1, 
           
           If[$CellContext`hint$$, "hint: sum the saturation pressures", 
            "step 1: drag the line to the pressure where three phases \
coexist, then check solution"], 2, 
           
           If[$CellContext`hint$$, 
            "hint: liquids are more stable at higher pressures", 
            
            Column[{"step 2: move the point to the region where the two \
liquids are in equilibrium", 
              "(and no vapor is present), then check solution"}]], 3, 
           
           If[$CellContext`hint$$, 
            "hint: pure-component saturation pressures", 
            
            Column[{"step 3: drag the blue point to the location where pure \
water is in VLE and drag", 
              "the orange point to the location where the pure organic is in \
VLE, then check solution"}]], 4, 
           If[$CellContext`hint$$, 
            "hint: each liquid exerts its saturation pressure", 
            
            Column[{"step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium", "with two liquid phases, then check solution"}]], 5, 
           If[$CellContext`hint$$, 
            Row[{"hint: the vapor mole fraction for water is ", 
              Subsuperscript[
               Style["P", Italic], "w", "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 5: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with liquid water, then check solution"}]], 
           6, 
           If[$CellContext`hint$$, 
            
            Row[{"hint: the vapor mole fraction for ", \
$CellContext`component$, " is ", 
              Subsuperscript[
               Style["P", Italic], $CellContext`comp$, "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 6: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with pure organic liquid, then check \
solution"}]], 7, ""]; Graphics[{Thick, 
           Map[Line[{{#, 
               Part[$CellContext`range$, 1]}, {#, 0.02 
               Part[$CellContext`range$, 2]}}]& , 
            Range[0.1, 0.9, 0.1]], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 1"}], $CellContext`colW], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 0"}], $CellContext`colC]}], 17], {0, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 1"}], $CellContext`colC], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 0"}], $CellContext`colW]}], 
             17], {1, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           If[$CellContext`CS$$ == 1, {
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Row[{"pressure = ", 
                  NumberForm[
                   Part[$CellContext`pressure$$, 2], {4, 1}], " bar"}], 17, 
                Background -> White], {0.5, 
                Part[$CellContext`pressure$$, 2]}, {0, 
                If[
                Part[$CellContext`pressure$$, 2] > 
                 Part[$CellContext`range$, 2] - 0.5, 1.5, -1.5]}]], 
             Text[
              Style[
               Column[{
                 Row[{"temperature = ", $CellContext`T$, " \[Degree]C"}], 
                 Row[{"saturation pressures: ", 
                   Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                   " = ", 
                   NumberForm[
                    $CellContext`Psat$[1], {4, 1}], " bar, ", 
                   Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                   NumberForm[
                    $CellContext`Psat$[2], {4, 1}], " bar"}]}, Center], 17, 
               Background -> White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], {Dashed, 
              Line[{{0, 
                 Part[$CellContext`pressure$$, 2]}, {1, 
                 Part[$CellContext`pressure$$, 2]}}]}, 
             $CellContext`pt1[$CellContext`pressure$$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}], 
               Text[
                Style[
                 Row[{"total pressure = ", 
                   NumberForm[$CellContext`P$, {4, 1}], " bar"}], 17, 
                 Background -> White], {0.5, $CellContext`P$}, {0, -1.5}]}]}], 
           If[$CellContext`CS$$ > 1, 
            Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}]], 
           If[$CellContext`CS$$ == 2, {
             $CellContext`pt1[$CellContext`twoliquids$$, 
              If[
               And[
               Part[$CellContext`twoliquids$$, 
                  2] > $CellContext`P$, $CellContext`solution$$], \
$CellContext`colS, Black]], 
             If[$CellContext`solution$$, 
              Text[
               Style[
                Row[{"two liquids are in equilibrium in the region above ", 
                  NumberForm[$CellContext`P$, {4, 1}], " bar"}], 
                17, $CellContext`colS, Background -> White], {
               0.5, $CellContext`P$}, {0, -2.5}]]}], 
           If[$CellContext`CS$$ == 3, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             $CellContext`pt1[$CellContext`pureC$$, $CellContext`colC], 
             $CellContext`pt1[$CellContext`pureW$$, $CellContext`colW], 
             If[$CellContext`solution$$, {
               $CellContext`pt2[{0, 
                 $CellContext`Py$[2][0]}, $CellContext`colW], 
               $CellContext`pt2[{1, 
                 $CellContext`Py$[1][1]}, $CellContext`colC]}]}], 
           If[$CellContext`CS$$ > 3, {
             Line[{{0, 
                $CellContext`Py$[2][0]}, {0, 
                Part[$CellContext`range$, 2]}}], 
             Line[{{1, 
                $CellContext`Py$[1][1]}, {1, 
                Part[$CellContext`range$, 2]}}]}], 
           If[3 < $CellContext`CS$$ < 7, {
             $CellContext`pt2[{0, 
               $CellContext`Py$[2][0]}, Black], 
             $CellContext`pt2[{1, 
               $CellContext`Py$[1][1]}, Black]}], 
           If[$CellContext`CS$$ == 4, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Column[{
                  Row[{"mole fraction = ", 
                    NumberForm[
                    Part[$CellContext`vapor$$, 1], {2, 2}]}], 
                  Row[{
                    NumberForm[
                    Part[$CellContext`vapor$$, 2], {3, 2}], " bar"}]}, 
                 Center], 17, Background -> White], $CellContext`vapor$$, {0, 
               2}]], 
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`colS]]}], 
           If[4 < $CellContext`CS$$ < 7, 
            $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, Black]], 
           If[$CellContext`CS$$ == 5, {{Dashed, 
              Line[{{0, 
                 $CellContext`Py$[2][
                 0]}, $CellContext`phase1$, $CellContext`phase2$, \
$CellContext`phase3$, {$CellContext`ypoint$, $CellContext`P$}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase1$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase1$, {
               Switch[$CellContext`part$, 1, 0, 2, 0.5, 3, 0], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase2$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase2$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase3$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase3$, {
               Switch[$CellContext`part$, 1, 0, 2, -0.5, 3, 0], 2}], 
             $CellContext`pt1[$CellContext`phase1$, Black], 
             $CellContext`pt1[$CellContext`phase2$, Black], 
             $CellContext`pt1[$CellContext`phase3$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[0, $CellContext`ypoint$, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 5, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[0, $CellContext`ypoint$, 0.01]]]], 
           If[$CellContext`CS$$ == 6, {{Dashed, 
              
              Line[{{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, {1, 
                 $CellContext`Py$[1][1]}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase4$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase4$, {
               Switch[$CellContext`part$, 1, 0.5, 2, 0, 3, 0.5], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase5$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase5$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase6$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase6$, {
               Switch[$CellContext`part$, 1, 0, 2, 0, 3, -0.5], 2}], 
             $CellContext`pt1[$CellContext`phase4$, Black], 
             $CellContext`pt1[$CellContext`phase5$, Black], 
             $CellContext`pt1[$CellContext`phase6$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[$CellContext`ypoint$, 1, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 6, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[$CellContext`ypoint$, 1, 0.01]]]], 
           If[$CellContext`CS$$ == 7, {
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18], {
              0.5, $CellContext`P$}, {0, -2.5}], 
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + ", 
                 Style["vapor", $CellContext`colV]}], 18, Background -> 
               White], {0, $CellContext`P$}, {-1.2, 1.2}], 
             Text[
              Style[
               Row[{
                 Style["vapor", $CellContext`colV], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18, 
               Background -> White], {1, $CellContext`P$}, {1, 1.2}], 
             Text[
              Style["vapor", 18, $CellContext`colV], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -5}]}]}, 
          PlotRange -> {{0, 1}, $CellContext`range$}, PlotRangeClipping -> 
          False, Frame -> True, FrameLabel -> {
            Row[{$CellContext`component$, " mole fraction"}], 
            "pressure (bar)"}, LabelStyle -> {17, Black}, 
          FrameTicks -> {{All, All}, {All, None}}, FrameTicksStyle -> Black, 
          ImageSize -> {600, 420}, AspectRatio -> Full, 
          ImagePadding -> {{40, 25}, {70, 
             If[
              Or[
               
               Or[$CellContext`CS$$ == 1, $CellContext`CS$$ == 
                7], $CellContext`hint$$], 30, 10]}}, GridLines -> 
          If[$CellContext`CS$$ < 7, {
             Range[0, 1, 0.05], 
             Range[
              Part[$CellContext`range$, 1], 
              Part[$CellContext`range$, 2], 0.5]}, None], GridLinesStyle -> 
          GrayLevel[0.85], PlotLabel -> Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`CS$$, 3, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, True, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, True, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`pressure$$, {0.5, 4}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`twoliquids$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`pureC$$, {0.7, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`pureW$$, {0.3, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`phase1B$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`phase2B$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`phase3B$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`phase1T$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`phase2T$$, {0.2, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         14}, {{$CellContext`phase3T$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         15}, {{$CellContext`phase1H$$, {0.1, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         16}, {{$CellContext`phase2H$$, {0.35, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         17}, {{$CellContext`phase3H$$, {0.6, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         18}, {{$CellContext`phase4B$$, {0.65, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         19}, {{$CellContext`phase5B$$, {0.75, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         20}, {{$CellContext`phase6B$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         21}, {{$CellContext`phase4T$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         22}, {{$CellContext`phase5T$$, {0.7, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         23}, {{$CellContext`phase6T$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         24}, {{$CellContext`phase4H$$, {0.75, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         25}, {{$CellContext`phase5H$$, {0.85, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         26}, {{$CellContext`phase6H$$, {0.95, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 27}, 
        Grid[{{
           Button[
           " new problem ", {
            If[$CellContext`reset$$ < 
               1000, $CellContext`reset$$ = $CellContext`reset$$ + 
                1, $CellContext`reset$$ = $CellContext`reset$$ - 
                1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
              False; $CellContext`solution$$ = False; Null}], 
           Manipulate`Place[1], 
           Button[
            Dynamic[
             
             Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
              "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4,
               "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 
              6, "(6) draw organic phase boundary", 7, "(7) solved diagram"]],
             ImageSize -> 195], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
            Dynamic[$CellContext`CS$$]], 
           Manipulate`Place[2], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
             Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
                Manipulate`Place[7], 
                Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
             PaneSelector[{1 -> Row[{
                   Manipulate`Place[10], 
                   Manipulate`Place[11], 
                   Manipulate`Place[12]}], 2 -> Row[{
                   Manipulate`Place[13], 
                   Manipulate`Place[14], 
                   Manipulate`Place[15]}], 3 -> Row[{
                   Manipulate`Place[16], 
                   Manipulate`Place[17], 
                   Manipulate`Place[18]}]}, 
               Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                   Manipulate`Place[19], 
                   Manipulate`Place[20], 
                   Manipulate`Place[21]}], 2 -> Row[{
                   Manipulate`Place[22], 
                   Manipulate`Place[23], 
                   Manipulate`Place[24]}], 3 -> Row[{
                   Manipulate`Place[25], 
                   Manipulate`Place[26], 
                   Manipulate`Place[27]}]}, 
               Dynamic[$CellContext`part]]}, 
            Dynamic[$CellContext`CS$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {256., 263.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`part = 1, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`colW = 
       RGBColor[0, 0, 1], $CellContext`colC = 
       RGBColor[1, 0.4, 0], $CellContext`p = 
       Style["P", Italic], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colS = 
       RGBColor[0, 0.6, 0], $CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0.5, 0, 0.5], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->48294466,ExpressionUUID->"2039590a-4c3e-45d3-9673-8c721204d59f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`CS$$ = 5, $CellContext`hint$$ = 
    False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {0.1,
     0.65}, $CellContext`phase1T$$ = {0.1, 0.6}, $CellContext`phase2B$$ = {
    0.3035, 1.36}, $CellContext`phase2H$$ = {0.35, 
    0.65}, $CellContext`phase2T$$ = {0.2, 0.6}, $CellContext`phase3B$$ = {
    0.5035000000000001, 1.95}, $CellContext`phase3H$$ = {0.6, 
    0.65}, $CellContext`phase3T$$ = {0.3, 0.6}, $CellContext`phase4B$$ = {
    0.65, 0.6}, $CellContext`phase4H$$ = {0.75, 
    0.65}, $CellContext`phase4T$$ = {0.5, 0.6}, $CellContext`phase5B$$ = {
    0.75, 0.6}, $CellContext`phase5H$$ = {0.85, 
    0.65}, $CellContext`phase5T$$ = {0.7, 0.6}, $CellContext`phase6B$$ = {0.9,
     0.6}, $CellContext`phase6H$$ = {0.95, 0.65}, $CellContext`phase6T$$ = {
    0.9, 0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
    0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
    1, $CellContext`solution$$ = False, $CellContext`twoliquids$$ = {
    0.5, 4}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`CS$$], 5, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`pressure$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`twoliquids$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`pureC$$], {0.7, 4}}, Automatic}, {{
       Hold[$CellContext`pureW$$], {0.3, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`phase1B$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2B$$], {0.3035, 1.36}}, Automatic}, {{
       Hold[$CellContext`phase3B$$], {0.5035000000000001, 1.95}}, 
      Automatic}, {{
       Hold[$CellContext`phase1T$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2T$$], {0.2, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3T$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1H$$], {0.1, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase2H$$], {0.35, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase3H$$], {0.6, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase4B$$], {0.65, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5B$$], {0.75, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6B$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4T$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5T$$], {0.7, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6T$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4H$$], {0.75, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase5H$$], {0.85, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase6H$$], {0.95, 0.65}}, Automatic}, {
      Hold[
       Grid[{{
          Button[
          " new problem ", {
           If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
             False; $CellContext`solution$$ = False; Null}], 
          Manipulate`Place[1], 
          Button[
           Dynamic[
            
            Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
             "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4, 
             "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 6,
              "(6) draw organic phase boundary", 7, "(7) solved diagram"]], 
           ImageSize -> 195], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
           Dynamic[$CellContext`CS$$]], 
          Manipulate`Place[2], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
            Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
               Manipulate`Place[7], 
               Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
            PaneSelector[{1 -> Row[{
                  Manipulate`Place[10], 
                  Manipulate`Place[11], 
                  Manipulate`Place[12]}], 2 -> Row[{
                  Manipulate`Place[13], 
                  Manipulate`Place[14], 
                  Manipulate`Place[15]}], 3 -> Row[{
                  Manipulate`Place[16], 
                  Manipulate`Place[17], 
                  Manipulate`Place[18]}]}, 
              Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                  Manipulate`Place[19], 
                  Manipulate`Place[20], 
                  Manipulate`Place[21]}], 2 -> Row[{
                  Manipulate`Place[22], 
                  Manipulate`Place[23], 
                  Manipulate`Place[24]}], 3 -> Row[{
                  Manipulate`Place[25], 
                  Manipulate`Place[26], 
                  Manipulate`Place[27]}]}, 
              Dynamic[$CellContext`part]]}, 
           Dynamic[$CellContext`CS$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {207., 213.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`reset$53165$$ = 
    0, $CellContext`CS$53166$$ = 0, $CellContext`solution$53167$$ = 
    False, $CellContext`hint$53168$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`CS$$ = 5, $CellContext`hint$$ = 
        False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {
         0.1, 0.65}, $CellContext`phase1T$$ = {0.1, 
         0.6}, $CellContext`phase2B$$ = {0.3035, 
         1.36}, $CellContext`phase2H$$ = {0.35, 
         0.65}, $CellContext`phase2T$$ = {0.2, 
         0.6}, $CellContext`phase3B$$ = {0.5035000000000001, 
         1.95}, $CellContext`phase3H$$ = {0.6, 
         0.65}, $CellContext`phase3T$$ = {0.3, 
         0.6}, $CellContext`phase4B$$ = {0.65, 
         0.6}, $CellContext`phase4H$$ = {0.75, 
         0.65}, $CellContext`phase4T$$ = {0.5, 
         0.6}, $CellContext`phase5B$$ = {0.75, 
         0.6}, $CellContext`phase5H$$ = {0.85, 
         0.65}, $CellContext`phase5T$$ = {0.7, 
         0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
         0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
         0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
         0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
        1, $CellContext`solution$$ = 
        False, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
         0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$53165$$, 0], 
        Hold[$CellContext`CS$$, $CellContext`CS$53166$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$53167$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$53168$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`part$, $CellContext`Psat$, \
$CellContext`P$, $CellContext`Py$, $CellContext`ypoint$, $CellContext`Pdp$, \
$CellContext`component$, $CellContext`comp$, $CellContext`range$, \
$CellContext`phase1$, $CellContext`phase2$, $CellContext`phase3$, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, \
$CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{105, 125}]; $CellContext`part$ = 
         RandomInteger[{1, 3}]; $CellContext`Psat$[1] = 
         Switch[$CellContext`part$, 1, 
           10^(4.72583 - 1660.652/($CellContext`T$ + 271.5)), 2, 
           10^(4.07827 - 1343.943/($CellContext`T$ + 219.227)), 3, 
           10^(4.00266 - 1171.53/($CellContext`T$ + 
            224.216))]; $CellContext`Psat$[2] = 
         10^(5.0768 - 1659.793/($CellContext`T$ + 
           227.1)); $CellContext`P$ = $CellContext`Psat$[
           1] + $CellContext`Psat$[2]; $CellContext`Py$[1][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[
           1]/$CellContext`y$; $CellContext`Py$[2][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[2]/(
          1 - $CellContext`y$); $CellContext`ypoint$ = $CellContext`Psat$[
           1]/($CellContext`Psat$[1] + $CellContext`Psat$[
           2]); $CellContext`Pdp$[
           Pattern[$CellContext`y$, 
            Blank[]]] := Piecewise[{{
             $CellContext`Py$[2][$CellContext`y$], 
             0 <= $CellContext`y$ <= $CellContext`ypoint$}, {
             $CellContext`Py$[1][$CellContext`y$], 
             
             Inequality[$CellContext`ypoint$, Less, $CellContext`y$, 
              LessEqual, 1]}}]; $CellContext`component$ = 
         Switch[$CellContext`part$, 1, "benzene", 2, "toluene", 3, 
           Row[{
             Style["n", Italic], "-hexane"}]]; $CellContext`comp$ = 
         Switch[$CellContext`part$, 1, "b", 2, "t", 3, 
           "h"]; $CellContext`range$ = 
         Switch[$CellContext`part$, 1, {0, 6.5}, 2, {0, 4.3}, 3, {
           0, 7.5}]; $CellContext`phase1$ = 
         Switch[$CellContext`part$, 1, {0.1, 
            Part[$CellContext`phase1B$$, 2]}, 2, {0.1, 
            Part[$CellContext`phase1T$$, 2]}, 3, {0.1, 
            Part[$CellContext`phase1H$$, 2]}]; $CellContext`phase2$ = 
         Switch[$CellContext`part$, 1, {0.3, 
            Part[$CellContext`phase2B$$, 2]}, 2, {0.2, 
            Part[$CellContext`phase2T$$, 2]}, 3, {0.35, 
            Part[$CellContext`phase2H$$, 2]}]; $CellContext`phase3$ = 
         Switch[$CellContext`part$, 1, {0.5, 
            Part[$CellContext`phase3B$$, 2]}, 2, {0.3, 
            Part[$CellContext`phase3T$$, 2]}, 3, {0.6, 
            Part[$CellContext`phase3H$$, 2]}]; $CellContext`phase4$ = 
         Switch[$CellContext`part$, 1, {0.65, 
            Part[$CellContext`phase4B$$, 2]}, 2, {0.5, 
            Part[$CellContext`phase4T$$, 2]}, 3, {0.75, 
            Part[$CellContext`phase4H$$, 2]}]; $CellContext`phase5$ = 
         Switch[$CellContext`part$, 1, {0.75, 
            Part[$CellContext`phase5B$$, 2]}, 2, {0.7, 
            Part[$CellContext`phase5T$$, 2]}, 3, {0.85, 
            Part[$CellContext`phase5H$$, 2]}]; $CellContext`phase6$ = 
         Switch[$CellContext`part$, 1, {0.9, 
            Part[$CellContext`phase6B$$, 2]}, 2, {0.9, 
            Part[$CellContext`phase6T$$, 2]}, 3, {0.95, 
            Part[$CellContext`phase6H$$, 2]}]; $CellContext`plotlabel$ = 
         Switch[$CellContext`CS$$, 1, 
           
           If[$CellContext`hint$$, "hint: sum the saturation pressures", 
            "step 1: drag the line to the pressure where three phases \
coexist, then check solution"], 2, 
           
           If[$CellContext`hint$$, 
            "hint: liquids are more stable at higher pressures", 
            
            Column[{"step 2: move the point to the region where the two \
liquids are in equilibrium", 
              "(and no vapor is present), then check solution"}]], 3, 
           
           If[$CellContext`hint$$, 
            "hint: pure-component saturation pressures", 
            
            Column[{"step 3: drag the blue point to the location where pure \
water is in VLE and drag", 
              "the orange point to the location where the pure organic is in \
VLE, then check solution"}]], 4, 
           
           If[$CellContext`hint$$, 
            "hint: each liquid exerts its saturation pressure", 
            
            Column[{"step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium", "with two liquid phases, then check solution"}]], 5, 
           If[$CellContext`hint$$, 
            Row[{"hint: the vapor mole fraction for water is ", 
              Subsuperscript[
               Style["P", Italic], "w", "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 5: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with liquid water, then check solution"}]], 
           6, 
           If[$CellContext`hint$$, 
            
            Row[{"hint: the vapor mole fraction for ", \
$CellContext`component$, " is ", 
              Subsuperscript[
               Style["P", Italic], $CellContext`comp$, "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 6: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with pure organic liquid, then check \
solution"}]], 7, ""]; Graphics[{Thick, 
           Map[Line[{{#, 
               Part[$CellContext`range$, 1]}, {#, 0.02 
               Part[$CellContext`range$, 2]}}]& , 
            Range[0.1, 0.9, 0.1]], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 1"}], $CellContext`colW], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 0"}], $CellContext`colC]}], 17], {0, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 1"}], $CellContext`colC], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 0"}], $CellContext`colW]}], 
             17], {1, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           If[$CellContext`CS$$ == 1, {
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Row[{"pressure = ", 
                  NumberForm[
                   Part[$CellContext`pressure$$, 2], {4, 1}], " bar"}], 17, 
                Background -> White], {0.5, 
                Part[$CellContext`pressure$$, 2]}, {0, 
                If[
                Part[$CellContext`pressure$$, 2] > 
                 Part[$CellContext`range$, 2] - 0.5, 1.5, -1.5]}]], 
             Text[
              Style[
               Column[{
                 Row[{"temperature = ", $CellContext`T$, " \[Degree]C"}], 
                 Row[{"saturation pressures: ", 
                   Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                   " = ", 
                   NumberForm[
                    $CellContext`Psat$[1], {4, 1}], " bar, ", 
                   Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                   NumberForm[
                    $CellContext`Psat$[2], {4, 1}], " bar"}]}, Center], 17, 
               Background -> White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], {Dashed, 
              Line[{{0, 
                 Part[$CellContext`pressure$$, 2]}, {1, 
                 Part[$CellContext`pressure$$, 2]}}]}, 
             $CellContext`pt1[$CellContext`pressure$$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}], 
               Text[
                Style[
                 Row[{"total pressure = ", 
                   NumberForm[$CellContext`P$, {4, 1}], " bar"}], 17, 
                 Background -> White], {0.5, $CellContext`P$}, {0, -1.5}]}]}], 
           If[$CellContext`CS$$ > 1, 
            Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}]], 
           If[$CellContext`CS$$ == 2, {
             $CellContext`pt1[$CellContext`twoliquids$$, 
              If[
               And[
               Part[$CellContext`twoliquids$$, 
                  2] > $CellContext`P$, $CellContext`solution$$], \
$CellContext`colS, Black]], 
             If[$CellContext`solution$$, 
              Text[
               Style[
                Row[{"two liquids are in equilibrium in the region above ", 
                  NumberForm[$CellContext`P$, {4, 1}], " bar"}], 
                17, $CellContext`colS, Background -> White], {
               0.5, $CellContext`P$}, {0, -2.5}]]}], 
           If[$CellContext`CS$$ == 3, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             $CellContext`pt1[$CellContext`pureC$$, $CellContext`colC], 
             $CellContext`pt1[$CellContext`pureW$$, $CellContext`colW], 
             If[$CellContext`solution$$, {
               $CellContext`pt2[{0, 
                 $CellContext`Py$[2][0]}, $CellContext`colW], 
               $CellContext`pt2[{1, 
                 $CellContext`Py$[1][1]}, $CellContext`colC]}]}], 
           If[$CellContext`CS$$ > 3, {
             Line[{{0, 
                $CellContext`Py$[2][0]}, {0, 
                Part[$CellContext`range$, 2]}}], 
             Line[{{1, 
                $CellContext`Py$[1][1]}, {1, 
                Part[$CellContext`range$, 2]}}]}], 
           If[3 < $CellContext`CS$$ < 7, {
             $CellContext`pt2[{0, 
               $CellContext`Py$[2][0]}, Black], 
             $CellContext`pt2[{1, 
               $CellContext`Py$[1][1]}, Black]}], 
           If[$CellContext`CS$$ == 4, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Column[{
                  Row[{"mole fraction = ", 
                    NumberForm[
                    Part[$CellContext`vapor$$, 1], {2, 2}]}], 
                  Row[{
                    NumberForm[
                    Part[$CellContext`vapor$$, 2], {3, 2}], " bar"}]}, 
                 Center], 17, Background -> White], $CellContext`vapor$$, {0, 
               2}]], 
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`colS]]}], 
           If[4 < $CellContext`CS$$ < 7, 
            $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, Black]], 
           If[$CellContext`CS$$ == 5, {{Dashed, 
              Line[{{0, 
                 $CellContext`Py$[2][
                 0]}, $CellContext`phase1$, $CellContext`phase2$, \
$CellContext`phase3$, {$CellContext`ypoint$, $CellContext`P$}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase1$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase1$, {
               Switch[$CellContext`part$, 1, 0, 2, 0.5, 3, 0], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase2$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase2$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase3$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase3$, {
               Switch[$CellContext`part$, 1, 0, 2, -0.5, 3, 0], 2}], 
             $CellContext`pt1[$CellContext`phase1$, Black], 
             $CellContext`pt1[$CellContext`phase2$, Black], 
             $CellContext`pt1[$CellContext`phase3$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[0, $CellContext`ypoint$, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 5, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[0, $CellContext`ypoint$, 0.01]]]], 
           If[$CellContext`CS$$ == 6, {{Dashed, 
              
              Line[{{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, {1, 
                 $CellContext`Py$[1][1]}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase4$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase4$, {
               Switch[$CellContext`part$, 1, 0.5, 2, 0, 3, 0.5], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase5$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase5$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase6$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase6$, {
               Switch[$CellContext`part$, 1, 0, 2, 0, 3, -0.5], 2}], 
             $CellContext`pt1[$CellContext`phase4$, Black], 
             $CellContext`pt1[$CellContext`phase5$, Black], 
             $CellContext`pt1[$CellContext`phase6$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[$CellContext`ypoint$, 1, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 6, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[$CellContext`ypoint$, 1, 0.01]]]], 
           If[$CellContext`CS$$ == 7, {
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18], {
              0.5, $CellContext`P$}, {0, -2.5}], 
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + ", 
                 Style["vapor", $CellContext`colV]}], 18, Background -> 
               White], {0, $CellContext`P$}, {-1.2, 1.2}], 
             Text[
              Style[
               Row[{
                 Style["vapor", $CellContext`colV], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18, 
               Background -> White], {1, $CellContext`P$}, {1, 1.2}], 
             Text[
              Style["vapor", 18, $CellContext`colV], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -5}]}]}, 
          PlotRange -> {{0, 1}, $CellContext`range$}, PlotRangeClipping -> 
          False, Frame -> True, FrameLabel -> {
            Row[{$CellContext`component$, " mole fraction"}], 
            "pressure (bar)"}, LabelStyle -> {17, Black}, 
          FrameTicks -> {{All, All}, {All, None}}, FrameTicksStyle -> Black, 
          ImageSize -> {600, 420}, AspectRatio -> Full, 
          ImagePadding -> {{40, 25}, {70, 
             If[
              Or[
               
               Or[$CellContext`CS$$ == 1, $CellContext`CS$$ == 
                7], $CellContext`hint$$], 30, 10]}}, GridLines -> 
          If[$CellContext`CS$$ < 7, {
             Range[0, 1, 0.05], 
             Range[
              Part[$CellContext`range$, 1], 
              Part[$CellContext`range$, 2], 0.5]}, None], GridLinesStyle -> 
          GrayLevel[0.85], PlotLabel -> Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`CS$$, 5, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`pressure$$, {0.5, 4}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`twoliquids$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`pureC$$, {0.7, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`pureW$$, {0.3, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`phase1B$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`phase2B$$, {0.3035, 1.36}}, Automatic, 
         ControlType -> Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`phase3B$$, {0.5035000000000001, 1.95}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`phase1T$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`phase2T$$, {0.2, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         14}, {{$CellContext`phase3T$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         15}, {{$CellContext`phase1H$$, {0.1, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         16}, {{$CellContext`phase2H$$, {0.35, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         17}, {{$CellContext`phase3H$$, {0.6, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         18}, {{$CellContext`phase4B$$, {0.65, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         19}, {{$CellContext`phase5B$$, {0.75, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         20}, {{$CellContext`phase6B$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         21}, {{$CellContext`phase4T$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         22}, {{$CellContext`phase5T$$, {0.7, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         23}, {{$CellContext`phase6T$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         24}, {{$CellContext`phase4H$$, {0.75, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         25}, {{$CellContext`phase5H$$, {0.85, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         26}, {{$CellContext`phase6H$$, {0.95, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 27}, 
        Grid[{{
           Button[
           " new problem ", {
            If[$CellContext`reset$$ < 
               1000, $CellContext`reset$$ = $CellContext`reset$$ + 
                1, $CellContext`reset$$ = $CellContext`reset$$ - 
                1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
              False; $CellContext`solution$$ = False; Null}], 
           Manipulate`Place[1], 
           Button[
            Dynamic[
             
             Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
              "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4,
               "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 
              6, "(6) draw organic phase boundary", 7, "(7) solved diagram"]],
             ImageSize -> 195], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
            Dynamic[$CellContext`CS$$]], 
           Manipulate`Place[2], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
             Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
                Manipulate`Place[7], 
                Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
             PaneSelector[{1 -> Row[{
                   Manipulate`Place[10], 
                   Manipulate`Place[11], 
                   Manipulate`Place[12]}], 2 -> Row[{
                   Manipulate`Place[13], 
                   Manipulate`Place[14], 
                   Manipulate`Place[15]}], 3 -> Row[{
                   Manipulate`Place[16], 
                   Manipulate`Place[17], 
                   Manipulate`Place[18]}]}, 
               Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                   Manipulate`Place[19], 
                   Manipulate`Place[20], 
                   Manipulate`Place[21]}], 2 -> Row[{
                   Manipulate`Place[22], 
                   Manipulate`Place[23], 
                   Manipulate`Place[24]}], 3 -> Row[{
                   Manipulate`Place[25], 
                   Manipulate`Place[26], 
                   Manipulate`Place[27]}]}, 
               Dynamic[$CellContext`part]]}, 
            Dynamic[$CellContext`CS$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {256., 263.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`part = 1, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`colW = 
       RGBColor[0, 0, 1], $CellContext`colC = 
       RGBColor[1, 0.4, 0], $CellContext`p = 
       Style["P", Italic], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colS = 
       RGBColor[0, 0.6, 0], $CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0.5, 0, 0.5], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->840081667,ExpressionUUID->"03089081-3ff3-4908-afe3-87fcadf7379e"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`CS$$ = 7, $CellContext`hint$$ = 
    False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {0.1,
     0.65}, $CellContext`phase1T$$ = {0.1, 0.6}, $CellContext`phase2B$$ = {
    0.3035, 1.36}, $CellContext`phase2H$$ = {0.35, 
    0.65}, $CellContext`phase2T$$ = {0.2, 0.6}, $CellContext`phase3B$$ = {
    0.5035000000000001, 1.95}, $CellContext`phase3H$$ = {0.6, 
    0.65}, $CellContext`phase3T$$ = {0.3, 0.6}, $CellContext`phase4B$$ = {
    0.65, 0.6}, $CellContext`phase4H$$ = {0.75, 
    0.65}, $CellContext`phase4T$$ = {0.5, 0.6}, $CellContext`phase5B$$ = {
    0.75, 0.6}, $CellContext`phase5H$$ = {0.85, 
    0.65}, $CellContext`phase5T$$ = {0.7, 0.6}, $CellContext`phase6B$$ = {0.9,
     0.6}, $CellContext`phase6H$$ = {0.95, 0.65}, $CellContext`phase6T$$ = {
    0.9, 0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
    0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
    1, $CellContext`solution$$ = False, $CellContext`twoliquids$$ = {
    0.5, 4}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`CS$$], 7, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`pressure$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`twoliquids$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`pureC$$], {0.7, 4}}, Automatic}, {{
       Hold[$CellContext`pureW$$], {0.3, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`phase1B$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2B$$], {0.3035, 1.36}}, Automatic}, {{
       Hold[$CellContext`phase3B$$], {0.5035000000000001, 1.95}}, 
      Automatic}, {{
       Hold[$CellContext`phase1T$$], {0.1, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase2T$$], {0.2, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase3T$$], {0.3, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase1H$$], {0.1, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase2H$$], {0.35, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase3H$$], {0.6, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase4B$$], {0.65, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5B$$], {0.75, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6B$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4T$$], {0.5, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase5T$$], {0.7, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase6T$$], {0.9, 0.6}}, Automatic}, {{
       Hold[$CellContext`phase4H$$], {0.75, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase5H$$], {0.85, 0.65}}, Automatic}, {{
       Hold[$CellContext`phase6H$$], {0.95, 0.65}}, Automatic}, {
      Hold[
       Grid[{{
          Button[
          " new problem ", {
           If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
             False; $CellContext`solution$$ = False; Null}], 
          Manipulate`Place[1], 
          Button[
           Dynamic[
            
            Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
             "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4, 
             "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 6,
              "(6) draw organic phase boundary", 7, "(7) solved diagram"]], 
           ImageSize -> 195], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
            Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`CS$$, Less, 
                 7], $CellContext`CS$$ = $CellContext`CS$$ + 
                 1, $CellContext`CS$$ = 7], 
               
               If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
           Dynamic[$CellContext`CS$$]], 
          Manipulate`Place[2], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
            Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`CS$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
               Manipulate`Place[7], 
               Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
            PaneSelector[{1 -> Row[{
                  Manipulate`Place[10], 
                  Manipulate`Place[11], 
                  Manipulate`Place[12]}], 2 -> Row[{
                  Manipulate`Place[13], 
                  Manipulate`Place[14], 
                  Manipulate`Place[15]}], 3 -> Row[{
                  Manipulate`Place[16], 
                  Manipulate`Place[17], 
                  Manipulate`Place[18]}]}, 
              Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                  Manipulate`Place[19], 
                  Manipulate`Place[20], 
                  Manipulate`Place[21]}], 2 -> Row[{
                  Manipulate`Place[22], 
                  Manipulate`Place[23], 
                  Manipulate`Place[24]}], 3 -> Row[{
                  Manipulate`Place[25], 
                  Manipulate`Place[26], 
                  Manipulate`Place[27]}]}, 
              Dynamic[$CellContext`part]]}, 
           Dynamic[$CellContext`CS$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {207., 213.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`reset$53304$$ = 
    0, $CellContext`CS$53305$$ = 0, $CellContext`solution$53306$$ = 
    False, $CellContext`hint$53307$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`CS$$ = 7, $CellContext`hint$$ = 
        False, $CellContext`phase1B$$ = {0.1, 0.6}, $CellContext`phase1H$$ = {
         0.1, 0.65}, $CellContext`phase1T$$ = {0.1, 
         0.6}, $CellContext`phase2B$$ = {0.3035, 
         1.36}, $CellContext`phase2H$$ = {0.35, 
         0.65}, $CellContext`phase2T$$ = {0.2, 
         0.6}, $CellContext`phase3B$$ = {0.5035000000000001, 
         1.95}, $CellContext`phase3H$$ = {0.6, 
         0.65}, $CellContext`phase3T$$ = {0.3, 
         0.6}, $CellContext`phase4B$$ = {0.65, 
         0.6}, $CellContext`phase4H$$ = {0.75, 
         0.65}, $CellContext`phase4T$$ = {0.5, 
         0.6}, $CellContext`phase5B$$ = {0.75, 
         0.6}, $CellContext`phase5H$$ = {0.85, 
         0.65}, $CellContext`phase5T$$ = {0.7, 
         0.6}, $CellContext`phase6B$$ = {0.9, 0.6}, $CellContext`phase6H$$ = {
         0.95, 0.65}, $CellContext`phase6T$$ = {0.9, 
         0.6}, $CellContext`pressure$$ = {0.5, 4}, $CellContext`pureC$$ = {
         0.7, 4}, $CellContext`pureW$$ = {0.3, 4}, $CellContext`reset$$ = 
        1, $CellContext`solution$$ = 
        False, $CellContext`twoliquids$$ = {0.5, 4}, $CellContext`vapor$$ = {
         0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$53304$$, 0], 
        Hold[$CellContext`CS$$, $CellContext`CS$53305$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$53306$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$53307$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`part$, $CellContext`Psat$, \
$CellContext`P$, $CellContext`Py$, $CellContext`ypoint$, $CellContext`Pdp$, \
$CellContext`component$, $CellContext`comp$, $CellContext`range$, \
$CellContext`phase1$, $CellContext`phase2$, $CellContext`phase3$, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, \
$CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{105, 125}]; $CellContext`part$ = 
         RandomInteger[{1, 3}]; $CellContext`Psat$[1] = 
         Switch[$CellContext`part$, 1, 
           10^(4.72583 - 1660.652/($CellContext`T$ + 271.5)), 2, 
           10^(4.07827 - 1343.943/($CellContext`T$ + 219.227)), 3, 
           10^(4.00266 - 1171.53/($CellContext`T$ + 
            224.216))]; $CellContext`Psat$[2] = 
         10^(5.0768 - 1659.793/($CellContext`T$ + 
           227.1)); $CellContext`P$ = $CellContext`Psat$[
           1] + $CellContext`Psat$[2]; $CellContext`Py$[1][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[
           1]/$CellContext`y$; $CellContext`Py$[2][
           Pattern[$CellContext`y$, 
            Blank[]]] := $CellContext`Psat$[2]/(
          1 - $CellContext`y$); $CellContext`ypoint$ = $CellContext`Psat$[
           1]/($CellContext`Psat$[1] + $CellContext`Psat$[
           2]); $CellContext`Pdp$[
           Pattern[$CellContext`y$, 
            Blank[]]] := Piecewise[{{
             $CellContext`Py$[2][$CellContext`y$], 
             0 <= $CellContext`y$ <= $CellContext`ypoint$}, {
             $CellContext`Py$[1][$CellContext`y$], 
             
             Inequality[$CellContext`ypoint$, Less, $CellContext`y$, 
              LessEqual, 1]}}]; $CellContext`component$ = 
         Switch[$CellContext`part$, 1, "benzene", 2, "toluene", 3, 
           Row[{
             Style["n", Italic], "-hexane"}]]; $CellContext`comp$ = 
         Switch[$CellContext`part$, 1, "b", 2, "t", 3, 
           "h"]; $CellContext`range$ = 
         Switch[$CellContext`part$, 1, {0, 6.5}, 2, {0, 4.3}, 3, {
           0, 7.5}]; $CellContext`phase1$ = 
         Switch[$CellContext`part$, 1, {0.1, 
            Part[$CellContext`phase1B$$, 2]}, 2, {0.1, 
            Part[$CellContext`phase1T$$, 2]}, 3, {0.1, 
            Part[$CellContext`phase1H$$, 2]}]; $CellContext`phase2$ = 
         Switch[$CellContext`part$, 1, {0.3, 
            Part[$CellContext`phase2B$$, 2]}, 2, {0.2, 
            Part[$CellContext`phase2T$$, 2]}, 3, {0.35, 
            Part[$CellContext`phase2H$$, 2]}]; $CellContext`phase3$ = 
         Switch[$CellContext`part$, 1, {0.5, 
            Part[$CellContext`phase3B$$, 2]}, 2, {0.3, 
            Part[$CellContext`phase3T$$, 2]}, 3, {0.6, 
            Part[$CellContext`phase3H$$, 2]}]; $CellContext`phase4$ = 
         Switch[$CellContext`part$, 1, {0.65, 
            Part[$CellContext`phase4B$$, 2]}, 2, {0.5, 
            Part[$CellContext`phase4T$$, 2]}, 3, {0.75, 
            Part[$CellContext`phase4H$$, 2]}]; $CellContext`phase5$ = 
         Switch[$CellContext`part$, 1, {0.75, 
            Part[$CellContext`phase5B$$, 2]}, 2, {0.7, 
            Part[$CellContext`phase5T$$, 2]}, 3, {0.85, 
            Part[$CellContext`phase5H$$, 2]}]; $CellContext`phase6$ = 
         Switch[$CellContext`part$, 1, {0.9, 
            Part[$CellContext`phase6B$$, 2]}, 2, {0.9, 
            Part[$CellContext`phase6T$$, 2]}, 3, {0.95, 
            Part[$CellContext`phase6H$$, 2]}]; $CellContext`plotlabel$ = 
         Switch[$CellContext`CS$$, 1, 
           
           If[$CellContext`hint$$, "hint: sum the saturation pressures", 
            "step 1: drag the line to the pressure where three phases \
coexist, then check solution"], 2, 
           
           If[$CellContext`hint$$, 
            "hint: liquids are more stable at higher pressures", 
            
            Column[{"step 2: move the point to the region where the two \
liquids are in equilibrium", 
              "(and no vapor is present), then check solution"}]], 3, 
           
           If[$CellContext`hint$$, 
            "hint: pure-component saturation pressures", 
            
            Column[{"step 3: drag the blue point to the location where pure \
water is in VLE and drag", 
              "the orange point to the location where the pure organic is in \
VLE, then check solution"}]], 4, 
           
           If[$CellContext`hint$$, 
            "hint: each liquid exerts its saturation pressure", 
            
            Column[{"step 4:  drag point to vapor mole fraction and pressure \
that is in equilibrium", "with two liquid phases, then check solution"}]], 5, 
           If[$CellContext`hint$$, 
            Row[{"hint: the vapor mole fraction for water is ", 
              Subsuperscript[
               Style["P", Italic], "w", "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 5: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with liquid water, then check solution"}]], 
           6, 
           If[$CellContext`hint$$, 
            
            Row[{"hint: the vapor mole fraction for ", \
$CellContext`component$, " is ", 
              Subsuperscript[
               Style["P", Italic], $CellContext`comp$, "sat"], "/", 
              Style["P", Italic]}], 
            
            Column[{"step 6: drag each point vertically to the pressure where \
vapor with that mole fraction", 
              "is in equilibrium with pure organic liquid, then check \
solution"}]], 7, ""]; Graphics[{Thick, 
           Map[Line[{{#, 
               Part[$CellContext`range$, 1]}, {#, 0.02 
               Part[$CellContext`range$, 2]}}]& , 
            Range[0.1, 0.9, 0.1]], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 1"}], $CellContext`colW], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 0"}], $CellContext`colC]}], 17], {0, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           Text[
            Style[
             Column[{
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], $CellContext`comp$], 
                  " = 1"}], $CellContext`colC], 
               Style[
                Row[{
                  Subscript[
                   Style["z", Italic], "w"], " = 0"}], $CellContext`colW]}], 
             17], {1, 
             Part[$CellContext`range$, 1]}, {0, 2.25}], 
           If[$CellContext`CS$$ == 1, {
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Row[{"pressure = ", 
                  NumberForm[
                   Part[$CellContext`pressure$$, 2], {4, 1}], " bar"}], 17, 
                Background -> White], {0.5, 
                Part[$CellContext`pressure$$, 2]}, {0, 
                If[
                Part[$CellContext`pressure$$, 2] > 
                 Part[$CellContext`range$, 2] - 0.5, 1.5, -1.5]}]], 
             Text[
              Style[
               Column[{
                 Row[{"temperature = ", $CellContext`T$, " \[Degree]C"}], 
                 Row[{"saturation pressures: ", 
                   Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                   " = ", 
                   NumberForm[
                    $CellContext`Psat$[1], {4, 1}], " bar, ", 
                   Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                   NumberForm[
                    $CellContext`Psat$[2], {4, 1}], " bar"}]}, Center], 17, 
               Background -> White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], {Dashed, 
              Line[{{0, 
                 Part[$CellContext`pressure$$, 2]}, {1, 
                 Part[$CellContext`pressure$$, 2]}}]}, 
             $CellContext`pt1[$CellContext`pressure$$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}], 
               Text[
                Style[
                 Row[{"total pressure = ", 
                   NumberForm[$CellContext`P$, {4, 1}], " bar"}], 17, 
                 Background -> White], {0.5, $CellContext`P$}, {0, -1.5}]}]}], 
           If[$CellContext`CS$$ > 1, 
            Line[{{0, $CellContext`P$}, {1, $CellContext`P$}}]], 
           If[$CellContext`CS$$ == 2, {
             $CellContext`pt1[$CellContext`twoliquids$$, 
              If[
               And[
               Part[$CellContext`twoliquids$$, 
                  2] > $CellContext`P$, $CellContext`solution$$], \
$CellContext`colS, Black]], 
             If[$CellContext`solution$$, 
              Text[
               Style[
                Row[{"two liquids are in equilibrium in the region above ", 
                  NumberForm[$CellContext`P$, {4, 1}], " bar"}], 
                17, $CellContext`colS, Background -> White], {
               0.5, $CellContext`P$}, {0, -2.5}]]}], 
           If[$CellContext`CS$$ == 3, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             $CellContext`pt1[$CellContext`pureC$$, $CellContext`colC], 
             $CellContext`pt1[$CellContext`pureW$$, $CellContext`colW], 
             If[$CellContext`solution$$, {
               $CellContext`pt2[{0, 
                 $CellContext`Py$[2][0]}, $CellContext`colW], 
               $CellContext`pt2[{1, 
                 $CellContext`Py$[1][1]}, $CellContext`colC]}]}], 
           If[$CellContext`CS$$ > 3, {
             Line[{{0, 
                $CellContext`Py$[2][0]}, {0, 
                Part[$CellContext`range$, 2]}}], 
             Line[{{1, 
                $CellContext`Py$[1][1]}, {1, 
                Part[$CellContext`range$, 2]}}]}], 
           If[3 < $CellContext`CS$$ < 7, {
             $CellContext`pt2[{0, 
               $CellContext`Py$[2][0]}, Black], 
             $CellContext`pt2[{1, 
               $CellContext`Py$[1][1]}, Black]}], 
           If[$CellContext`CS$$ == 4, {
             Text[
              Style[
               Row[{"saturation pressures: ", 
                 Subsuperscript[$CellContext`p, $CellContext`comp$, "sat"], 
                 " = ", 
                 NumberForm[
                  $CellContext`Psat$[1], {4, 1}], " bar, ", 
                 Subsuperscript[$CellContext`p, "w", "sat"], " = ", 
                 NumberForm[
                  $CellContext`Psat$[2], {4, 1}], " bar"}], 17, Background -> 
               White], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -1.5}], 
             If[$CellContext`solution$$ == False, 
              Text[
               Style[
                Column[{
                  Row[{"mole fraction = ", 
                    NumberForm[
                    Part[$CellContext`vapor$$, 1], {2, 2}]}], 
                  Row[{
                    NumberForm[
                    Part[$CellContext`vapor$$, 2], {3, 2}], " bar"}]}, 
                 Center], 17, Background -> White], $CellContext`vapor$$, {0, 
               2}]], 
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`colS]]}], 
           If[4 < $CellContext`CS$$ < 7, 
            $CellContext`pt2[{$CellContext`ypoint$, $CellContext`P$}, Black]], 
           If[$CellContext`CS$$ == 5, {{Dashed, 
              Line[{{0, 
                 $CellContext`Py$[2][
                 0]}, $CellContext`phase1$, $CellContext`phase2$, \
$CellContext`phase3$, {$CellContext`ypoint$, $CellContext`P$}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase1$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase1$, {
               Switch[$CellContext`part$, 1, 0, 2, 0.5, 3, 0], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase2$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase2$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase3$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase3$, {
               Switch[$CellContext`part$, 1, 0, 2, -0.5, 3, 0], 2}], 
             $CellContext`pt1[$CellContext`phase1$, Black], 
             $CellContext`pt1[$CellContext`phase2$, Black], 
             $CellContext`pt1[$CellContext`phase3$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[0, $CellContext`ypoint$, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 5, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[0, $CellContext`ypoint$, 0.01]]]], 
           If[$CellContext`CS$$ == 6, {{Dashed, 
              
              Line[{{$CellContext`ypoint$, $CellContext`P$}, \
$CellContext`phase4$, $CellContext`phase5$, $CellContext`phase6$, {1, 
                 $CellContext`Py$[1][1]}}]}, 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase4$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase4$, {
               Switch[$CellContext`part$, 1, 0.5, 2, 0, 3, 0.5], 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase5$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase5$, {0, 2}], 
             Text[
              Style[
               Row[{
                 NumberForm[
                  Part[$CellContext`phase6$, 2], {3, 2}], " bar"}], 17, 
               Background -> White], $CellContext`phase6$, {
               Switch[$CellContext`part$, 1, 0, 2, 0, 3, -0.5], 2}], 
             $CellContext`pt1[$CellContext`phase4$, Black], 
             $CellContext`pt1[$CellContext`phase5$, Black], 
             $CellContext`pt1[$CellContext`phase6$, Black], 
             If[$CellContext`solution$$, {$CellContext`colS, 
               Line[
                Map[{#, 
                  $CellContext`Pdp$[#]}& , 
                 Range[$CellContext`ypoint$, 1, 0.01]]]}]}], 
           If[$CellContext`CS$$ > 6, 
            Line[
             Map[{#, 
               $CellContext`Pdp$[#]}& , 
              Range[$CellContext`ypoint$, 1, 0.01]]]], 
           If[$CellContext`CS$$ == 7, {
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18], {
              0.5, $CellContext`P$}, {0, -2.5}], 
             Text[
              Style[
               Row[{"liquid ", 
                 Style["water", $CellContext`colW], " + ", 
                 Style["vapor", $CellContext`colV]}], 18, Background -> 
               White], {0, $CellContext`P$}, {-1.2, 1.2}], 
             Text[
              Style[
               Row[{
                 Style["vapor", $CellContext`colV], " + liquid ", 
                 Style[$CellContext`component$, $CellContext`colC]}], 18, 
               Background -> White], {1, $CellContext`P$}, {1, 1.2}], 
             Text[
              Style["vapor", 18, $CellContext`colV], {0.5, 
               Part[$CellContext`range$, 1]}, {0, -5}]}]}, 
          PlotRange -> {{0, 1}, $CellContext`range$}, PlotRangeClipping -> 
          False, Frame -> True, FrameLabel -> {
            Row[{$CellContext`component$, " mole fraction"}], 
            "pressure (bar)"}, LabelStyle -> {17, Black}, 
          FrameTicks -> {{All, All}, {All, None}}, FrameTicksStyle -> Black, 
          ImageSize -> {600, 420}, AspectRatio -> Full, 
          ImagePadding -> {{40, 25}, {70, 
             If[
              Or[
               
               Or[$CellContext`CS$$ == 1, $CellContext`CS$$ == 
                7], $CellContext`hint$$], 30, 10]}}, GridLines -> 
          If[$CellContext`CS$$ < 7, {
             Range[0, 1, 0.05], 
             Range[
              Part[$CellContext`range$, 1], 
              Part[$CellContext`range$, 2], 0.5]}, None], GridLinesStyle -> 
          GrayLevel[0.85], PlotLabel -> Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`CS$$, 7, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`pressure$$, {0.5, 4}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`twoliquids$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`pureC$$, {0.7, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`pureW$$, {0.3, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`phase1B$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`phase2B$$, {0.3035, 1.36}}, Automatic, 
         ControlType -> Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`phase3B$$, {0.5035000000000001, 1.95}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`phase1T$$, {0.1, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`phase2T$$, {0.2, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         14}, {{$CellContext`phase3T$$, {0.3, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         15}, {{$CellContext`phase1H$$, {0.1, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         16}, {{$CellContext`phase2H$$, {0.35, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         17}, {{$CellContext`phase3H$$, {0.6, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         18}, {{$CellContext`phase4B$$, {0.65, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         19}, {{$CellContext`phase5B$$, {0.75, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         20}, {{$CellContext`phase6B$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         21}, {{$CellContext`phase4T$$, {0.5, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         22}, {{$CellContext`phase5T$$, {0.7, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         23}, {{$CellContext`phase6T$$, {0.9, 0.6}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         24}, {{$CellContext`phase4H$$, {0.75, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         25}, {{$CellContext`phase5H$$, {0.85, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         26}, {{$CellContext`phase6H$$, {0.95, 0.65}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 27}, 
        Grid[{{
           Button[
           " new problem ", {
            If[$CellContext`reset$$ < 
               1000, $CellContext`reset$$ = $CellContext`reset$$ + 
                1, $CellContext`reset$$ = $CellContext`reset$$ - 
                1]; $CellContext`CS$$ = 1; $CellContext`hint$$ = 
              False; $CellContext`solution$$ = False; Null}], 
           Manipulate`Place[1], 
           Button[
            Dynamic[
             
             Switch[$CellContext`CS$$, 1, "(1) three phases coexist", 2, 
              "(2) two liquids present", 3, "(3) vapor-liquid equilibrium", 4,
               "(4) vapor mole fraction", 5, "(5) draw water phase boundary", 
              6, "(6) draw organic phase boundary", 7, "(7) solved diagram"]],
             ImageSize -> 195], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 2 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 3 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 4 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 5 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}], 6 -> 
             Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`CS$$, Less, 
                  7], $CellContext`CS$$ = $CellContext`CS$$ + 
                  1, $CellContext`CS$$ = 7], 
                
                If[$CellContext`CS$$ == $CellContext`CS$$, \
{$CellContext`solution$$ = False; $CellContext`hint$$ = False; Null}]}]}, 
            Dynamic[$CellContext`CS$$]], 
           Manipulate`Place[2], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 3 -> 
             Manipulate`Place[4], 4 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`CS$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[5], 2 -> Manipulate`Place[6], 3 -> Row[{
                Manipulate`Place[7], 
                Manipulate`Place[8]}], 4 -> Manipulate`Place[9], 5 -> 
             PaneSelector[{1 -> Row[{
                   Manipulate`Place[10], 
                   Manipulate`Place[11], 
                   Manipulate`Place[12]}], 2 -> Row[{
                   Manipulate`Place[13], 
                   Manipulate`Place[14], 
                   Manipulate`Place[15]}], 3 -> Row[{
                   Manipulate`Place[16], 
                   Manipulate`Place[17], 
                   Manipulate`Place[18]}]}, 
               Dynamic[$CellContext`part]], 6 -> PaneSelector[{1 -> Row[{
                   Manipulate`Place[19], 
                   Manipulate`Place[20], 
                   Manipulate`Place[21]}], 2 -> Row[{
                   Manipulate`Place[22], 
                   Manipulate`Place[23], 
                   Manipulate`Place[24]}], 3 -> Row[{
                   Manipulate`Place[25], 
                   Manipulate`Place[26], 
                   Manipulate`Place[27]}]}, 
               Dynamic[$CellContext`part]]}, 
            Dynamic[$CellContext`CS$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {256., 263.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`part = 1, 
       Attributes[Subsuperscript] = {NHoldRest, ReadProtected}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`colW = 
       RGBColor[0, 0, 1], $CellContext`colC = 
       RGBColor[1, 0.4, 0], $CellContext`p = 
       Style["P", Italic], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colS = 
       RGBColor[0, 0.6, 0], $CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0.5, 0, 0.5], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->50141922,ExpressionUUID->"cc15620d-9c58-4c10-8f46-364b5bf126e3"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"2d0761bc-91a9-4ff7-8a51-66c473fe9571"],

Cell[TextData[{
 "Immiscible components do not mix in the liquid phase, and each exerts its \
own saturation pressure ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", 
    StyleBox["b",
     FontSlant->"Plain"], "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"87ac736e-73d9-4c9b-8f94-847a51bff62c"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", 
    StyleBox["w",
     FontSlant->"Plain"], "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"b0c8829c-661d-4258-89d6-17cb2758d268"],
 " when present as a liquid; the subscripts ",
 Cell[BoxData[
  FormBox[
   StyleBox[Cell[
    "b", "InlineMath",ExpressionUUID->"71bede21-df38-4158-9504-a7dce6721ec4"],
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "ff5a08da-ecca-44d3-9106-a900f995432b"],
 " and ",
 Cell[BoxData[
  FormBox[
   StyleBox["w",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "0dcd799d-58f2-4f12-9b22-5770a2d05197"],
 " refer to benzene and water. The equations are the same for the other \
organics (toluene, ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "9a868387-a6a5-4046-937b-7c14b3bfdd35"],
 "-hexane).  The total pressure ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]], "InlineMath",ExpressionUUID->
  "03f7e616-152c-4cfb-8602-7fd3a05c2985"],
 " above the two immiscible liquids is equal to the sum of their saturation \
pressures:"
}], "DetailNotes",
 CellID->405412440,ExpressionUUID->"31359958-7cb8-447a-9897-743a1798381c"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["b",
       FontSlant->"Plain"], "sat"], "+", 
     SubsuperscriptBox["P", 
      StyleBox["w",
       FontSlant->"Plain"], "sat"]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"07c32358-43c7-41e1-a1f3-da79b9852dd2"],
 ","
}], "DetailNotes",
 CellID->5738764,ExpressionUUID->"ae8c885a-c3bb-49d5-b729-baafd63085ac"],

Cell["\<\
the saturation pressures are calculated using the Antoine equation:\
\>", "DetailNotes",
 CellID->224896492,ExpressionUUID->"dd35de36-26f3-4e71-8a68-73300155976f"],

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
  "InlineMath",ExpressionUUID->"0cb86fa6-9132-40e3-af63-e123997958d0"],
 ","
}], "DetailNotes",
 CellID->454466861,ExpressionUUID->"24d449e4-2a19-438e-a55d-cfa219e0fe0b"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "i", "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"05455777-b5f1-472a-a127-999ac26e1476"],
 " is the saturation pressure of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", 
    RowBox[{"(", 
     RowBox[{
      StyleBox["b",
       FontSlant->"Plain"], ",", 
      StyleBox["w",
       FontSlant->"Plain"]}], 
     StyleBox[")",
      FontSlant->"Plain"]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"2ee5d26e-398c-46ca-adcf-a1ec070af609"],
 " (bar), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["A", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "d42d4119-ae54-4f92-8b02-3791294900fb"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["B", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "98fcf5cc-90c9-49d8-b2ca-4ffe4e3f1fe5"],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "fb39a524-a55f-4dfa-8fb1-238add9f47f4"],
 " are Antoine constants, and ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath",ExpressionUUID->
  "62deed21-8b28-4912-a640-786892d2cfe2"],
 " is temperature (\[Degree]C)."
}], "DetailNotes",
 CellID->27257226,ExpressionUUID->"670e5c69-a586-4511-b694-751819c57bd5"],

Cell["\<\
For the benzene-water system, for conditions where benzene condenses, the \
dew-point curve is:\
\>", "DetailNotes",
 CellID->123100155,ExpressionUUID->"61f69c4a-a288-4d4a-9311-99e70f89ec4d"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     SubsuperscriptBox["P", 
      StyleBox["b",
       FontSlant->"Plain"], "sat"], "/", 
     SubscriptBox["y", 
      StyleBox["b",
       FontSlant->"Plain"]]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"916ee394-6708-49a4-89b0-d97b2fbb4328"],
 ","
}], "DetailNotes",
 CellID->254831656,ExpressionUUID->"8eb98d18-df4e-48f7-8a2b-c07b8dd7eee6"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", 
    StyleBox["b",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "58528bc5-8304-4bc2-b41a-dfcf3da258ff"],
 " is the mole fraction of benzene in the vapor phase."
}], "DetailNotes",
 CellID->201254529,ExpressionUUID->"1b1d58be-f093-40e1-82fa-4fb1c6a3254d"],

Cell["\<\
For conditions where water condenses, the dew-point curve is:\
\>", "DetailNotes",
 CellID->29936162,ExpressionUUID->"fa3e8a32-9c7f-481d-b822-2830b3bc1134"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     RowBox[{
      SubsuperscriptBox["P", 
       StyleBox["w",
        FontSlant->"Plain"], "sat"], "/", 
      SubscriptBox["y", 
       StyleBox["w",
        FontSlant->"Plain"]]}], "=", 
     RowBox[{
      SubsuperscriptBox["P", 
       StyleBox["w",
        FontSlant->"Plain"], "sat"], "/", 
      RowBox[{"(", 
       RowBox[{"1", "-", 
        SubscriptBox["y", 
         StyleBox["b",
          FontSlant->"Plain"]]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"bb16e500-c7cf-4970-bd47-54bf2c39e0ce"],
 ","
}], "DetailNotes",
 CellID->142466832,ExpressionUUID->"4e875ebf-13e8-494b-8465-56164792d255"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", 
    StyleBox["w",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "952b0369-2484-42b0-b99a-0af829cccaaf"],
 " is the mole fraction of water in the vapor phase and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["y", 
      StyleBox["b",
       FontSlant->"Plain"]], "+", 
     SubscriptBox["y", 
      StyleBox["w",
       FontSlant->"Plain"]]}], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"a90d5627-8315-4ad8-b8e9-e3c7bd515d7b"],
 "."
}], "DetailNotes",
 CellID->440563023,ExpressionUUID->"32c37332-e1ce-4ff5-833d-1283a4834e4a"],

Cell["\<\
The screencast video at [1] explains how to use a similar Demonstration.\
\>", "DetailNotes",
 CellID->33595939,ExpressionUUID->"4ef9aa8c-5e5b-4e4d-bde8-ed6d85a0279d"],

Cell["Reference", "DetailNotes",
 CellID->36061225,ExpressionUUID->"06d47013-6ab0-4397-94e9-28e5bd1742ad"],

Cell[TextData[{
 "[1] ",
 StyleBox["Immiscible Liquids on a Pressure-Composition Diagram",
  FontSlant->"Italic"],
 ". ",
 ButtonBox["www.colorado.edu/learncheme/thermodynamics/ImmiscibleLiquidsPxy.\
html",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://www.colorado.edu/learncheme/thermodynamics/\
ImmiscibleLiquidsPxy.html"], None},
  ButtonNote->
   "http://www.colorado.edu/learncheme/thermodynamics/ImmiscibleLiquidsPxy.\
html"],
 "."
}], "DetailNotes",
 CellID->31579617,ExpressionUUID->"0fbe308c-0388-4eea-8599-8256a9542966"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"ac9d8c81-8481-4888-bc8f-c8ae5b72e977"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"e9a2c0d0-ca68-4bc2-b92a-7a5812c61bf3"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"bf1dd555-3d6a-440d-a693-c2c82c97be28"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "4a57e063-ac4c-4680-8fbb-9c725e0ffba1"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"844896a4-146d-48fd-85cd-16f0c655f563"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Drag Locators",ExpressionUUID->"10ea92f0-bd9c-49b5-a056-39835228d8cb"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"af86c568-4a0a-4735-833d-f6e642a3736d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "b74ce96a-87d4-432e-a2bf-5dfc8cca7244"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"88b37c7e-6545-4f64-af5e-\
907feb37e8a2"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"0fa8e6b8-8dac-405b-a503-9d80572dd637"]}],
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
  "SliderZoom",ExpressionUUID->"04255fb0-8848-4842-bdee-cf59a5dacb7e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "8607e909-579d-4b10-8117-910a4612a427"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"d5f7567c-e680-499e-a137-0871b58e8596"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "27eeb16c-43db-47cb-b9b4-4d39582bbef3"]}],
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
  "AutomaticAnimation",ExpressionUUID->"b69333b8-2518-476a-bd9f-08b4ffc93de9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "3e305228-37d6-4bdd-a5d2-2f591a397498"]}],
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
  "BookmarkAnimation",ExpressionUUID->"7c43de71-69f4-4092-955d-e7bca8de40be"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"dec0052a-906e-4b63-9aba-49d42eab5a02"],

Cell["chemical engineering", "SearchTerms",
 CellID->124810311,ExpressionUUID->"e0d5c90b-665c-4c11-880e-3c887a693424"],

Cell["physical chemistry", "SearchTerms",
 CellID->697262478,ExpressionUUID->"c07b64a4-67d7-4848-bc49-e78a42ce56de"],

Cell["thermodynamics", "SearchTerms",
 CellID->277300046,ExpressionUUID->"22567c73-c520-40a3-8098-415e65b0eb88"],

Cell["pressure-composition diagram", "SearchTerms",
 CellID->618358822,ExpressionUUID->"3288d40f-8f8b-4fbf-884a-5becb2970043"],

Cell["immiscible liquids", "SearchTerms",
 CellID->851681122,ExpressionUUID->"91a247d1-90ec-4e9f-818c-e18e5962fada"],

Cell["phase equilibrium", "SearchTerms",
 CellID->219688208,ExpressionUUID->"62d31f39-92e3-4aa0-96e6-990ef2a912a6"],

Cell["VLLE", "SearchTerms",
 CellID->42083797,ExpressionUUID->"d56b7979-34e8-4aae-8631-245a2f36c636"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"983c1b0f-6c91-44b3-8118-b5806cb3e162"],

Cell[TextData[ButtonBox["Immiscible Liquids on a Pressure-Composition Diagram",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
ImmiscibleLiquidsOnPressureCompositionDiagram/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/\
ImmiscibleLiquidsOnPressureCompositionDiagram/"]], "RelatedLinks",
 CellID->492612315,ExpressionUUID->"35a12c36-cebf-470d-a57f-a9a8acd7de89"],

Cell[TextData[ButtonBox["Temperature-Composition Diagram for Immiscible \
Liquids",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
TemperatureCompositionDiagramForImmiscibleLiquids/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/\
TemperatureCompositionDiagramForImmiscibleLiquids/"]], "RelatedLinks",
 CellID->34735671,ExpressionUUID->"ed24b354-e7ee-43c6-bdc9-cb4685c982ce"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"6f73508e-431d-409d-8d4b-b71ecf3c8d1e"],

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
 CellID->31372289,ExpressionUUID->"4c49be6c-c9b9-4782-ae78-746a882d02ea"],

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
 CellID->344056814,ExpressionUUID->"431a8dee-4eb5-4373-ba46-94b9409ce9ff"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613,ExpressionUUID->"dcc57e5c-b069-4da8-aad2-0847e1309bd6"]
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
  Cell[283448, 6083, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"bf1dd555-3d6a-440d-a693-c2c82c97be28",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[283879, 6095, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"844896a4-146d-48fd-85cd-16f0c655f563",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[284682, 6116, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"af86c568-4a0a-4735-833d-f6e642a3736d",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[285141, 6131, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"88b37c7e-6545-4f64-af5e-907feb37e8a2",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[285905, 6152, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"04255fb0-8848-4842-bdee-cf59a5dacb7e",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[286868, 6177, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"d5f7567c-e680-499e-a137-0871b58e8596",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[287296, 6190, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"b69333b8-2518-476a-bd9f-08b4ffc93de9",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[288884, 6226, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"7c43de71-69f4-4092-955d-e7bca8de40be",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 293430, 6357},
 {"RotateAndZoomIn3D", 293596, 6360},
 {"DragLocators", 293762, 6363},
 {"CreateAndDeleteLocators", 293934, 6366},
 {"SliderZoom", 294104, 6369},
 {"GamepadControls", 294266, 6372},
 {"AutomaticAnimation", 294436, 6375},
 {"BookmarkAnimation", 294609, 6378}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 147, 2, 74, "DemoTitle",ExpressionUUID->"6afc1073-fc46-4969-8e18-380bbd3209b7"],
Cell[CellGroupData[{
Cell[1682, 41, 88, 0, 275, "InitializationSection",ExpressionUUID->"58b4dd60-f48f-4854-8d32-2d0bb9722f73"],
Cell[1773, 43, 434, 11, 29, "Input",ExpressionUUID->"edf921f1-b19d-4bb9-a3a8-5f7d62785a43",
 InitializationCell->True,
 CellID->377804671],
Cell[2210, 56, 461, 12, 33, "Input",ExpressionUUID->"ac2c6c92-bb62-4ecc-9397-ac21bf6ccd81",
 InitializationCell->True,
 CellID->350103],
Cell[2674, 70, 361, 10, 33, "Input",ExpressionUUID->"e69f9fea-0ef5-4e62-9a1e-bde8680e5787",
 InitializationCell->True,
 CellID->112037437],
Cell[3038, 82, 239, 6, 33, "Input",ExpressionUUID->"e8d6ba8a-318f-4bbe-bc79-8d336487b0ba",
 InitializationCell->True,
 CellID->11297781]
}, Closed]],
Cell[CellGroupData[{
Cell[3314, 93, 84, 0, 189, "ManipulateSection",ExpressionUUID->"441322ef-a556-4351-9f2d-77e4f100545c"],
Cell[CellGroupData[{
Cell[3423, 97, 73454, 1705, 3473, "Input",ExpressionUUID->"976fb571-c511-409a-8c90-b24b233a5b81"],
Cell[76880, 1804, 39501, 796, 531, "Output",ExpressionUUID->"b7fbf61d-1c38-457b-92a8-c47097d5b8a4",
 CellID->95579805]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[116427, 2606, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"b479676e-d1a5-4994-b969-cee65c61aa02"],
Cell[116521, 2608, 790, 13, 53, "ManipulateCaption",ExpressionUUID->"b2129e35-390e-4c1e-a4d3-6773dffb944e",
 CellID->768350101]
}, Open  ]],
Cell[CellGroupData[{
Cell[117348, 2626, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"30d0b4b0-ce4c-4ddf-93f1-84ca772360da"],
Cell[117434, 2628, 39502, 796, 531, "Output",ExpressionUUID->"52f2b943-7805-438d-9564-9605b557abbf",
 CellID->544167155]
}, Open  ]],
Cell[CellGroupData[{
Cell[156973, 3429, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"1cd3326e-b44f-4e40-957b-8b812a0e39d7"],
Cell[157059, 3431, 39488, 795, 531, "Output",ExpressionUUID->"2039590a-4c3e-45d3-9673-8c721204d59f",
 CellID->48294466],
Cell[196550, 4228, 39631, 801, 531, "Output",ExpressionUUID->"03089081-3ff3-4908-afe3-87fcadf7379e",
 CellID->840081667],
Cell[236184, 5031, 39630, 801, 531, "Output",ExpressionUUID->"cc15620d-9c58-4c10-8f46-364b5bf126e3",
 CellID->50141922]
}, Open  ]],
Cell[CellGroupData[{
Cell[275851, 5837, 81, 0, 335, "DetailsSection",ExpressionUUID->"2d0761bc-91a9-4ff7-8a51-66c473fe9571"],
Cell[275935, 5839, 1540, 41, 41, "DetailNotes",ExpressionUUID->"31359958-7cb8-447a-9897-743a1798381c",
 CellID->405412440],
Cell[277478, 5882, 445, 14, 25, "DetailNotes",ExpressionUUID->"ae8c885a-c3bb-49d5-b729-baafd63085ac",
 CellID->5738764],
Cell[277926, 5898, 173, 3, 22, "DetailNotes",ExpressionUUID->"dd35de36-26f3-4e71-8a68-73300155976f",
 CellID->224896492],
Cell[278102, 5903, 514, 16, 39, "DetailNotes",ExpressionUUID->"24d449e4-2a19-438e-a55d-cfa219e0fe0b",
 CellID->454466861],
Cell[278619, 5921, 1293, 40, 25, "DetailNotes",ExpressionUUID->"670e5c69-a586-4511-b694-751819c57bd5",
 CellID->27257226],
Cell[279915, 5963, 201, 4, 22, "DetailNotes",ExpressionUUID->"61f69c4a-a288-4d4a-9311-99e70f89ec4d",
 CellID->123100155],
Cell[280119, 5969, 435, 14, 25, "DetailNotes",ExpressionUUID->"8eb98d18-df4e-48f7-8a2b-c07b8dd7eee6",
 CellID->254831656],
Cell[280557, 5985, 361, 10, 23, "DetailNotes",ExpressionUUID->"1b1d58be-f093-40e1-82fa-4fb1c6a3254d",
 CellID->201254529],
Cell[280921, 5997, 166, 3, 22, "DetailNotes",ExpressionUUID->"fa3e8a32-9c7f-481d-b822-2830b3bc1134",
 CellID->29936162],
Cell[281090, 6002, 710, 24, 25, "DetailNotes",ExpressionUUID->"4e875ebf-13e8-494b-8465-56164792d255",
 CellID->142466832],
Cell[281803, 6028, 678, 22, 23, "DetailNotes",ExpressionUUID->"32c37332-e1ce-4ff5-833d-1283a4834e4a",
 CellID->440563023],
Cell[282484, 6052, 177, 3, 22, "DetailNotes",ExpressionUUID->"4ef9aa8c-5e5b-4e4d-bde8-ed6d85a0279d",
 CellID->33595939],
Cell[282664, 6057, 106, 1, 22, "DetailNotes",ExpressionUUID->"06d47013-6ab0-4397-94e9-28e5bd1742ad",
 CellID->36061225],
Cell[282773, 6060, 543, 16, 22, "DetailNotes",ExpressionUUID->"0fbe308c-0388-4eea-8599-8256a9542966",
 CellID->31579617]
}, Open  ]],
Cell[CellGroupData[{
Cell[283353, 6081, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"ac9d8c81-8481-4888-bc8f-c8ae5b72e977"],
Cell[283448, 6083, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"bf1dd555-3d6a-440d-a693-c2c82c97be28",
 CellTags->"ResizeImages"],
Cell[283879, 6095, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"844896a4-146d-48fd-85cd-16f0c655f563",
 CellTags->"RotateAndZoomIn3D"],
Cell[284682, 6116, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"af86c568-4a0a-4735-833d-f6e642a3736d",
 CellTags->"DragLocators"],
Cell[285141, 6131, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"88b37c7e-6545-4f64-af5e-907feb37e8a2",
 CellTags->"CreateAndDeleteLocators"],
Cell[285905, 6152, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"04255fb0-8848-4842-bdee-cf59a5dacb7e",
 CellTags->"SliderZoom"],
Cell[286868, 6177, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"d5f7567c-e680-499e-a137-0871b58e8596",
 CellTags->"GamepadControls"],
Cell[287296, 6190, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"b69333b8-2518-476a-bd9f-08b4ffc93de9",
 CellTags->"AutomaticAnimation"],
Cell[288884, 6226, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"7c43de71-69f4-4092-955d-e7bca8de40be",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[289951, 6255, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"dec0052a-906e-4b63-9aba-49d42eab5a02"],
Cell[290039, 6257, 118, 1, 22, "SearchTerms",ExpressionUUID->"e0d5c90b-665c-4c11-880e-3c887a693424",
 CellID->124810311],
Cell[290160, 6260, 116, 1, 22, "SearchTerms",ExpressionUUID->"c07b64a4-67d7-4848-bc49-e78a42ce56de",
 CellID->697262478],
Cell[290279, 6263, 112, 1, 22, "SearchTerms",ExpressionUUID->"22567c73-c520-40a3-8098-415e65b0eb88",
 CellID->277300046],
Cell[290394, 6266, 126, 1, 22, "SearchTerms",ExpressionUUID->"3288d40f-8f8b-4fbf-884a-5becb2970043",
 CellID->618358822],
Cell[290523, 6269, 116, 1, 22, "SearchTerms",ExpressionUUID->"91a247d1-90ec-4e9f-818c-e18e5962fada",
 CellID->851681122],
Cell[290642, 6272, 115, 1, 22, "SearchTerms",ExpressionUUID->"62d31f39-92e3-4aa0-96e6-990ef2a912a6",
 CellID->219688208],
Cell[290760, 6275, 101, 1, 22, "SearchTerms",ExpressionUUID->"d56b7979-34e8-4aae-8631-245a2f36c636",
 CellID->42083797]
}, Open  ]],
Cell[CellGroupData[{
Cell[290898, 6281, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"983c1b0f-6c91-44b3-8118-b5806cb3e162"],
Cell[290987, 6283, 415, 8, 22, "RelatedLinks",ExpressionUUID->"35a12c36-cebf-470d-a57f-a9a8acd7de89",
 CellID->492612315],
Cell[291405, 6293, 426, 9, 22, "RelatedLinks",ExpressionUUID->"ed24b354-e7ee-43c6-bdc9-cb4685c982ce",
 CellID->34735671]
}, Open  ]],
Cell[CellGroupData[{
Cell[291868, 6307, 80, 0, 141, "AuthorSection",ExpressionUUID->"6f73508e-431d-409d-8d4b-b71ecf3c8d1e"],
Cell[291951, 6309, 385, 10, 22, "Author",ExpressionUUID->"4c49be6c-c9b9-4782-ae78-746a882d02ea",
 CellID->31372289],
Cell[292339, 6321, 393, 10, 22, "Author",ExpressionUUID->"431a8dee-4eb5-4373-ba46-94b9409ce9ff",
 CellID->344056814],
Cell[292735, 6333, 186, 4, 22, "Author",ExpressionUUID->"dcc57e5c-b069-4da8-aad2-0847e1309bd6",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature TupK2Iy7DRxdUAwh0kfRa1P1 *)
