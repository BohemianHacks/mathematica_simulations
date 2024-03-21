(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

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
NotebookDataLength[    191179,       4615]
NotebookOptionsPosition[    179958,       4324]
NotebookOutlinePosition[    182201,       4394]
CellTagsIndexPosition[    181865,       4382]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Force Balance on a Truss", "DemoTitle",ExpressionUUID->"4781eb1b-a4fd-4a74-81ff-784d7851e1fd"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"dc9d9e34-f438-4d6a-9ba0-d121fa666046"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"text", "[", 
    RowBox[{"force_", ",", "loc_", ",", "off_"}], "]"}], ":=", 
   RowBox[{"Text", "[", 
    RowBox[{
     RowBox[{"Framed", "[", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{"NumberForm", "[", 
          RowBox[{
           RowBox[{"N", "@", "force"}], ",", 
           RowBox[{"{", 
            RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", "16"}], "]"}], ",", 
       RowBox[{"Background", "\[Rule]", "White"}], ",", 
       RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",", "loc", ",", 
     "off"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->274336155,ExpressionUUID->"bcbadae5-74c2-4e1d-82f6-56499c143966"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"scale", "[", "f_", "]"}], ":=", 
   RowBox[{"Rescale", "[", 
    RowBox[{
     RowBox[{"Abs", "@", "f"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "35"}], "}"}]}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->183942759,ExpressionUUID->"1e22a5d7-3dd5-40ad-87f2-62f1a3d97844"]
}, Closed]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"4f837ca0-1b8d-4b14-8b26-55185663f055"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "w", ",", "h", ",", "\[Theta]", ",", "sol", ",", "RA", ",", "RB", ",", 
       "F0", ",", "F2", ",", "F7", ",", "F3", ",", "F5", ",", "F12", ",", 
       "F8", ",", "F4", ",", "F10", ",", "F11", ",", "F13", ",", "F16", ",", 
       "F15", ",", "F17", ",", "F19", ",", "F20", ",", "colC", ",", "colT", 
       ",", "colC0", ",", "colT0", ",", "x", ",", "y", ",", "zero"}], "}"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"w", "=", "5"}], ";", 
      RowBox[{"h", "=", "5"}], ";", 
      RowBox[{"\[Theta]", "=", 
       RowBox[{"ArcTan", "[", 
        RowBox[{"h", "/", "w"}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"sol", "=", 
       RowBox[{"Quiet", "@", 
        RowBox[{
         RowBox[{"Solve", "[", 
          RowBox[{
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"reaction", " ", "forces"}], "*)"}], 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"3", "*", "w"}], ")"}], "*", 
                RowBox[{"(", 
                 RowBox[{"-", "FA"}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"5", "*", "w"}], ")"}], "*", 
                RowBox[{"(", 
                 RowBox[{"-", "FB"}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"6", "*", "w"}], ")"}], "*", "rb"}]}], "\[Equal]", 
              "0"}], ",", 
             RowBox[{
              RowBox[{"ra", "+", "rb", "-", "FA", "-", "FB"}], "\[Equal]", 
              "0"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "1"}], "*)"}], 
             RowBox[{
              RowBox[{"ra", "+", 
               RowBox[{"f0", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{
               RowBox[{"f0", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "+", "f2"}], 
              "\[Equal]", "0"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "2"}], "*)"}], 
             RowBox[{
              RowBox[{"ra", "+", 
               RowBox[{"f7", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", "ra"}], "+", 
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", "f3"}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{"f5", "+", 
               RowBox[{"f7", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "+", "f3"}], 
              "\[Equal]", "0"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "3"}], "*)"}], 
             RowBox[{
              RowBox[{"ra", "+", 
               RowBox[{"f12", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"2", "*", "w"}], ")"}], "*", "ra"}], "+", 
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", "f8"}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{"f8", "+", 
               RowBox[{"f12", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "+", "f4"}], 
              "\[Equal]", "0"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "4"}], "*)"}], 
             RowBox[{
              RowBox[{
               RowBox[{"-", "FA"}], "+", "ra", "+", 
               RowBox[{"f10", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"3", "*", "w"}], ")"}], "*", "ra"}], "+", 
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", "f11"}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{"f13", "+", 
               RowBox[{"f10", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "+", "f11"}], 
              "\[Equal]", "0"}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "5"}], "*)"}], 
             RowBox[{
              RowBox[{"ra", "-", "FA", "+", 
               RowBox[{"f16", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", "f15"}], "+", 
               RowBox[{
                RowBox[{"(", "w", ")"}], "*", 
                RowBox[{"(", 
                 RowBox[{"-", "FA"}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"4", "*", "w"}], ")"}], "*", "ra"}]}], "\[Equal]", 
              "0"}], ",", 
             RowBox[{
              RowBox[{"f17", "+", "f15", "+", 
               RowBox[{"f16", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{"cut", " ", "6"}], "*)"}], 
             RowBox[{
              RowBox[{"ra", "-", "FA", "-", "FB", "+", 
               RowBox[{"f19", "*", 
                RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "\[Equal]", "0"}], 
             ",", 
             RowBox[{
              RowBox[{"f20", "+", 
               RowBox[{"f19", "*", 
                RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}], "\[Equal]", 
              "0"}]}], "\[IndentingNewLine]", "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
            "rb", ",", "ra", ",", "f0", ",", "f2", ",", "f7", ",", "f3", ",", 
             "f5", ",", "f12", ",", "f8", ",", "f4", ",", "f10", ",", "f11", 
             ",", "f13", ",", "f16", ",", "f15", ",", "f17", ",", "f19", ",", 
             "f20"}], "}"}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"RB", "=", 
       RowBox[{"rb", "/.", "sol"}]}], ";", 
      RowBox[{"RA", "=", 
       RowBox[{"ra", "/.", "sol"}]}], ";", 
      RowBox[{"F0", "=", 
       RowBox[{"f0", "/.", "sol"}]}], ";", 
      RowBox[{"F2", "=", 
       RowBox[{"f2", "/.", "sol"}]}], ";", 
      RowBox[{"F7", "=", 
       RowBox[{"f7", "/.", "sol"}]}], ";", 
      RowBox[{"F3", "=", 
       RowBox[{"f3", "/.", "sol"}]}], ";", 
      RowBox[{"F5", "=", 
       RowBox[{"f5", "/.", "sol"}]}], ";", 
      RowBox[{"F12", "=", 
       RowBox[{"f12", "/.", "sol"}]}], ";", 
      RowBox[{"F8", "=", 
       RowBox[{"f8", "/.", "sol"}]}], ";", 
      RowBox[{"F4", "=", 
       RowBox[{"f4", "/.", "sol"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"F10", "=", 
       RowBox[{"f10", "/.", "sol"}]}], ";", 
      RowBox[{"F11", "=", 
       RowBox[{"f11", "/.", "sol"}]}], ";", 
      RowBox[{"F13", "=", 
       RowBox[{"f13", "/.", "sol"}]}], ";", 
      RowBox[{"F16", "=", 
       RowBox[{"f16", "/.", "sol"}]}], ";", 
      RowBox[{"F15", "=", 
       RowBox[{"f15", "/.", "sol"}]}], ";", 
      RowBox[{"F17", "=", 
       RowBox[{"f17", "/.", "sol"}]}], ";", 
      RowBox[{"F19", "=", 
       RowBox[{"f19", "/.", "sol"}]}], ";", 
      RowBox[{"F20", "=", 
       RowBox[{"f20", "/.", "sol"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"colC", "=", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], ";", 
      RowBox[{"colT", "=", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"1", ",", "0", ",", "0.25"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"colC0", "[", "F_", "]"}], ":=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"F", "\[Equal]", "0"}], ",", "Black", ",", "colC"}], "]"}]}],
       ";", 
      RowBox[{
       RowBox[{"colT0", "[", "F_", "]"}], ":=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"F", "\[Equal]", "0"}], ",", "Black", ",", "colT"}], "]"}]}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"x", "=", "0.13"}], ";", 
      RowBox[{"y", "=", "0.13"}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"zero", "[", "F_", "]"}], ":=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"F", "\[Equal]", "0"}], ",", "Line", ",", "Arrow"}], "]"}]}],
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Thick", ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{"forces", ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"colC", ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"w", ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"6", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", "colT", ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"6", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"w", ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", "Black", ",", 
              RowBox[{
               RowBox[{
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                 "]"}], "&"}], "/@", 
               RowBox[{"Range", "@", "5"}]}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"EdgeForm", "@", "Thick"}], ",", 
               RowBox[{"FaceForm", "@", "None"}], ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"Polygon", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"#", "*", "w"}], "+", "w"}], ",", "h"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"#", "*", "w"}], "+", 
                    RowBox[{"2", "*", "w"}]}], ",", "0"}], "}"}]}], "}"}], 
                  "]"}], "&"}], "/@", 
                RowBox[{"Range", "[", 
                 RowBox[{"0", ",", "5", ",", "2"}], "]"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"w", ",", "h"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                "]"}], ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"Line", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                  "]"}], "&"}], "/@", 
                RowBox[{"Range", "@", "5"}]}]}], "}"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"forces", "\[Equal]", "False"}], "\[And]", 
               RowBox[{"labels", "\[Equal]", "False"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Thickness", "@", "#1"}], ",", "#2", ",", 
                   RowBox[{"CapForm", "[", "\"\<Round\>\"", "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"w", ",", "h"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", "h"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"6", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"i", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"i", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"i", ",", "1", ",", "5"}], "}"}]}], "]"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Line", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"w", ",", "h"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"2", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"3", "*", "w"}], ",", "h"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"4", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                    "]"}]}], "}"}], "&"}], "@@@", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0.02", ",", "Black"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.01", ",", 
                    RowBox[{"GrayLevel", "@", "0.7"}]}], "}"}]}], "}"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"EdgeForm", "@", "Thick"}], ",", 
                RowBox[{"FaceForm", "@", "None"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Polygon", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"#", "*", "w"}], "+", "w"}], ",", "h"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"#", "*", "w"}], "+", 
                    RowBox[{"2", "*", "w"}]}], ",", "0"}], "}"}]}], "}"}], 
                   "]"}], "&"}], "/@", 
                 RowBox[{"Range", "[", 
                  RowBox[{"0", ",", "5", ",", "2"}], "]"}]}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"w", ",", "h"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                 "]"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Line", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"#", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                   "]"}], "&"}], "/@", 
                 RowBox[{"Range", "@", "5"}]}]}], "}"}]}], "]"}]}], 
           "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"3", "*", "w"}], ",", 
                    RowBox[{"5", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "#1"}], ")"}]}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"3", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                 "]"}], ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", 
                    RowBox[{"h", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "#2"}], ")"}]}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], 
                 "]"}], ",", 
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
                    RowBox[{"#1", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< kN\>\""}], "}"}]}], ",", "16"}], "]"}], ",", "#2", 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1.75"}]}], "}"}]}], "]"}], "&"}], "@@@", 
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"FA", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"3", "*", "w"}], ",", 
                    RowBox[{"h", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "#1"}], ")"}]}]}], "}"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"FB", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], ",", 
                    RowBox[{"h", "*", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "#2"}], ")"}]}]}], "}"}]}], "}"}]}], 
                  "}"}]}]}], "}"}], "&"}], "@@@", 
             RowBox[{"{", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Rescale", "[", 
                 RowBox[{"FA", ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"-", "5"}], ",", "25"}], "}"}]}], "]"}], ",", 
                RowBox[{"Rescale", "[", 
                 RowBox[{"FB", ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"-", "5"}], ",", "25"}], "}"}]}], "]"}]}], "}"}], 
              "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"-", "h"}], "*", 
                    RowBox[{"Rescale", "[", 
                    RowBox[{"#1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "5"}], ",", "25"}], "}"}]}], "]"}]}]}], 
                    "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"#2", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"N", "@", "#1"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", 
                    "\"\< kN\>\""}], "}"}]}], ",", "16"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"-", "h"}], "*", 
                    RowBox[{"Rescale", "[", 
                    RowBox[{"#1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "5"}], ",", "25"}], "}"}]}], "]"}]}]}], 
                   "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "1.75"}], "}"}]}], "]"}]}], "}"}], "&"}],
              "@@@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"RA", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"RB", ",", 
                 RowBox[{"6", "*", "w"}]}], "}"}]}], "}"}]}]}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{"forces", ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Arrowheads", "@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "0.035"}], ",", "0.035"}], "}"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"colC0", "[", "F0", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F0", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"w", ",", "h"}], "}"}]}], "}"}], "]"}], ",", 
              RowBox[{"colC0", "[", "F5", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F5", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"w", ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colC0", "[", "F8", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F8", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colC0", "[", "F10", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F10", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"colC0", "[", "F12", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F12", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colC0", "[", "F13", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F13", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colC0", "[", "F15", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F15", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"colC0", "[", "F19", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F19", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"6", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"Arrowheads", "@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0.035", ",", "0.325"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.035"}], ",", "0.675"}], "}"}]}], "}"}]}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"colT0", "[", "F2", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F2", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"w", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
              RowBox[{"colT0", "[", "F3", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F3", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"w", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colT0", "[", "F4", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F4", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colT0", "[", "F7", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F7", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"w", ",", "h"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"2", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"colT0", "[", "F11", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F11", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"3", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colT0", "[", "F16", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F16", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "h"}], "}"}]}], "}"}], "]"}],
               ",", 
              RowBox[{"colT0", "[", "F17", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F17", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"4", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "0"}], "}"}]}], "}"}], "]"}],
               ",", "\[IndentingNewLine]", 
              RowBox[{"colT0", "[", "F20", "]"}], ",", 
              RowBox[{
               RowBox[{"zero", "[", "F20", "]"}], "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"5", "*", "w"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"6", "*", "w"}], ",", "0"}], "}"}]}], "}"}], 
               "]"}]}], "\[IndentingNewLine]", "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{"labels", ",", "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Rotate", "[", 
                 RowBox[{
                  RowBox[{"Framed", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"N", "@", 
                    RowBox[{"(*", 
                    RowBox[{"Abs", "@"}], "*)"}], "#1"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{"forces", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"#1", "\[Equal]", "0"}], ",", "Black", ",", 
                    "#4"}], "]"}], ",", "Black"}], "]"}]}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}], ",", 
                    RowBox[{"FrameStyle", "\[Rule]", "None"}], ",", 
                    RowBox[{"FrameMargins", "\[Rule]", "Tiny"}]}], "]"}], ",",
                   "#5"}], "]"}], ",", "#2"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{"forces", ",", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Rotate", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"#1", "\[Equal]", "0"}], ",", 
                    "\"\< 0 member \>\"", ",", 
                    RowBox[{"Row", "@", 
                    RowBox[{"{", 
                    RowBox[{"\"\<(\>\"", ",", "#3", ",", "\"\<)\>\""}], 
                    "}"}]}]}], "]"}], ",", "16", ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"#1", "\[Equal]", "0"}], ",", "Black", ",", 
                    "#4"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                    "#5"}], "]"}], ",", "#2"}], "]"}], ",", 
                RowBox[{"Text", "@", "\"\<\>\""}]}], "]"}]}], 
             "\[IndentingNewLine]", "]"}], "&"}], "@@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"F0", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"w", "/", "2"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<c\>\"", ",", 
               "colC", ",", "\[Theta]"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F2", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"w", "/", "2"}], ",", "0"}], "}"}], ",", "\"\<t\>\"",
                ",", "colT", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F3", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"1.5", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\"\<t\>\"", ",", "colT", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F4", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"2.5", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\"\<t\>\"", ",", "colT", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F5", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"1.5", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\"\<c\>\"", ",", "colC", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F7", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"1.5", "*", "w"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<t\>\"", ",", 
               "colT", ",", 
               RowBox[{"-", "\[Theta]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F8", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"2.5", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\"\<c\>\"", ",", "colC", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F10", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"3.5", "*", "w"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<c\>\"", ",", 
               "colC", ",", 
               RowBox[{"-", "\[Theta]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F11", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"3.5", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\"\<t\>\"", ",", "colT", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F12", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"2.5", "*", "w"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<c\>\"", ",", 
               "colC", ",", "\[Theta]"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F13", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"3.5", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\"\<c\>\"", ",", "colC", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F15", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"4.5", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\"\<c\>\"", ",", "colC", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F16", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"4.5", "*", "w"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<t\>\"", ",", 
               "colT", ",", "\[Theta]"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F17", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"4.5", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\"\<t\>\"", ",", "colT", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F19", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"5.5", "*", "w"}], ",", 
                 RowBox[{"h", "/", "2"}]}], "}"}], ",", "\"\<c\>\"", ",", 
               "colC", ",", 
               RowBox[{"-", "\[Theta]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"F20", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"5.5", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\"\<t\>\"", ",", "colT", ",", "0"}], "}"}]}], "}"}]}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{"forces", ",", 
              RowBox[{"Mouseover", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Transparent", ",", 
                  RowBox[{"PointSize", "@", "0.04"}], ",", 
                  RowBox[{"Point", "@", "#1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Thickness", "@", "0.006"}], ",", 
                  RowBox[{"Arrowheads", "@", "Large"}], ",", "#2"}], "}"}]}], 
               "]"}]}], "]"}], "&"}], "@@@", 
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "#1"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "#1"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"x", "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F2", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"x", "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F2", ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F2", "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ")"}]}]}], "}"}]}], "}"}], ",",
              "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"w", ",", "h"}], "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "1"}], "}"}]}], "]"}]}], "}"}]}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F5", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F5", ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F0", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{"w", "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F0", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{"w", "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F5", "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.75"}], ",", "1"}], "}"}]}], "]"}]}], 
                    "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"w", "*", "x"}]}], ",", 
                    RowBox[{"w", "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}]}], "}"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"2", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", "x"}], ")"}], "*", "w"}], ",", "#1"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.75"}], ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"2", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F3", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F3", ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F4", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#4", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F4", ",", 
                    RowBox[{"{", 
                    RowBox[{"#4", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"2", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F7", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F7", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"2", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F3", "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"2", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F4", "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}]}], "}"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"3", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F8", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F8", ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F13", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F13", ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", "x"}], ")"}], "*", "w"}], ",", "#4"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", "x"}], ")"}], "*", "w"}], ",", "#4"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "1"}], "}"}]}], "]"}]}], "}"}]}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#5", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#5", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "+", "x"}], ")"}], "*", "w"}], ",", "#6"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "+", "x"}], ")"}], "*", "w"}], ",", "#6"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.75"}], ",", "1"}], "}"}]}], "]"}]}], 
                    "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"3", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F8", "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                   RowBox[{
                    RowBox[{"3", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F13", "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                   RowBox[{
                    RowBox[{"3", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F12", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                   RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F12", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                   RowBox[{
                    RowBox[{"3", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                   RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], "}"}]}], "}"}], ",",
              "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"4", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}]}], 
                    "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"4", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F10", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F10", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "+", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "+", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.75"}], ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}], 
                    ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F11", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F11", ",", 
                    RowBox[{"{", 
                    RowBox[{"#3", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F17", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"4", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#4", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F17", ",", 
                    RowBox[{"{", 
                    RowBox[{"#4", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"4", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"4", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F11", "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"4", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F17", "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}]}], "}"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"5", "*", "w"}], ",", "h"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F15", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F15", ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "+", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#2", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "}"}]}],
                     "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "+", "x"}], ")"}], "*", "w"}], ",", "#3"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "+", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "+", "x"}], ")"}], "*", "w"}], ",", "#3"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.75"}], ",", "1"}], "}"}]}], "]"}]}], 
                    "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"5", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F15", "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"5", "*", "w"}], "+", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", "y"}], ")"}], "*", "h"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", "-", "x"}], ")"}], "*", "w"}], ",", "#2"}], 
                    "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.75", ",", "1"}], "}"}]}], "]"}]}], "}"}]}], 
                    "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"5", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F16", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{"h", "-", "y", "-", 
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F16", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}]}], "}"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"6", "*", "w"}], ",", "0"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colC", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"6", "-", "x"}], ")"}], "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[NotEqual]", 
                    "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"6", "*", "w"}], ",", "#2"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"6", "*", "w"}], ",", 
                    RowBox[{"y", "*", "h"}]}], "}"}]}], "}"}], "]"}], ",", 
                    RowBox[{"text", "[", 
                    RowBox[{
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"6", "*", "w"}], ",", "#2"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], "}"}]}], "]"}]}], 
                    "\[IndentingNewLine]", "}"}], "&"}], "@@", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"6", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F19", "*", 
                    RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ",", 
                    RowBox[{
                    RowBox[{"h", "*", 
                    RowBox[{"scale", "[", 
                    RowBox[{"F19", "*", 
                    RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "]"}]}], "+", 
                    RowBox[{"x", "*", "w"}]}]}], "}"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"colT", ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"F20", "\[NotEqual]", "0"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"6", "*", "w"}], ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"text", "[", 
                    RowBox[{"F20", ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", 
                    RowBox[{
                    RowBox[{"-", "y"}], "*", "h"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], 
                    "]"}]}], "\[IndentingNewLine]", "}"}], "&"}], "@", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"6", "*", "w"}], "-", 
                    RowBox[{"w", "*", 
                    RowBox[{"scale", "[", "F20", "]"}]}], "-", 
                    RowBox[{"x", "*", "w"}]}], ")"}]}]}], "}"}]}], "}"}]}], 
            "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<all compression and tension forces are in kN\>\"", ",", 
              "16", ",", 
              RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"3", "*", "w"}], ",", "13"}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"605", ",", "375"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "0.6"}], ",", 
             RowBox[{"6.15", "*", "w"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1.35"}], "*", "h"}], ",", "All"}], "}"}]}], 
          "}"}]}], ",", 
        RowBox[{"PlotRangePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Scaled", "@", "0.05"}], ",", "None"}], "}"}]}]}], 
       "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
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
             RowBox[{"forces", ",", "True", ",", 
              RowBox[{"Row", "@", 
               RowBox[{"{", 
                RowBox[{"\"\<make members under \>\"", ",", 
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<tension red\>\"", ",", 
                   RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", "0", ",", "0.25"}], "]"}]}], "]"}], 
                 ",", "\"\< and under \>\"", ",", 
                 RowBox[{"Style", "[", 
                  RowBox[{"\"\<compression green\>\"", ",", 
                   RowBox[{"RGBColor", "[", 
                    RowBox[{"0", ",", "0.6", ",", "0"}], "]"}]}], "]"}]}], 
                "}"}]}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "SpanFromLeft", ",", 
         RowBox[{"Spacer", "@", "30"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "labels", ",", "True", ",", "\"\<show member forces\>\""}], 
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
             RowBox[{"FA", ",", "10", ",", "\"\<center point load (kN)\>\""}],
              "}"}], ",", "0", ",", "15", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"FB", ",", "15", ",", "\"\<right point load (kN)\>\""}], 
             "}"}], ",", "0", ",", "25", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         "SpanFromLeft"}], "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",Expressio\
