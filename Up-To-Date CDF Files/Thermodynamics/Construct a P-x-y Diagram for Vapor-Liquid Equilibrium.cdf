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
NotebookDataLength[    224712,       4896]
NotebookOptionsPosition[    216281,       4729]
NotebookOutlinePosition[    218448,       4784]
CellTagsIndexPosition[    218112,       4772]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Construct a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "-", "x", "-", "y"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"a4869bed-553e-4e41-8d39-929f4d5414c1"],
 " Diagram for Vapor-Liquid Equilibrium"
}], "DemoTitle",ExpressionUUID->"add436c1-c03b-4cf9-a184-0cba1e291a21"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"0a2391c1-c92a-4ee0-99a7-2667dc52066d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"colL", "=", "Blue"}], ";", 
  RowBox[{"colV", "=", 
   RowBox[{"RGBColor", "[", 
    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], ";", 
  RowBox[{"colS", "=", "Orange"}], ";"}]], "Input",
 InitializationCell->True,
 CellID->214664291,ExpressionUUID->"50825b2b-089f-4397-a8bc-223e213ef553"],

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
 CellID->94651572,ExpressionUUID->"79a6043f-6429-4ffc-a7ab-d43aa0eabadf"],

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
 CellID->254988361,ExpressionUUID->"24d09faa-1c02-485b-9082-5d34a39fc1c2"]
}, Closed]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"5acde99c-316b-4922-a9a6-424be1b994ba"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "Psat", ",", "Px", ",", "Py", ",", "P", ",", "xp", ",", "xL", 
       ",", "xV", ",", "leverV", ",", "plotlabel"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"SeedRandom", "[", "reset", "]"}], ";", 
      RowBox[{"T", "=", 
       RowBox[{"RandomInteger", "[", 
        RowBox[{"{", 
         RowBox[{"100", ",", "150"}], "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Psat", "[", "1", "]"}], "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"4.00266", "-", 
          FractionBox["1171.53", 
           RowBox[{"T", "+", "224.216"}]]}], ")"}]}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"n", "-", "hexane"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Psat", "[", "2", "]"}], "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"4.04867", "-", 
          FractionBox["1355.126", 
           RowBox[{"T", "+", "209.367"}]]}], ")"}]}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"n", "-", "octane"}], "*)"}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], ":=", 
       RowBox[{
        RowBox[{"x", "*", 
         RowBox[{"Psat", "[", "1", "]"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", 
         RowBox[{"Psat", "[", "2", "]"}]}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], ":=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", 
           RowBox[{"Psat", "[", "1", "]"}]], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], 
           RowBox[{"Psat", "[", "2", "]"}]]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"P", "=", 
       RowBox[{"RandomReal", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"Px", "[", "0", "]"}], "+", "0.5"}], ",", 
          RowBox[{
           RowBox[{"Px", "[", "1", "]"}], "-", "0.5"}]}], "}"}], "]"}]}], ";",
       "\[IndentingNewLine]", 
      RowBox[{"xp", "=", 
       RowBox[{"RandomReal", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"0.1", "+", "x"}], "/.", 
           RowBox[{"FindRoot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Px", "[", "x", "]"}], "\[Equal]", "P"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}], ",", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "0.1"}], "+", "x"}], "/.", 
           RowBox[{"FindRoot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Py", "[", "x", "]"}], "\[Equal]", "P"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}]}], "}"}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"xL", "=", 
       RowBox[{"x", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], "\[Equal]", "P"}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      RowBox[{"xV", "=", 
       RowBox[{"x", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Py", "[", "x", "]"}], "\[Equal]", "P"}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"leverV", "=", 
       FractionBox[
        RowBox[{"xp", "-", "xL"}], 
        RowBox[{"xV", "-", "xL"}]]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"bp1", "=", 
       RowBox[{"{", 
        RowBox[{"0.25", ",", 
         RowBox[{"bp1", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      RowBox[{"bp2", "=", 
       RowBox[{"{", 
        RowBox[{"0.5", ",", 
         RowBox[{"bp2", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      RowBox[{"bp3", "=", 
       RowBox[{"{", 
        RowBox[{"0.75", ",", 
         RowBox[{"bp3", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dp1", "=", 
       RowBox[{"{", 
        RowBox[{"0.35", ",", 
         RowBox[{"dp1", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      RowBox[{"dp2", "=", 
       RowBox[{"{", 
        RowBox[{"0.6", ",", 
         RowBox[{"dp2", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      RowBox[{"dp3", "=", 
       RowBox[{"{", 
        RowBox[{"0.85", ",", 
         RowBox[{"dp3", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"plotlabel", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"MCR", ",", "\[IndentingNewLine]", "1", ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", "\"\<hint: use Raoult's law for each component\>\"", 
           ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 1: click and drag the circles vertically to draw the \
bubble-point curve,\>\"", ",", "\"\<then check solution\>\""}], "}"}], 
            "]"}]}], "]"}], ",", "\[IndentingNewLine]", "2", ",", 
         RowBox[{"If", "[", 
          RowBox[{
          "hint", ",", "\"\<hint: use Raoult's law for each component\>\"", 
           ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 2: click and drag the circles vertically to draw the \
dew-point curve,\>\"", ",", "\"\<then check solution\>\""}], "}"}], "]"}]}], 
          "]"}], ",", "\[IndentingNewLine]", "3", ",", 
         "\"\<step 3: click and drag the circle to the liquid region, then \
check solution\>\"", ",", "\[IndentingNewLine]", "4", ",", 
         "\"\<step 4: click and drag the circle to the vapor region, then \
check solution\>\"", ",", "\[IndentingNewLine]", "5", ",", 
         RowBox[{"If", "[", 
          RowBox[{"hint", ",", "\"\<hint: draw tie line\>\"", ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 5: move the blue and green circles to the liquid and \
vapor compositions that\>\"", ",", 
              "\"\<are in equilibrium for the mixture indicated by the black \
circle\>\""}], "}"}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", "6", ",", 
         RowBox[{"If", "[", 
          RowBox[{"hint", ",", "\"\<hint: use the lever rule\>\"", ",", 
           RowBox[{"Column", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,\>\"", ",", 
              "\"\<then check solution\>\""}], "}"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "7", ",", "\"\<\>\""}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Thick", ",", "\[IndentingNewLine]", 
          RowBox[{"pt2", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"1", ",", 
              RowBox[{"Psat", "[", "1", "]"}]}], "}"}], ",", "Black"}], "]"}],
           ",", 
          RowBox[{"pt2", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"Psat", "[", "2", "]"}]}], "}"}], ",", "Black"}], "]"}],
           ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"MAKE", " ", "BUBBLE"}], "-", 
             RowBox[{"POINT", " ", "CURVE", " ", 
              RowBox[{"(", "BLUE", ")"}]}]}], ",", " ", 
            RowBox[{"MCR", "=", "3"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "1"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"Psat", "[", "2", "]"}]}], "}"}], ",", "bp1", ",",
                    "bp2", ",", "bp3", ",", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"Psat", "[", "1", "]"}]}], "}"}]}], "}"}], 
                 "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"bp1", ",", "colL"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"bp2", ",", "colL"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"bp3", ",", "colL"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"solution", "\[Equal]", "False"}], ",", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", "colL", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    "#", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1.75"}], "}"}]}], "]"}], "&"}], "/@", 
                   RowBox[{"{", 
                    RowBox[{"bp1", ",", "bp2", ",", "bp3"}], "}"}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"#1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    "#1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"1.1", "*", "#2"}], ",", 
                    RowBox[{"-", "1.5"}]}], "}"}]}], "]"}], "&"}], "@@@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"Psat", "[", "1", "]"}]}], "}"}], ",", "1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"Psat", "[", "2", "]"}]}], "}"}], ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "}"}]}]}], 
                 "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{"colL", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{"Px", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "1", ",", "0.1"}], "]"}]}], "]"}]}], 
                 "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", ">", "1"}], ",", 
            RowBox[{"{", 
             RowBox[{"colL", ",", 
              RowBox[{"Line", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"#", ",", 
                   RowBox[{"Px", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", "1", ",", "0.1"}], "]"}]}], "]"}]}], 
             "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"MAKE", " ", "DEW"}], "-", 
             RowBox[{"POINT", " ", "CURVE", " ", 
              RowBox[{"(", "BLUE", ")"}]}]}], ",", " ", 
            RowBox[{"MCR", "=", "4"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "2"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"Psat", "[", "2", "]"}]}], "}"}], ",", "dp1", ",",
                    "dp2", ",", "dp3", ",", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"Psat", "[", "1", "]"}]}], "}"}]}], "}"}], 
                 "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"dp1", ",", "colV"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"dp2", ",", "colV"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"dp3", ",", "colV"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"solution", "\[Equal]", "False"}], ",", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", "colV", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    "#", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1.75"}], "}"}]}], "]"}], "&"}], "/@", 
                   RowBox[{"{", 
                    RowBox[{"dp1", ",", "dp2", ",", "dp3"}], "}"}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"#1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    "#1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"1.1", "*", "#2"}], ",", 
                    RowBox[{"-", "1.5"}]}], "}"}]}], "]"}], "&"}], "@@@", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", 
                    RowBox[{"Psat", "[", "1", "]"}]}], "}"}], ",", "1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"Psat", "[", "2", "]"}]}], "}"}], ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "}"}]}]}], 
                 "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", 
                 RowBox[{"colV", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{"Py", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "1", ",", "0.01"}], "]"}]}], "]"}]}], 
                 "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", ">", "2"}], ",", 
            RowBox[{"{", 
             RowBox[{"colV", ",", 
              RowBox[{"Line", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"#", ",", 
                   RowBox[{"Py", "[", "#", "]"}]}], "}"}], "&"}], "/@", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", "1", ",", "0.01"}], "]"}]}], "]"}]}], 
             "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"FIND", " ", "LIQUID", " ", "REGION"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "3"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"pt1", "[", 
               RowBox[{"liquid", ",", "Black"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                   "\"\<liquid present above the bubble-point curve\>\"", ",",
                     "17", ",", "colL", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", 
                    RowBox[{"Px", "[", "1", "]"}]}], "}"}]}], "]"}]}], 
               "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", ">", "3"}], ",", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<liquid\>\"", ",", "18", ",", "colL", ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.1", ",", "6.5"}], "}"}]}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"FIND", " ", "VAPOR", " ", "REGION"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "4"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"pt1", "[", 
               RowBox[{"vapor", ",", "Black"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                   "\"\<vapor present below the dew-point curve\>\"", ",", 
                    "17", ",", "colV", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", 
                    RowBox[{"Py", "[", "0", "]"}]}], "}"}]}], "]"}]}], 
               "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", ">", "4"}], ",", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<vapor\>\"", ",", "18", ",", "colV", ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.9", ",", "0.5"}], "}"}]}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"LEVER", " ", "RULE", " ", "LIQUID"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "5"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{"tieL", ",", 
                   RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{"tieV", ",", 
                   RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}]}], "}"}], "]"}]}], "}"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"pt1", "[", 
               RowBox[{"tieL", ",", "colL"}], "]"}], ",", 
              RowBox[{"pt1", "[", 
               RowBox[{"tieV", ",", "colV"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"#1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< bar\>\""}], "}"}]}], ",", "17", ",", "#2", ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                  "#1", ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "2"}], "}"}]}], "]"}], "&"}], "@@@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}], ",", "Black"}], "}"}], 
                 ",", 
                 RowBox[{"{", 
                  RowBox[{"tieL", ",", "colL"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"tieV", ",", "colV"}], "}"}]}], "}"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"solution", ",", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"Dashed", ",", "colL", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xV", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                    "colV", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xL", ",", "P"}], "}"}]}], "}"}], "]"}]}], "}"}], 
                  ",", "\[IndentingNewLine]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Thickness", "@", "0.007"}], ",", "Dotted", ",", 
                    "colL", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xL", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xL", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                    "colV", ",", 
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"xV", ",", "P"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xV", ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}], 
                  ",", "\[IndentingNewLine]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"PointSize", "@", "0.02"}], ",", "colL", ",", 
                    RowBox[{"Point", "@", 
                    RowBox[{"{", 
                    RowBox[{"xL", ",", "P"}], "}"}]}], ",", "colV", ",", 
                    RowBox[{"Point", "@", 
                    RowBox[{"{", 
                    RowBox[{"xV", ",", "P"}], "}"}]}]}], "}"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xL", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "17", ",", 
                    "colL"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "colL"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xL", ",", 
                    RowBox[{"0.15", "*", "P"}]}], "}"}]}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Framed", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xV", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "17", ",", 
                    "colV"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "colV"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"xV", ",", 
                    RowBox[{"0.15", "*", "P"}]}], "}"}]}], "]"}]}], 
                 "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.02"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"xp", ",", "P"}], "}"}]}]}], "}"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", ">", "5"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xV", ",", "P"}], "}"}]}], "}"}], "]"}], ",", 
                "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xp", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xL", ",", "P"}], "}"}]}], "}"}], "]"}]}], "}"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Thickness", "@", "0.007"}], ",", "Dotted", ",", 
                "colL", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xL", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xL", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                "colV", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"xV", ",", "P"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xV", ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.02"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"xp", ",", "P"}], "}"}]}], ",", "colL", ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"xL", ",", "P"}], "}"}]}], ",", "colV", ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{"xV", ",", "P"}], "}"}]}]}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Framed", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xL", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "17", ",", 
                    "colL"}], "]"}], ",", 
                  RowBox[{"Background", "\[Rule]", "White"}], ",", 
                  RowBox[{"FrameStyle", "\[Rule]", "colL"}], ",", 
                  RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"xL", ",", 
                  RowBox[{"0.15", "*", "P"}]}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Framed", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xV", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "17", ",", 
                    "colV"}], "]"}], ",", 
                  RowBox[{"Background", "\[Rule]", "White"}], ",", 
                  RowBox[{"FrameStyle", "\[Rule]", "colV"}], ",", 
                  RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"xV", ",", 
                  RowBox[{"0.15", "*", "P"}]}], "}"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"VAPOR", " ", "MOLE", " ", "FRACTION"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "6"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<fraction vapor = \>\"", ",", "lever", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{"solution", ",", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Spacer", "@", "30"}], ",", 
                    "\"\<correct vapor fraction = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"leverV", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}]}], 
                    "]"}]}], "}"}]}], ",", "17", ",", "colV", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", "7"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Framed", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"xp", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}], ",", "17"}], 
                   "]"}], ",", 
                  RowBox[{"Background", "\[Rule]", "White"}], ",", 
                  RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"xp", ",", "P"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "1.5"}], "}"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", "SOLUTION", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MCR", "\[Equal]", "7"}], ",", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"PointSize", "@", "0.02"}], ",", 
              RowBox[{"Point", "@", 
               RowBox[{"{", 
                RowBox[{"xp", ",", "P"}], "}"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "@", 
                   RowBox[{"{", 
                    RowBox[{"\"\<fraction vapor = \>\"", ",", 
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"leverV", ",", 
                    RowBox[{"{", 
                    RowBox[{"2", ",", "2"}], "}"}]}], "]"}]}], "}"}]}], ",", 
                  "17", ",", "colV"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0.5", ",", "7"}], "}"}]}], "]"}]}], 
             "\[IndentingNewLine]", "}"}]}], "]"}]}], "\[IndentingNewLine]", 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "0.1"}], ",", "7.5"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<n\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<-hexane mole fraction\>\""}], "}"}]}], ",", 
           "\"\<pressure (bar)\>\""}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "400"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"GridLines", "\[Rule]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"MCR", "\[Equal]", "7"}], ",", "None", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "1", ",", "0.05"}], "]"}], ",", 
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "7.5", ",", "0.5"}], "]"}]}], "}"}]}], 
          "]"}]}], ",", 
        RowBox[{"GridLinesStyle", "\[Rule]", 
         RowBox[{"GrayLevel", "@", "0.8"}]}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"45", ",", "30"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"50", ",", 
             RowBox[{"If", "[", 
              RowBox[{"hint", ",", "25", ",", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"MCR", "\[LessEqual]", "2"}], "\[Or]", 
                  RowBox[{"MCR", "\[Equal]", "5"}], "\[Or]", 
                  RowBox[{"MCR", "\[Equal]", "6"}]}], ",", "5", ",", "25"}], 
                "]"}]}], "]"}]}], "}"}]}], "}"}]}], ",", 
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
              RowBox[{"reset", "-", "1"}]}]}], "]"}], ",", 
           RowBox[{"MCR", "=", "1"}], ",", 
           RowBox[{"solution", "=", "False"}], ",", 
           RowBox[{"hint", "=", "False"}]}], "}"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"reset", ",", "1"}], "}"}], ",", "1", ",", "1000", ",", 
          "1", ",", "None"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
           "1", "\[Rule]", "\"\<(1) draw bubble-point pressure curve\>\""}], 
           ",", 
           RowBox[{
           "2", "\[Rule]", "\"\<(2) draw dew-point pressure curve\>\""}], ",", 
           RowBox[{
           "3", "\[Rule]", 
            "\"\<(3) move the point to the liquid region\>\""}], ",", 
           RowBox[{
           "4", "\[Rule]", "\"\<(4) move the point to the vapor region\>\""}],
            ",", 
           RowBox[{
           "5", "\[Rule]", "\"\<(5) locate vapor-liquid equilibrium\>\""}], 
           ",", 
           RowBox[{"6", "\[Rule]", "\"\<(6) determine vapor fraction\>\""}], 
           ",", 
           RowBox[{"7", "\[Rule]", "\"\<(7) solution\>\""}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"Dynamic", "@", "MCR"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"MCR", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
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
             RowBox[{"Button", "[", 
              RowBox[{"\"\< next \>\"", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"1", "\[LessEqual]", "MCR", "<", "7"}], ",", 
                   RowBox[{"MCR", "=", 
                    RowBox[{"MCR", "+", "1"}]}], ",", 
                   RowBox[{"MCR", "=", "7"}]}], "]"}], ",", 
                 RowBox[{"solution", "=", "False"}], ",", 
                 RowBox[{"hint", "=", "False"}]}], "}"}]}], "]"}]}], "]"}]}], 
          "}"}], ",", 
         RowBox[{"Dynamic", "@", "MCR"}]}], "]"}], ",", "\[IndentingNewLine]", 
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
         RowBox[{"Dynamic", "@", "MCR"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"##", "&"}], "@@", 
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1", ",", "2", ",", "5", ",", "6"}], "}"}], "\[Rule]", 
             RowBox[{"Control", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"hint", ",", "False", ",", "\"\<hint\>\""}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], 
            "]"}]}], "}"}], ",", 
         RowBox[{"Dynamic", "@", "MCR"}]}], "]"}], ",", "\[IndentingNewLine]", 
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
                   RowBox[{"bp1", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.25", ",", "0.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"bp2", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "0.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"bp3", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "0.5"}], "}"}]}], "}"}], ",", 
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
                   RowBox[{"dp1", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.35", ",", "0.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"dp2", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.6", ",", "0.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"dp3", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.85", ",", "0.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"3", "\[Rule]", 
            RowBox[{"Control", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"liquid", ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", "4"}], "}"}]}], "}"}], ",", "Locator", 
               ",", 
               RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
               RowBox[{"Enabled", "\[Rule]", 
                RowBox[{"If", "[", 
                 RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], 
              "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
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
            RowBox[{"Row", "@", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"tieL", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.2", ",", "3.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"tieV", ",", 
                    RowBox[{"{", 
                    RowBox[{"0.8", ",", "3.5"}], "}"}]}], "}"}], ",", 
                  "Locator", ",", 
                  RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
                  RowBox[{"Enabled", "\[Rule]", 
                   RowBox[{"If", "[", 
                    RowBox[{"solution", ",", "False", ",", "True"}], 
                    "]"}]}]}], "}"}], "]"}]}], "}"}]}]}]}], 
          "\[IndentingNewLine]", "}"}], ",", 
         RowBox[{"Dynamic", "@", "MCR"}]}], "]"}]}], "\[IndentingNewLine]", 
      "}"}], "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"PaneSelector", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"6", "\[Rule]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"lever", ",", "0.5", ",", "\"\<fraction of vapor\>\""}], 
           "}"}], ",", "0", ",", "1", ",", "0.01", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"Enabled", "\[Rule]", 
           RowBox[{"If", "[", 
            RowBox[{"solution", ",", "False", ",", "True"}], "]"}]}]}], "}"}],
         "]"}]}], "}"}], ",", 
     RowBox[{"Dynamic", "@", "MCR"}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",Expressio\
nUUID->"379c35bc-321c-42e3-a901-59575a6f26c0"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
    0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {0.35, 
    0.5}, $CellContext`dp2$$ = {0.6, 0.5}, $CellContext`dp3$$ = {0.85, 
    0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
    0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
    1, $CellContext`reset$$ = 3, $CellContext`solution$$ = 
    False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
    3.5}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`MCR$$], 1, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`bp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp1$$], {0.35, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp2$$], {0.6, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp3$$], {0.85, 0.5}}, Automatic}, {{
       Hold[$CellContext`liquid$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`tieL$$], {0.2, 3.5}}, Automatic}, {{
       Hold[$CellContext`tieV$$], {0.8, 3.5}}, Automatic}, {
      Hold[
       Grid[{{
          Button[" new problem ", {
            
            If[$CellContext`reset$$ < 
             1000, $CellContext`reset$$ = $CellContext`reset$$ + 
              1, $CellContext`reset$$ = $CellContext`reset$$ - 
              1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
            False, $CellContext`hint$$ = False}], 
          Manipulate`Place[1], 
          
          PaneSelector[{
           1 -> "(1) draw bubble-point pressure curve", 2 -> 
            "(2) draw dew-point pressure curve", 3 -> 
            "(3) move the point to the liquid region", 4 -> 
            "(4) move the point to the vapor region", 5 -> 
            "(5) locate vapor-liquid equilibrium", 6 -> 
            "(6) determine vapor fraction", 7 -> "(7) solution"}, 
           Dynamic[$CellContext`MCR$$]], 
          Manipulate`Place[2], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`MCR$$]], 
          PaneSelector[{1 -> Row[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}], 2 -> Row[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
            Manipulate`Place[12], 5 -> Row[{
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}, 
           Dynamic[$CellContext`MCR$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`lever$$], 0.5, "fraction of vapor"}, 0, 1, 0.01}, {
      Hold[
       PaneSelector[{6 -> Manipulate`Place[15]}, 
        Dynamic[$CellContext`MCR$$]]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`reset$14095$$ = 0, $CellContext`MCR$14096$$ = 
    0, $CellContext`solution$14097$$ = False, $CellContext`hint$14098$$ = 
    False, $CellContext`lever$14099$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
         0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {
         0.35, 0.5}, $CellContext`dp2$$ = {0.6, 0.5}, $CellContext`dp3$$ = {
         0.85, 0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
        0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
        1, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
        False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
         3.5}, $CellContext`vapor$$ = {0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$14095$$, 0], 
        Hold[$CellContext`MCR$$, $CellContext`MCR$14096$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$14097$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$14098$$, False], 
        Hold[$CellContext`lever$$, $CellContext`lever$14099$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`P$, $CellContext`xp$, $CellContext`xL$, \
$CellContext`xV$, $CellContext`leverV$, $CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{100, 150}]; $CellContext`Psat$[1] = 
         10^(4.00266 - 1171.53/($CellContext`T$ + 
           224.216)); $CellContext`Psat$[2] = 
         10^(4.04867 - 1355.126/($CellContext`T$ + 209.367)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`x$ $CellContext`Psat$[1] + (
            1 - $CellContext`x$) $CellContext`Psat$[2]; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`x$/$CellContext`Psat$[
            1] + (1 - $CellContext`x$)/$CellContext`Psat$[
            2])^(-1); $CellContext`P$ = 
         RandomReal[{$CellContext`Px$[0] + 0.5, $CellContext`Px$[1] - 
            0.5}]; $CellContext`xp$ = RandomReal[{
            ReplaceAll[0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]], 
            ReplaceAll[-0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]}]; $CellContext`xL$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]; $CellContext`xV$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 
             0}]]; $CellContext`leverV$ = ($CellContext`xp$ - \
$CellContext`xL$)/($CellContext`xV$ - $CellContext`xL$); $CellContext`bp1$$ = \
{0.25, 
           Part[$CellContext`bp1$$, 2]}; $CellContext`bp2$$ = {0.5, 
           Part[$CellContext`bp2$$, 2]}; $CellContext`bp3$$ = {0.75, 
           Part[$CellContext`bp3$$, 2]}; $CellContext`dp1$$ = {0.35, 
           Part[$CellContext`dp1$$, 2]}; $CellContext`dp2$$ = {0.6, 
           Part[$CellContext`dp2$$, 2]}; $CellContext`dp3$$ = {0.85, 
           Part[$CellContext`dp3$$, 2]}; $CellContext`plotlabel$ = 
         Switch[$CellContext`MCR$$, 1, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 1: click and drag the circles vertically to draw \
