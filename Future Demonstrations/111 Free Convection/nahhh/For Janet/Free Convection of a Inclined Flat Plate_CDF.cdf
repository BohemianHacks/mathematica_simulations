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
NotebookDataLength[     59370,       1500]
NotebookOptionsPosition[     52055,       1353]
NotebookOutlinePosition[     54206,       1408]
CellTagsIndexPosition[     53878,       1396]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Free Convection of a Inclined Flat Plate", "DemoTitle",ExpressionUUID->"265067bb-338e-4c93-9b9d-f193b2eb7ab4"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"1b26b9f8-2308-4865-8036-487406bc2fc8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Nu]", "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Interpolation", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"T", " ", 
            RowBox[{"(", "K", ")"}]}], ",", 
           RowBox[{"\[Nu]", " ", 
            RowBox[{"(", 
             RowBox[{"m2", "/", "s"}], ")"}]}]}], "}"}], ","}], "*)"}], 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"100.", ",", "2.*^-6"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"150.", ",", "4.4*^-6"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"200.", ",", "7.6*^-6"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"250.", ",", "0.0000114"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"300.", ",", "0.0000159"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"350.", ",", "0.0000209"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"400.", ",", "0.0000264"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"450.", ",", "0.0000324"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"500.", ",", "0.0000388"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"550.", ",", "0.0000456"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"600.", ",", "0.0000527"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"650.", ",", "0.0000602"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"700.", ",", "0.0000681"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"750.", ",", "0.0000764"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"800.", ",", "0.0000849"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"850.", ",", "0.0000938"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"900.", ",", "0.0001029"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"950.", ",", "0.0001122"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1000.", ",", "0.0001219"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1100.", ",", "0.0001418"}], "}"}]}], "}"}], ",", 
      RowBox[{"InterpolationOrder", "\[Rule]", "1"}]}], "]"}]}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->315923516,ExpressionUUID->"127c197a-e4f9-430b-bc8b-3b06d71b3f17"],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Alpha]", "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Interpolation", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"T", " ", 
            RowBox[{"(", "K", ")"}]}], ",", 
           RowBox[{"\[Alpha]", " ", 
            RowBox[{"(", 
             RowBox[{"m2", "/", "s"}], ")"}]}]}], "}"}], ","}], "*)"}], 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"100.", ",", "2.5*^-6"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"150.", ",", "5.8*^-6"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"200.", ",", "0.0000103"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"250.", ",", "0.0000159"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"300.", ",", "0.0000225"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"350.", ",", "0.0000299"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"400.", ",", "0.0000383"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"450.", ",", "0.0000472"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"500.", ",", "0.0000567"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"550.", ",", "0.0000667"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"600.", ",", "0.0000769"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"650.", ",", "0.0000873"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"700.", ",", "0.000098"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"750.", ",", "0.000109"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"800.", ",", "0.00012"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"850.", ",", "0.000131"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"900.", ",", "0.000143"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"950.", ",", "0.000155"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1000.", ",", "0.000168"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1100.", ",", "0.000195"}], "}"}]}], "}"}], ",", 
      RowBox[{"InterpolationOrder", "\[Rule]", "1"}]}], "]"}]}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->37184510,ExpressionUUID->"6fdbb42a-4ef9-4044-aa95-9d09ba5b2cb8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"k", "=", 
   RowBox[{"Quiet", "@", 
    RowBox[{"Interpolation", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"T", " ", 
            RowBox[{"(", "K", ")"}]}], ",", 
           RowBox[{"k", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"W", "/", "m"}], "/", "K"}], ")"}]}]}], "}"}], ","}], 
        "*)"}], 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"100.", ",", "0.00934"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"150.", ",", "0.0138"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"200.", ",", "0.0181"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"250.", ",", "0.0223"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"300.", ",", "0.0263"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"350.", ",", "0.03"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"400.", ",", "0.0338"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"450.", ",", "0.0373"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"500.", ",", "0.0407"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"550.", ",", "0.0439"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"600.", ",", "0.0469"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"650.", ",", "0.0497"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"700.", ",", "0.0524"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"750.", ",", "0.0549"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"800.", ",", "0.0573"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"850.", ",", "0.0596"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"900.", ",", "0.062"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"950.", ",", "0.0643"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1000.", ",", "0.0667"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1100.", ",", "0.0715"}], "}"}]}], "}"}], ",", 
      RowBox[{"InterpolationOrder", "\[Rule]", "1"}]}], "]"}]}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->52508482,ExpressionUUID->"c8e79530-43f4-4d0b-a33f-d92fc6d745ed"]
}, Closed]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"042a86fb-4b05-4c29-bd85-0fff36c99f07"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "L", ",", "h0", ",", "g", ",", "\[Beta]", ",", "Pr", ",", "Ra", ",", 
       "Nu", ",", "h", ",", "As", ",", "q"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"L", "=", "10"}], ";", 
      RowBox[{"h0", "=", "2.25"}], ";", 
      RowBox[{"(*", "m", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"g", "=", "9.8"}], ";", 
      RowBox[{"(*", 
       RowBox[{"m", "/", "s2"}], "*)"}], 
      RowBox[{"\[Beta]", "=", 
       SuperscriptBox[
        RowBox[{"(", 
         FractionBox[
          RowBox[{"Ts", "+", "T\[Infinity]"}], "2"], ")"}], 
        RowBox[{"-", "1"}]]}], ";", 
      RowBox[{"(*", 
       RowBox[{"1", "/", "K"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Pr", "=", 
       RowBox[{
        RowBox[{"\[Nu]", "[", "T\[Infinity]", "]"}], "/", 
        RowBox[{"\[Alpha]", "[", "T\[Infinity]", "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Ra", "=", 
       RowBox[{
        FractionBox[
         RowBox[{"g", "*", 
          RowBox[{"Cos", "[", "\[Theta]", "]"}], "*", "\[Beta]"}], 
         RowBox[{
          RowBox[{"\[Nu]", "[", "T\[Infinity]", "]"}], "*", 
          RowBox[{"\[Alpha]", "[", "T\[Infinity]", "]"}]}]], "*", 
        RowBox[{"(", 
         RowBox[{"Ts", "-", "T\[Infinity]"}], ")"}], "*", 
        SuperscriptBox["L", "3"]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Nu", "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"0.825", "+", 
          FractionBox[
           RowBox[{"0.387", "*", 
            SuperscriptBox["Ra", 
             RowBox[{"1", "/", "6"}]]}], 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"0.492", "/", "Pr"}], ")"}], 
               RowBox[{"9", "/", "16"}]]}], ")"}], 
            RowBox[{"8", "/", "27"}]]]}], ")"}], "2"]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"h", "=", 
       RowBox[{"Nu", "*", 
        RowBox[{
         RowBox[{"k", "[", "T\[Infinity]", "]"}], "/", "L"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"As", "=", 
       RowBox[{"L", "*", "h0"}]}], ";", 
      RowBox[{"(*", "m2", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"q", "=", 
       RowBox[{"h", "*", "As", "*", 
        RowBox[{"(", 
         RowBox[{"Ts", "-", "T\[Infinity]"}], ")"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Rotate", "[", 
           RowBox[{
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"EdgeForm", "@", "Thick"}], ",", 
                RowBox[{"FaceForm", "@", "Cyan"}], 
                RowBox[{"(*", 
                 RowBox[{"Switch", "[", 
                  RowBox[{"HTS", ",", "1", ",", "Cyan", ",", "2", ",", 
                   RowBox[{"GrayLevel", "@", "0.5"}], ",", "3", ",", 
                   "Yellow"}], "]"}], "*)"}], ",", 
                RowBox[{"Rectangle", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"L", ",", "h0"}], "}"}]}], "]"}]}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"0.1", "*", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"5", "*", "#"}], "]"}]}], "+", 
                    RowBox[{"i", "*", "w"}]}]}], "}"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "L", ",", "0.1"}], "]"}]}], "]"}]}], 
                   "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", "1.2", ",", "1.8", ",", "0.2"}], "}"}]}],
                  "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Thick", ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"0.1", "*", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"5", "*", "#"}], "]"}]}], "+", 
                    RowBox[{"1.2", "*", "h0"}]}]}], "}"}], "&"}], "/@", 
                  RowBox[{"Range", "[", 
                   RowBox[{"0", ",", 
                    RowBox[{"0.33", "*", "L"}], ",", "0.1"}], "]"}]}], "]"}], 
                ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"0.1", "*", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"5", "*", "#"}], "]"}]}], "+", 
                    RowBox[{"1.2", "*", "h0"}]}]}], "}"}], "&"}], "/@", 
                  RowBox[{"Range", "[", 
                   RowBox[{
                    RowBox[{"0.666", "*", "L"}], ",", "L", ",", "0.1"}], 
                   "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Arrow", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"0.1", "*", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"5", "*", "#"}], "]"}]}], "+", 
                    RowBox[{"1.6", "*", "h0"}]}]}], "}"}], "&"}], "/@", 
                  RowBox[{"Range", "[", 
                   RowBox[{
                    RowBox[{"0.25", "*", "L"}], ",", 
                    RowBox[{"0.75", "*", "L"}], ",", "0.1"}], "]"}]}], 
                 "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "@", "0.02"}], ",", 
                RowBox[{"Point", "@", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"0.8", "*", "L"}], ",", "h0"}], "}"}]}]}], "}"}], 
              ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"0.8", "*", "L"}], ",", "h0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"0.6", "*", "L"}], ",", 
                   RowBox[{"0.5", "*", "h0"}]}], "}"}]}], "}"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Rotate", "[", 
               RowBox[{
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
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<s\>\""}], "]"}], ",", "\"\< = \>\"", ",", "Ts", ",", 
                    "\"\< K\>\""}], "}"}]}], ",", "18", ",", 
                    RowBox[{"Background", "\[Rule]", "Cyan"}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"0.6", "*", "L"}], ",", 
                    RowBox[{"0.5", "*", "h0"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "0"}], "}"}]}], "]"}], ",", 
                RowBox[{"-", "\[Theta]"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Rotate", "[", 
               RowBox[{
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
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                    "\"\<\[Infinity]\>\""}], "]"}], ",", "\"\< = \>\"", ",", 
                    "T\[Infinity]", ",", "\"\< K\>\""}], "}"}]}], ",", "18"}],
                    "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"0.7", "*", "L"}], ",", 
                    RowBox[{"2", "*", "h0"}]}], "}"}]}], "]"}], ",", 
                RowBox[{"-", "\[Theta]"}]}], "]"}]}], "\[IndentingNewLine]", 
             "}"}], ",", "\[Theta]", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"\[Theta]", ">", "0"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"0.15", "*", "L"}], ",", "0"}], "}"}]}], "}"}], 
               "]"}], ",", 
              RowBox[{"Circle", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], ",", 
                RowBox[{"0.1", "*", "L"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "\[Theta]"}], "}"}]}], "]"}], ",", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\[Theta]", ",", "17", ",", 
                  RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"0.1", "*", "L"}], ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"-", "1.2"}], ",", 
                  RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"q", "/", "1000"}], ",", "\"\< kJ\>\""}], "}"}]}], 
              ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2"}], ",", "7"}], "}"}]}], "]"}], "*)"}], 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "400"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "3.3"}], ",", "L"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "0.1"}], ",", "10.55"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "@", 
            RowBox[{"{", 
             RowBox[{"\"\<heat rate = \>\"", ",", 
              RowBox[{
               RowBox[{"N", "@", "q"}], "/", "1000"}], ",", "\"\< kW\>\""}], 
             "}"}]}], ",", "17", ",", "Black"}], "]"}]}]}], "]"}]}]}], 
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
             RowBox[{"\[Theta]", ",", 
              RowBox[{"30", "\[Degree]"}], ",", "\"\<angle (degrees)\>\""}], 
             "}"}], ",", 
            RowBox[{"0", "\[Degree]"}], ",", 
            RowBox[{"60", "\[Degree]"}], ",", 
            RowBox[{"1", "\[Degree]"}], ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Ts", ",", "500", ",", 
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<surface temperature \>\"", ",", 
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                   "\"\<s\>\""}], "]"}], ",", "\"\< (K)\>\""}], "}"}]}]}], 
             "}"}], ",", "400", ",", "600", ",", "5", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"T\[Infinity]", ",", "298", ",", 
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<air temperature \>\"", ",", 
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
                   "\"\<\[Infinity]\>\""}], "]"}], ",", "\"\< (K)\>\""}], 
                "}"}]}]}], "}"}], ",", "298", ",", "350", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}]}], 
        "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",Expressio\