nUUID->"52d1462d-ce35-4919-ba63-69c729a3a05d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`FA$$ = 10, $CellContext`FB$$ = 
    15, $CellContext`forces$$ = True, $CellContext`labels$$ = True, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`forces$$], True, 
       Row[{"make members under ", 
         Style["tension red", 
          RGBColor[1, 0, 0.25]], " and under ", 
         Style["compression green", 
          RGBColor[0, 0.6, 0]]}]}, {True, False}}, {{
       Hold[$CellContext`labels$$], True, "show member forces"}, {
      True, False}}, {{
       Hold[$CellContext`FA$$], 10, "center point load (kN)"}, 0, 15, 1}, {{
       Hold[$CellContext`FB$$], 15, "right point load (kN)"}, 0, 25, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], SpanFromLeft, 
          Spacer[30], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], 
          Manipulate`Place[4], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    605., {184., 191.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`forces$199251$$ = 
    False, $CellContext`labels$199252$$ = False, $CellContext`FA$199253$$ = 
    0, $CellContext`FB$199254$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`FA$$ = 10, $CellContext`FB$$ = 
        15, $CellContext`forces$$ = True, $CellContext`labels$$ = True}, 
      "ControllerVariables" :> {
        Hold[$CellContext`forces$$, $CellContext`forces$199251$$, False], 
        Hold[$CellContext`labels$$, $CellContext`labels$199252$$, False], 
        Hold[$CellContext`FA$$, $CellContext`FA$199253$$, 0], 
        Hold[$CellContext`FB$$, $CellContext`FB$199254$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`w$, $CellContext`h$, $CellContext`\[Theta]$, \