the bubble-point curve,", "then check solution"}]], 2, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 2: click and drag the circles vertically to draw \
the dew-point curve,", "then check solution"}]], 3, 
           "step 3: click and drag the circle to the liquid region, then \
check solution", 4, 
           "step 4: click and drag the circle to the vapor region, then check \
solution", 5, 
           If[$CellContext`hint$$, "hint: draw tie line", 
            
            Column[{"step 5: move the blue and green circles to the liquid \
and vapor compositions that", 
              "are in equilibrium for the mixture indicated by the black \
circle"}]], 6, 
           If[$CellContext`hint$$, "hint: use the lever rule", 
            
            Column[{"step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,", "then check solution"}]], 7, ""]; 
        Graphics[{Thick, 
           $CellContext`pt2[{1, 
             $CellContext`Psat$[1]}, Black], 
           $CellContext`pt2[{0, 
             $CellContext`Psat$[2]}, Black], 
           If[$CellContext`MCR$$ == 1, {{Dashed, $CellContext`colL, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`bp1$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp2$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp3$$, $CellContext`colL], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colL, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colL, 
               Line[
                Map[{#, 
                  $CellContext`Px$[#]}& , 
                 Range[0, 1, 0.1]]]}]}], 
           If[$CellContext`MCR$$ > 1, {$CellContext`colL, 
             Line[
              Map[{#, 
                $CellContext`Px$[#]}& , 
               Range[0, 1, 0.1]]]}], 
           If[$CellContext`MCR$$ == 2, {{Dashed, $CellContext`colV, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`dp1$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp2$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp3$$, $CellContext`colV], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colV, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colV, 
               Line[
                Map[{#, 
                  $CellContext`Py$[#]}& , 
                 Range[0, 1, 0.01]]]}]}], 
           If[$CellContext`MCR$$ > 2, {$CellContext`colV, 
             Line[
              Map[{#, 
                $CellContext`Py$[#]}& , 
               Range[0, 1, 0.01]]]}], 
           If[$CellContext`MCR$$ == 3, {
             $CellContext`pt1[$CellContext`liquid$$, Black], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "liquid present above the bubble-point curve", 
                17, $CellContext`colL, Background -> White], {0.5, 
                $CellContext`Px$[1]}]]}], 
           If[$CellContext`MCR$$ > 3, 
            Text[
             Style["liquid", 18, $CellContext`colL, Background -> White], {
             0.1, 6.5}]], 
           If[$CellContext`MCR$$ == 4, {
             $CellContext`pt1[$CellContext`vapor$$, Black], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "vapor present below the dew-point curve", 
                17, $CellContext`colV, Background -> White], {0.5, 
                $CellContext`Py$[0]}]]}], 
           If[$CellContext`MCR$$ > 4, 
            Text[
             Style["vapor", 18, $CellContext`colV, Background -> White], {0.9,
              0.5}]], 
           If[$CellContext`MCR$$ == 5, {{Dashed, $CellContext`colL, 
              
              Line[{$CellContext`tieL$$, {$CellContext`xp$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{$CellContext`tieV$$, {$CellContext`xp$, \
$CellContext`P$}}]}, 
             $CellContext`pt1[$CellContext`tieL$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`tieV$$, $CellContext`colV], 
             Apply[Text[
               Style[
                Row[{
                  NumberForm[
                   Part[#, 2], {3, 1}], " bar"}], 17, #2, Background -> 
                White], #, {0, 
               2}]& , {{{$CellContext`xp$, $CellContext`P$}, 
                Black}, {$CellContext`tieL$$, $CellContext`colL}, \
{$CellContext`tieV$$, $CellContext`colV}}, {1}], 
             If[$CellContext`solution$$, {{Dashed, $CellContext`colL, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
                Thickness[0.007], Dotted, $CellContext`colL, 
                
                Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                   0}}], $CellContext`colV, 
                Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                   0}}]}, {
                PointSize[0.02], $CellContext`colL, 
                Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
                Point[{$CellContext`xV$, $CellContext`P$}]}, 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xL$, {2, 2}], 
                  17, $CellContext`colL], Background -> White, 
                 FrameStyle -> $CellContext`colL, FrameMargins -> 
                 Tiny], {$CellContext`xL$, 0.15 $CellContext`P$}], 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xV$, {2, 2}], 
                  17, $CellContext`colV], Background -> White, 
                 FrameStyle -> $CellContext`colV, FrameMargins -> 
                 Tiny], {$CellContext`xV$, 0.15 $CellContext`P$}]}], {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}]}}], 
           If[$CellContext`MCR$$ > 5, {{Dashed, $CellContext`colL, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
              Thickness[0.007], Dotted, $CellContext`colL, 
              
              Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                 0}}], $CellContext`colV, 
              
              Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                 0}}]}, {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}], $CellContext`colL, 
              Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
              Point[{$CellContext`xV$, $CellContext`P$}]}, 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xL$, {2, 2}], 17, $CellContext`colL], 
               Background -> White, FrameStyle -> $CellContext`colL, 
               FrameMargins -> Tiny], {$CellContext`xL$, 
               0.15 $CellContext`P$}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xV$, {2, 2}], 17, $CellContext`colV], 
               Background -> White, FrameStyle -> $CellContext`colV, 
               FrameMargins -> Tiny], {$CellContext`xV$, 
               0.15 $CellContext`P$}]}], 
           If[$CellContext`MCR$$ == 6, {
             Text[
              Style[
               Row[{"fraction vapor = ", $CellContext`lever$$, 
                 If[$CellContext`solution$$, 
                  Row[{
                    Spacer[30], "correct vapor fraction = ", 
                    NumberForm[$CellContext`leverV$, {2, 2}]}]]}], 
               17, $CellContext`colV, Background -> White], {0.5, 7}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xp$, {2, 2}], 17], Background -> 
               White, FrameMargins -> 
               Tiny], {$CellContext`xp$, $CellContext`P$}, {0, 1.5}]}], 
           If[$CellContext`MCR$$ == 7, {
             PointSize[0.02], 
             Point[{$CellContext`xp$, $CellContext`P$}], 
             Text[
              Style[
               Row[{"fraction vapor = ", 
                 NumberForm[$CellContext`leverV$, {2, 2}]}], 
               17, $CellContext`colV], {0.5, 7}]}]}, 
          PlotRange -> {{0, 1}, {-0.1, 7.5}}, PlotRangeClipping -> False, 
          Frame -> True, LabelStyle -> {17, Black}, FrameLabel -> {
            Row[{
              Style["n", Italic], "-hexane mole fraction"}], 
            "pressure (bar)"}, ImageSize -> {600, 400}, AspectRatio -> Full, 
          GridLines -> If[$CellContext`MCR$$ == 7, None, {
             Range[0, 1, 0.05], 
             Range[0, 7.5, 0.5]}], GridLinesStyle -> GrayLevel[0.8], 
          ImagePadding -> {{45, 30}, {50, 
             If[$CellContext`hint$$, 25, 
              If[
               
               Or[$CellContext`MCR$$ <= 2, $CellContext`MCR$$ == 
                5, $CellContext`MCR$$ == 6], 5, 25]]}}, PlotLabel -> 
          Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`MCR$$, 1, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`bp1$$, {0.25, 0.5}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`bp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`bp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`dp1$$, {0.35, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`dp2$$, {0.6, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`dp3$$, {0.85, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`liquid$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`tieL$$, {0.2, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`tieV$$, {0.8, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 14}, 
        Grid[{{
           Button[" new problem ", {
             
             If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
             False, $CellContext`hint$$ = False}], 
           Manipulate`Place[1], 
           
           PaneSelector[{
            1 -> "(1) draw bubble-point pressure curve", 2 -> 
             "(2) draw dew-point pressure curve", 3 -> 
             "(3) move the point to the liquid region", 4 -> 
             "(4) move the point to the vapor region", 5 -> 
             "(5) locate vapor-liquid equilibrium", 6 -> 
             "(6) determine vapor fraction", 7 -> "(7) solution"}, 
            Dynamic[$CellContext`MCR$$]], 
           Manipulate`Place[2], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`MCR$$]], 
           PaneSelector[{1 -> Row[{
                Manipulate`Place[5], 
                Manipulate`Place[6], 
                Manipulate`Place[7]}], 2 -> Row[{
                Manipulate`Place[8], 
                Manipulate`Place[9], 
                Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
             Manipulate`Place[12], 5 -> Row[{
                Manipulate`Place[13], 
                Manipulate`Place[14]}]}, 
            Dynamic[$CellContext`MCR$$]]}}], {{$CellContext`lever$$, 0.5, 
          "fraction of vapor"}, 0, 1, 0.01, Appearance -> "Labeled", Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 15}, 
        PaneSelector[{6 -> Manipulate`Place[15]}, 
         Dynamic[$CellContext`MCR$$]]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {260., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colL = 
       RGBColor[0, 0, 1], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0, 0.6, 0], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->95815657,ExpressionUUID->"95635b45-f58f-4676-a472-84df386fb972"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"f6522a88-7e1f-4708-8db7-2c1abacc060a"],

Cell[TextData[{
 "This Demonstration leads the user through the construction of a \
pressure-composition (",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "-", "x", "-", "y"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3d51ce14-8ade-433c-a461-647c55490b7f"],
 ") diagram step-by-step for vapor-liquid equilibrium of an ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "d33f2b67-3899-4a6b-a1f3-73fb4727e3a7"],
 "-hexane/",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "16dd96f2-1fe0-410a-99a7-f934c53f725f"],
 "-octane ideal mixture (Raoult's law). Press the \"new problem\" button to \
construct a diagram at a different temperature. After completing each step, \
check the \"solution\" box to see the correct solution, and then \"next\" for \
the next step. Once you check \"solution\" you cannot change your answer. \
Also, you cannot return to the previous step once you click \"next\"."
}], "ManipulateCaption",ExpressionUUID->"6ef62daa-0898-4091-8719-\
aa227a1d9c17"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"5065d6a1-a7ca-438b-8580-11019e7cd8f1"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
    0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {0.25, 
    0.5}, $CellContext`dp2$$ = {0.5, 0.5}, $CellContext`dp3$$ = {0.75, 
    0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
    0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
    1, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
    False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
    3.5}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`MCR$$], 1, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`bp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`liquid$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`tieL$$], {0.2, 3.5}}, Automatic}, {{
       Hold[$CellContext`tieV$$], {0.8, 3.5}}, Automatic}, {
      Hold[
       Grid[{{
          Button[" new problem ", {
            
            If[$CellContext`reset$$ < 
             1000, $CellContext`reset$$ = $CellContext`reset$$ + 
              1, $CellContext`reset$$ = $CellContext`reset$$ - 
              1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
            False, $CellContext`hint$$ = False}], 
          Manipulate`Place[1], 
          Dynamic[
           
           Switch[$CellContext`MCR$$, 1, 
            "(1) draw bubble-point pressure curve", 2, 
            "(2) draw dew-point pressure curve", 3, 
            "(3) move the point to the liquid region", 4, 
            "(4) move the point to the vapor region", 5, 
            "(5) locate vapor-liquid equilibrium", 6, 
            "(6) determine vapor fraction", 7, "(7) solution"]], 
          Manipulate`Place[2], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`MCR$$]], 
          PaneSelector[{1 -> Row[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}], 2 -> Row[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
            Manipulate`Place[12], 5 -> Row[{
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}, 
           Dynamic[$CellContext`MCR$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`lever$$], 0.5, "fraction of vapor"}, 0, 1, 0.01}, {
      Hold[
       PaneSelector[{6 -> Manipulate`Place[15]}, 
        Dynamic[$CellContext`MCR$$]]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`reset$13828$$ = 0, $CellContext`MCR$13829$$ = 
    0, $CellContext`solution$13830$$ = False, $CellContext`hint$13831$$ = 
    False, $CellContext`lever$13832$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
         0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {
         0.25, 0.5}, $CellContext`dp2$$ = {0.5, 0.5}, $CellContext`dp3$$ = {
         0.75, 0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
        0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
        1, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
        False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
         3.5}, $CellContext`vapor$$ = {0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$13828$$, 0], 
        Hold[$CellContext`MCR$$, $CellContext`MCR$13829$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$13830$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$13831$$, False], 
        Hold[$CellContext`lever$$, $CellContext`lever$13832$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`P$, $CellContext`xp$, $CellContext`xL$, \
$CellContext`xV$, $CellContext`leverV$, $CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{100, 150}]; $CellContext`Psat$[1] = 
         10^(4.00266 - 1171.53/($CellContext`T$ + 
           224.216)); $CellContext`Psat$[2] = 
         10^(4.04867 - 1355.126/($CellContext`T$ + 209.367)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`x$ $CellContext`Psat$[1] + (
            1 - $CellContext`x$) $CellContext`Psat$[2]; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`x$/$CellContext`Psat$[
            1] + (1 - $CellContext`x$)/$CellContext`Psat$[
            2])^(-1); $CellContext`P$ = 
         RandomReal[{$CellContext`Px$[0] + 0.5, $CellContext`Px$[1] - 
            0.5}]; $CellContext`xp$ = RandomReal[{
            ReplaceAll[0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]], 
            ReplaceAll[-0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]}]; $CellContext`xL$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]; $CellContext`xV$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 
             0}]]; $CellContext`leverV$ = ($CellContext`xp$ - \