nUUID->"ed11b45c-65d4-425a-baee-527dd55b5aad"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Ts$$ = 500, $CellContext`T\[Infinity]$$ = 
    298, $CellContext`\[Theta]$$ = 30 Degree, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Theta]$$], 30 Degree, "angle (degrees)"}, 0, 60 
      Degree, Degree}, {{
       Hold[$CellContext`Ts$$], 500, 
       Row[{"surface temperature ", 
         Subscript[
          Style["T", Italic], "s"], " (K)"}]}, 400, 600, 5}, {{
       Hold[$CellContext`T\[Infinity]$$], 298, 
       Row[{"air temperature ", 
         Subscript[
          Style["T", Italic], "\[Infinity]"], " (K)"}]}, 298, 350, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], SpanFromLeft}, {
          Manipulate`Place[2], 
          Manipulate`Place[3]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {197., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`\[Theta]$8439$$ = 
    0, $CellContext`Ts$8440$$ = 0, $CellContext`T\[Infinity]$8441$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Ts$$ = 500, $CellContext`T\[Infinity]$$ = 
        298, $CellContext`\[Theta]$$ = 30 Degree}, "ControllerVariables" :> {
        Hold[$CellContext`\[Theta]$$, $CellContext`\[Theta]$8439$$, 0], 
        Hold[$CellContext`Ts$$, $CellContext`Ts$8440$$, 0], 
        Hold[$CellContext`T\[Infinity]$$, $CellContext`T\[Infinity]$8441$$, 
         0]}, "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`L$, $CellContext`h0$, $CellContext`g$, \
$CellContext`\[Beta]$, $CellContext`Pr$, $CellContext`Ra$, $CellContext`Nu$, \
$CellContext`h$, $CellContext`As$, $CellContext`q$}, $CellContext`L$ = 
         10; $CellContext`h0$ = 2.25; $CellContext`g$ = 
         9.8; $CellContext`\[Beta]$ = (($CellContext`Ts$$ + $CellContext`T\
\[Infinity]$$)/
           2)^(-1); $CellContext`Pr$ = $CellContext`\[Nu][$CellContext`T\
\[Infinity]$$]/$CellContext`\[Alpha][$CellContext`T\[Infinity]$$]; \
$CellContext`Ra$ = ((($CellContext`g$ 
             Cos[$CellContext`\[Theta]$$]) \
($CellContext`\[Beta]$/($CellContext`\[Nu][$CellContext`T\[Infinity]$$] \
$CellContext`\[Alpha][$CellContext`T\[Infinity]$$]))) ($CellContext`Ts$$ - \
$CellContext`T\[Infinity]$$)) $CellContext`L$^3; $CellContext`Nu$ = (0.825 + 
           0.387 ($CellContext`Ra$^(1/6)/(
              1 + (0.492/$CellContext`Pr$)^(9/16))^(8/
              27)))^2; $CellContext`h$ = $CellContext`Nu$ \