$CellContext`sol$, $CellContext`RA$, $CellContext`RB$, $CellContext`F0$, \
$CellContext`F2$, $CellContext`F7$, $CellContext`F3$, $CellContext`F5$, \
$CellContext`F12$, $CellContext`F8$, $CellContext`F4$, $CellContext`F10$, \
$CellContext`F11$, $CellContext`F13$, $CellContext`F16$, $CellContext`F15$, \
$CellContext`F17$, $CellContext`F19$, $CellContext`F20$, $CellContext`colC$, \
$CellContext`colT$, $CellContext`colC0$, $CellContext`colT0$, \
$CellContext`x$, $CellContext`y$, $CellContext`zero$}, $CellContext`w$ = 
         5; $CellContext`h$ = 5; $CellContext`\[Theta]$ = 
         ArcTan[$CellContext`h$/$CellContext`w$]; $CellContext`sol$ = Quiet[
           Part[
            
            Solve[{(3 $CellContext`w$) (-$CellContext`FA$$) + (
                 5 $CellContext`w$) (-$CellContext`FB$$) + (
                 6 $CellContext`w$) $CellContext`rb == 
              0, $CellContext`ra + $CellContext`rb - $CellContext`FA$$ - \
$CellContext`FB$$ == 
              0, $CellContext`ra + $CellContext`f0 
                Sin[$CellContext`\[Theta]$] == 
              0, $CellContext`f0 
                Cos[$CellContext`\[Theta]$] + $CellContext`f2 == 
              0, $CellContext`ra + $CellContext`f7 
                Sin[$CellContext`\[Theta]$] == 
              0, $CellContext`w$ $CellContext`ra + $CellContext`w$ \
$CellContext`f3 == 
              0, $CellContext`f5 + $CellContext`f7 
                Cos[$CellContext`\[Theta]$] + $CellContext`f3 == 
              0, $CellContext`ra + $CellContext`f12 
                Sin[$CellContext`\[Theta]$] == 
              0, (2 $CellContext`w$) $CellContext`ra + $CellContext`w$ \
$CellContext`f8 == 
              0, $CellContext`f8 + $CellContext`f12 
                Cos[$CellContext`\[Theta]$] + $CellContext`f4 == 
              0, -$CellContext`FA$$ + $CellContext`ra + $CellContext`f10 
                Sin[$CellContext`\[Theta]$] == 
              0, (
                 3 $CellContext`w$) $CellContext`ra + $CellContext`w$ \
$CellContext`f11 == 
              0, $CellContext`f13 + $CellContext`f10 
                Cos[$CellContext`\[Theta]$] + $CellContext`f11 == 
              0, $CellContext`ra - $CellContext`FA$$ + $CellContext`f16 
                Sin[$CellContext`\[Theta]$] == 
              0, $CellContext`w$ $CellContext`f15 + $CellContext`w$ \
(-$CellContext`FA$$) + (4 $CellContext`w$) $CellContext`ra == 
              0, $CellContext`f17 + $CellContext`f15 + $CellContext`f16 
                Cos[$CellContext`\[Theta]$] == 
              0, $CellContext`ra - $CellContext`FA$$ - $CellContext`FB$$ + \
$CellContext`f19 Sin[$CellContext`\[Theta]$] == 
              0, $CellContext`f20 + $CellContext`f19 
                Cos[$CellContext`\[Theta]$] == 
              0}, {$CellContext`rb, $CellContext`ra, $CellContext`f0, \
$CellContext`f2, $CellContext`f7, $CellContext`f3, $CellContext`f5, \
$CellContext`f12, $CellContext`f8, $CellContext`f4, $CellContext`f10, \
$CellContext`f11, $CellContext`f13, $CellContext`f16, $CellContext`f15, \
$CellContext`f17, $CellContext`f19, $CellContext`f20}], 1]]; $CellContext`RB$ = 
         ReplaceAll[$CellContext`rb, $CellContext`sol$]; $CellContext`RA$ = 
         ReplaceAll[$CellContext`ra, $CellContext`sol$]; $CellContext`F0$ = 
         ReplaceAll[$CellContext`f0, $CellContext`sol$]; $CellContext`F2$ = 
         ReplaceAll[$CellContext`f2, $CellContext`sol$]; $CellContext`F7$ = 
         ReplaceAll[$CellContext`f7, $CellContext`sol$]; $CellContext`F3$ = 
         ReplaceAll[$CellContext`f3, $CellContext`sol$]; $CellContext`F5$ = 
         ReplaceAll[$CellContext`f5, $CellContext`sol$]; $CellContext`F12$ = 
         ReplaceAll[$CellContext`f12, $CellContext`sol$]; $CellContext`F8$ = 
         ReplaceAll[$CellContext`f8, $CellContext`sol$]; $CellContext`F4$ = 
         ReplaceAll[$CellContext`f4, $CellContext`sol$]; $CellContext`F10$ = 
         ReplaceAll[$CellContext`f10, $CellContext`sol$]; $CellContext`F11$ = 
         ReplaceAll[$CellContext`f11, $CellContext`sol$]; $CellContext`F13$ = 
         ReplaceAll[$CellContext`f13, $CellContext`sol$]; $CellContext`F16$ = 
         ReplaceAll[$CellContext`f16, $CellContext`sol$]; $CellContext`F15$ = 
         ReplaceAll[$CellContext`f15, $CellContext`sol$]; $CellContext`F17$ = 
         ReplaceAll[$CellContext`f17, $CellContext`sol$]; $CellContext`F19$ = 
         ReplaceAll[$CellContext`f19, $CellContext`sol$]; $CellContext`F20$ = 
         ReplaceAll[$CellContext`f20, $CellContext`sol$]; $CellContext`colC$ = 
         RGBColor[0, 0.6, 0]; $CellContext`colT$ = 
         RGBColor[1, 0, 0.25]; $CellContext`colC0$[
           Pattern[$CellContext`F$, 
            Blank[]]] := 
         If[$CellContext`F$ == 0, 
           Black, $CellContext`colC$]; $CellContext`colT0$[
           Pattern[$CellContext`F$, 
            Blank[]]] := 
         If[$CellContext`F$ == 0, Black, $CellContext`colT$]; $CellContext`x$ = 
         0.13; $CellContext`y$ = 0.13; $CellContext`zero$[
           Pattern[$CellContext`F, 
            Blank[]]] := If[$CellContext`F == 0, Line, Arrow]; 
        Graphics[{Thick, 
           If[$CellContext`forces$$, {$CellContext`colC$, 
             
             Line[{{0, 0}, {$CellContext`w$, $CellContext`h$}, {
               5 $CellContext`w$, $CellContext`h$}, {6 $CellContext`w$, 0}}], 
             
             Line[{{2 $CellContext`w$, 0}, {
               3 $CellContext`w$, $CellContext`h$}, {
               4 $CellContext`w$, 0}}], $CellContext`colT$, 
             Line[{{0, 0}, {6 $CellContext`w$, 0}}], 
             
             Line[{{$CellContext`w$, $CellContext`h$}, {
               2 $CellContext`w$, 0}}], 
             
             Line[{{4 $CellContext`w$, 0}, {
               5 $CellContext`w$, $CellContext`h$}}], Black, 
             Map[
             Line[{{# $CellContext`w$, 
                 0}, {# $CellContext`w$, $CellContext`h$}}]& , 
              Range[5]]}, 
            If[
             
             And[$CellContext`forces$$ == False, $CellContext`labels$$ == 
              False], {
              Apply[{
                Thickness[#], #2, 
                CapForm["Round"], 
                
                Line[{{0, 0}, {$CellContext`w$, $CellContext`h$}, {
                  5 $CellContext`w$, $CellContext`h$}, {
                  6 $CellContext`w$, 0}, {0, 0}}], 
                Table[
                 
                 Line[{{$CellContext`i $CellContext`w$, 
                    0}, {$CellContext`i $CellContext`w$, $CellContext`h$}}], \
{$CellContext`i, 1, 5}], 
                
                Line[{{$CellContext`w$, $CellContext`h$}, {
                  2 $CellContext`w$, 0}, {
                  3 $CellContext`w$, $CellContext`h$}, {
                  4 $CellContext`w$, 0}, {
                  5 $CellContext`w$, $CellContext`h$}}]}& , {{0.02, Black}, {
                0.01, 
                 GrayLevel[0.7]}}, {1}]}, {
              EdgeForm[Thick], 
              FaceForm[None], 
              Map[
              Polygon[{{# $CellContext`w$, 
                  0}, {# $CellContext`w$ + $CellContext`w$, $CellContext`h$}, \
{# $CellContext`w$ + 2 $CellContext`w$, 0}}]& , 
               Range[0, 5, 2]], 
              
              Line[{{$CellContext`w$, $CellContext`h$}, {
                5 $CellContext`w$, $CellContext`h$}}], 
              Map[
              Line[{{# $CellContext`w$, 
                  0}, {# $CellContext`w$, $CellContext`h$}}]& , 
               Range[5]]}]], {Blue, 
            Apply[{
              
              Arrow[{{3 $CellContext`w$, 5 (1 + #)}, {
                3 $CellContext`w$, $CellContext`h$}}], 
              
              Arrow[{{5 $CellContext`w$, $CellContext`h$ (1 + #2)}, {
                5 $CellContext`w$, $CellContext`h$}}], 
              Apply[Text[
                Style[
                 Row[{
                   NumberForm[#, {4, 1}], " kN"}], 16], #2, {
                0, -1.75}]& , {{$CellContext`FA$$, {
                 3 $CellContext`w$, $CellContext`h$ (
                   1 + #)}}, {$CellContext`FB$$, {
                 5 $CellContext`w$, $CellContext`h$ (1 + #2)}}}, {1}]}& , {{
               Rescale[$CellContext`FA$$, {-5, 25}], 
               Rescale[$CellContext`FB$$, {-5, 25}]}}, {1}], 
            Apply[{
              Arrow[{{#2, (-$CellContext`h$) Rescale[#, {-5, 25}]}, {#2, 0}}], 
              Text[
               Style[
                Row[{
                  NumberForm[
                   N[#], {4, 1}], " kN"}], 16], {#2, (-$CellContext`h$) 
                Rescale[#, {-5, 25}]}, {0, 1.75}]}& , {{$CellContext`RA$, 
               0}, {$CellContext`RB$, 6 $CellContext`w$}}, {1}]}, 
           If[$CellContext`forces$$, {
             Arrowheads[{-0.035, 0.035}], 
             $CellContext`colC0$[$CellContext`F0$], 
             $CellContext`zero$[$CellContext`F0$][{{0, 
               0}, {$CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F5$], 
             $CellContext`zero$[$CellContext`F5$][{{$CellContext`w$, \
$CellContext`h$}, {2 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F8$], 
             $CellContext`zero$[$CellContext`F8$][{{
               2 $CellContext`w$, $CellContext`h$}, {
               3 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F10$], 
             $CellContext`zero$[$CellContext`F10$][{{
               3 $CellContext`w$, $CellContext`h$}, {4 $CellContext`w$, 0}}], 
             $CellContext`colC0$[$CellContext`F12$], 
             $CellContext`zero$[$CellContext`F12$][{{2 $CellContext`w$, 0}, {
               3 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F13$], 
             $CellContext`zero$[$CellContext`F13$][{{
               3 $CellContext`w$, $CellContext`h$}, {
               4 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F15$], 
             $CellContext`zero$[$CellContext`F15$][{{
               4 $CellContext`w$, $CellContext`h$}, {
               5 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colC0$[$CellContext`F19$], 
             $CellContext`zero$[$CellContext`F19$][{{
               5 $CellContext`w$, $CellContext`h$}, {6 $CellContext`w$, 0}}], 
             Arrowheads[{{0.035, 0.325}, {-0.035, 0.675}}], 
             $CellContext`colT0$[$CellContext`F2$], 
             $CellContext`zero$[$CellContext`F2$][{{0, 
               0}, {$CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F3$], 
             $CellContext`zero$[$CellContext`F3$][{{$CellContext`w$, 0}, {
               2 $CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F4$], 
             $CellContext`zero$[$CellContext`F4$][{{2 $CellContext`w$, 0}, {
               3 $CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F7$], 
             $CellContext`zero$[$CellContext`F7$][{{$CellContext`w$, \
$CellContext`h$}, {2 $CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F11$], 
             $CellContext`zero$[$CellContext`F11$][{{3 $CellContext`w$, 0}, {
               4 $CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F16$], 
             $CellContext`zero$[$CellContext`F16$][{{4 $CellContext`w$, 0}, {
               5 $CellContext`w$, $CellContext`h$}}], 
             $CellContext`colT0$[$CellContext`F17$], 
             $CellContext`zero$[$CellContext`F17$][{{4 $CellContext`w$, 0}, {
               5 $CellContext`w$, 0}}], 
             $CellContext`colT0$[$CellContext`F20$], 
             $CellContext`zero$[$CellContext`F20$][{{5 $CellContext`w$, 0}, {
               6 $CellContext`w$, 0}}]}], 
           Apply[If[$CellContext`labels$$, 
             Text[
              Rotate[
               Framed[
                Style[
                 NumberForm[
                  N[#], {4, 1}], 16, 
                 If[$CellContext`forces$$, 
                  If[# == 0, Black, #4], Black]], Background -> White, 
                FrameStyle -> None, FrameMargins -> Tiny], #5], #2], 
             If[$CellContext`forces$$, 
              Text[
               Rotate[
                Style[
                 If[# == 0, " 0 member ", 
                  Row[{"(", #3, ")"}]], 16, 
                 If[# == 0, Black, #4], Background -> White], #5], #2], 
              Text[
              ""]]]& , {{$CellContext`F0$, {$CellContext`w$/
               2, $CellContext`h$/2}, 
              "c", $CellContext`colC$, $CellContext`\[Theta]$}, \
{$CellContext`F2$, {$CellContext`w$/2, 0}, "t", $CellContext`colT$, 
              0}, {$CellContext`F3$, {1.5 $CellContext`w$, 0}, 
              "t", $CellContext`colT$, 0}, {$CellContext`F4$, {
              2.5 $CellContext`w$, 0}, "t", $CellContext`colT$, 
              0}, {$CellContext`F5$, {1.5 $CellContext`w$, $CellContext`h$}, 
              "c", $CellContext`colC$, 0}, {$CellContext`F7$, {
              1.5 $CellContext`w$, $CellContext`h$/2}, 
              "t", $CellContext`colT$, -$CellContext`\[Theta]$}, \
{$CellContext`F8$, {2.5 $CellContext`w$, $CellContext`h$}, 
              "c", $CellContext`colC$, 0}, {$CellContext`F10$, {
              3.5 $CellContext`w$, $CellContext`h$/2}, 
              "c", $CellContext`colC$, -$CellContext`\[Theta]$}, \
{$CellContext`F11$, {3.5 $CellContext`w$, 0}, "t", $CellContext`colT$, 
              0}, {$CellContext`F12$, {
              2.5 $CellContext`w$, $CellContext`h$/2}, 
              "c", $CellContext`colC$, $CellContext`\[Theta]$}, \
{$CellContext`F13$, {3.5 $CellContext`w$, $CellContext`h$}, 
              "c", $CellContext`colC$, 0}, {$CellContext`F15$, {
              4.5 $CellContext`w$, $CellContext`h$}, "c", $CellContext`colC$, 
              0}, {$CellContext`F16$, {
              4.5 $CellContext`w$, $CellContext`h$/2}, 
              "t", $CellContext`colT$, $CellContext`\[Theta]$}, \
{$CellContext`F17$, {4.5 $CellContext`w$, 0}, "t", $CellContext`colT$, 
              0}, {$CellContext`F19$, {
              5.5 $CellContext`w$, $CellContext`h$/2}, 
              "c", $CellContext`colC$, -$CellContext`\[Theta]$}, \
{$CellContext`F20$, {5.5 $CellContext`w$, 0}, "t", $CellContext`colT$, 0}}, {
            1}], 
           Apply[If[$CellContext`forces$$, 
             Mouseover[{Transparent, 
               PointSize[0.04], 
               Point[#]}, {
               Thickness[0.006], 
               Arrowheads[Large], #2}]]& , {{{0, 0}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F0$ Sin[$CellContext`\[Theta]$] != 0, {
                   Arrow[{{0, #}, {0, $CellContext`y$ $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F0$ 
                    Sin[$CellContext`\[Theta]$], {0, #}, {0, -1}]}], 
                 If[$CellContext`F0$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#2, $CellContext`y$ $CellContext`h$}, \
{$CellContext`x$ $CellContext`w$, $CellContext`y$ $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F0$ 
                    Cos[$CellContext`\[Theta]$], {#2, $CellContext`y$ \
$CellContext`h$}, {-1, 
                    0}]}]}& , {$CellContext`h$ \
$CellContext`scale[$CellContext`F0$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, $CellContext`w$ $CellContext`scale[$CellContext`F0$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$}], 
               ({$CellContext`colT$, 
                If[$CellContext`F2$ != 0, {
                  
                  Arrow[{{$CellContext`x$ $CellContext`w$, (-$CellContext`y$) \
$CellContext`h$}, {#, (-$CellContext`y$) $CellContext`h$}}], 
                  $CellContext`text[$CellContext`F2$, {#, (-$CellContext`y$) \
$CellContext`h$}, {-1, 
                   0}]}]}& )[$CellContext`w$ \
$CellContext`scale[$CellContext`F2$] + $CellContext`x$ $CellContext`w$]}}, \
{{$CellContext`w$, $CellContext`h$}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F0$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(1 - $CellContext`x$) $CellContext`w$, #}, {(
                    1 - $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F0$ 
                    Sin[$CellContext`\[Theta]$], {(
                    1 - $CellContext`x$) $CellContext`w$, #}, {0.75, 1}]}], 
                 If[$CellContext`F0$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#2, (1 + $CellContext`y$) $CellContext`h$}, {(
                    1 - $CellContext`x$) $CellContext`w$, (
                    1 + $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F0$ 
                    Cos[$CellContext`\[Theta]$], {#2, (
                    1 + $CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F5$ != 0, {
                   
                   Arrow[{{#3, (1 + $CellContext`y$) $CellContext`h$}, {(
                    1 + $CellContext`x$) $CellContext`w$, (
                    1 + $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F5$, {#3, (
                    1 + $CellContext`y$) $CellContext`h$}, {-1, 
                    0}]}]}& , {$CellContext`h$ - $CellContext`y$ - \
$CellContext`h$ $CellContext`scale[$CellContext`F0$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F0$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F5$] + $CellContext`x$ $CellContext`w$}], 
               Apply[{$CellContext`colT$, 
                 If[$CellContext`F7$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(1 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}, {(
                    1 + $CellContext`x$) $CellContext`w$, #}}], 
                   $CellContext`text[$CellContext`F7$ 
                    Sin[$CellContext`\[Theta]$], {(
                    1 + $CellContext`x$) $CellContext`w$, #}, {-0.75, 1}]}], 
                 If[$CellContext`F7$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(1 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}, {#2, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F7$ 
                    Cos[$CellContext`\[Theta]$], {#2, (
                    1 - $CellContext`y$) $CellContext`h$}, {-1, 
                    0}]}]}& , {$CellContext`h$ - $CellContext`y$ - \
$CellContext`h$ $CellContext`scale[$CellContext`F7$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`w$ \
$CellContext`x$, $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F7$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$}]}}, {{2 $CellContext`w$, 0}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F12$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(2 + $CellContext`x$) $CellContext`w$, #}, {(
                    
                    2 + $CellContext`x$) $CellContext`w$, $CellContext`y$ + \
$CellContext`x$ $CellContext`w$}}], 
                   $CellContext`text[$CellContext`F12$ 
                    Sin[$CellContext`\[Theta]$], {(
                    2 + $CellContext`x$) $CellContext`w$, #}, {-0.75, -1}]}], 
                 If[$CellContext`F12$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#2, $CellContext`y$ $CellContext`h$}, {(
                    2 + $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}}], 
                   $CellContext`text[$CellContext`F12$ 
                    Cos[$CellContext`\[Theta]$], {#2, $CellContext`y$ \
$CellContext`h$}, {-1, 
                    0}]}]}& , {$CellContext`h$ \
$CellContext`scale[$CellContext`F12$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, 
                 2 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F12$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$}], 
               Apply[{$CellContext`colT$, 
                 If[$CellContext`F7$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(
                    2 - $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}, {#, $CellContext`y$ $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F7$ 
                    Cos[$CellContext`\[Theta]$], {#, $CellContext`y$ \
$CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F7$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(
                    2 - $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}, {(2 - $CellContext`x$) $CellContext`w$, #2}}], 
                   $CellContext`text[$CellContext`F7$ 
                    Sin[$CellContext`\[Theta]$], {(
                    2 - $CellContext`x$) $CellContext`w$, #2}, {0.75, -1}]}], 
                 If[$CellContext`F3$ != 0, {
                   
                   Arrow[{{(
                    2 - $CellContext`x$) $CellContext`w$, (-$CellContext`y$) \
$CellContext`h$}, {#3, (-$CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F3$, {#3, \
(-$CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F4$ != 0, {
                   
                   Arrow[{{(
                    2 + $CellContext`x$) $CellContext`w$, (-$CellContext`y$) \
$CellContext`h$}, {#4, (-$CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F4$, {#4, \
(-$CellContext`y$) $CellContext`h$}, {-1, 0}]}]}& , {
                2 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F7$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`h$ $CellContext`scale[$CellContext`F7$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, 
                 2 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F3$] - $CellContext`x$ $CellContext`w$, 
                 2 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F4$] + $CellContext`x$ $CellContext`w$}]}}, {{
              3 $CellContext`w$, $CellContext`h$}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F8$ != 0, {
                   
                   Arrow[{{#, (1 + $CellContext`y$) $CellContext`h$}, {(
                    3 - $CellContext`x$) $CellContext`w$, (
                    1 + $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F8$, {#, (
                    1 + $CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F13$ != 0, {
                   
                   Arrow[{{#2, (1 + $CellContext`y$) $CellContext`h$}, {(
                    3 + $CellContext`x$) $CellContext`w$, (
                    1 + $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F13$, {#2, (
                    1 + $CellContext`y$) $CellContext`h$}, {-1, 0}]}], 
                 If[$CellContext`F12$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#3, (1 - $CellContext`y$) $CellContext`h$}, {(
                    3 - $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F12$ 
                    Cos[$CellContext`\[Theta]$], {#3, (
                    1 - $CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F12$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(3 - $CellContext`x$) $CellContext`w$, #4}, {(
                    3 - $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F12$ 
                    Sin[$CellContext`\[Theta]$], {(
                    3 - $CellContext`x$) $CellContext`w$, #4}, {0.75, 1}]}], 
                 If[$CellContext`F10$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#5, (1 - $CellContext`y$) $CellContext`h$}, {(
                    3 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F10$ 
                    Cos[$CellContext`\[Theta]$], {#5, (
                    1 - $CellContext`y$) $CellContext`h$}, {-1, 0}]}], 
                 If[$CellContext`F10$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(3 + $CellContext`x$) $CellContext`w$, #6}, {(
                    3 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F10$ 
                    Sin[$CellContext`\[Theta]$], {(
                    3 + $CellContext`x$) $CellContext`w$, #6}, {-0.75, 
                    1}]}]}& , {
                3 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F8$] - $CellContext`x$ $CellContext`w$, 
                 3 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F13$] + $CellContext`x$ $CellContext`w$, 
                 3 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F12$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`h$ - $CellContext`y$ - $CellContext`h$ \
$CellContext`scale[$CellContext`F12$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, 
                 3 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F10$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, $CellContext`h$ - $CellContext`y$ - $CellContext`h$ \
$CellContext`scale[$CellContext`F10$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$}]}}, {{4 $CellContext`w$, 0}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F10$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#, $CellContext`y$ $CellContext`h$}, {(
                    4 - $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}}], 
                   $CellContext`text[$CellContext`F10$ 
                    Cos[$CellContext`\[Theta]$], {#, $CellContext`y$ \
$CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F10$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(4 - $CellContext`x$) $CellContext`w$, #2}, {(
                    4 - $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}}], 
                   $CellContext`text[$CellContext`F10$ 
                    Sin[$CellContext`\[Theta]$], {(
                    4 - $CellContext`x$) $CellContext`w$, #2}, {
                    0.75, -1}]}]}& , {
                4 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F10$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`h$ $CellContext`scale[$CellContext`F10$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$}], 
               Apply[{$CellContext`colT$, 
                 If[$CellContext`F16$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(
                    4 + $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}, {#, $CellContext`y$ $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F16$ 
                    Cos[$CellContext`\[Theta]$], {#, $CellContext`y$ \
$CellContext`h$}, {-1, 0}]}], 
                 If[$CellContext`F16$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(
                    4 + $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}, {(4 + $CellContext`x$) $CellContext`w$, #2}}], 
                   $CellContext`text[$CellContext`F16$ 
                    Sin[$CellContext`\[Theta]$], {(
                    4 + $CellContext`x$) $CellContext`w$, #2}, {-0.75, -1}]}], 
                 If[$CellContext`F11$ != 0, {
                   Arrow[{{(
                    4 - $CellContext`x$) $CellContext`w$, (-$CellContext`y$) \
$CellContext`h$}, {#3, (-$CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F11$, {#3, \
(-$CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F17$ != 0, {
                   
                   Arrow[{{(
                    4 + $CellContext`x$) $CellContext`w$, (-$CellContext`y$) \
$CellContext`h$}, {#4, (-$CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F17$, {#4, \
(-$CellContext`y$) $CellContext`h$}, {-1, 0}]}]}& , {
                4 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F16$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, $CellContext`h$ $CellContext`scale[$CellContext`F16$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, 
                 4 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F11$] - $CellContext`x$ $CellContext`w$, 
                 4 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F17$] + $CellContext`x$ $CellContext`w$}]}}, \
{{5 $CellContext`w$, $CellContext`h$}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F15$ != 0, {
                   
                   Arrow[{{#, (1 + $CellContext`y$) $CellContext`h$}, {(
                    5 - $CellContext`x$) $CellContext`w$, (
                    1 + $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F15$, {#, (
                    1 + $CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F19$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#2, (1 - $CellContext`y$) $CellContext`h$}, {(
                    5 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F19$ 
                    Cos[$CellContext`\[Theta]$], {#2, (
                    1 - $CellContext`y$) $CellContext`h$}, {-1, 0}]}], 
                 If[$CellContext`F19$ Sin[$CellContext`\[Theta]$] != 0, {
                   Arrow[{{(5 + $CellContext`x$) $CellContext`w$, #3}, {(
                    5 + $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F19$ 
                    Sin[$CellContext`\[Theta]$], {(
                    5 + $CellContext`x$) $CellContext`w$, #3}, {-0.75, 
                    1}]}]}& , {
                5 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F15$] - $CellContext`x$ $CellContext`w$, 
                 5 $CellContext`w$ + $CellContext`w$ \
$CellContext`scale[$CellContext`F19$ 
                    Cos[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$, $CellContext`h$ - $CellContext`y$ - $CellContext`h$ \
$CellContext`scale[$CellContext`F19$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$}], 
               Apply[{$CellContext`colT$, 
                 If[$CellContext`F16$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#, (1 - $CellContext`y$) $CellContext`h$}, {(
                    5 - $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F16$ 
                    Cos[$CellContext`\[Theta]$], {#, (
                    1 - $CellContext`y$) $CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F16$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{(5 - $CellContext`x$) $CellContext`w$, #2}, {(
                    5 - $CellContext`x$) $CellContext`w$, (
                    1 - $CellContext`y$) $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F16$ 
                    Sin[$CellContext`\[Theta]$], {(
                    5 - $CellContext`x$) $CellContext`w$, #2}, {
                    0.75, 1}]}]}& , {
                5 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F16$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`h$ - $CellContext`y$ - $CellContext`h$ \
$CellContext`scale[$CellContext`F16$ 
                   Sin[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$}]}}, {{6 $CellContext`w$, 0}, {
               Apply[{$CellContext`colC$, 
                 If[$CellContext`F19$ Cos[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{#, $CellContext`y$ $CellContext`h$}, {(
                    6 - $CellContext`x$) $CellContext`w$, $CellContext`y$ \
$CellContext`h$}}], 
                   $CellContext`text[$CellContext`F19$ 
                    Cos[$CellContext`\[Theta]$], {#, $CellContext`y$ \
$CellContext`h$}, {1, 0}]}], 
                 If[$CellContext`F19$ Sin[$CellContext`\[Theta]$] != 0, {
                   
                   Arrow[{{6 $CellContext`w$, #2}, {
                    6 $CellContext`w$, $CellContext`y$ $CellContext`h$}}], 
                   $CellContext`text[$CellContext`F19$ 
                    Sin[$CellContext`\[Theta]$], {6 $CellContext`w$, #2}, {
                    0, -1}]}]}& , {
                6 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F19$ 
                   Cos[$CellContext`\[Theta]$]] - $CellContext`x$ \
$CellContext`w$, $CellContext`h$ $CellContext`scale[$CellContext`F19$ 
                    Sin[$CellContext`\[Theta]$]] + $CellContext`x$ \
$CellContext`w$}], 
               ({$CellContext`colT$, 
                If[$CellContext`F20$ != 0, {
                  
                  Arrow[{{
                    6 $CellContext`w$, (-$CellContext`y$) $CellContext`h$}, \
{#, (-$CellContext`y$) $CellContext`h$}}], 
                  $CellContext`text[$CellContext`F20$, {#, (-$CellContext`y$) \
$CellContext`h$}, {1, 0}]}]}& )[
               6 $CellContext`w$ - $CellContext`w$ \
$CellContext`scale[$CellContext`F20$] - $CellContext`x$ $CellContext`w$]}}}, {
            1}], 
           Text[
            Style["all compression and tension forces are in kN", 16, 
             GrayLevel[0.4]], {3 $CellContext`w$, 13}]}, 
          ImageSize -> {605, 375}, 
          PlotRange -> {{-0.6, 
             6.15 $CellContext`w$}, {(-1.35) $CellContext`h$, All}}, 
          PlotRangePadding -> {
            Scaled[0.05], None}]], 
      "Specifications" :> {{{$CellContext`forces$$, True, 
          Row[{"make members under ", 
            Style["tension red", 
             RGBColor[1, 0, 0.25]], " and under ", 
            Style["compression green", 
             RGBColor[0, 0.6, 0]]}]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`labels$$, True, "show member forces"}, {
         True, False}, ControlPlacement -> 
         2}, {{$CellContext`FA$$, 10, "center point load (kN)"}, 0, 15, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`FB$$, 15, "right point load (kN)"}, 0, 25, 1, 
         Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], SpanFromLeft, 
           Spacer[30], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], 
           Manipulate`Place[4], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{654., {236., 243.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`text[
         Pattern[$CellContext`force, 
          Blank[]], 
         Pattern[$CellContext`loc, 
          Blank[]], 
         Pattern[$CellContext`off, 
          Blank[]]] := Text[
         Framed[
          Style[
           NumberForm[
            N[$CellContext`force], {3, 1}], 16], Background -> White, 
          FrameMargins -> 
          Tiny], $CellContext`loc, $CellContext`off], $CellContext`scale[
         Pattern[$CellContext`f, 
          Blank[]]] := Rescale[
         Abs[$CellContext`f], {0, 35}], 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->124416301,ExpressionUUID->"7fcb76e1-cfb7-4e18-ad1e-f365b78fb201"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"44d46097-9e2c-4021-a21e-2db168a6b162"],

Cell[TextData[{
 "This Demonstration calculates the forces in the members of a planar truss. \
Set the two point loads (forces in negative ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "556f9662-2b7f-4722-9794-89d95e5930ab"],
 "-direction) at the center and the right with sliders. Check \"show member \
forces\" to show member forces in kN. Compression forces are green and \
tension forces are red. Check \"make trusses under tension red and under \
compression green\" to show the red and green arrows. The vertical black \
members are zero forces; i.e., these members are neither in tension nor in \
compression so the force is 0 kN. The purpose of zero members is to provide \
stability and extra support to the structure in case another member fails."
}], "ManipulateCaption",
 CellID->22287087,ExpressionUUID->"cd5fe007-9bbd-4ee3-8ab7-9221e3f9dca5"],

Cell[TextData[{
 "When the box \"make trusses under tension red and under compression green\" \
is checked, move the mouse over a pivot point to show arrows that represent \
forces (and the values of the forces) in the ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "0cdbef6e-5816-4605-914e-ae92aa38b483"],
 "- and ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "041fca40-833c-44d8-b804-c782a1f53af7"],
 "-directions at that point. This breaks the forces in the diagonal members \
into its ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath",ExpressionUUID->
  "311d0595-701d-4009-9340-abea5cdc776a"],
 " and ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "9feac18c-44c5-4807-b1d9-a6f7adcf0e02"],
 " components."
}], "ManipulateCaption",
 CellID->73189582,ExpressionUUID->"2bb71435-9719-4c69-ae09-c887d2bf1a8d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"e3e4ec58-2529-489f-851d-c4cc4b007c8e"],

Cell[BoxData[
 GraphicsBox[{{
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
       $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"08cb0015-ad20-4b4c-a000-af8e65fd6650"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"56b44de8-e951-473d-8214-3bd84425d6ba"],

Cell[BoxData[
 GraphicsBox[{{
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
       $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"d24e7c92-0c2d-441d-9b35-6fec41ab6e5d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"ef01af6b-9f32-4074-9f62-123be2ba4d3f"],

Cell["\<\
The method of sections is used to calculate the forces in each member of the \
truss. This is done by making a \"cut\" along 3 members of interest. First, \
calculate the reactions at the supports. Taking the sum of the moments at the \
left support:\
\>", "DetailNotes",
 CellID->52889288,ExpressionUUID->"1fea3750-83a0-41fd-9452-0caac5666090"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["M", 
      StyleBox["A",
       FontSlant->"Plain"]]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{"3", " ", "w", " ", 
       SubscriptBox["F", 
        StyleBox["A",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"5", " ", "w", " ", 
       SubscriptBox["F", 
        StyleBox["B",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"6", " ", "w", " ", 
       SubscriptBox["R", 
        StyleBox["B",
         FontSlant->"Plain"]]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"50d0b582-8432-420f-a364-e1db587a7be3"],
 "."
}], "DetailNotes",
 CellID->447499211,ExpressionUUID->"45344e56-3c0b-49b2-ac1d-bad1b7cd75fc"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["M", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "5fb6b207-ebef-4223-9a0c-200d5a78e4e3"],
 " is the moment around support ",
 Cell[BoxData[
  FormBox[
   StyleBox["A",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "678eb6ac-d546-49d3-ac3d-1750db27e36e"],
 " (left support), ",
 Cell[BoxData[
  FormBox["w", TraditionalForm]], "InlineMath",ExpressionUUID->
  "80d16f1b-e72d-4b60-847d-5415dbdc87ee"],
 " is the width of one member, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["F", "i"], "<", "0"}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"14e84bba-6540-456b-92cf-9542340f9a67"],
 " is the force applied to the joints at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", 
    RowBox[{"(", 
     RowBox[{
      StyleBox["A",
       FontSlant->"Plain"], ",", 
      StyleBox["B",
       FontSlant->"Plain"]}], ")"}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"13035736-0adc-4e18-938c-8131d255f366"],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["R", 
    StyleBox["B",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "b692d889-bdb6-4ebd-93d8-e7d766e75637"],
 " is the reaction at support ",
 Cell[BoxData[
  FormBox[
   StyleBox["B",
    FontSlant->"Plain"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "acb4737c-99d1-40bf-a810-47c2a0112c3a"],
 " (right)."
}], "DetailNotes",
 CellID->255008801,ExpressionUUID->"88e6c5be-25ef-4873-940f-8b616cc73d06"],

Cell[TextData[{
 "Next, take the sum of the forces in the ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "InlineMath",ExpressionUUID->
  "155db137-ef34-4404-aa92-f62b514bbf73"],
 " direction to get ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["R", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "a7d8e6cf-f3cb-4369-8079-45ab42472c4a"],
 ":"
}], "DetailNotes",
 CellID->261731386,ExpressionUUID->"8600cb04-75c4-4d83-bb69-689e6884e550"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["R", 
       StyleBox["B",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["F", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["F", 
       StyleBox["B",
        FontSlant->"Plain"]]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"22c37352-4f44-46e4-8d8a-84a141d3ef32"],
 "."
}], "DetailNotes",
 CellID->336419373,ExpressionUUID->"37dacbe1-4c8e-4523-942e-ac0fae22abf6"],

Cell["\<\
Begin solving for the forces of the members by cutting vertically along \
sections.\
\>", "DetailNotes",
 CellID->53102297,ExpressionUUID->"0cc488af-d443-4216-b866-7cd6d69d9a4d"],

Cell["", "DetailNotes",
 CellID->89214574,ExpressionUUID->"f0a84846-65b4-4709-8302-067729d7619e"],

Cell[TextData[{
 "Cut 1: to the right of the 1st joint (where joint 1 is where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["R", 
    StyleBox["A",
     FontSlant->"Plain"]], TraditionalForm]], "InlineMath",ExpressionUUID->
  "d2f73e0d-ec20-47e8-bf1d-98f41a8b73a3"],
 " reaction force is located)"
}], "DetailNotes",
 CellID->329653194,ExpressionUUID->"38560ac7-465e-492d-9106-07df7058363a"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "0"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "8b6b4a74-5623-4b67-8c8c-383f19bd3358"],
 ","
}], "DetailNotes",
 CellID->666629222,ExpressionUUID->"518254a4-f56a-4165-aeb9-91bcdb6bf847"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{
       SubscriptBox["F", "0"], " ", "cos", " ", "\[Theta]"}], "+", 
      SubscriptBox["F", "2"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"f9a5b226-8712-47ee-98b9-7513db11f700"],
 "."
}], "DetailNotes",
 CellID->171969501,ExpressionUUID->"8128feb0-0371-4d9d-a982-2af78c5f5ad4"],

Cell["", "DetailNotes",
 CellID->534693733,ExpressionUUID->"c05acbb6-21f9-4ff3-a73b-82c39cc3a2e7"],

Cell["Cut 2: to the right of the 2nd joint", "DetailNotes",
 CellID->226544748,ExpressionUUID->"e3261357-afe2-4b93-8455-d9e035c470f5"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "7"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "d36edc0b-7abf-4424-af6b-69b03c82be0d"],
 ","
}], "DetailNotes",
 CellID->227654796,ExpressionUUID->"536f7fca-cd67-4aff-8d79-86c507c01eb3"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["M", "4"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{"w", " ", 
       SubscriptBox["R", 
        StyleBox["A",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"w", " ", 
       SubscriptBox["F", "3"]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"cc9187c3-40cb-4825-8627-c1bdc639ce6f"],
 ","
}], "DetailNotes",
 CellID->369175588,ExpressionUUID->"ef5fdac6-53fe-48c6-92b3-d014dde074dc"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", "5"], "+", 
      RowBox[{
       SubscriptBox["F", "7"], " ", "cos", " ", "\[Theta]"}], "+", 
      SubscriptBox["F", "3"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"dc91190e-08cb-4f11-b38d-b6a59b67ceb3"],
 "."
}], "DetailNotes",
 CellID->177383643,ExpressionUUID->"16aaf129-0d58-4b57-a2d1-72a54c4c3e06"],

Cell["", "DetailNotes",
 CellID->17935660,ExpressionUUID->"b73a5efa-37fe-48f2-9495-733e84ccfa91"],

Cell["Cut 3: to the right of the 3rd joint", "DetailNotes",
 CellID->142920955,ExpressionUUID->"357bf269-0eb4-4daa-a6a7-2b1890e0d6cc"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "12"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "5f431283-f915-4ec9-999f-c9084344dd0e"],
 ","
}], "DetailNotes",
 CellID->244744181,ExpressionUUID->"00adaa17-03e9-49b0-9898-64ce73ad6b4e"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["M", "2"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{"2", " ", "w", " ", 
       SubscriptBox["R", 
        StyleBox["A",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"w", " ", 
       SubscriptBox["F", "8"]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"37c68404-6411-4b68-b21f-dd130db712c0"],
 ","
}], "DetailNotes",
 CellID->47869750,ExpressionUUID->"4dc9845e-22f2-41a9-be83-744f18675fe3"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", "8"], "+", 
      RowBox[{
       SubscriptBox["F", "12"], " ", "cos", " ", "\[Theta]"}], "+", 
      SubscriptBox["F", "4"]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"cd59567e-ff7a-4356-af40-071866c1f9e8"],
 "."
}], "DetailNotes",
 CellID->8092636,ExpressionUUID->"8ff4aedd-7ff3-470f-a06a-2aac980a80be"],

Cell["", "DetailNotes",
 CellID->375138388,ExpressionUUID->"ecca61e6-9702-49a6-829a-51e7d00a6443"],

Cell["Cut 4: to the right of the 4th joint", "DetailNotes",
 CellID->156696085,ExpressionUUID->"90dc883e-650e-4def-9623-c4e417545837"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "10"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "924400b1-be8a-44a8-9908-a8f8c2e54074"],
 ","
}], "DetailNotes",
 CellID->27483982,ExpressionUUID->"187403d8-5054-45f4-9d0f-bdbce7e15a3f"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["M", "7"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{"3", " ", "w", " ", 
       SubscriptBox["R", 
        StyleBox["A",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"w", " ", 
       SubscriptBox["F", "11"]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"79f68437-e0be-4224-aea3-1c92430acf4a"],
 ","
}], "DetailNotes",
 CellID->41858311,ExpressionUUID->"3b928745-9bf7-46c0-b8bc-8786e3fd8535"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", "11"], "+", 
      SubscriptBox["F", "13"], "+", 
      RowBox[{
       SubscriptBox["F", "10"], " ", "cos", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "19dbf081-65a5-4d04-989e-f088db82d7b8"],
 "."
}], "DetailNotes",
 CellID->220225889,ExpressionUUID->"99be3334-086c-4c7d-a137-65bf0a20364e"],

Cell["", "DetailNotes",
 CellID->363311,ExpressionUUID->"4c42b645-d22d-49ac-81e6-660c1e926030"],

Cell["Cut 5: to the right of the 5th joint", "DetailNotes",
 CellID->58047565,ExpressionUUID->"a713bd39-cd93-40d9-922c-ae3f4159f662"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["F", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "16"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "08255aa3-dfe6-4eae-905a-5134ffde85d7"],
 ","
}], "DetailNotes",
 CellID->470452529,ExpressionUUID->"557f36d5-da2d-4963-a781-a87a52ccb7c7"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["M", "6"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      RowBox[{"w", " ", 
       SubscriptBox["F", "15"]}], "+", 
      RowBox[{"w", " ", 
       SubscriptBox["F", 
        StyleBox["A",
         FontSlant->"Plain"]]}], "+", 
      RowBox[{"4", " ", "w", " ", 
       SubscriptBox["R", 
        StyleBox["A",
         FontSlant->"Plain"]]}]}]}]}], TraditionalForm]], "InlineMath",
  ExpressionUUID->"a05d8fdf-2ac9-4fdf-aa0b-8b0dc1193386"],
 ","
}], "DetailNotes",
 CellID->489376926,ExpressionUUID->"1aa3e9bc-53f2-4c13-a989-0549712301c3"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", "15"], "+", 
      SubscriptBox["F", "17"], "+", 
      RowBox[{
       SubscriptBox["F", "16"], " ", "cos", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "55ff4b80-0073-46a1-98c2-faa98523c717"],
 "."
}], "DetailNotes",
 CellID->311436057,ExpressionUUID->"b7dd36a3-124a-424f-af68-ae8ff913f649"],

Cell["", "DetailNotes",
 CellID->333353333,ExpressionUUID->"affb7879-f4f2-444b-b436-0f21b69c5d67"],

Cell["Cut 6: to the right of the 6th joint", "DetailNotes",
 CellID->50228056,ExpressionUUID->"3bcf643e-026a-4c90-b77f-691cce770a1a"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "y"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["R", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["F", 
       StyleBox["A",
        FontSlant->"Plain"]], "+", 
      SubscriptBox["F", 
       StyleBox["B",
        FontSlant->"Plain"]], "+", 
      RowBox[{
       SubscriptBox["F", "19"], " ", "sin", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "0ad89587-4225-4b37-9ca8-cfe097b1fb3c"],
 ","
}], "DetailNotes",
 CellID->250733094,ExpressionUUID->"13392be7-292d-4112-b578-06f8ed5c0141"],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     SubscriptBox["F", "x"]}], "=", 
    RowBox[{"0", "=", 
     RowBox[{
      SubscriptBox["F", "20"], "+", 
      RowBox[{
       SubscriptBox["F", "19"], " ", "cos", " ", "\[Theta]"}]}]}]}], 
   TraditionalForm]], "InlineMath",ExpressionUUID->
  "d3f0b0cc-6ae4-4276-b074-793e226f333f"],
 "."
}], "DetailNotes",
 CellID->150779260,ExpressionUUID->"a1f8bbd6-8f9c-429f-a538-187579e5e4e0"],

Cell["", "DetailNotes",
 CellID->20277758,ExpressionUUID->"79dfd54f-6f45-4ddf-9832-11c4a294ec58"],

Cell["\<\
Note that all the vertical members are zero members, which means they are \
neither under tension nor compression (force = 0 kN).\
\>", "DetailNotes",
 CellID->176239395,ExpressionUUID->"63051826-bc28-4671-bf0d-d222ddb88e51"],

Cell["Reference", "DetailNotes",
 CellID->70823301,ExpressionUUID->"dff0396b-76ef-4c00-b23b-3d8d1c9d2f5d"],

Cell[TextData[{
 "[1] ",
 StyleBox["Tutorial to Solve Truss by Method of Sections",
  FontSlant->"Italic"],
 ", SkyCiv Cloud Engineering Software ",
 ButtonBox["skyciv.com/tutorials/tutorial-to-solve-truss-by-method-of-\
sections",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://skyciv.com/tutorials/tutorial-to-solve-truss-by-method-of-\
sections/"], None},
  ButtonNote->
   "https://skyciv.com/tutorials/tutorial-to-solve-truss-by-method-of-\
sections/"],
 "."
}], "DetailNotes",
 CellID->897204029,ExpressionUUID->"7c693bca-04d8-48ac-a08e-1810473e8cb7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"d6555af1-a49a-4dd0-9100-7e374f37b522"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Resize Images",ExpressionUUID->"bb3e8555-68e3-4e77-994a-8433766bc318"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"29718fb5-bc33-423a-b268-3f8f5ac97b32"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "e4ce1aa5-e625-4751-a066-45fd4aa346c0"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"b0b05bb2-e9ff-4ebb-b69f-d1cc6a0d6e96"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"1dc6ed3a-c4be-4bf4-937f-a763ca8e72b8"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"547c2912-bc89-495a-92b4-cfb21b3a606b"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "413f468b-b4a4-4e6c-980d-1924857f4fc2"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"c5b50dad-44c8-4db2-9965-\
532282dfad67"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Slider Zoom",ExpressionUUID->"07138809-0635-403f-819a-71424fba035a"]}],
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
  "SliderZoom",ExpressionUUID->"34d26703-615b-4a90-a8e0-7203d0f6cd15"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Gamepad Controls",ExpressionUUID->
    "91c127fa-fff4-4e8c-9727-bb5087b5da52"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"cf9f96b7-bcf5-4a9d-a3db-ad04f2f14fb9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Automatic Animation",ExpressionUUID->
    "072ec5fc-6bf5-48e1-979a-46781b6960f4"]}],
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
  "AutomaticAnimation",ExpressionUUID->"585317a6-d4bd-4cf3-837e-3cdb315b268c"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "f15b7002-bdfc-4109-a572-74677e0e18c5"]}],
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
  "BookmarkAnimation",ExpressionUUID->"674a1a66-d254-444c-9b37-8265dbdf7a22"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SearchTermsSection",ExpressionUUID->"7ca63c4a-ae7a-429c-b77f-d9d1e8a68eb0"],

Cell["mechanical engineering", "SearchTerms",
 CellID->56801956,ExpressionUUID->"af398e4a-e138-4e8c-9a68-0118a52a3ff1"],

Cell["civil engineering", "SearchTerms",
 CellID->659146677,ExpressionUUID->"08858d7b-2ec0-463f-bb81-6473c0d2bb01"],

Cell["method of sections", "SearchTerms",
 CellID->118184043,ExpressionUUID->"053dc1a0-c5ff-4ffe-b59f-7d020dd4236d"],

Cell["tension force", "SearchTerms",
 CellID->302180878,ExpressionUUID->"7571fdcb-34b0-4154-8f00-baa88c11f2e2"],

Cell["compression force", "SearchTerms",
 CellID->369414330,ExpressionUUID->"7047f8a2-7e7f-4b9a-b192-d13673ccf2dd"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"a438c9c2-6fd6-4efd-8abd-b2da23e9369a"],

Cell[TextData[ButtonBox["Cremona Diagram for Truss Analysis",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/CremonaDiagramForTrussAnalysis/"], 
   None},
 ButtonNote->
  "http://demonstrations.wolfram.com/CremonaDiagramForTrussAnalysis/"]], \
"RelatedLinks",
 CellID->565555422,ExpressionUUID->"3a71d136-c93d-46f3-9e7f-191f7a954d18"],

Cell[TextData[ButtonBox["Analysis of Forces on a Truss",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/AnalysisOfForcesOnATruss/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/AnalysisOfForcesOnATruss/"]], \
"RelatedLinks",
 CellID->562217257,ExpressionUUID->"9eb4ac2e-be45-424c-9022-8092c873b63b"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"0f23c384-0a8b-426c-9327-074e6bc70b36"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["Rachael L. Baumann",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=Rachael%20L.%\
20Baumann"]
}], "Author",
 CellID->52184429,ExpressionUUID->"2dabaeba-5ca3-4dcd-9873-a4fbf0ea8e42"],

Cell[TextData[{
 "Additional contributions by: ",
 ButtonBox["John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John%20L.%\
20Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John%20L.%20Falconer"]
}], "Author",
 CellID->373235529,ExpressionUUID->"ae53e41e-bbeb-4a97-bf11-a00aaa2b65c5"],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->77347031,ExpressionUUID->"449fc057-abcd-4b0c-83e2-ec03bf75a0c0"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.1 for Microsoft Windows (64-bit) (March 13, 2017)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[170797, 4073, 428, 10, 
  22, "ControlSuggestions", "ExpressionUUID" -> "29718fb5-bc33-423a-
   b268-3f8f5ac97b32",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[171228, 4085, 800, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "b0b05bb2-e9ff-4ebb-b69f-
   d1cc6a0d6e96",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[172031, 4106, 457, 13, 
  22, "ControlSuggestions", "ExpressionUUID" -> "547c2912-bc89-495a-92b4-
   cfb21b3a606b",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[172491, 4121, 761, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "
   c5b50dad-44c8-4db2-9965-532282dfad67",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[173255, 4142, 960, 23, 
  22, "ControlSuggestions", "ExpressionUUID" -> "34d26703-615b-4a90-
   a8e0-7203d0f6cd15",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[174218, 4167, 425, 11, 
  22, "ControlSuggestions", "ExpressionUUID" -> "cf9f96b7-bcf5-4a9d-a3db-
   ad04f2f14fb9",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[174646, 4180, 1585, 34, 
  22, "ControlSuggestions", "ExpressionUUID" -> "585317a6-
   d4bd-4cf3-837e-3cdb315b268c",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[176234, 4216, 1030, 24, 
  22, "ControlSuggestions", "ExpressionUUID" -> "674a1a66-
   d254-444c-9b37-8265dbdf7a22",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 180419, 4339},
 {"RotateAndZoomIn3D", 180597, 4344},
 {"DragLocators", 180775, 4349},
 {"CreateAndDeleteLocators", 180959, 4354},
 {"SliderZoom", 181141, 4359},
 {"GamepadControls", 181315, 4364},
 {"AutomaticAnimation", 181497, 4369},
 {"BookmarkAnimation", 181682, 4374}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 100, 0, 74, "DemoTitle", "ExpressionUUID" -> \
"4781eb1b-a4fd-4a74-81ff-784d7851e1fd"],
Cell[CellGroupData[{
Cell[1611, 39, 88, 0, 275, "InitializationSection", "ExpressionUUID" -> \
"dc9d9e34-f438-4d6a-9ba0-d121fa666046"],
Cell[1702, 41, 736, 20, 29, "Input", "ExpressionUUID" -> \
"bcbadae5-74c2-4e1d-82f6-56499c143966",
 InitializationCell->True,
 CellID->274336155],
Cell[2441, 63, 346, 10, 33, "Input", "ExpressionUUID" -> \
"1e22a5d7-3dd5-40ad-87f2-62f1a3d97844",
 InitializationCell->True,
 CellID->183942759]
}, Closed]],
Cell[CellGroupData[{
Cell[2824, 78, 84, 0, 189, "ManipulateSection", "ExpressionUUID" -> \
"4f837ca0-1b8d-4b14-8b26-55185663f055"],
Cell[CellGroupData[{
Cell[2933, 82, 107556, 2578, 2636, "Input", "ExpressionUUID" -> \
"52d1462d-ce35-4919-ba63-69c729a3a05d"],
Cell[110492, 2662, 39792, 751, 491, "Output", "ExpressionUUID" -> \
"7fcb76e1-cfb7-4e18-ad1e-f365b78fb201",
 CellID->124416301]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[150330, 3419, 91, 0, 169, "ManipulateCaptionSection", "ExpressionUUID" \
-> "44d46097-9e2c-4021-a21e-2db168a6b162"],
Cell[150424, 3421, 894, 14, 68, "ManipulateCaption", "ExpressionUUID" -> \
"cd5fe007-9bbd-4ee3-8ab7-9221e3f9dca5",
 CellID->22287087],
Cell[151321, 3437, 935, 22, 38, "ManipulateCaption", "ExpressionUUID" -> \
"2bb71435-9719-4c69-ae09-c887d2bf1a8d",
 CellID->73189582]
}, Open  ]],
Cell[CellGroupData[{
Cell[152293, 3464, 83, 0, 172, "ThumbnailSection", "ExpressionUUID" -> \
"e3e4ec58-2529-489f-851d-c4cc4b007c8e"],
Cell[152379, 3466, 1364, 35, 230, "Output", "ExpressionUUID" -> \
"08cb0015-ad20-4b4c-a000-af8e65fd6650"]
}, Open  ]],
Cell[CellGroupData[{
Cell[153780, 3506, 83, 0, 142, "SnapshotsSection", "ExpressionUUID" -> \
"56b44de8-e951-473d-8214-3bd84425d6ba"],
Cell[153866, 3508, 1363, 35, 230, "Output", "ExpressionUUID" -> \
"d24e7c92-0c2d-441d-9b35-6fec41ab6e5d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[155266, 3548, 81, 0, 335, "DetailsSection", "ExpressionUUID" -> \
"ef01af6b-9f32-4074-9f62-123be2ba4d3f"],
Cell[155350, 3550, 355, 6, 37, "DetailNotes", "ExpressionUUID" -> \
"1fea3750-83a0-41fd-9452-0caac5666090",
 CellID->52889288],
Cell[155708, 3558, 751, 25, 23, "DetailNotes", "ExpressionUUID" -> \
"45344e56-3c0b-49b2-ac1d-bad1b7cd75fc",
 CellID->447499211],
Cell[156462, 3585, 1579, 50, 23, "DetailNotes", "ExpressionUUID" -> \
"88e6c5be-25ef-4873-940f-8b616cc73d06",
 CellID->255008801],
Cell[158044, 3637, 489, 14, 23, "DetailNotes", "ExpressionUUID" -> \
"8600cb04-75c4-4d83-bb69-689e6884e550",
 CellID->261731386],
Cell[158536, 3653, 669, 23, 26, "DetailNotes", "ExpressionUUID" -> \
"37dacbe1-4c8e-4523-942e-ac0fae22abf6",
 CellID->336419373],
Cell[159208, 3678, 188, 4, 22, "DetailNotes", "ExpressionUUID" -> \
"0cc488af-d443-4216-b866-7cd6d69d9a4d",
 CellID->53102297],
Cell[159399, 3684, 97, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"f0a84846-65b4-4709-8302-067729d7619e",
 CellID->89214574],
Cell[159499, 3687, 391, 10, 23, "DetailNotes", "ExpressionUUID" -> \
"38560ac7-465e-492d-9106-07df7058363a",
 CellID->329653194],
Cell[159893, 3699, 510, 17, 26, "DetailNotes", "ExpressionUUID" -> \
"518254a4-f56a-4165-aeb9-91bcdb6bf847",
 CellID->666629222],
Cell[160406, 3718, 460, 14, 23, "DetailNotes", "ExpressionUUID" -> \
"8128feb0-0371-4d9d-a982-2af78c5f5ad4",
 CellID->171969501],
Cell[160869, 3734, 98, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"c05acbb6-21f9-4ff3-a73b-82c39cc3a2e7",
 CellID->534693733],
Cell[160970, 3737, 134, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"e3261357-afe2-4b93-8455-d9e035c470f5",
 CellID->226544748],
Cell[161107, 3740, 510, 17, 26, "DetailNotes", "ExpressionUUID" -> \
"536f7fca-cd67-4aff-8d79-86c507c01eb3",
 CellID->227654796],
Cell[161620, 3759, 517, 17, 23, "DetailNotes", "ExpressionUUID" -> \
"ef5fdac6-53fe-48c6-92b3-d014dde074dc",
 CellID->369175588],
Cell[162140, 3778, 496, 15, 23, "DetailNotes", "ExpressionUUID" -> \
"16aaf129-0d58-4b57-a2d1-72a54c4c3e06",
 CellID->177383643],
Cell[162639, 3795, 97, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"b73a5efa-37fe-48f2-9495-733e84ccfa91",
 CellID->17935660],
Cell[162739, 3798, 134, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"357bf269-0eb4-4daa-a6a7-2b1890e0d6cc",
 CellID->142920955],
Cell[162876, 3801, 511, 17, 26, "DetailNotes", "ExpressionUUID" -> \
"00adaa17-03e9-49b0-9898-64ce73ad6b4e",
 CellID->244744181],
Cell[163390, 3820, 526, 17, 23, "DetailNotes", "ExpressionUUID" -> \
"4dc9845e-22f2-41a9-be83-744f18675fe3",
 CellID->47869750],
Cell[163919, 3839, 495, 15, 23, "DetailNotes", "ExpressionUUID" -> \
"8ff4aedd-7ff3-470f-a06a-2aac980a80be",
 CellID->8092636],
Cell[164417, 3856, 98, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"ecca61e6-9702-49a6-829a-51e7d00a6443",
 CellID->375138388],
Cell[164518, 3859, 134, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"90dc883e-650e-4def-9623-c4e417545837",
 CellID->156696085],
Cell[164655, 3862, 592, 20, 26, "DetailNotes", "ExpressionUUID" -> \
"187403d8-5054-45f4-9d0f-bdbce7e15a3f",
 CellID->27483982],
Cell[165250, 3884, 527, 17, 23, "DetailNotes", "ExpressionUUID" -> \
"3b928745-9bf7-46c0-b8bc-8786e3fd8535",
 CellID->41858311],
Cell[165780, 3903, 503, 16, 23, "DetailNotes", "ExpressionUUID" -> \
"99be3334-086c-4c7d-a137-65bf0a20364e",
 CellID->220225889],
Cell[166286, 3921, 95, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"4c42b645-d22d-49ac-81e6-660c1e926030",
 CellID->363311],
Cell[166384, 3924, 133, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"a713bd39-cd93-40d9-922c-ae3f4159f662",
 CellID->58047565],
Cell[166520, 3927, 593, 20, 26, "DetailNotes", "ExpressionUUID" -> \
"557f36d5-da2d-4963-a781-a87a52ccb7c7",
 CellID->470452529],
Cell[167116, 3949, 640, 21, 23, "DetailNotes", "ExpressionUUID" -> \
"1aa3e9bc-53f2-4c13-a989-0549712301c3",
 CellID->489376926],
Cell[167759, 3972, 503, 16, 23, "DetailNotes", "ExpressionUUID" -> \
"b7dd36a3-124a-424f-af68-ae8ff913f649",
 CellID->311436057],
Cell[168265, 3990, 98, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"affb7879-f4f2-444b-b436-0f21b69c5d67",
 CellID->333353333],
Cell[168366, 3993, 133, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"3bcf643e-026a-4c90-b77f-691cce770a1a",
 CellID->50228056],
Cell[168502, 3996, 675, 23, 26, "DetailNotes", "ExpressionUUID" -> \
"13392be7-292d-4112-b578-06f8ed5c0141",
 CellID->250733094],
Cell[169180, 4021, 466, 15, 23, "DetailNotes", "ExpressionUUID" -> \
"a1f8bbd6-8f9c-429f-a538-187579e5e4e0",
 CellID->150779260],
Cell[169649, 4038, 97, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"79dfd54f-6f45-4ddf-9832-11c4a294ec58",
 CellID->20277758],
Cell[169749, 4041, 235, 4, 22, "DetailNotes", "ExpressionUUID" -> \
"63051826-bc28-4671-bf0d-d222ddb88e51",
 CellID->176239395],
Cell[169987, 4047, 106, 1, 22, "DetailNotes", "ExpressionUUID" -> \
"dff0396b-76ef-4c00-b23b-3d8d1c9d2f5d",
 CellID->70823301],
Cell[170096, 4050, 569, 16, 22, "DetailNotes", "ExpressionUUID" -> \
"7c693bca-04d8-48ac-a08e-1810473e8cb7",
 CellID->897204029]
}, Open  ]],
Cell[CellGroupData[{
Cell[170702, 4071, 92, 0, 126, "ControlSuggestionsSection", "ExpressionUUID" \
-> "d6555af1-a49a-4dd0-9100-7e374f37b522"],
Cell[170797, 4073, 428, 10, 22, "ControlSuggestions", "ExpressionUUID" -> \
"29718fb5-bc33-423a-b268-3f8f5ac97b32",
 CellTags->"ResizeImages"],
Cell[171228, 4085, 800, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"b0b05bb2-e9ff-4ebb-b69f-d1cc6a0d6e96",
 CellTags->"RotateAndZoomIn3D"],
Cell[172031, 4106, 457, 13, 22, "ControlSuggestions", "ExpressionUUID" -> \
"547c2912-bc89-495a-92b4-cfb21b3a606b",
 CellTags->"DragLocators"],
Cell[172491, 4121, 761, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"c5b50dad-44c8-4db2-9965-532282dfad67",
 CellTags->"CreateAndDeleteLocators"],
Cell[173255, 4142, 960, 23, 22, "ControlSuggestions", "ExpressionUUID" -> \
"34d26703-615b-4a90-a8e0-7203d0f6cd15",
 CellTags->"SliderZoom"],
Cell[174218, 4167, 425, 11, 22, "ControlSuggestions", "ExpressionUUID" -> \
"cf9f96b7-bcf5-4a9d-a3db-ad04f2f14fb9",
 CellTags->"GamepadControls"],
Cell[174646, 4180, 1585, 34, 22, "ControlSuggestions", "ExpressionUUID" -> \
"585317a6-d4bd-4cf3-837e-3cdb315b268c",
 CellTags->"AutomaticAnimation"],
Cell[176234, 4216, 1030, 24, 22, "ControlSuggestions", "ExpressionUUID" -> \
"674a1a66-d254-444c-9b37-8265dbdf7a22",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[177301, 4245, 85, 0, 155, "SearchTermsSection", "ExpressionUUID" -> \
"7ca63c4a-ae7a-429c-b77f-d9d1e8a68eb0"],
Cell[177389, 4247, 119, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"af398e4a-e138-4e8c-9a68-0118a52a3ff1",
 CellID->56801956],
Cell[177511, 4250, 115, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"08858d7b-2ec0-463f-bb81-6473c0d2bb01",
 CellID->659146677],
Cell[177629, 4253, 116, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"053dc1a0-c5ff-4ffe-b59f-7d020dd4236d",
 CellID->118184043],
Cell[177748, 4256, 111, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"7571fdcb-34b0-4154-8f00-baa88c11f2e2",
 CellID->302180878],
Cell[177862, 4259, 115, 1, 22, "SearchTerms", "ExpressionUUID" -> \
"7047f8a2-7e7f-4b9a-b192-d13673ccf2dd",
 CellID->369414330]
}, Open  ]],
Cell[CellGroupData[{
Cell[178014, 4265, 86, 0, 141, "RelatedLinksSection", "ExpressionUUID" -> \
"a438c9c2-6fd6-4efd-8abd-b2da23e9369a"],
Cell[178103, 4267, 369, 8, 22, "RelatedLinks", "ExpressionUUID" -> \
"3a71d136-c93d-46f3-9e7f-191f7a954d18",
 CellID->565555422],
Cell[178475, 4277, 348, 7, 22, "RelatedLinks", "ExpressionUUID" -> \
"9eb4ac2e-be45-424c-9022-8092c873b63b",
 CellID->562217257]
}, Open  ]],
Cell[CellGroupData[{
Cell[178860, 4289, 80, 0, 141, "AuthorSection", "ExpressionUUID" -> \
"0f23c384-0a8b-426c-9327-074e6bc70b36"],
Cell[178943, 4291, 395, 11, 22, "Author", "ExpressionUUID" -> \
"2dabaeba-5ca3-4dcd-9873-a4fbf0ea8e42",
 CellID->52184429],
Cell[179341, 4304, 401, 10, 22, "Author", "ExpressionUUID" -> \
"ae53e41e-bbeb-4a97-bf11-a00aaa2b65c5",
 CellID->373235529],
Cell[179745, 4316, 185, 4, 22, "Author", "ExpressionUUID" -> \
"449fc057-abcd-4b0c-83e2-ec03bf75a0c0",
 CellID->77347031]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xuDWaautQ3AjMBwpyzSYN5AP *)