$CellContext`xL$)/($CellContext`xV$ - $CellContext`xL$); $CellContext`bp1$$ = \
{0.25, 
           Part[$CellContext`bp1$$, 2]}; $CellContext`bp2$$ = {0.5, 
           Part[$CellContext`bp2$$, 2]}; $CellContext`bp3$$ = {0.75, 
           Part[$CellContext`bp3$$, 2]}; $CellContext`dp1$$ = {0.25, 
           Part[$CellContext`dp1$$, 2]}; $CellContext`dp2$$ = {0.5, 
           Part[$CellContext`dp2$$, 2]}; $CellContext`dp3$$ = {0.75, 
           Part[$CellContext`dp3$$, 2]}; $CellContext`plotlabel$ = 
         Switch[$CellContext`MCR$$, 1, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 1: click and drag the circles vertically to draw \
the bubble-point curve,", "then check solution"}]], 2, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 2: click and drag the circles vertically to draw \
the dew-point curve,", "then check solution"}]], 3, 
           "step 3: click and drag the circle to the liquid region, then \
check solution", 4, 
           "step 4: click and drag the circle to the vapor region, then check \
solution", 5, 
           If[$CellContext`hint$$, "hint: draw tie line", 
            
            Column[{"step 5: move the blue and green circles to the liquid \
and vapor compositions that", 
              "are in equilibrium for the mixture indicated by the black \
circle"}]], 6, 
           If[$CellContext`hint$$, "hint: use the lever rule", 
            
            Column[{"step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,", "then check solution"}]], 7, ""]; 
        Graphics[{Thick, 
           $CellContext`pt2[{1, 
             $CellContext`Psat$[1]}, Black], 
           $CellContext`pt2[{0, 
             $CellContext`Psat$[2]}, Black], 
           If[$CellContext`MCR$$ == 1, {{Dashed, $CellContext`colL, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`bp1$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp2$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp3$$, $CellContext`colL], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colL, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colL, 
               Line[
                Map[{#, 
                  $CellContext`Px$[#]}& , 
                 Range[0, 1, 0.1]]]}]}], 
           If[$CellContext`MCR$$ > 1, {$CellContext`colL, 
             Line[
              Map[{#, 
                $CellContext`Px$[#]}& , 
               Range[0, 1, 0.1]]]}], 
           If[$CellContext`MCR$$ == 2, {{Dashed, $CellContext`colV, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`dp1$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp2$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp3$$, $CellContext`colV], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colV, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colV, 
               Line[
                Map[{#, 
                  $CellContext`Py$[#]}& , 
                 Range[0, 1, 0.01]]]}]}], 
           If[$CellContext`MCR$$ > 2, {$CellContext`colV, 
             Line[
              Map[{#, 
                $CellContext`Py$[#]}& , 
               Range[0, 1, 0.01]]]}], 
           If[$CellContext`MCR$$ == 3, {
             $CellContext`pt1[$CellContext`liquid$$, $CellContext`colL], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "liquid present above the bubble-point curve", 
                17, $CellContext`colL, Background -> White], {0.5, 
                $CellContext`Px$[1]}]]}], 
           If[$CellContext`MCR$$ > 3, 
            Text[
             Style["liquid", 18, $CellContext`colL, Background -> White], {
             0.1, 6.5}]], 
           If[$CellContext`MCR$$ == 4, {
             $CellContext`pt1[$CellContext`vapor$$, $CellContext`colV], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "vapor present below the dew-point curve", 
                17, $CellContext`colV, Background -> White], {0.5, 
                $CellContext`Py$[0]}]]}], 
           If[$CellContext`MCR$$ > 4, 
            Text[
             Style["vapor", 18, $CellContext`colV, Background -> White], {0.9,
              0.5}]], 
           If[$CellContext`MCR$$ == 5, {{Dashed, $CellContext`colL, 
              
              Line[{$CellContext`tieL$$, {$CellContext`xp$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{$CellContext`tieV$$, {$CellContext`xp$, \
$CellContext`P$}}]}, 
             $CellContext`pt1[$CellContext`tieL$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`tieV$$, $CellContext`colV], 
             Apply[Text[
               Style[
                Row[{
                  NumberForm[
                   Part[#, 2], {3, 1}], " bar"}], 17, #2, Background -> 
                White], #, {0, 
               2}]& , {{{$CellContext`xp$, $CellContext`P$}, 
                Black}, {$CellContext`tieL$$, $CellContext`colL}, \
{$CellContext`tieV$$, $CellContext`colV}}, {1}], 
             If[$CellContext`solution$$, {{Dashed, $CellContext`colL, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
                Thickness[0.007], Dotted, $CellContext`colL, 
                
                Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                   0}}], $CellContext`colV, 
                Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                   0}}]}, {
                PointSize[0.02], $CellContext`colL, 
                Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
                Point[{$CellContext`xV$, $CellContext`P$}]}, 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xL$, {2, 2}], 
                  17, $CellContext`colL], Background -> White, 
                 FrameStyle -> $CellContext`colL, FrameMargins -> 
                 Tiny], {$CellContext`xL$, 0.15 $CellContext`P$}], 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xV$, {2, 2}], 
                  17, $CellContext`colV], Background -> White, 
                 FrameStyle -> $CellContext`colV, FrameMargins -> 
                 Tiny], {$CellContext`xV$, 0.15 $CellContext`P$}]}], {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}]}}], 
           If[$CellContext`MCR$$ > 5, {{Dashed, $CellContext`colL, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
              Thickness[0.007], Dotted, $CellContext`colL, 
              
              Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                 0}}], $CellContext`colV, 
              
              Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                 0}}]}, {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}], $CellContext`colL, 
              Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
              Point[{$CellContext`xV$, $CellContext`P$}]}, 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xL$, {2, 2}], 17, $CellContext`colL], 
               Background -> White, FrameStyle -> $CellContext`colL, 
               FrameMargins -> Tiny], {$CellContext`xL$, 
               0.15 $CellContext`P$}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xV$, {2, 2}], 17, $CellContext`colV], 
               Background -> White, FrameStyle -> $CellContext`colV, 
               FrameMargins -> Tiny], {$CellContext`xV$, 
               0.15 $CellContext`P$}]}], 
           If[$CellContext`MCR$$ == 6, {
             Text[
              Style[
               Row[{"fraction vapor = ", $CellContext`lever$$, 
                 If[$CellContext`solution$$, 
                  Row[{
                    Spacer[30], "correct vapor fraction = ", 
                    NumberForm[$CellContext`leverV$, {2, 2}]}]]}], 
               17, $CellContext`colV, Background -> White], {0.5, 7}]}], 
           If[$CellContext`MCR$$ == 7, {
             PointSize[0.02], 
             Point[{$CellContext`xp$, $CellContext`P$}], 
             Text[
              Style[
               Row[{"fraction vapor = ", 
                 NumberForm[$CellContext`leverV$, {2, 2}]}], 
               17, $CellContext`colV], {0.5, 7}]}]}, 
          PlotRange -> {{0, 1}, {-0.1, 7.5}}, PlotRangeClipping -> False, 
          Frame -> True, LabelStyle -> {17, Black}, FrameLabel -> {
            Row[{
              Style["n", Italic], "-hexane mole fraction"}], 
            "pressure (bar)"}, ImageSize -> {600, 400}, AspectRatio -> Full, 
          GridLines -> If[$CellContext`MCR$$ == 7, None, {
             Range[0, 1, 0.05], 
             Range[0, 7.5, 0.5]}], GridLinesStyle -> GrayLevel[0.8], 
          ImagePadding -> {{45, 30}, {50, 
             If[$CellContext`hint$$, 25, 
              If[
               
               Or[$CellContext`MCR$$ <= 2, $CellContext`MCR$$ == 
                5, $CellContext`MCR$$ == 6], 5, 25]]}}, PlotLabel -> 
          Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`MCR$$, 1, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`bp1$$, {0.25, 0.5}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`bp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`bp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`dp1$$, {0.25, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`dp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`dp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`liquid$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`tieL$$, {0.2, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`tieV$$, {0.8, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 14}, 
        Grid[{{
           Button[" new problem ", {
             
             If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
             False, $CellContext`hint$$ = False}], 
           Manipulate`Place[1], 
           Dynamic[
            
            Switch[$CellContext`MCR$$, 1, 
             "(1) draw bubble-point pressure curve", 2, 
             "(2) draw dew-point pressure curve", 3, 
             "(3) move the point to the liquid region", 4, 
             "(4) move the point to the vapor region", 5, 
             "(5) locate vapor-liquid equilibrium", 6, 
             "(6) determine vapor fraction", 7, "(7) solution"]], 
           Manipulate`Place[2], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`MCR$$]], 
           PaneSelector[{1 -> Row[{
                Manipulate`Place[5], 
                Manipulate`Place[6], 
                Manipulate`Place[7]}], 2 -> Row[{
                Manipulate`Place[8], 
                Manipulate`Place[9], 
                Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
             Manipulate`Place[12], 5 -> Row[{
                Manipulate`Place[13], 
                Manipulate`Place[14]}]}, 
            Dynamic[$CellContext`MCR$$]]}}], {{$CellContext`lever$$, 0.5, 
          "fraction of vapor"}, 0, 1, 0.01, Appearance -> "Labeled", Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 15}, 
        PaneSelector[{6 -> Manipulate`Place[15]}, 
         Dynamic[$CellContext`MCR$$]]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {260., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colL = 
       RGBColor[0, 0, 1], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0, 0.6, 0], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input",
 CellID->65575675,ExpressionUUID->"bafac784-b6ce-4c10-a84c-9018c8d330f6"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"84000596-3bf0-4b45-ba77-55dc60af278a"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
    0.5, 0.81}, $CellContext`bp3$$ = {0.75, 1.46}, $CellContext`dp1$$ = {0.35,
     0.5}, $CellContext`dp2$$ = {0.6, 0.5}, $CellContext`dp3$$ = {0.85, 
    0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
    0.5, $CellContext`liquid$$ = {0.8505, 1.18}, $CellContext`MCR$$ = 
    4, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
    False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
    3.5}, $CellContext`vapor$$ = {0.881, 1.1099999999999999`}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`MCR$$], 4, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`bp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp2$$], {0.5, 0.81}}, Automatic}, {{
       Hold[$CellContext`bp3$$], {0.75, 1.46}}, Automatic}, {{
       Hold[$CellContext`dp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`liquid$$], {0.8505, 1.18}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.881, 1.1099999999999999`}}, 
      Automatic}, {{
       Hold[$CellContext`tieL$$], {0.2, 3.5}}, Automatic}, {{
       Hold[$CellContext`tieV$$], {0.8, 3.5}}, Automatic}, {
      Hold[
       Grid[{{
          Button[" new problem ", {
            
            If[$CellContext`reset$$ < 
             1000, $CellContext`reset$$ = $CellContext`reset$$ + 
              1, $CellContext`reset$$ = $CellContext`reset$$ - 
              1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
            False, $CellContext`hint$$ = False}], 
          Manipulate`Place[1], 
          
          PaneSelector[{
           1 -> "(1) draw bubble-point pressure curve", 2 -> 
            "(2) draw dew-point pressure curve", 3 -> 
            "(3) move the point to the liquid region", 4 -> 
            "(4) move the point to the vapor region", 5 -> 
            "(5) locate vapor-liquid equilibrium", 6 -> 
            "(6) determine vapor fraction", 7 -> "(7) solution"}, 
           Dynamic[$CellContext`MCR$$]], 
          Manipulate`Place[2], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`MCR$$]], 
          PaneSelector[{1 -> Row[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}], 2 -> Row[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
            Manipulate`Place[12], 5 -> Row[{
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}, 
           Dynamic[$CellContext`MCR$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`lever$$], 0.5, "fraction of vapor"}, 0, 1, 0.01}, {
      Hold[
       PaneSelector[{6 -> Manipulate`Place[15]}, 
        Dynamic[$CellContext`MCR$$]]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`reset$10494$$ = 0, $CellContext`MCR$10495$$ = 
    0, $CellContext`solution$10496$$ = False, $CellContext`hint$10497$$ = 
    False, $CellContext`lever$10498$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
         0.5, 0.81}, $CellContext`bp3$$ = {0.75, 1.46}, $CellContext`dp1$$ = {
         0.25, 0.5}, $CellContext`dp2$$ = {0.5, 0.5}, $CellContext`dp3$$ = {
         0.75, 0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
        0.5, $CellContext`liquid$$ = {0.8505, 1.18}, $CellContext`MCR$$ = 
        4, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
        False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
         3.5}, $CellContext`vapor$$ = {0.881, 1.1099999999999999`}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$10494$$, 0], 
        Hold[$CellContext`MCR$$, $CellContext`MCR$10495$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$10496$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$10497$$, False], 
        Hold[$CellContext`lever$$, $CellContext`lever$10498$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`P$, $CellContext`xp$, $CellContext`xL$, \
$CellContext`xV$, $CellContext`leverV$, $CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{100, 150}]; $CellContext`Psat$[1] = 
         10^(4.00266 - 1171.53/($CellContext`T$ + 
           224.216)); $CellContext`Psat$[2] = 
         10^(4.04867 - 1355.126/($CellContext`T$ + 209.367)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`x$ $CellContext`Psat$[1] + (
            1 - $CellContext`x$) $CellContext`Psat$[2]; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`x$/$CellContext`Psat$[
            1] + (1 - $CellContext`x$)/$CellContext`Psat$[
            2])^(-1); $CellContext`P$ = 
         RandomReal[{$CellContext`Px$[0] + 0.5, $CellContext`Px$[1] - 
            0.5}]; $CellContext`xp$ = RandomReal[{
            ReplaceAll[0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]], 
            ReplaceAll[-0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]}]; $CellContext`xL$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]; $CellContext`xV$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 
             0}]]; $CellContext`leverV$ = ($CellContext`xp$ - \
$CellContext`xL$)/($CellContext`xV$ - $CellContext`xL$); $CellContext`bp1$$ = \
{0.25, 
           Part[$CellContext`bp1$$, 2]}; $CellContext`bp2$$ = {0.5, 
           Part[$CellContext`bp2$$, 2]}; $CellContext`bp3$$ = {0.75, 
           Part[$CellContext`bp3$$, 2]}; $CellContext`dp1$$ = {0.35, 
           Part[$CellContext`dp1$$, 2]}; $CellContext`dp2$$ = {0.6, 
           Part[$CellContext`dp2$$, 2]}; $CellContext`dp3$$ = {0.85, 
           Part[$CellContext`dp3$$, 2]}; $CellContext`plotlabel$ = 
         Switch[$CellContext`MCR$$, 1, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 1: click and drag the circles vertically to draw \