($CellContext`k[$CellContext`T\[Infinity]$$]/$CellContext`L$); \
$CellContext`As$ = $CellContext`L$ $CellContext`h0$; $CellContext`q$ = \
($CellContext`h$ $CellContext`As$) ($CellContext`Ts$$ - $CellContext`T\
\[Infinity]$$); Graphics[{
           Rotate[{{
              EdgeForm[Thick], 
              FaceForm[Cyan], 
              Rectangle[{0, 0}, {$CellContext`L$, $CellContext`h0$}]}, {Thick, 
              Arrow[
               Map[{#, 0.1 Sin[5 #] + 1.2 $CellContext`h0$}& , 
                Range[0, 0.33 $CellContext`L$, 0.1]]], 
              Arrow[
               Map[{#, 0.1 Sin[5 #] + 1.2 $CellContext`h0$}& , 
                Range[0.666 $CellContext`L$, $CellContext`L$, 0.1]]], 
              Arrow[
               Map[{#, 0.1 Sin[5 #] + 1.6 $CellContext`h0$}& , 
                Range[0.25 $CellContext`L$, 0.75 $CellContext`L$, 0.1]]]}, {
              PointSize[0.02], 
              Point[{0.8 $CellContext`L$, $CellContext`h0$}]}, 
             
             Line[{{0.8 $CellContext`L$, $CellContext`h0$}, {
               0.6 $CellContext`L$, 0.5 $CellContext`h0$}}], 
             Rotate[
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["T", Italic], "s"], " = ", $CellContext`Ts$$, " K"}],
                 18, Background -> Cyan], {
               0.6 $CellContext`L$, 0.5 $CellContext`h0$}, {
               0.5, 0}], -$CellContext`\[Theta]$$], 
             Rotate[
              Text[
               Style[
                Row[{
                  Subscript[
                   Style["T", Italic], "\[Infinity]"], 
                  " = ", $CellContext`T\[Infinity]$$, " K"}], 18], {
               0.7 $CellContext`L$, 
                2 $CellContext`h0$}], -$CellContext`\[Theta]$$]}, \
$CellContext`\[Theta]$$, {0, 0}], 
           If[$CellContext`\[Theta]$$ > 0, {
             Line[{{0, 0}, {0.15 $CellContext`L$, 0}}], 
             
             Circle[{0, 0}, 0.1 $CellContext`L$, {
              0, $CellContext`\[Theta]$$}], 
             Text[
              Style[$CellContext`\[Theta]$$, 17, Background -> White], {
              0.1 $CellContext`L$, 0}, {-1.2, -1}]}]}, 
          ImageSize -> {600, 400}, 
          PlotRange -> {{-3.3, $CellContext`L$}, {-0.1, 10.55}}, PlotLabel -> 
          Style[
            Row[{"heat rate = ", N[$CellContext`q$]/1000, " kW"}], 17, 
            Black]]], 
      "Specifications" :> {{{$CellContext`\[Theta]$$, 30 Degree, 
          "angle (degrees)"}, 0, 60 Degree, Degree, Appearance -> "Labeled", 
         ControlPlacement -> 1}, {{$CellContext`Ts$$, 500, 
          Row[{"surface temperature ", 
            Subscript[
             Style["T", Italic], "s"], " (K)"}]}, 400, 600, 5, Appearance -> 
         "Labeled", ImageSize -> Small, ControlPlacement -> 
         2}, {{$CellContext`T\[Infinity]$$, 298, 
          Row[{"air temperature ", 
            Subscript[
             Style["T", Italic], "\[Infinity]"], " (K)"}]}, 298, 350, 1, 
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
    Initialization:>({$CellContext`\[Nu] = 
       InterpolatingFunction[{{100., 1100.}}, {
         5, 7, 0, {20}, {2}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{100., 
         150., 200., 250., 300., 350., 400., 450., 500., 550., 600., 650., 
         700., 750., 800., 850., 900., 950., 1000., 1100.}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
           13, 14, 15, 16, 17, 18, 19, 20}, {2.*^-6, 4.4*^-6, 7.6*^-6, 
          0.0000114, 0.0000159, 0.0000209, 0.0000264, 0.0000324, 0.0000388, 
          0.0000456, 0.0000527, 0.0000602, 0.0000681, 0.0000764, 0.0000849, 
          0.0000938, 0.0001029, 0.0001122, 0.0001219, 0.0001418}}, {
         Automatic}], $CellContext`\[Alpha] = 
       InterpolatingFunction[{{100., 1100.}}, {
         5, 7, 0, {20}, {2}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{100., 
         150., 200., 250., 300., 350., 400., 450., 500., 550., 600., 650., 
         700., 750., 800., 850., 900., 950., 1000., 1100.}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
           13, 14, 15, 16, 17, 18, 19, 20}, {2.5*^-6, 5.8*^-6, 0.0000103, 
          0.0000159, 0.0000225, 0.0000299, 0.0000383, 0.0000472, 0.0000567, 
          0.0000667, 0.0000769, 0.0000873, 0.000098, 0.000109, 0.00012, 
          0.000131, 0.000143, 0.000155, 0.000168, 0.000195}}, {
         Automatic}], $CellContext`k = 
       InterpolatingFunction[{{100., 1100.}}, {
         5, 7, 0, {20}, {2}, 0, 0, 0, 0, Automatic, {}, {}, False}, {{100., 
         150., 200., 250., 300., 350., 400., 450., 500., 550., 600., 650., 
         700., 750., 800., 850., 900., 950., 1000., 1100.}}, {
         Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
           13, 14, 15, 16, 17, 18, 19, 20}, {0.00934, 0.0138, 0.0181, 0.0223, 
          0.0263, 0.03, 0.0338, 0.0373, 0.0407, 0.0439, 0.0469, 0.0497, 
          0.0524, 0.0549, 0.0573, 0.0596, 0.062, 0.0643, 0.0667, 0.0715}}, {
         Automatic}], Attributes[Subscript] = {NHoldRest}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->124039834,ExpressionUUID->"0fe1fb19-4b25-463c-adb7-10a73f802480"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"12b7cadb-9095-48f2-9aaf-233ac5619b16"],

Cell[TextData[{
 "A flat plate is at an angle as quiescent air flows over the top at a \
temperature of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "\[Infinity]"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"fdc53559-a0d8-4f31-9414-c3180319e809"],
 " (set with a slider). The plate has a surface temperature of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", 
    StyleBox["s",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "61efeabc-c844-41c3-8695-83ca52368d8d"],
 " which is set with a slider. Set the angle with a slider too. The heat rate \
is calculated using Nusselt correlations and shown above the figure."
}], "ManipulateCaption",ExpressionUUID->"1f46a3b0-291f-4477-a881-\
5e7c75bbaf74"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"5f2f6cbe-8fc2-417a-9af6-b3e33c4287e9"],

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
 CellEditDuplicate->
  False,ExpressionUUID->"31ba19cb-86e9-4b0f-b091-3e85e33d4f6e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"89166e4a-6645-40e3-8d66-44175ef0be2a"],

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
 CellEditDuplicate->
  False,ExpressionUUID->"76d7f9b3-fc3b-4516-9c1c-ec7d7cc44660"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"a852726b-1710-4950-a059-4fc211396912"],

Cell[TextData[{
 "The rate of heat transfer for a flat plate at an angle ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "31ef63c9-9009-40b1-93ed-d926d299476d"],
 " is:"
}], "DetailNotes",
 CellID->48888690,ExpressionUUID->"8f66b660-6e94-44de-98de-f4c9c1ff6253"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"q", "=", 
    RowBox[{"h", " ", "A", " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["T", 
        StyleBox["s",
         FontSlant->"Plain"]], "-", 
       SubscriptBox["T", "\[Infinity]"]}], ")"}]}]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"435f3f8d-97b9-4687-960e-91320335cdbd"],
 ","
}], "DetailNotes",
 CellID->947991392,ExpressionUUID->"5bde89e9-c940-463d-8fa0-9dae4ef035cf"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]], "InlineMath",ExpressionUUID->
  "84270b8f-d867-4359-aec9-12d1c9dd9fc7"],
 " is the heat transfer coefficient (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    StyleBox["W",
     FontSlant->"Plain"], "/", 
    RowBox[{"[", 
     RowBox[{
      SuperscriptBox[
       StyleBox["m",
        FontSlant->"Plain"], "2"], " ", 
      StyleBox["K",
       FontSlant->"Plain"]}], 
     StyleBox["]",
      FontSlant->"Plain"]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"ccdccc9f-025a-4e4d-9d8e-fea6b1f2852b"],
 "), ",
 Cell[BoxData[
  FormBox[
   RowBox[{"A", "=", 
    RowBox[{"x", " ", "y"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"2b663f4f-10ab-4b7e-b0af-b8464e57dee4"],
 " is area (",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    StyleBox["m",
     FontSlant->"Plain"], "2"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"548d697e-6726-433a-933a-557c22f936e7"],
 "), ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "05ae2fce-fbcf-4426-b653-b1dcba2ddeb0"],
 " and ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "7d865b11-8aa9-4ef0-8633-a9a605b96cf0"],
 " are the length and height of the plate (m), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", 
    StyleBox["s",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b5551c64-fd88-4a92-a3de-9395ca99dd2c"],
 " is the surface temperature (K), and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "\[Infinity]"], TraditionalForm]], "InlineMath",
  ExpressionUUID->"7659cb30-6d61-4b08-93e8-ec349818fa3b"],
 " is the ambient air temperature (K)."
}], "DetailNotes",
 CellID->41097998,ExpressionUUID->"ae606456-a378-4b9f-b81e-ec3877d7bcd5"],

Cell["\<\
The heat transfer coefficient is found using a Nusselt correlation:\
\>", "DetailNotes",
 CellID->132714129,ExpressionUUID->"66d42f3b-9987-4ac0-b839-3b19d81000eb"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"Nu", "=", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"0.825", "+", 
       FractionBox[
        RowBox[{"0.387", " ", 
         SuperscriptBox["Ra", 
          RowBox[{"1", "/", "6"}]]}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"0.492", "/", "Pr"}], ")"}], 
            RowBox[{"9", "/", "16"}]]}], ")"}], 
         RowBox[{"8", "/", "27"}]]]}], ")"}], "2"]}], TraditionalForm]], 
  "InlineMath",ExpressionUUID->"88b4b96e-71ae-4c87-ad72-9ba671829622"],
 ","
}], "DetailNotes",
 CellID->250059534,ExpressionUUID->"a6e0cc4a-87ce-4d65-9d1d-c81aed746d99"],

Cell["the Rayleigh number is:", "DetailNotes",
 CellID->178196554,ExpressionUUID->"00c9032b-2fce-419c-849b-5360e7082d04"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"Ra", "=", 
    RowBox[{
     RowBox[{"Gr", " ", "Pr"}], "=", 
     RowBox[{
      FractionBox[
       RowBox[{"g", " ", "cos", " ", "\[Theta]", " ", "\[Beta]"}], 
       RowBox[{"\[Nu]", " ", "\[Alpha]"}]], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["T", 
         StyleBox["s",
          FontSlant->"Plain"]], "-", 
        SubscriptBox["T", "\[Infinity]"]}], ")"}], " ", 
      SuperscriptBox["x", "3"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f0755131-a5bb-4567-98e9-09ffa6fa74b6"],
 ","
}], "DetailNotes",
 CellID->208715162,ExpressionUUID->"6ad14bac-987f-4aa3-9e5f-7e6475ab628f"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Pr", "=", 
    RowBox[{"\[Nu]", "/", "\[Alpha]"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3d423298-57b9-4d51-8968-d8f3435aa8a2"],
 " is the Prandtl number, ",
 Cell[BoxData[
  FormBox["\[Nu]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "6bf5ef67-3486-4d5c-afaa-744bfbbacbb0"],
 " is the kinematic viscosity (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox[
     StyleBox["m",
      FontSlant->"Plain"], "2"], "/", 
    StyleBox["s",
     FontSlant->"Plain"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "1c82bf66-d1c8-4048-b1e5-ebad63aec9a5"],
 "), ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "0a42079f-f602-4f30-a07c-777eab3e8f00"],
 " is thermal diffusivity (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox[
     StyleBox["m",
      FontSlant->"Plain"], "2"], "/", 
    StyleBox["s",
     FontSlant->"Plain"]}], TraditionalForm]], "InlineMath",ExpressionUUID->
  "4088f40c-ce04-448f-817a-d9e35026724b"],
 "), ",
 Cell[BoxData[
  FormBox["Gr", TraditionalForm]], "InlineMath",ExpressionUUID->
  "d8328828-d5f0-482b-a584-3f0c1d4248a2"],
 " is the Grashof number, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "=", 
    RowBox[{"9.8", " ", 
     RowBox[{
      StyleBox["m",
       FontSlant->"Plain"], "/", 
      SuperscriptBox[
       StyleBox["s",
        FontSlant->"Plain"], "2"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"5b10c955-7d04-4e5e-af3f-c50fdefbef7c"],
 " is acceleration due to gravity,and ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]], "InlineMath",ExpressionUUID->
  "1abc9616-b74f-4427-abf9-06bef7c44735"],
 " is angle (degrees)."
}], "DetailNotes",
 CellID->81462172,ExpressionUUID->"7c7d63c0-7fef-4e9c-bc69-ef7299f45ac5"],

Cell["The Nusselt number is:", "DetailNotes",
 CellID->186168141,ExpressionUUID->"f6aa0569-b773-40ac-a72b-c72a2167b7d7"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"Nu", "=", 
    FractionBox[
     RowBox[{"h", " ", "x"}], "k"]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"3631e03c-c954-4106-9eb2-a835621416e7"],
 ","
}], "DetailNotes",
 CellID->104874406,ExpressionUUID->"14feeb39-415c-49f3-8a61-c6e67175e294"],

Cell["rearranging to find the heat transfer coefficient:", "DetailNotes",
 CellID->31545499,ExpressionUUID->"26f3a8f0-c070-4d79-ad4c-aeb44f2f8809"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "=", 
    FractionBox[
     RowBox[{"Nu", " ", "k"}], "x"]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"b92083a6-aaf1-4063-9c3e-8a569c53ffc2"],
 ","
}], "DetailNotes",
 CellID->380419166,ExpressionUUID->"a3b722a7-b733-4957-ad81-f7480e816691"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["k", TraditionalForm]], "InlineMath",ExpressionUUID->
  "84749c02-ce26-4e15-a013-304eeeac3c00"],
 " is the thermal conductivity (W/[m K])."
}], "DetailNotes",
 CellID->147392263,ExpressionUUID->"610a5fc2-4c8b-4a99-9eb3-231db58fb85e"],

Cell["Reference", "DetailNotes",
 CellID->167043546,ExpressionUUID->"4284f107-ee6b-4bb9-80c3-cb20515a4c38"],

Cell[TextData[{
 "[1] T.L. Bergman, D.P. DeWitt, F.P. Incropera, and A.S. Lavine, ",
 StyleBox["Introduction to Heat Transfer",
  FontSlant->"Italic"],
 ", 6th ed., New Jersey: Jon Wiley & Sons, 2011."
}], "DetailNotes",
 CellID->321678079,ExpressionUUID->"fd8fb02c-72b2-48e0-b5f0-2b5db63be551"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"eb352dad-f85b-4e31-b219-7e24284332c7"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"db2f20fe-6504-4e9b-9e7d-b158c7131b09"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"cecf1390-6fe6-4e89-a458-5566270bc099"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "9003cb3c-f445-44b5-a2cd-aa1767834753"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"f7edce74-0917-48c7-b8ec-9904327b79d9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"eea9e8e4-9540-4d06-872f-6c3909cb314e"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"f1b24c79-2689-4134-a314-f2660cf01968"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "9bc238c7-26d9-4186-9813-107d7847ef3e"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"092b1559-0b66-4927-95b0-\
bb2787fb20b9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"8f175830-3a8d-495f-8df4-47cf908f8c5f"]}],
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
  "SliderZoom",ExpressionUUID->"0065abf3-fead-4eec-80e4-c37740c37394"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "b9393583-d2cc-41c4-9ab6-48875a98c8fa"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"d7198502-9861-4e05-b252-96e97a6189d1"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "37bec32f-0ad1-4004-ad51-b960b5857ac3"]}],
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
  "AutomaticAnimation",ExpressionUUID->"455d3e08-5e83-4426-9b22-4035a9d19cf8"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "b7c658f2-35ad-4408-9501-56f23f987346"]}],
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
  "BookmarkAnimation",ExpressionUUID->"964aa11d-06e0-4f2f-a8d5-d54b7d15585a"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"b1600c9c-4c6b-4ede-ac4d-0e319247045d"],

Cell["chemical engineering", "SearchTerms",
 CellID->557648399,ExpressionUUID->"f9fbfb5e-9697-4c04-8c69-1656a2c865de"],

Cell["heat transfer", "SearchTerms",
 CellID->14368173,ExpressionUUID->"2f0a8914-0fa5-4ce5-a9a5-b4b31a9dfbd3"],

Cell["free convection", "SearchTerms",
 CellID->610689567,ExpressionUUID->"b0018f49-6bf7-4e9a-88ba-39f2334824f3"],

Cell["natural convection", "SearchTerms",
 CellID->194000329,ExpressionUUID->"6e502057-8749-41b1-8d2f-0fc713761a59"]
}, Open  ]],

Cell["", "RelatedLinksSection",ExpressionUUID->"7c3b1d33-cafa-4879-9aff-45678cd82cac"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"4859763b-f384-43a5-b9a7-315cbc319d00"],

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
 CellID->418762916,ExpressionUUID->"6b95e92b-6343-4111-b6c1-600ecc75b152"],

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
 CellID->178667309,ExpressionUUID->"3663bd5e-f707-4bbf-a04f-7209862f7511"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613,ExpressionUUID->"e68f0205-aa6c-4bbb-b96e-3e39faef687a"]
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
  Cell[43789, 1128, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"cecf1390-6fe6-4e89-a458-5566270bc099",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[44220, 1140, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"f7edce74-0917-48c7-b8ec-9904327b79d9",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[45023, 1161, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"f1b24c79-2689-4134-a314-f2660cf01968",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[45483, 1176, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"092b1559-0b66-4927-95b0-bb2787fb20b9",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[46247, 1197, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"0065abf3-fead-4eec-80e4-c37740c37394",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[47210, 1222, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"d7198502-9861-4e05-b252-96e97a6189d1",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[47638, 1235, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"455d3e08-5e83-4426-9b22-4035a9d19cf8",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[49226, 1271, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"964aa11d-06e0-4f2f-a8d5-d54b7d15585a",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 52536, 1369},
 {"RotateAndZoomIn3D", 52701, 1372},
 {"DragLocators", 52866, 1375},
 {"CreateAndDeleteLocators", 53037, 1378},
 {"SliderZoom", 53206, 1381},
 {"GamepadControls", 53367, 1384},
 {"AutomaticAnimation", 53536, 1387},
 {"BookmarkAnimation", 53708, 1390}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 116, 0, 74, "DemoTitle",ExpressionUUID->"265067bb-338e-4c93-9b9d-f193b2eb7ab4"],
Cell[CellGroupData[{
Cell[1651, 39, 88, 0, 275, "InitializationSection",ExpressionUUID->"1b26b9f8-2308-4865-8036-487406bc2fc8"],
Cell[1742, 41, 2241, 60, 84, "Input",ExpressionUUID->"127c197a-e4f9-430b-bc8b-3b06d71b3f17",
 InitializationCell->True,
 CellID->315923516],
Cell[3986, 103, 2240, 60, 88, "Input",ExpressionUUID->"6fdbb42a-4ef9-4044-aa95-9d09ba5b2cb8",
 InitializationCell->True,
 CellID->37184510],
Cell[6229, 165, 2220, 62, 88, "Input",ExpressionUUID->"c8e79530-43f4-4d0b-a33f-d92fc6d745ed",
 InitializationCell->True,
 CellID->52508482]
}, Closed]],
Cell[CellGroupData[{
Cell[8486, 232, 84, 0, 189, "ManipulateSection",ExpressionUUID->"042a86fb-4b05-4c29-bd85-0fff36c99f07"],
Cell[CellGroupData[{
Cell[8595, 236, 14645, 357, 731, "Input",ExpressionUUID->"ed11b45c-65d4-425a-baee-527dd55b5aad"],
Cell[23243, 595, 8856, 168, 527, "Output",ExpressionUUID->"0fe1fb19-4b25-463c-adb7-10a73f802480",
 CellID->124039834]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[32145, 769, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"12b7cadb-9095-48f2-9aaf-233ac5619b16"],
Cell[32239, 771, 744, 17, 38, "ManipulateCaption",ExpressionUUID->"1f46a3b0-291f-4477-a881-5e7c75bbaf74"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33020, 793, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"5f2f6cbe-8fc2-417a-9af6-b3e33c4287e9"],
Cell[33106, 795, 1300, 35, 230, "Output",ExpressionUUID->"31ba19cb-86e9-4b0f-b091-3e85e33d4f6e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34443, 835, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"89166e4a-6645-40e3-8d66-44175ef0be2a"],
Cell[34529, 837, 1299, 35, 230, "Output",ExpressionUUID->"76d7f9b3-fc3b-4516-9c1c-ec7d7cc44660"]
}, Open  ]],
Cell[CellGroupData[{
Cell[35865, 877, 81, 0, 335, "DetailsSection",ExpressionUUID->"a852726b-1710-4950-a059-4fc211396912"],
Cell[35949, 879, 305, 7, 23, "DetailNotes",ExpressionUUID->"8f66b660-6e94-44de-98de-f4c9c1ff6253",
 CellID->48888690],
Cell[36257, 888, 460, 14, 23, "DetailNotes",ExpressionUUID->"5bde89e9-c940-463d-8fa0-9dae4ef035cf",
 CellID->947991392],
Cell[36720, 904, 1793, 56, 41, "DetailNotes",ExpressionUUID->"ae606456-a378-4b9f-b81e-ec3877d7bcd5",
 CellID->41097998],
Cell[38516, 962, 173, 3, 22, "DetailNotes",ExpressionUUID->"66d42f3b-9987-4ac0-b839-3b19d81000eb",
 CellID->132714129],
Cell[38692, 967, 727, 22, 45, "DetailNotes",ExpressionUUID->"a6e0cc4a-87ce-4d65-9d1d-c81aed746d99",
 CellID->250059534],
Cell[39422, 991, 121, 1, 22, "DetailNotes",ExpressionUUID->"00c9032b-2fce-419c-849b-5360e7082d04",
 CellID->178196554],
Cell[39546, 994, 676, 20, 33, "DetailNotes",ExpressionUUID->"6ad14bac-987f-4aa3-9e5f-7e6475ab628f",
 CellID->208715162],
Cell[40225, 1016, 1837, 57, 41, "DetailNotes",ExpressionUUID->"7c7d63c0-7fef-4e9c-bc69-ef7299f45ac5",
 CellID->81462172],
Cell[42065, 1075, 120, 1, 22, "DetailNotes",ExpressionUUID->"f6aa0569-b773-40ac-a72b-c72a2167b7d7",
 CellID->186168141],
Cell[42188, 1078, 310, 9, 33, "DetailNotes",ExpressionUUID->"14feeb39-415c-49f3-8a61-c6e67175e294",
 CellID->104874406],
Cell[42501, 1089, 147, 1, 22, "DetailNotes",ExpressionUUID->"26f3a8f0-c070-4d79-ad4c-aeb44f2f8809",
 CellID->31545499],
Cell[42651, 1092, 310, 9, 33, "DetailNotes",ExpressionUUID->"a3b722a7-b733-4957-ad81-f7480e816691",
 CellID->380419166],
Cell[42964, 1103, 285, 7, 23, "DetailNotes",ExpressionUUID->"610a5fc2-4c8b-4a99-9eb3-231db58fb85e",
 CellID->147392263],
Cell[43252, 1112, 107, 1, 22, "DetailNotes",ExpressionUUID->"4284f107-ee6b-4bb9-80c3-cb20515a4c38",
 CellID->167043546],
Cell[43362, 1115, 295, 6, 22, "DetailNotes",ExpressionUUID->"fd8fb02c-72b2-48e0-b5f0-2b5db63be551",
 CellID->321678079]
}, Open  ]],
Cell[CellGroupData[{
Cell[43694, 1126, 92, 0, 126, "ControlSuggestionsSection",ExpressionUUID->"eb352dad-f85b-4e31-b219-7e24284332c7"],
Cell[43789, 1128, 428, 10, 22, "ControlSuggestions",ExpressionUUID->"cecf1390-6fe6-4e89-a458-5566270bc099",
 CellTags->"ResizeImages"],
Cell[44220, 1140, 800, 19, 22, "ControlSuggestions",ExpressionUUID->"f7edce74-0917-48c7-b8ec-9904327b79d9",
 CellTags->"RotateAndZoomIn3D"],
Cell[45023, 1161, 457, 13, 22, "ControlSuggestions",ExpressionUUID->"f1b24c79-2689-4134-a314-f2660cf01968",
 CellTags->"DragLocators"],
Cell[45483, 1176, 761, 19, 22, "ControlSuggestions",ExpressionUUID->"092b1559-0b66-4927-95b0-bb2787fb20b9",
 CellTags->"CreateAndDeleteLocators"],
Cell[46247, 1197, 960, 23, 22, "ControlSuggestions",ExpressionUUID->"0065abf3-fead-4eec-80e4-c37740c37394",
 CellTags->"SliderZoom"],
Cell[47210, 1222, 425, 11, 22, "ControlSuggestions",ExpressionUUID->"d7198502-9861-4e05-b252-96e97a6189d1",
 CellTags->"GamepadControls"],
Cell[47638, 1235, 1585, 34, 22, "ControlSuggestions",ExpressionUUID->"455d3e08-5e83-4426-9b22-4035a9d19cf8",
 CellTags->"AutomaticAnimation"],
Cell[49226, 1271, 1030, 24, 22, "ControlSuggestions",ExpressionUUID->"964aa11d-06e0-4f2f-a8d5-d54b7d15585a",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50293, 1300, 85, 0, 155, "SearchTermsSection",ExpressionUUID->"b1600c9c-4c6b-4ede-ac4d-0e319247045d"],
Cell[50381, 1302, 118, 1, 22, "SearchTerms",ExpressionUUID->"f9fbfb5e-9697-4c04-8c69-1656a2c865de",
 CellID->557648399],
Cell[50502, 1305, 110, 1, 22, "SearchTerms",ExpressionUUID->"2f0a8914-0fa5-4ce5-a9a5-b4b31a9dfbd3",
 CellID->14368173],
Cell[50615, 1308, 113, 1, 22, "SearchTerms",ExpressionUUID->"b0018f49-6bf7-4e9a-88ba-39f2334824f3",
 CellID->610689567],
Cell[50731, 1311, 116, 1, 22, "SearchTerms",ExpressionUUID->"6e502057-8749-41b1-8d2f-0fc713761a59",
 CellID->194000329]
}, Open  ]],
Cell[50862, 1315, 86, 0, 141, "RelatedLinksSection",ExpressionUUID->"7c3b1d33-cafa-4879-9aff-45678cd82cac"],
Cell[CellGroupData[{
Cell[50973, 1319, 80, 0, 129, "AuthorSection",ExpressionUUID->"4859763b-f384-43a5-b9a7-315cbc319d00"],
Cell[51056, 1321, 386, 10, 22, "Author",ExpressionUUID->"6b95e92b-6343-4111-b6c1-600ecc75b152",
 CellID->418762916],
Cell[51445, 1333, 393, 10, 22, "Author",ExpressionUUID->"3663bd5e-f707-4bbf-a04f-7209862f7511",
 CellID->178667309],
Cell[51841, 1345, 186, 4, 22, "Author",ExpressionUUID->"e68f0205-aa6c-4bbb-b96e-3e39faef687a",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature #uD0NpLBB0@kSD1l1tTMLlp1 *)