the bubble-point curve,", "then check solution"}]], 2, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 2: click and drag the circles vertically to draw \
the dew-point curve,", "then check solution"}]], 3, 
           "step 3: click and drag the circle to the liquid region, then \
check solution", 4, 
           "step 4: click and drag the circle to the vapor region, then check \
solution", 5, 
           If[$CellContext`hint$$, "hint: draw tie line", 
            
            Column[{"step 5: move the blue and green circles to the liquid \
and vapor compositions that", 
              
              "are in equilibrium for the mixture indicated by the black \
circle"}]], 6, 
           If[$CellContext`hint$$, "hint: use the lever rule", 
            
            Column[{"step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,", "then check solution"}]], 7, ""]; 
        Graphics[{Thick, 
           $CellContext`pt2[{1, 
             $CellContext`Psat$[1]}, Black], 
           $CellContext`pt2[{0, 
             $CellContext`Psat$[2]}, Black], 
           If[$CellContext`MCR$$ == 1, {{Dashed, $CellContext`colL, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`bp1$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp2$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp3$$, $CellContext`colL], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colL, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colL, 
               Line[
                Map[{#, 
                  $CellContext`Px$[#]}& , 
                 Range[0, 1, 0.1]]]}]}], 
           If[$CellContext`MCR$$ > 1, {$CellContext`colL, 
             Line[
              Map[{#, 
                $CellContext`Px$[#]}& , 
               Range[0, 1, 0.1]]]}], 
           If[$CellContext`MCR$$ == 2, {{Dashed, $CellContext`colV, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`dp1$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp2$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp3$$, $CellContext`colV], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colV, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colV, 
               Line[
                Map[{#, 
                  $CellContext`Py$[#]}& , 
                 Range[0, 1, 0.01]]]}]}], 
           If[$CellContext`MCR$$ > 2, {$CellContext`colV, 
             Line[
              Map[{#, 
                $CellContext`Py$[#]}& , 
               Range[0, 1, 0.01]]]}], 
           If[$CellContext`MCR$$ == 3, {
             $CellContext`pt1[$CellContext`liquid$$, $CellContext`colL], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "liquid present above the bubble-point curve", 
                17, $CellContext`colL, Background -> White], {0.5, 
                $CellContext`Px$[1]}]]}], 
           If[$CellContext`MCR$$ > 3, 
            Text[
             Style["liquid", 18, $CellContext`colL, Background -> White], {
             0.1, 6.5}]], 
           If[$CellContext`MCR$$ == 4, {
             $CellContext`pt1[$CellContext`vapor$$, $CellContext`colV], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "vapor present below the dew-point curve", 
                17, $CellContext`colV, Background -> White], {0.5, 
                $CellContext`Py$[0]}]]}], 
           If[$CellContext`MCR$$ > 4, 
            Text[
             Style["vapor", 18, $CellContext`colV, Background -> White], {0.9,
              0.5}]], 
           If[$CellContext`MCR$$ == 5, {{Dashed, $CellContext`colL, 
              
              Line[{$CellContext`tieL$$, {$CellContext`xp$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{$CellContext`tieV$$, {$CellContext`xp$, \
$CellContext`P$}}]}, 
             $CellContext`pt1[$CellContext`tieL$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`tieV$$, $CellContext`colV], 
             Apply[Text[
               Style[
                Row[{
                  NumberForm[
                   Part[#, 2], {3, 1}], " bar"}], 17, #2, Background -> 
                White], #, {0, 
               2}]& , {{{$CellContext`xp$, $CellContext`P$}, 
                Black}, {$CellContext`tieL$$, $CellContext`colL}, \
{$CellContext`tieV$$, $CellContext`colV}}, {1}], 
             If[$CellContext`solution$$, {{Dashed, $CellContext`colL, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
                Thickness[0.007], Dotted, $CellContext`colL, 
                
                Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                   0}}], $CellContext`colV, 
                
                Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                   0}}]}, {
                PointSize[0.02], $CellContext`colL, 
                Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
                Point[{$CellContext`xV$, $CellContext`P$}]}, 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xL$, {2, 2}], 
                  17, $CellContext`colL], Background -> White, 
                 FrameStyle -> $CellContext`colL, FrameMargins -> 
                 Tiny], {$CellContext`xL$, 0.15 $CellContext`P$}], 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xV$, {2, 2}], 
                  17, $CellContext`colV], Background -> White, 
                 FrameStyle -> $CellContext`colV, FrameMargins -> 
                 Tiny], {$CellContext`xV$, 0.15 $CellContext`P$}]}], {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}]}}], 
           If[$CellContext`MCR$$ > 5, {{Dashed, $CellContext`colL, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
              Thickness[0.007], Dotted, $CellContext`colL, 
              
              Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                 0}}], $CellContext`colV, 
              
              Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                 0}}]}, {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}], $CellContext`colL, 
              Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
              Point[{$CellContext`xV$, $CellContext`P$}]}, 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xL$, {2, 2}], 17, $CellContext`colL], 
               Background -> White, FrameStyle -> $CellContext`colL, 
               FrameMargins -> Tiny], {$CellContext`xL$, 
               0.15 $CellContext`P$}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xV$, {2, 2}], 17, $CellContext`colV], 
               Background -> White, FrameStyle -> $CellContext`colV, 
               FrameMargins -> Tiny], {$CellContext`xV$, 
               0.15 $CellContext`P$}]}], 
           If[$CellContext`MCR$$ == 6, {
             Text[
              Style[
               Row[{"fraction vapor = ", $CellContext`lever$$, 
                 If[$CellContext`solution$$, 
                  Row[{
                    Spacer[30], "correct vapor fraction = ", 
                    NumberForm[$CellContext`leverV$, {2, 2}]}]]}], 
               17, $CellContext`colV, Background -> White], {0.5, 7}]}], 
           If[$CellContext`MCR$$ == 7, {
             PointSize[0.02], 
             Point[{$CellContext`xp$, $CellContext`P$}], 
             Text[
              Style[
               Row[{"fraction vapor = ", 
                 NumberForm[$CellContext`leverV$, {2, 2}]}], 
               17, $CellContext`colV], {0.5, 7}]}]}, 
          PlotRange -> {{0, 1}, {-0.1, 7.5}}, PlotRangeClipping -> False, 
          Frame -> True, LabelStyle -> {17, Black}, FrameLabel -> {
            Row[{
              Style["n", Italic], "-hexane mole fraction"}], 
            "pressure (bar)"}, ImageSize -> {600, 400}, AspectRatio -> Full, 
          GridLines -> If[$CellContext`MCR$$ == 7, None, {
             Range[0, 1, 0.05], 
             Range[0, 7.5, 0.5]}], GridLinesStyle -> GrayLevel[0.8], 
          ImagePadding -> {{45, 30}, {50, 
             If[$CellContext`hint$$, 25, 
              If[
               
               Or[$CellContext`MCR$$ <= 2, $CellContext`MCR$$ == 
                5, $CellContext`MCR$$ == 6], 5, 25]]}}, PlotLabel -> 
          Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`MCR$$, 4, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`bp1$$, {0.25, 0.5}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`bp2$$, {0.5, 0.81}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`bp3$$, {0.75, 1.46}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`dp1$$, {0.25, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`dp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`dp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`liquid$$, {0.8505, 1.18}}, Automatic, 
         ControlType -> Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`vapor$$, {0.881, 1.1099999999999999`}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`tieL$$, {0.2, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`tieV$$, {0.8, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 14}, 
        Grid[{{
           Button[" new problem ", {
             
             If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
             False, $CellContext`hint$$ = False}], 
           Manipulate`Place[1], 
           
           PaneSelector[{
            1 -> "(1) draw bubble-point pressure curve", 2 -> 
             "(2) draw dew-point pressure curve", 3 -> 
             "(3) move the point to the liquid region", 4 -> 
             "(4) move the point to the vapor region", 5 -> 
             "(5) locate vapor-liquid equilibrium", 6 -> 
             "(6) determine vapor fraction", 7 -> "(7) solution"}, 
            Dynamic[$CellContext`MCR$$]], 
           Manipulate`Place[2], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`MCR$$]], 
           PaneSelector[{1 -> Row[{
                Manipulate`Place[5], 
                Manipulate`Place[6], 
                Manipulate`Place[7]}], 2 -> Row[{
                Manipulate`Place[8], 
                Manipulate`Place[9], 
                Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
             Manipulate`Place[12], 5 -> Row[{
                Manipulate`Place[13], 
                Manipulate`Place[14]}]}, 
            Dynamic[$CellContext`MCR$$]]}}], {{$CellContext`lever$$, 0.5, 
          "fraction of vapor"}, 0, 1, 0.01, Appearance -> "Labeled", Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 15}, 
        PaneSelector[{6 -> Manipulate`Place[15]}, 
         Dynamic[$CellContext`MCR$$]]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {260., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colL = 
       RGBColor[0, 0, 1], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0, 0.6, 0], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->117092404,ExpressionUUID->"e1876309-c7b5-49ba-adfa-5eba452855a3"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
    0.5, 0.81}, $CellContext`bp3$$ = {0.75, 1.46}, $CellContext`dp1$$ = {0.35,
     0.5}, $CellContext`dp2$$ = {0.6, 0.5}, $CellContext`dp3$$ = {0.85, 
    0.5}, $CellContext`hint$$ = True, $CellContext`lever$$ = 
    0.46, $CellContext`liquid$$ = {0.8505, 1.18}, $CellContext`MCR$$ = 
    6, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
    False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
    3.5}, $CellContext`vapor$$ = {0.881, 1.1099999999999999`}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`MCR$$], 6, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], True, "hint"}, {True, False}}, {{
       Hold[$CellContext`bp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp2$$], {0.5, 0.81}}, Automatic}, {{
       Hold[$CellContext`bp3$$], {0.75, 1.46}}, Automatic}, {{
       Hold[$CellContext`dp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`liquid$$], {0.8505, 1.18}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.881, 1.1099999999999999`}}, 
      Automatic}, {{
       Hold[$CellContext`tieL$$], {0.2, 3.5}}, Automatic}, {{
       Hold[$CellContext`tieV$$], {0.8, 3.5}}, Automatic}, {
      Hold[
       Grid[{{
          Button[" new problem ", {
            
            If[$CellContext`reset$$ < 
             1000, $CellContext`reset$$ = $CellContext`reset$$ + 
              1, $CellContext`reset$$ = $CellContext`reset$$ - 
              1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
            False, $CellContext`hint$$ = False}], 
          Manipulate`Place[1], 
          
          PaneSelector[{
           1 -> "(1) draw bubble-point pressure curve", 2 -> 
            "(2) draw dew-point pressure curve", 3 -> 
            "(3) move the point to the liquid region", 4 -> 
            "(4) move the point to the vapor region", 5 -> 
            "(5) locate vapor-liquid equilibrium", 6 -> 
            "(6) determine vapor fraction", 7 -> "(7) solution"}, 
           Dynamic[$CellContext`MCR$$]], 
          Manipulate`Place[2], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`MCR$$]], 
          PaneSelector[{1 -> Row[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}], 2 -> Row[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
            Manipulate`Place[12], 5 -> Row[{
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}, 
           Dynamic[$CellContext`MCR$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`lever$$], 0.46, "fraction of vapor"}, 0, 1, 0.01}, {
      Hold[
       PaneSelector[{6 -> Manipulate`Place[15]}, 
        Dynamic[$CellContext`MCR$$]]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`reset$10601$$ = 0, $CellContext`MCR$10602$$ = 
    0, $CellContext`solution$10603$$ = False, $CellContext`hint$10604$$ = 
    False, $CellContext`lever$10605$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
         0.5, 0.81}, $CellContext`bp3$$ = {0.75, 1.46}, $CellContext`dp1$$ = {
         0.25, 0.5}, $CellContext`dp2$$ = {0.5, 0.5}, $CellContext`dp3$$ = {
         0.75, 0.5}, $CellContext`hint$$ = True, $CellContext`lever$$ = 
        0.46, $CellContext`liquid$$ = {0.8505, 1.18}, $CellContext`MCR$$ = 
        6, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
        False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
         3.5}, $CellContext`vapor$$ = {0.881, 1.1099999999999999`}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$10601$$, 0], 
        Hold[$CellContext`MCR$$, $CellContext`MCR$10602$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$10603$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$10604$$, False], 
        Hold[$CellContext`lever$$, $CellContext`lever$10605$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`P$, $CellContext`xp$, $CellContext`xL$, \
$CellContext`xV$, $CellContext`leverV$, $CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{100, 150}]; $CellContext`Psat$[1] = 
         10^(4.00266 - 1171.53/($CellContext`T$ + 
           224.216)); $CellContext`Psat$[2] = 
         10^(4.04867 - 1355.126/($CellContext`T$ + 209.367)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`x$ $CellContext`Psat$[1] + (
            1 - $CellContext`x$) $CellContext`Psat$[2]; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`x$/$CellContext`Psat$[
            1] + (1 - $CellContext`x$)/$CellContext`Psat$[
            2])^(-1); $CellContext`P$ = 
         RandomReal[{$CellContext`Px$[0] + 0.5, $CellContext`Px$[1] - 
            0.5}]; $CellContext`xp$ = RandomReal[{
            ReplaceAll[0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]], 
            ReplaceAll[-0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]}]; $CellContext`xL$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]; $CellContext`xV$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 
             0}]]; $CellContext`leverV$ = ($CellContext`xp$ - \
$CellContext`xL$)/($CellContext`xV$ - $CellContext`xL$); $CellContext`bp1$$ = \
{0.25, 
           Part[$CellContext`bp1$$, 2]}; $CellContext`bp2$$ = {0.5, 
           Part[$CellContext`bp2$$, 2]}; $CellContext`bp3$$ = {0.75, 
           Part[$CellContext`bp3$$, 2]}; $CellContext`dp1$$ = {0.35, 
           Part[$CellContext`dp1$$, 2]}; $CellContext`dp2$$ = {0.6, 
           Part[$CellContext`dp2$$, 2]}; $CellContext`dp3$$ = {0.85, 
           Part[$CellContext`dp3$$, 2]}; $CellContext`plotlabel$ = 
         Switch[$CellContext`MCR$$, 1, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 1: click and drag the circles vertically to draw \
the bubble-point curve,", "then check solution"}]], 2, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 2: click and drag the circles vertically to draw \
the dew-point curve,", "then check solution"}]], 3, 
           "step 3: click and drag the circle to the liquid region, then \
check solution", 4, 
           "step 4: click and drag the circle to the vapor region, then check \
solution", 5, 
           If[$CellContext`hint$$, "hint: draw tie line", 
            
            Column[{"step 5: move the blue and green circles to the liquid \
and vapor compositions that", 
              
              "are in equilibrium for the mixture indicated by the black \
circle"}]], 6, 
           If[$CellContext`hint$$, "hint: use the lever rule", 
            
            Column[{"step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,", "then check solution"}]], 7, ""]; 
        Graphics[{Thick, 
           $CellContext`pt2[{1, 
             $CellContext`Psat$[1]}, Black], 
           $CellContext`pt2[{0, 
             $CellContext`Psat$[2]}, Black], 
           If[$CellContext`MCR$$ == 1, {{Dashed, $CellContext`colL, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`bp1$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp2$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp3$$, $CellContext`colL], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colL, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colL, 
               Line[
                Map[{#, 
                  $CellContext`Px$[#]}& , 
                 Range[0, 1, 0.1]]]}]}], 
           If[$CellContext`MCR$$ > 1, {$CellContext`colL, 
             Line[
              Map[{#, 
                $CellContext`Px$[#]}& , 
               Range[0, 1, 0.1]]]}], 
           If[$CellContext`MCR$$ == 2, {{Dashed, $CellContext`colV, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`dp1$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp2$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp3$$, $CellContext`colV], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colV, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colV, 
               Line[
                Map[{#, 
                  $CellContext`Py$[#]}& , 
                 Range[0, 1, 0.01]]]}]}], 
           If[$CellContext`MCR$$ > 2, {$CellContext`colV, 
             Line[
              Map[{#, 
                $CellContext`Py$[#]}& , 
               Range[0, 1, 0.01]]]}], 
           If[$CellContext`MCR$$ == 3, {
             $CellContext`pt1[$CellContext`liquid$$, $CellContext`colL], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "liquid present above the bubble-point curve", 
                17, $CellContext`colL, Background -> White], {0.5, 
                $CellContext`Px$[1]}]]}], 
           If[$CellContext`MCR$$ > 3, 
            Text[
             Style["liquid", 18, $CellContext`colL, Background -> White], {
             0.1, 6.5}]], 
           If[$CellContext`MCR$$ == 4, {
             $CellContext`pt1[$CellContext`vapor$$, $CellContext`colV], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "vapor present below the dew-point curve", 
                17, $CellContext`colV, Background -> White], {0.5, 
                $CellContext`Py$[0]}]]}], 
           If[$CellContext`MCR$$ > 4, 
            Text[
             Style["vapor", 18, $CellContext`colV, Background -> White], {0.9,
              0.5}]], 
           If[$CellContext`MCR$$ == 5, {{Dashed, $CellContext`colL, 
              
              Line[{$CellContext`tieL$$, {$CellContext`xp$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{$CellContext`tieV$$, {$CellContext`xp$, \
$CellContext`P$}}]}, 
             $CellContext`pt1[$CellContext`tieL$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`tieV$$, $CellContext`colV], 
             Apply[Text[
               Style[
                Row[{
                  NumberForm[
                   Part[#, 2], {3, 1}], " bar"}], 17, #2, Background -> 
                White], #, {0, 
               2}]& , {{{$CellContext`xp$, $CellContext`P$}, 
                Black}, {$CellContext`tieL$$, $CellContext`colL}, \
{$CellContext`tieV$$, $CellContext`colV}}, {1}], 
             If[$CellContext`solution$$, {{Dashed, $CellContext`colL, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
                Thickness[0.007], Dotted, $CellContext`colL, 
                
                Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                   0}}], $CellContext`colV, 
                
                Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                   0}}]}, {
                PointSize[0.02], $CellContext`colL, 
                Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
                Point[{$CellContext`xV$, $CellContext`P$}]}, 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xL$, {2, 2}], 
                  17, $CellContext`colL], Background -> White, 
                 FrameStyle -> $CellContext`colL, FrameMargins -> 
                 Tiny], {$CellContext`xL$, 0.15 $CellContext`P$}], 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xV$, {2, 2}], 
                  17, $CellContext`colV], Background -> White, 
                 FrameStyle -> $CellContext`colV, FrameMargins -> 
                 Tiny], {$CellContext`xV$, 0.15 $CellContext`P$}]}], {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}]}}], 
           If[$CellContext`MCR$$ > 5, {{Dashed, $CellContext`colL, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
              Thickness[0.007], Dotted, $CellContext`colL, 
              
              Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                 0}}], $CellContext`colV, 
              
              Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                 0}}]}, {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}], $CellContext`colL, 
              Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
              Point[{$CellContext`xV$, $CellContext`P$}]}, 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xL$, {2, 2}], 17, $CellContext`colL], 
               Background -> White, FrameStyle -> $CellContext`colL, 
               FrameMargins -> Tiny], {$CellContext`xL$, 
               0.15 $CellContext`P$}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xV$, {2, 2}], 17, $CellContext`colV], 
               Background -> White, FrameStyle -> $CellContext`colV, 
               FrameMargins -> Tiny], {$CellContext`xV$, 
               0.15 $CellContext`P$}]}], 
           If[$CellContext`MCR$$ == 6, {
             Text[
              Style[
               Row[{"fraction vapor = ", $CellContext`lever$$, 
                 If[$CellContext`solution$$, 
                  Row[{
                    Spacer[30], "correct vapor fraction = ", 
                    NumberForm[$CellContext`leverV$, {2, 2}]}]]}], 
               17, $CellContext`colV, Background -> White], {0.5, 7}]}], 
           If[$CellContext`MCR$$ == 7, {
             PointSize[0.02], 
             Point[{$CellContext`xp$, $CellContext`P$}], 
             Text[
              Style[
               Row[{"fraction vapor = ", 
                 NumberForm[$CellContext`leverV$, {2, 2}]}], 
               17, $CellContext`colV], {0.5, 7}]}]}, 
          PlotRange -> {{0, 1}, {-0.1, 7.5}}, PlotRangeClipping -> False, 
          Frame -> True, LabelStyle -> {17, Black}, FrameLabel -> {
            Row[{
              Style["n", Italic], "-hexane mole fraction"}], 
            "pressure (bar)"}, ImageSize -> {600, 400}, AspectRatio -> Full, 
          GridLines -> If[$CellContext`MCR$$ == 7, None, {
             Range[0, 1, 0.05], 
             Range[0, 7.5, 0.5]}], GridLinesStyle -> GrayLevel[0.8], 
          ImagePadding -> {{45, 30}, {50, 
             If[$CellContext`hint$$, 25, 
              If[
               
               Or[$CellContext`MCR$$ <= 2, $CellContext`MCR$$ == 
                5, $CellContext`MCR$$ == 6], 5, 25]]}}, PlotLabel -> 
          Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`MCR$$, 6, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, True, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`bp1$$, {0.25, 0.5}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`bp2$$, {0.5, 0.81}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`bp3$$, {0.75, 1.46}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`dp1$$, {0.25, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`dp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`dp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`liquid$$, {0.8505, 1.18}}, Automatic, 
         ControlType -> Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`vapor$$, {0.881, 1.1099999999999999`}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`tieL$$, {0.2, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`tieV$$, {0.8, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 14}, 
        Grid[{{
           Button[" new problem ", {
             
             If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
             False, $CellContext`hint$$ = False}], 
           Manipulate`Place[1], 
           
           PaneSelector[{
            1 -> "(1) draw bubble-point pressure curve", 2 -> 
             "(2) draw dew-point pressure curve", 3 -> 
             "(3) move the point to the liquid region", 4 -> 
             "(4) move the point to the vapor region", 5 -> 
             "(5) locate vapor-liquid equilibrium", 6 -> 
             "(6) determine vapor fraction", 7 -> "(7) solution"}, 
            Dynamic[$CellContext`MCR$$]], 
           Manipulate`Place[2], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`MCR$$]], 
           PaneSelector[{1 -> Row[{
                Manipulate`Place[5], 
                Manipulate`Place[6], 
                Manipulate`Place[7]}], 2 -> Row[{
                Manipulate`Place[8], 
                Manipulate`Place[9], 
                Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
             Manipulate`Place[12], 5 -> Row[{
                Manipulate`Place[13], 
                Manipulate`Place[14]}]}, 
            Dynamic[$CellContext`MCR$$]]}}], {{$CellContext`lever$$, 0.46, 
          "fraction of vapor"}, 0, 1, 0.01, Appearance -> "Labeled", Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 15}, 
        PaneSelector[{6 -> Manipulate`Place[15]}, 
         Dynamic[$CellContext`MCR$$]]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {260., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colL = 
       RGBColor[0, 0, 1], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0, 0.6, 0], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->467109472,ExpressionUUID->"5475b80d-b09f-4c01-b1e1-8aac5af00fd1"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
    0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {0.35, 
    0.5}, $CellContext`dp2$$ = {0.6, 0.5}, $CellContext`dp3$$ = {0.85, 
    0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
    0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
    7, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
    False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
    3.5}, $CellContext`vapor$$ = {0.5, 4}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`reset$$], 1}, 1, 1000, 1}, {{
       Hold[$CellContext`MCR$$], 7, ""}, {1, 2, 3, 4, 5, 6, 7}}, {{
       Hold[$CellContext`solution$$], False, "solution"}, {True, False}}, {{
       Hold[$CellContext`hint$$], False, "hint"}, {True, False}}, {{
       Hold[$CellContext`bp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`bp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp1$$], {0.25, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp2$$], {0.5, 0.5}}, Automatic}, {{
       Hold[$CellContext`dp3$$], {0.75, 0.5}}, Automatic}, {{
       Hold[$CellContext`liquid$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`vapor$$], {0.5, 4}}, Automatic}, {{
       Hold[$CellContext`tieL$$], {0.2, 3.5}}, Automatic}, {{
       Hold[$CellContext`tieV$$], {0.8, 3.5}}, Automatic}, {
      Hold[
       Grid[{{
          Button[" new problem ", {
            
            If[$CellContext`reset$$ < 
             1000, $CellContext`reset$$ = $CellContext`reset$$ + 
              1, $CellContext`reset$$ = $CellContext`reset$$ - 
              1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
            False, $CellContext`hint$$ = False}], 
          Manipulate`Place[1], 
          
          PaneSelector[{
           1 -> "(1) draw bubble-point pressure curve", 2 -> 
            "(2) draw dew-point pressure curve", 3 -> 
            "(3) move the point to the liquid region", 4 -> 
            "(4) move the point to the vapor region", 5 -> 
            "(5) locate vapor-liquid equilibrium", 6 -> 
            "(6) determine vapor fraction", 7 -> "(7) solution"}, 
           Dynamic[$CellContext`MCR$$]], 
          Manipulate`Place[2], 
          PaneSelector[{1 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
               If[
                Inequality[
                1, LessEqual, $CellContext`MCR$$, Less, 
                 7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                 1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
               False, $CellContext`hint$$ = False}]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
            Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
            Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
           Dynamic[$CellContext`MCR$$]], 
          
          PaneSelector[{
           1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
            Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
           Dynamic[$CellContext`MCR$$]], 
          PaneSelector[{1 -> Row[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}], 2 -> Row[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
            Manipulate`Place[12], 5 -> Row[{
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}, 
           Dynamic[$CellContext`MCR$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`lever$$], 0.5, "fraction of vapor"}, 0, 1, 0.01}, {
      Hold[
       PaneSelector[{6 -> Manipulate`Place[15]}, 
        Dynamic[$CellContext`MCR$$]]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {600., {197., 203.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`reset$10708$$ = 0, $CellContext`MCR$10709$$ = 
    0, $CellContext`solution$10710$$ = False, $CellContext`hint$10711$$ = 
    False, $CellContext`lever$10712$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bp1$$ = {0.25, 0.5}, $CellContext`bp2$$ = {
         0.5, 0.5}, $CellContext`bp3$$ = {0.75, 0.5}, $CellContext`dp1$$ = {
         0.25, 0.5}, $CellContext`dp2$$ = {0.5, 0.5}, $CellContext`dp3$$ = {
         0.75, 0.5}, $CellContext`hint$$ = False, $CellContext`lever$$ = 
        0.5, $CellContext`liquid$$ = {0.5, 4}, $CellContext`MCR$$ = 
        7, $CellContext`reset$$ = 1, $CellContext`solution$$ = 
        False, $CellContext`tieL$$ = {0.2, 3.5}, $CellContext`tieV$$ = {0.8, 
         3.5}, $CellContext`vapor$$ = {0.5, 4}}, "ControllerVariables" :> {
        Hold[$CellContext`reset$$, $CellContext`reset$10708$$, 0], 
        Hold[$CellContext`MCR$$, $CellContext`MCR$10709$$, 0], 
        Hold[$CellContext`solution$$, $CellContext`solution$10710$$, False], 
        Hold[$CellContext`hint$$, $CellContext`hint$10711$$, False], 
        Hold[$CellContext`lever$$, $CellContext`lever$10712$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`P$, $CellContext`xp$, $CellContext`xL$, \
$CellContext`xV$, $CellContext`leverV$, $CellContext`plotlabel$}, 
        SeedRandom[$CellContext`reset$$]; $CellContext`T$ = 
         RandomInteger[{100, 150}]; $CellContext`Psat$[1] = 
         10^(4.00266 - 1171.53/($CellContext`T$ + 
           224.216)); $CellContext`Psat$[2] = 
         10^(4.04867 - 1355.126/($CellContext`T$ + 209.367)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] := $CellContext`x$ $CellContext`Psat$[1] + (
            1 - $CellContext`x$) $CellContext`Psat$[2]; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            Blank[]]] := ($CellContext`x$/$CellContext`Psat$[
            1] + (1 - $CellContext`x$)/$CellContext`Psat$[
            2])^(-1); $CellContext`P$ = 
         RandomReal[{$CellContext`Px$[0] + 0.5, $CellContext`Px$[1] - 
            0.5}]; $CellContext`xp$ = RandomReal[{
            ReplaceAll[0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]], 
            ReplaceAll[-0.1 + $CellContext`x, 
             
             FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]}]; $CellContext`xL$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Px$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 0}]]; $CellContext`xV$ = ReplaceAll[$CellContext`x, 
           
           FindRoot[$CellContext`Py$[$CellContext`x] == $CellContext`P$, \
{$CellContext`x, 
             0}]]; $CellContext`leverV$ = ($CellContext`xp$ - \
$CellContext`xL$)/($CellContext`xV$ - $CellContext`xL$); $CellContext`bp1$$ = \
{0.25, 
           Part[$CellContext`bp1$$, 2]}; $CellContext`bp2$$ = {0.5, 
           Part[$CellContext`bp2$$, 2]}; $CellContext`bp3$$ = {0.75, 
           Part[$CellContext`bp3$$, 2]}; $CellContext`dp1$$ = {0.35, 
           Part[$CellContext`dp1$$, 2]}; $CellContext`dp2$$ = {0.6, 
           Part[$CellContext`dp2$$, 2]}; $CellContext`dp3$$ = {0.85, 
           Part[$CellContext`dp3$$, 2]}; $CellContext`plotlabel$ = 
         Switch[$CellContext`MCR$$, 1, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 1: click and drag the circles vertically to draw \
the bubble-point curve,", "then check solution"}]], 2, 
           
           If[$CellContext`hint$$, 
            "hint: use Raoult's law for each component", 
            
            Column[{"step 2: click and drag the circles vertically to draw \
the dew-point curve,", "then check solution"}]], 3, 
           "step 3: click and drag the circle to the liquid region, then \
check solution", 4, 
           "step 4: click and drag the circle to the vapor region, then check \
solution", 5, 
           If[$CellContext`hint$$, "hint: draw tie line", 
            
            Column[{"step 5: move the blue and green circles to the liquid \
and vapor compositions that", 
              "are in equilibrium for the mixture indicated by the black \
circle"}]], 6, 
           If[$CellContext`hint$$, "hint: use the lever rule", 
            
            Column[{"step 6: move the slider to the fraction of vapor in a \
mixture located at the black point,", "then check solution"}]], 7, ""]; 
        Graphics[{Thick, 
           $CellContext`pt2[{1, 
             $CellContext`Psat$[1]}, Black], 
           $CellContext`pt2[{0, 
             $CellContext`Psat$[2]}, Black], 
           If[$CellContext`MCR$$ == 1, {{Dashed, $CellContext`colL, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`bp1$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp2$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`bp3$$, $CellContext`colL], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colL, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`bp1$$, $CellContext`bp2$$, \
$CellContext`bp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colL, 
               Line[
                Map[{#, 
                  $CellContext`Px$[#]}& , 
                 Range[0, 1, 0.1]]]}]}], 
           If[$CellContext`MCR$$ > 1, {$CellContext`colL, 
             Line[
              Map[{#, 
                $CellContext`Px$[#]}& , 
               Range[0, 1, 0.1]]]}], 
           If[$CellContext`MCR$$ == 2, {{Dashed, $CellContext`colV, 
              Line[{{0, 
                 $CellContext`Psat$[
                 2]}, $CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$, {1, 
                 $CellContext`Psat$[1]}}]}, 
             $CellContext`pt1[$CellContext`dp1$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp2$$, $CellContext`colV], 
             $CellContext`pt1[$CellContext`dp3$$, $CellContext`colV], 
             If[$CellContext`solution$$ == False, {
               Map[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, $CellContext`colV, 
                  Background -> White], #, {
                 0, 1.75}]& , {$CellContext`dp1$$, $CellContext`dp2$$, \
$CellContext`dp3$$}], 
               Apply[Text[
                 Style[
                  Row[{
                    NumberForm[
                    Part[#, 2], {3, 1}], " bar"}], 17, Background -> 
                  White], #, {1.1 #2, -1.5}]& , {{{1, 
                   $CellContext`Psat$[1]}, 1}, {{0, 
                   $CellContext`Psat$[2]}, -1}}, {1}]}], 
             If[$CellContext`solution$$, {$CellContext`colV, 
               Line[
                Map[{#, 
                  $CellContext`Py$[#]}& , 
                 Range[0, 1, 0.01]]]}]}], 
           If[$CellContext`MCR$$ > 2, {$CellContext`colV, 
             Line[
              Map[{#, 
                $CellContext`Py$[#]}& , 
               Range[0, 1, 0.01]]]}], 
           If[$CellContext`MCR$$ == 3, {
             $CellContext`pt1[$CellContext`liquid$$, $CellContext`colL], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "liquid present above the bubble-point curve", 
                17, $CellContext`colL, Background -> White], {0.5, 
                $CellContext`Px$[1]}]]}], 
           If[$CellContext`MCR$$ > 3, 
            Text[
             Style["liquid", 18, $CellContext`colL, Background -> White], {
             0.1, 6.5}]], 
           If[$CellContext`MCR$$ == 4, {
             $CellContext`pt1[$CellContext`vapor$$, $CellContext`colV], 
             If[$CellContext`solution$$, 
              Text[
               Style[
               "vapor present below the dew-point curve", 
                17, $CellContext`colV, Background -> White], {0.5, 
                $CellContext`Py$[0]}]]}], 
           If[$CellContext`MCR$$ > 4, 
            Text[
             Style["vapor", 18, $CellContext`colV, Background -> White], {0.9,
              0.5}]], 
           If[$CellContext`MCR$$ == 5, {{Dashed, $CellContext`colL, 
              
              Line[{$CellContext`tieL$$, {$CellContext`xp$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{$CellContext`tieV$$, {$CellContext`xp$, \
$CellContext`P$}}]}, 
             $CellContext`pt1[$CellContext`tieL$$, $CellContext`colL], 
             $CellContext`pt1[$CellContext`tieV$$, $CellContext`colV], 
             Apply[Text[
               Style[
                Row[{
                  NumberForm[
                   Part[#, 2], {3, 1}], " bar"}], 17, #2, Background -> 
                White], #, {0, 
               2}]& , {{{$CellContext`xp$, $CellContext`P$}, 
                Black}, {$CellContext`tieL$$, $CellContext`colL}, \
{$CellContext`tieV$$, $CellContext`colV}}, {1}], 
             If[$CellContext`solution$$, {{Dashed, $CellContext`colL, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
                
                Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
                Thickness[0.007], Dotted, $CellContext`colL, 
                
                Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                   0}}], $CellContext`colV, 
                Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                   0}}]}, {
                PointSize[0.02], $CellContext`colL, 
                Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
                Point[{$CellContext`xV$, $CellContext`P$}]}, 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xL$, {2, 2}], 
                  17, $CellContext`colL], Background -> White, 
                 FrameStyle -> $CellContext`colL, FrameMargins -> 
                 Tiny], {$CellContext`xL$, 0.15 $CellContext`P$}], 
               Text[
                Framed[
                 Style[
                  NumberForm[$CellContext`xV$, {2, 2}], 
                  17, $CellContext`colV], Background -> White, 
                 FrameStyle -> $CellContext`colV, FrameMargins -> 
                 Tiny], {$CellContext`xV$, 0.15 $CellContext`P$}]}], {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}]}}], 
           If[$CellContext`MCR$$ > 5, {{Dashed, $CellContext`colL, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xV$, \
$CellContext`P$}}], $CellContext`colV, 
              
              Line[{{$CellContext`xp$, $CellContext`P$}, {$CellContext`xL$, \
$CellContext`P$}}]}, {
              Thickness[0.007], Dotted, $CellContext`colL, 
              
              Line[{{$CellContext`xL$, $CellContext`P$}, {$CellContext`xL$, 
                 0}}], $CellContext`colV, 
              
              Line[{{$CellContext`xV$, $CellContext`P$}, {$CellContext`xV$, 
                 0}}]}, {
              PointSize[0.02], 
              Point[{$CellContext`xp$, $CellContext`P$}], $CellContext`colL, 
              Point[{$CellContext`xL$, $CellContext`P$}], $CellContext`colV, 
              Point[{$CellContext`xV$, $CellContext`P$}]}, 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xL$, {2, 2}], 17, $CellContext`colL], 
               Background -> White, FrameStyle -> $CellContext`colL, 
               FrameMargins -> Tiny], {$CellContext`xL$, 
               0.15 $CellContext`P$}], 
             Text[
              Framed[
               Style[
                NumberForm[$CellContext`xV$, {2, 2}], 17, $CellContext`colV], 
               Background -> White, FrameStyle -> $CellContext`colV, 
               FrameMargins -> Tiny], {$CellContext`xV$, 
               0.15 $CellContext`P$}]}], 
           If[$CellContext`MCR$$ == 6, {
             Text[
              Style[
               Row[{"fraction vapor = ", $CellContext`lever$$, 
                 If[$CellContext`solution$$, 
                  Row[{
                    Spacer[30], "correct vapor fraction = ", 
                    NumberForm[$CellContext`leverV$, {2, 2}]}]]}], 
               17, $CellContext`colV, Background -> White], {0.5, 7}]}], 
           If[$CellContext`MCR$$ == 7, {
             PointSize[0.02], 
             Point[{$CellContext`xp$, $CellContext`P$}], 
             Text[
              Style[
               Row[{"fraction vapor = ", 
                 NumberForm[$CellContext`leverV$, {2, 2}]}], 
               17, $CellContext`colV], {0.5, 7}]}]}, 
          PlotRange -> {{0, 1}, {-0.1, 7.5}}, PlotRangeClipping -> False, 
          Frame -> True, LabelStyle -> {17, Black}, FrameLabel -> {
            Row[{
              Style["n", Italic], "-hexane mole fraction"}], 
            "pressure (bar)"}, ImageSize -> {600, 400}, AspectRatio -> Full, 
          GridLines -> If[$CellContext`MCR$$ == 7, None, {
             Range[0, 1, 0.05], 
             Range[0, 7.5, 0.5]}], GridLinesStyle -> GrayLevel[0.8], 
          ImagePadding -> {{45, 30}, {50, 
             If[$CellContext`hint$$, 25, 
              If[
               
               Or[$CellContext`MCR$$ <= 2, $CellContext`MCR$$ == 
                5, $CellContext`MCR$$ == 6], 5, 25]]}}, PlotLabel -> 
          Style[$CellContext`plotlabel$, 17]]], 
      "Specifications" :> {{{$CellContext`reset$$, 1}, 1, 1000, 1, 
         ControlType -> None, ControlPlacement -> 
         1}, {{$CellContext`MCR$$, 7, ""}, {1, 2, 3, 4, 5, 6, 7}, ControlType -> 
         None, ControlPlacement -> 
         2}, {{$CellContext`solution$$, False, "solution"}, {True, False}, 
         Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         3}, {{$CellContext`hint$$, False, "hint"}, {True, False}, 
         ControlPlacement -> 4}, {{$CellContext`bp1$$, {0.25, 0.5}}, 
         Automatic, ControlType -> Locator, Appearance -> None, Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         5}, {{$CellContext`bp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         6}, {{$CellContext`bp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         7}, {{$CellContext`dp1$$, {0.25, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         8}, {{$CellContext`dp2$$, {0.5, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         9}, {{$CellContext`dp3$$, {0.75, 0.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         10}, {{$CellContext`liquid$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         11}, {{$CellContext`vapor$$, {0.5, 4}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         12}, {{$CellContext`tieL$$, {0.2, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 
         13}, {{$CellContext`tieV$$, {0.8, 3.5}}, Automatic, ControlType -> 
         Locator, Appearance -> None, Enabled -> Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 14}, 
        Grid[{{
           Button[" new problem ", {
             
             If[$CellContext`reset$$ < 
              1000, $CellContext`reset$$ = $CellContext`reset$$ + 
               1, $CellContext`reset$$ = $CellContext`reset$$ - 
               1], $CellContext`MCR$$ = 1, $CellContext`solution$$ = 
             False, $CellContext`hint$$ = False}], 
           Manipulate`Place[1], 
           
           PaneSelector[{
            1 -> "(1) draw bubble-point pressure curve", 2 -> 
             "(2) draw dew-point pressure curve", 3 -> 
             "(3) move the point to the liquid region", 4 -> 
             "(4) move the point to the vapor region", 5 -> 
             "(5) locate vapor-liquid equilibrium", 6 -> 
             "(6) determine vapor fraction", 7 -> "(7) solution"}, 
            Dynamic[$CellContext`MCR$$]], 
           Manipulate`Place[2], 
           PaneSelector[{1 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 2 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 3 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 4 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 5 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}], 6 -> Button[" next ", {
                If[
                 Inequality[
                 1, LessEqual, $CellContext`MCR$$, Less, 
                  7], $CellContext`MCR$$ = $CellContext`MCR$$ + 
                  1, $CellContext`MCR$$ = 7], $CellContext`solution$$ = 
                False, $CellContext`hint$$ = False}]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[3], 2 -> Manipulate`Place[3], 3 -> 
             Manipulate`Place[3], 4 -> Manipulate`Place[3], 5 -> 
             Manipulate`Place[3], 6 -> Manipulate`Place[3]}, 
            Dynamic[$CellContext`MCR$$]], 
           
           PaneSelector[{
            1 -> Manipulate`Place[4], 2 -> Manipulate`Place[4], 5 -> 
             Manipulate`Place[4], 6 -> Manipulate`Place[4]}, 
            Dynamic[$CellContext`MCR$$]], 
           PaneSelector[{1 -> Row[{
                Manipulate`Place[5], 
                Manipulate`Place[6], 
                Manipulate`Place[7]}], 2 -> Row[{
                Manipulate`Place[8], 
                Manipulate`Place[9], 
                Manipulate`Place[10]}], 3 -> Manipulate`Place[11], 4 -> 
             Manipulate`Place[12], 5 -> Row[{
                Manipulate`Place[13], 
                Manipulate`Place[14]}]}, 
            Dynamic[$CellContext`MCR$$]]}}], {{$CellContext`lever$$, 0.5, 
          "fraction of vapor"}, 0, 1, 0.01, Appearance -> "Labeled", Enabled -> 
         Dynamic[
           If[$CellContext`solution$$, False, True]], ControlPlacement -> 15}, 
        PaneSelector[{6 -> Manipulate`Place[15]}, 
         Dynamic[$CellContext`MCR$$]]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{655., {260., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt2[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt]}, $CellContext`colL = 
       RGBColor[0, 0, 1], $CellContext`pt1[
         Pattern[$CellContext`pt, 
          Blank[]], 
         Pattern[$CellContext`col, 
          Blank[]]] := {$CellContext`col, 
         PointSize[0.025], 
         Point[$CellContext`pt], White, 
         PointSize[0.015], 
         Point[$CellContext`pt]}, $CellContext`colV = RGBColor[0, 0.6, 0], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->137970685,ExpressionUUID->"404a659a-fa9b-4741-a186-56255615726e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"493f6ba9-fd8d-4594-9a91-3134545096b8"],

Cell[TextData[{
 "The saturation pressure of each component ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", 
    RowBox[{"(", 
     RowBox[{"1", ",", "2"}], ")"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"4294c61c-bb09-41a0-a16e-c7fa991cac5a"],
 " is calculated using the Antoine equation:"
}], "DetailNotes",
 CellID->527391816,ExpressionUUID->"1105a416-e3fb-4a30-a6b5-f5502c506ddb"],

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
  "InlineMath",ExpressionUUID->"2988ebf3-ebfd-4e35-ac90-f29beaf95111"],
 ","
}], "DetailNotes",
 CellID->392526358,ExpressionUUID->"1f20d832-eb76-443d-aceb-26ff33a883a6"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "1"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "2f50c9d1-ec51-46a1-a627-6641791db469"],
 " for ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "f4b530cf-05c6-4a06-b5a1-d8af831de9f9"],
 "-hexane, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "2"}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "75e695f9-1d76-4828-980c-04b485cdf9b8"],
 " for ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]], "InlineMath",ExpressionUUID->
  "bceebc21-cb16-4971-9c5a-c12184b36b11"],
 "-octane, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["A", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "4a63a1a2-f94b-4803-b34c-70800a0ebbd1"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["B", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "2b226c83-3ee3-4fcc-bd82-6b5310f646e2"],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["C", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b6181471-83b1-4155-9206-83a025fd65d0"],
 " are the Antoine constants, ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "i", "sat"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"4b824b1c-7619-49b8-8d4f-a4342b4c8574"],
 " is saturation pressure (bar), and ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath",ExpressionUUID->
  "9261f285-a12d-4a1a-b3d7-4e84600cbf77"],
 " is temperature (\[Degree]C)."
}], "DetailNotes",
 CellID->525649404,ExpressionUUID->"9f992411-4a26-4918-ae6e-3cd8590f2749"],

Cell[TextData[{
 "Raoult's law is used to calculate the bubble-point and dew-point pressures \
using ",
 Cell[BoxData[
  FormBox["K", TraditionalForm]], "InlineMath",ExpressionUUID->
  "f3caf578-1aab-427d-8c3f-bdee57d12114"],
 " factors:"
}], "DetailNotes",
 CellID->63088248,ExpressionUUID->"e9018857-9007-4f0e-901c-1c1c998c1bbd"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["K", "i"], "=", 
    RowBox[{
     FractionBox[
      SubscriptBox["y", "i"], 
      SubscriptBox["x", "i"]], "=", 
     FractionBox[
      SubsuperscriptBox["P", "i", "sat"], "P"]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"dff47498-b77a-452c-b85d-4bc2fd8e0785"],
 ","
}], "DetailNotes",
 CellID->365286202,ExpressionUUID->"b0b8588b-05a9-4f52-bce8-bb7c623cd5a2"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "6fccc53b-ce8b-49c9-8e87-a3bc296de4ea"],
 " is the vapor mole fraction (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["y", "1"], "+", 
     SubscriptBox["y", "2"]}], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"1d78fe0e-cecf-4fd7-999c-a07f5edb7e65"],
 "), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "i"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "71685818-1718-4ce0-9ac6-b616f4c433e9"],
 " is the liquid mole fraction (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], "+", 
     SubscriptBox["x", "2"]}], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"04cfbaf4-a507-4f42-b5dd-77ee1986bc25"],
 "), and ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]], "InlineMath",ExpressionUUID->
  "a1bd0af3-97bf-453b-a802-772f7473dbbc"],
 " is the total pressure (bar)."
}], "DetailNotes",
 CellID->9096200,ExpressionUUID->"905b2c58-e159-451e-8284-304d0f317c56"],

Cell[TextData[{
 "The bubble-point pressure curve is calculated using ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["K", "i"], " ", 
      SubscriptBox["x", "i"]}]}], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"9d0eb76f-896b-433d-94f1-e2747b247032"],
 ":"
}], "DetailNotes",
 CellID->122311603,ExpressionUUID->"2265c818-dd3d-4743-9102-398f7141eaf8"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["x", "1"], " ", 
      SubsuperscriptBox["P", "1", "sat"]}], "+", 
     RowBox[{
      SubscriptBox["x", "x"], " ", 
      SubsuperscriptBox["P", "2", "sat"]}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"674cbfaa-e343-4ea2-883c-3c6cd2c7c7d6"],
 "."
}], "DetailNotes",
 CellID->359768648,ExpressionUUID->"fc5874af-6ef5-4c72-b038-a337d12792ef"],

Cell[TextData[{
 "THe dew-point pressure curve is calculated using ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["y", "i"], "/", 
      SubscriptBox["K", "i"]}]}], "=", "1"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"d3c7de18-c652-46d9-8c90-80667409e6b3"],
 ":"
}], "DetailNotes",
 CellID->191284873,ExpressionUUID->"97ed1701-1ce3-46e8-80b4-ae2e8992ad77"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "=", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       FractionBox[
        SubscriptBox["y", "1"], 
        SubsuperscriptBox["P", "1", "sat"]], "+", 
       FractionBox[
        SubscriptBox["y", "2"], 
        SubsuperscriptBox["P", "2", "sat"]]}], ")"}], 
     RowBox[{"-", "1"}]]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "e3a1da59-bc9e-40ab-9d85-dbb429c25163"],
 "."
}], "DetailNotes",
 CellID->60135558,ExpressionUUID->"4884889d-5426-46c5-ad64-e5b3e6cab4a7"],

Cell[TextData[{
 "View the screencast video at [2] to see another example of a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"T", "-", "x", "-", "y"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"a766e7de-58b2-49aa-8572-33c7f2151731"],
 " diagram."
}], "DetailNotes",
 CellID->245103879,ExpressionUUID->"c2aa4155-01ee-4b6d-91e5-3ccd783f2d78"],

Cell["References", "DetailNotes",
 CellID->172800314,ExpressionUUID->"e9c31b38-cf3f-4c61-adce-a447c52030f9"],

Cell[TextData[{
 "[1] J. R. Elliott and C. T. Lira, ",
 StyleBox["Introductory Chemical Engineering Thermodynamics",
  FontSlant->"Italic"],
 ", New York: Prentice Hall, 2012 pp. 372\[Dash]377."
}], "DetailNotes",
 CellID->195455818,ExpressionUUID->"ab8448d2-d148-4bb6-937e-a039e0fafe53"],

Cell[TextData[{
 "[2] ",
 StyleBox["P-x-y and T-x-y Diagrams for Vapor-Liquid Equilibrium (VLE)",
  FontSlant->"Italic"],
 ". ",
 ButtonBox["www.colorado.edu/learncheme/thermodynamics/PxyTxyDiagramsVLE.html",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.colorado.edu/learncheme/thermodynamics/PxyTxyDiagramsVLE.\
html"], None},
  ButtonNote->
   "https://www.colorado.edu/learncheme/thermodynamics/PxyTxyDiagramsVLE.html"]
}], "DetailNotes",
 CellID->157351620,ExpressionUUID->"8e5c3a69-79e1-4e20-950e-63591982e0a0"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"6bb0ca3c-ffa5-4faf-b711-aee237479a1d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"f76dafd1-2034-459d-a659-641ac73faf50"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"ddb8f735-f2ad-475c-9967-c6ac57646eb7"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "bcc29baa-8851-4f6e-a7de-b6ad7040bd3e"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"6b8e8510-bb05-469c-a401-a4d070932a8d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Drag Locators",ExpressionUUID->"e45ded1a-dbef-4a57-86b3-ebc394c54583"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"a2b0d4d0-2510-4de7-b7d2-49f4fe1ed835"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "e9a2e678-e189-48b7-acc8-18f93e2569a6"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"73f7f6fa-58e0-4e01-8c68-\
4d361b1109e2"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Slider Zoom",ExpressionUUID->"70f706ea-526e-4e8a-b496-3508e508184a"]}],
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
  "SliderZoom",ExpressionUUID->"6e2ffc9a-126b-4946-a908-9e42912a09ed"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Gamepad Controls",ExpressionUUID->
    "1f6f080e-ceb4-416a-ae0c-4d4782b76368"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"5f28451b-2436-49cc-9c58-4ae37210b55b"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "5f81f551-7220-4ee8-a337-3b0cabc8aab6"]}],
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
  "AutomaticAnimation",ExpressionUUID->"607c39c3-ff90-42f0-a3e1-a73fc14daf79"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "22b1bfaf-5ff0-447c-af69-ffcb95384574"]}],
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
  "BookmarkAnimation",ExpressionUUID->"2710374c-c424-4280-99a9-128ceb2feede"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"5329fdbb-661b-44fe-bff8-e2bb5f1f5f84"],

Cell["chemical engineering", "SearchTerms",
 CellID->265429326,ExpressionUUID->"aa541384-f55c-48c2-9c3a-62053c3ecb80"],

Cell["thermodynamics", "SearchTerms",
 CellID->388541568,ExpressionUUID->"bf51949f-e62c-4b15-90ed-cc6944224442"],

Cell["material and energy balances", "SearchTerms",
 CellID->268544394,ExpressionUUID->"b88c107f-2c02-418b-a48e-acd263750077"],

Cell["separations", "SearchTerms",
 CellID->408167845,ExpressionUUID->"2051eaa7-9fbd-4d37-b2de-f575753f35b2"],

Cell["vapor-liquid equilibrium", "SearchTerms",
 CellID->299931394,ExpressionUUID->"5fae16b3-a78c-4847-87ab-c93fea09ef8f"],

Cell["Raoult's law", "SearchTerms",
 CellID->565896307,ExpressionUUID->"c8690ff6-f0ce-4119-82c8-0205f9aad041"],

Cell["physical chemistry", "SearchTerms",
 CellID->72131854,ExpressionUUID->"c655d1d6-89dd-4ab2-8acf-fee888d70af8"],

Cell["vapor-liquid equilibrium", "SearchTerms",
 CellID->62069431,ExpressionUUID->"f4d8ff05-7c04-47bd-b0d0-a21602a91f57"],

Cell["bubble line", "SearchTerms",
 CellID->241830120,ExpressionUUID->"06c44a5d-eb24-47c0-ad06-5a38123db1a7"],

Cell["dew line", "SearchTerms",
 CellID->90716700,ExpressionUUID->"eacbc63a-d806-4276-9dbf-18f5c7144404"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"26116b90-da03-4e42-9181-a7099f8acb56"],

Cell[TextData[ButtonBox["P-x-y and T-x-y Diagrams for Vapor-Liquid \
Equilibrium (VLE)",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
PXYAndTXYDiagramsForVaporLiquidEquilibriumVLE/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/\
PXYAndTXYDiagramsForVaporLiquidEquilibriumVLE/"]], "RelatedLinks",
 CellID->17528723,ExpressionUUID->"1ff0cc1b-4ea7-44a0-b910-a10c3d4fe34b"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"c96b33c8-8a30-4a75-8a79-74571b6790a5"],

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
 CellID->9119879,ExpressionUUID->"6868531e-adbb-42d4-871c-1fdc247c1d06"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John+L.+\
Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John+L.+Falconer"],
 " "
}], "Author",
 CellID->142231542,ExpressionUUID->"04b67028-b46f-41a0-8229-a4204f424db2"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613,ExpressionUUID->"874f04e4-9dda-4679-a550-7cd457dbf012"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 686},
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
  Cell[206842, 4471, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"ddb8f735-f2ad-475c-9967-c6ac57646eb7",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[207273, 4483, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"6b8e8510-bb05-469c-a401-a4d070932a8d",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[208076, 4504, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"a2b0d4d0-2510-4de7-b7d2-49f4fe1ed835",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[208535, 4519, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"73f7f6fa-58e0-4e01-8c68-4d361b1109e2",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[209299, 4540, 961, 23, 22, "ControlSuggestions",ExpressionUUID->"6e2ffc9a-126b-4946-a908-9e42912a09ed",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[210263, 4565, 426, 11, 22, "ControlSuggestions",ExpressionUUID->"5f28451b-2436-49cc-9c58-4ae37210b55b",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[210692, 4578, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"607c39c3-ff90-42f0-a3e1-a73fc14daf79",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[212280, 4614, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"2710374c-c424-4280-99a9-128ceb2feede",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 216762, 4745},
 {"RotateAndZoomIn3D", 216928, 4748},
 {"DragLocators", 217094, 4751},
 {"CreateAndDeleteLocators", 217266, 4754},
 {"SliderZoom", 217436, 4757},
 {"GamepadControls", 217598, 4760},
 {"AutomaticAnimation", 217768, 4763},
 {"BookmarkAnimation", 217941, 4766}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 301, 7, 75, "DemoTitle",ExpressionUUID->"add436c1-c03b-4cf9-a184-0cba1e291a21"],
Cell[CellGroupData[{
Cell[1836, 46, 88, 0, 275, "InitializationSection",ExpressionUUID->"0a2391c1-c92a-4ee0-99a7-2667dc52066d"],
Cell[1927, 48, 325, 8, 29, "Input",ExpressionUUID->"50825b2b-089f-4397-a8bc-223e213ef553",
 InitializationCell->True,
 CellID->214664291],
Cell[2255, 58, 463, 12, 33, "Input",ExpressionUUID->"79a6043f-6429-4ffc-a7ab-d43aa0eabadf",
 InitializationCell->True,
 CellID->94651572],
Cell[2721, 72, 361, 10, 33, "Input",ExpressionUUID->"24d09faa-1c02-485b-9082-5d34a39fc1c2",
 InitializationCell->True,
 CellID->254988361]
}, Closed]],
Cell[CellGroupData[{
Cell[3119, 87, 84, 0, 189, "ManipulateSection",ExpressionUUID->"5acde99c-316b-4922-a9a6-424be1b994ba"],
Cell[CellGroupData[{
Cell[3228, 91, 51052, 1206, 2625, "Input",ExpressionUUID->"379c35bc-321c-42e3-a901-59575a6f26c0"],
Cell[54283, 1299, 28794, 578, 539, "Output",ExpressionUUID->"95635b45-f58f-4676-a472-84df386fb972",
 CellID->95815657]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[83123, 1883, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"f6522a88-7e1f-4708-8db7-2c1abacc060a"],
Cell[83217, 1885, 1049, 21, 53, "ManipulateCaption",ExpressionUUID->"6ef62daa-0898-4091-8719-aa227a1d9c17"]
}, Open  ]],
Cell[CellGroupData[{
Cell[84303, 1911, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"5065d6a1-a7ca-438b-8580-11019e7cd8f1"],
Cell[84389, 1913, 28530, 572, 540, "Input",ExpressionUUID->"bafac784-b6ce-4c10-a84c-9018c8d330f6",
 CellID->65575675]
}, Open  ]],
Cell[CellGroupData[{
Cell[112956, 2490, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"84000596-3bf0-4b45-ba77-55dc60af278a"],
Cell[113042, 2492, 28740, 577, 539, "Output",ExpressionUUID->"e1876309-c7b5-49ba-adfa-5eba452855a3",
 CellID->117092404],
Cell[141785, 3071, 28740, 577, 539, "Output",ExpressionUUID->"5475b80d-b09f-4c01-b1e1-8aac5af00fd1",
 CellID->467109472],
Cell[170528, 3650, 28572, 572, 539, "Output",ExpressionUUID->"404a659a-fa9b-4741-a186-56255615726e",
 CellID->137970685]
}, Open  ]],
Cell[CellGroupData[{
Cell[199137, 4227, 81, 0, 335, "DetailsSection",ExpressionUUID->"493f6ba9-fd8d-4594-9a91-3134545096b8"],
Cell[199221, 4229, 399, 10, 23, "DetailNotes",ExpressionUUID->"1105a416-e3fb-4a30-a6b5-f5502c506ddb",
 CellID->527391816],
Cell[199623, 4241, 514, 16, 39, "DetailNotes",ExpressionUUID->"1f20d832-eb76-443d-aceb-26ff33a883a6",
 CellID->392526358],
Cell[200140, 4259, 1542, 45, 25, "DetailNotes",ExpressionUUID->"9f992411-4a26-4918-ae6e-3cd8590f2749",
 CellID->525649404],
Cell[201685, 4306, 331, 8, 23, "DetailNotes",ExpressionUUID->"e9018857-9007-4f0e-901c-1c1c998c1bbd",
 CellID->63088248],
Cell[202019, 4316, 447, 14, 42, "DetailNotes",ExpressionUUID->"b0b8588b-05a9-4f52-bce8-bb7c623cd5a2",
 CellID->365286202],
Cell[202469, 4332, 1094, 33, 23, "DetailNotes",ExpressionUUID->"905b2c58-e159-451e-8284-304d0f317c56",
 CellID->9096200],
Cell[203566, 4367, 420, 12, 23, "DetailNotes",ExpressionUUID->"2265c818-dd3d-4743-9102-398f7141eaf8",
 CellID->122311603],
Cell[203989, 4381, 465, 14, 25, "DetailNotes",ExpressionUUID->"fc5874af-6ef5-4c72-b038-a337d12792ef",
 CellID->359768648],
Cell[204457, 4397, 417, 12, 23, "DetailNotes",ExpressionUUID->"97ed1701-1ce3-46e8-80b4-ae2e8992ad77",
 CellID->191284873],
Cell[204877, 4411, 547, 17, 44, "DetailNotes",ExpressionUUID->"4884889d-5426-46c5-ad64-e5b3e6cab4a7",
 CellID->60135558],
Cell[205427, 4430, 344, 8, 23, "DetailNotes",ExpressionUUID->"c2aa4155-01ee-4b6d-91e5-3ccd783f2d78",
 CellID->245103879],
Cell[205774, 4440, 108, 1, 22, "DetailNotes",ExpressionUUID->"e9c31b38-cf3f-4c61-adce-a447c52030f9",
 CellID->172800314],
Cell[205885, 4443, 288, 6, 22, "DetailNotes",ExpressionUUID->"ab8448d2-d148-4bb6-937e-a039e0fafe53",
 CellID->195455818],
Cell[206176, 4451, 534, 13, 22, "DetailNotes",ExpressionUUID->"8e5c3a69-79e1-4e20-950e-63591982e0a0",
 CellID->157351620]
}, Open  ]],
Cell[CellGroupData[{
Cell[206747, 4469, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"6bb0ca3c-ffa5-4faf-b711-aee237479a1d"],
Cell[206842, 4471, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"ddb8f735-f2ad-475c-9967-c6ac57646eb7",
 CellTags->"ResizeImages"],
Cell[207273, 4483, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"6b8e8510-bb05-469c-a401-a4d070932a8d",
 CellTags->"RotateAndZoomIn3D"],
Cell[208076, 4504, 456, 13, 22, "ControlSuggestions",ExpressionUUID->"a2b0d4d0-2510-4de7-b7d2-49f4fe1ed835",
 CellTags->"DragLocators"],
Cell[208535, 4519, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"73f7f6fa-58e0-4e01-8c68-4d361b1109e2",
 CellTags->"CreateAndDeleteLocators"],
Cell[209299, 4540, 961, 23, 22, "ControlSuggestions",ExpressionUUID->"6e2ffc9a-126b-4946-a908-9e42912a09ed",
 CellTags->"SliderZoom"],
Cell[210263, 4565, 426, 11, 22, "ControlSuggestions",ExpressionUUID->"5f28451b-2436-49cc-9c58-4ae37210b55b",
 CellTags->"GamepadControls"],
Cell[210692, 4578, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"607c39c3-ff90-42f0-a3e1-a73fc14daf79",
 CellTags->"AutomaticAnimation"],
Cell[212280, 4614, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"2710374c-c424-4280-99a9-128ceb2feede",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[213347, 4643, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"5329fdbb-661b-44fe-bff8-e2bb5f1f5f84"],
Cell[213435, 4645, 118, 1, 22, "SearchTerms",ExpressionUUID->"aa541384-f55c-48c2-9c3a-62053c3ecb80",
 CellID->265429326],
Cell[213556, 4648, 112, 1, 22, "SearchTerms",ExpressionUUID->"bf51949f-e62c-4b15-90ed-cc6944224442",
 CellID->388541568],
Cell[213671, 4651, 126, 1, 22, "SearchTerms",ExpressionUUID->"b88c107f-2c02-418b-a48e-acd263750077",
 CellID->268544394],
Cell[213800, 4654, 109, 1, 22, "SearchTerms",ExpressionUUID->"2051eaa7-9fbd-4d37-b2de-f575753f35b2",
 CellID->408167845],
Cell[213912, 4657, 122, 1, 22, "SearchTerms",ExpressionUUID->"5fae16b3-a78c-4847-87ab-c93fea09ef8f",
 CellID->299931394],
Cell[214037, 4660, 110, 1, 22, "SearchTerms",ExpressionUUID->"c8690ff6-f0ce-4119-82c8-0205f9aad041",
 CellID->565896307],
Cell[214150, 4663, 115, 1, 22, "SearchTerms",ExpressionUUID->"c655d1d6-89dd-4ab2-8acf-fee888d70af8",
 CellID->72131854],
Cell[214268, 4666, 121, 1, 22, "SearchTerms",ExpressionUUID->"f4d8ff05-7c04-47bd-b0d0-a21602a91f57",
 CellID->62069431],
Cell[214392, 4669, 109, 1, 22, "SearchTerms",ExpressionUUID->"06c44a5d-eb24-47c0-ad06-5a38123db1a7",
 CellID->241830120],
Cell[214504, 4672, 105, 1, 22, "SearchTerms",ExpressionUUID->"eacbc63a-d806-4276-9dbf-18f5c7144404",
 CellID->90716700]
}, Open  ]],
Cell[CellGroupData[{
Cell[214646, 4678, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"26116b90-da03-4e42-9181-a7099f8acb56"],
Cell[214735, 4680, 423, 9, 22, "RelatedLinks",ExpressionUUID->"1ff0cc1b-4ea7-44a0-b910-a10c3d4fe34b",
 CellID->17528723]
}, Open  ]],
Cell[CellGroupData[{
Cell[215195, 4694, 80, 0, 141, "AuthorSection",ExpressionUUID->"c96b33c8-8a30-4a75-8a79-74571b6790a5"],
Cell[215278, 4696, 384, 10, 22, "Author",ExpressionUUID->"6868531e-adbb-42d4-871c-1fdc247c1d06",
 CellID->9119879],
Cell[215665, 4708, 399, 11, 22, "Author",ExpressionUUID->"04b67028-b46f-41a0-8229-a4204f424db2",
 CellID->142231542],
Cell[216067, 4721, 186, 4, 22, "Author",ExpressionUUID->"874f04e4-9dda-4679-a550-7cd457dbf012",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature AxpTBXbYQdBxoA1ez#Lw#rw3 *)
