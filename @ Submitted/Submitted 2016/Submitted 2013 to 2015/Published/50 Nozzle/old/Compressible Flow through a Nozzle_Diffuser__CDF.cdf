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
NotebookDataLength[     67192,       1859]
NotebookOptionsPosition[     62894,       1711]
NotebookOutlinePosition[     64637,       1766]
CellTagsIndexPosition[     64309,       1754]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Compressible Flow through a Nozzle/Diffuser", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"diagram", "[", 
    RowBox[{
    "\[Delta]1_", ",", "\[Delta]2_", ",", "\[Upsilon]1_", ",", "\[Upsilon]2_",
      ",", "\[Tau]1_", ",", "\[Tau]2_", ",", "\[CapitalPi]1_", ",", 
     "\[CapitalPi]2_"}], "]"}], ":=", 
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
                RowBox[{"-", "\[Delta]1"}], "/", "2"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", "0", ",", 
               RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], ",", 
         RowBox[{"Tube", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"10", ",", "0", ",", 
               RowBox[{
                RowBox[{"-", "\[Delta]2"}], "/", "2"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"12", ",", "0", ",", 
               RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], ",", 
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
            RowBox[{"\[Delta]1", "/", "2"}]}]}], "]"}], ",", 
         RowBox[{"Cylinder", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"10", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"14", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
           RowBox[{"100", "*", 
            RowBox[{"\[Delta]2", "/", "2"}]}]}], "]"}], ",", 
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
              RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
             RowBox[{"100", "*", 
              RowBox[{"\[Delta]2", "/", "2"}]}]}], "}"}]}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", 
         RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{"-", "0.75"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", "\[Delta]1", "*", "0.45"}]}], 
             "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]1", "/", "2"}]}], ",", 
              RowBox[{"100", "*", "\[Delta]1", "*", "0.45"}]}], "}"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{"-", "0.75"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", "\[Delta]2", "*", "0.45"}]}], 
             "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", "0.75"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "100"}], "*", 
               RowBox[{"\[Delta]2", "/", "2"}]}], ",", 
              RowBox[{"100", "*", "\[Delta]2", "*", "0.45"}]}], "}"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
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
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\[Delta]1", ",", "\"\< m\>\""}], "}"}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"2", ",", 
           RowBox[{
            RowBox[{"-", "100"}], "*", 
            RowBox[{"\[Delta]1", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], 
       ",", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\[Delta]2", ",", "\"\< m\>\""}], "}"}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"12", ",", 
           RowBox[{
            RowBox[{"-", "100"}], "*", 
            RowBox[{"\[Delta]2", "/", "2"}]}], ",", "0"}], "}"}]}], "]"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Text", "[", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[Upsilon]1", ",", 
                  "\"\<. m/s\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[Tau]1", ",", 
                  "\"\<. K\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{"\[CapitalPi]1", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< kPa\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]", 
              "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
           "18"}], "]"}], ",", 
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
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{
                    RowBox[{"\[Upsilon]2", "[", "\[Delta]2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< m/s\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", 
                  RowBox[{"NumberForm", "[", 
                   RowBox[{
                    RowBox[{"\[Tau]2", "[", "\[Delta]2", "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                  "\"\< K\>\""}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<P\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                   "]"}], ",", "\"\< = \>\"", ",", "\[CapitalPi]2", ",", 
                  "\"\< kPa\>\""}], "}"}], "]"}]}], "\[IndentingNewLine]", 
              "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
           "18"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"18", ",", "0", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.25"}], ",", "0"}], "}"}]}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], ",", 
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
         RowBox[{"95", ",", "95"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"5", ",", "5"}], "}"}]}], "}"}]}]}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->202999112],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"labels", "[", 
    RowBox[{
    "\[Delta]1_", ",", "\[Delta]2_", ",", "f_", ",", "f1_", ",", "f2_", ",", 
     "if2_", ",", "unit_", ",", "y1_", ",", "y2_"}], "]"}], ":=", 
   RowBox[{"Graphics", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Subscript", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"f", ",", "Italic"}], "]"}], ",", "1"}], "]"}], ",", 
          "17", ",", 
          RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.1", ",", "f1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1.75"}], ",", "0"}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"PointSize", "[", "0.017", "]"}], ",", 
      RowBox[{"Point", "@", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Delta]2", ",", 
           RowBox[{"f2", "[", "\[Delta]2", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Delta]2", ",", 
           RowBox[{"if2", "[", "\[Delta]2", "]"}]}], "}"}]}], "}"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"GrayLevel", "[", "0.2", "]"}], ",", "Thick", ",", "Dotted", 
        ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "f1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.1", ",", "f1"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Column", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<compressible = \>\"", ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{
                   RowBox[{"f2", "[", "\[Delta]2", "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", "\"\< \>\"",
                  ",", "unit"}], "}"}], "]"}], ",", "17", ",", "Blue"}], 
             "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<incompressible = \>\"", ",", 
                 RowBox[{"NumberForm", "[", 
                  RowBox[{
                   RowBox[{"if2", "[", "\[Delta]2", "]"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"4", ",", "1"}], "}"}]}], "]"}], ",", "\"\< \>\"",
                  ",", "unit"}], "}"}], "]"}], ",", "17", ",", 
              RowBox[{"RGBColor", "[", 
               RowBox[{"0.", ",", "0.6", ",", "0"}], "]"}]}], "]"}]}], 
           "\[IndentingNewLine]", "}"}], ",", 
          RowBox[{"Alignment", "\[Rule]", "\"\<=\>\""}]}], "]"}], ",", 
        RowBox[{"Scaled", "[", 
         RowBox[{"{", 
          RowBox[{"0.8", ",", "0.6"}], "}"}], "]"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"GrayLevel", "[", "0.2", "]"}], ",", "Thick", ",", "Dotted", 
        ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\[Delta]1", ",", "y1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Delta]1", ",", "y2"}], "}"}]}], "}"}], "]"}], ",", 
        RowBox[{"Arrowheads", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"#", "*", "0.025"}], "&"}], "/@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], ",", 
        RowBox[{"Arrow", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"\[Delta]1", "+", 
              RowBox[{"#", "*", "0.01"}]}], ",", "y1"}], "}"}], "&"}], "/@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Framed", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<d\>\"", ",", "Italic"}], "]"}], ",", "1"}], "]"}],
             ",", "17", ",", 
            RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
          RowBox[{"Background", "\[Rule]", "White"}], ",", 
          RowBox[{"FrameStyle", "\[Rule]", "None"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[Delta]1", ",", "y1"}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{"\"\<nozzle\>\"", ",", "17", ",", 
          RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Delta]1", "-", "0.01"}], ",", "y1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1.3", ",", "0"}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{"\"\<diffuser\>\"", ",", "17", ",", 
          RowBox[{"GrayLevel", "@", "0.4"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Delta]1", "+", "0.01"}], ",", "y1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1.3"}], ",", "0"}], "}"}]}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->2130786]
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
      "Cp", ",", "\[Gamma]", ",", "d1", ",", "T1", ",", "P2", ",", "sol", ",",
        "P1", ",", "u2", ",", "T2", ",", "iu2", ",", "iT2"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Cp", "=", "1000"}], ";", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"J", "/", "kg"}], "/", "K"}], "*)"}], 
      RowBox[{"\[Gamma]", "=", "1.4"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"d1", "=", "0.06"}], ";", "\[IndentingNewLine]", 
      RowBox[{"T1", "=", "400"}], ";", 
      RowBox[{"(*", "K", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"P2", "=", "100"}], ";", 
      RowBox[{"(*", "kPa", "*)"}], "\[IndentingNewLine]", 
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
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"Switch", "[", 
         RowBox[{"drown", ",", "\[IndentingNewLine]", "1", ",", 
          RowBox[{"Show", "[", 
           RowBox[{
            RowBox[{"diagram", "[", 
             RowBox[{
             "d1", ",", "d2", ",", "u1", ",", "u2", ",", "T1", ",", "T2", ",",
               "P1", ",", "P2"}], "]"}], ",", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Which", "[", 
                RowBox[{
                 RowBox[{"d2", "<", "d1"}], ",", "\"\<nozzle\>\"", ",", 
                 RowBox[{"d2", "\[Equal]", "d1"}], ",", 
                 "\"\<straight tube\>\"", ",", 
                 RowBox[{"d2", ">", "d1"}], ",", "\"\<diffuser\>\""}], "]"}], 
               ",", "18", ",", "Black"}], "]"}]}]}], "]"}], ",", 
          "\[IndentingNewLine]", "2", ",", 
          RowBox[{"Show", "[", 
           RowBox[{
            RowBox[{"Switch", "[", 
             RowBox[{"bn", ",", "\[IndentingNewLine]", "1", ",", 
              RowBox[{"Show", "[", 
               RowBox[{
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
                    RowBox[{"0.", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
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
                    RowBox[{"3", ",", "295"}], "}"}]}]}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"labels", "[", 
                 RowBox[{
                 "d1", ",", "d2", ",", "\"\<u\>\"", ",", "u1", ",", "u2", ",",
                   "iu2", ",", "\"\<m/s\>\"", ",", "305", ",", 
                  RowBox[{"-", "10"}]}], "]"}]}], "]"}], ",", 
              "\[IndentingNewLine]", "2", ",", 
              RowBox[{"Show", "[", 
               RowBox[{
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
                    RowBox[{"0.", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], 
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
                    RowBox[{"361", ",", "405"}], "}"}]}]}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"labels", "[", 
                 RowBox[{
                 "d1", ",", "d2", ",", "\"\<T\>\"", ",", "T1", ",", "T2", ",",
                   "iT2", ",", "\"\<K\>\"", ",", "362", ",", "415"}], "]"}]}],
                "]"}]}], "\[IndentingNewLine]", "]"}], ",", 
            RowBox[{"Frame", "\[Rule]", "True"}], ",", 
            RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"14", ",", "Black"}], "}"}]}], ",", 
            RowBox[{"PlotRangePadding", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Scaled", "[", "0.02", "]"}], ",", 
                 RowBox[{"Scaled", "[", "0.055", "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Scaled", "[", "0.05", "]"}], ",", 
                 RowBox[{"Scaled", "[", "0.1", "]"}]}], "}"}]}], "}"}]}]}], 
           "]"}]}], "\[IndentingNewLine]", "]"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "300"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}]}], "]"}]}]}], 
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
           RowBox[{"Dynamic", "@", "drown"}]}], "]"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"u1", ",", "100", ",", 
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<inlet velocity \>\"", ",", 
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<u\>\"", ",", "Italic"}], "]"}], ",", "1"}], 
                  "]"}], ",", "\"\< (m/s)\>\""}], "}"}], "]"}]}], "}"}], ",", 
            "10", ",", "100", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"d2", ",", "0.04", ",", 
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<outlet diameter \>\"", ",", 
                 RowBox[{"Subscript", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"\"\<d\>\"", ",", "Italic"}], "]"}], ",", "2"}], 
                  "]"}], ",", "\"\< (m)\>\""}], "}"}], "]"}]}], "}"}], ",", 
            "0.04", ",", "0.10", ",", "0.001", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
          "]"}], ",", "SpanFromLeft"}], "}"}]}], "\[IndentingNewLine]", "}"}],
      ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`bn$$ = 2, $CellContext`d2$$ = 
    0.1, $CellContext`drown$$ = 2, $CellContext`u1$$ = 100, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`drown$$], 1, ""}, {
      1 -> " diagram ", 2 -> " plots "}}, {{
       Hold[$CellContext`bn$$], 1, ""}, {
      1 -> " velocity ", 2 -> " temperature "}}, {{
       Hold[$CellContext`u1$$], 100, 
       Row[{"inlet velocity ", 
         Subscript[
          Style["u", Italic], 1], " (m/s)"}]}, 10, 100, 1}, {{
       Hold[$CellContext`d2$$], 0.04, 
       Row[{"outlet diameter ", 
         Subscript[
          Style["d", Italic], 2], " (m)"}]}, 0.04, 0.1, 0.001}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          PaneSelector[{2 -> Manipulate`Place[2]}, 
           Dynamic[$CellContext`drown$$]]}, {
          Manipulate`Place[3], SpanFromLeft}, {
          Manipulate`Place[4], SpanFromLeft}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {148., 152.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`drown$1827$$ = 
    False, $CellContext`bn$1828$$ = False, $CellContext`u1$1829$$ = 
    0, $CellContext`d2$1830$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`bn$$ = 1, $CellContext`d2$$ = 
        0.04, $CellContext`drown$$ = 1, $CellContext`u1$$ = 100}, 
      "ControllerVariables" :> {
        Hold[$CellContext`drown$$, $CellContext`drown$1827$$, False], 
        Hold[$CellContext`bn$$, $CellContext`bn$1828$$, False], 
        Hold[$CellContext`u1$$, $CellContext`u1$1829$$, 0], 
        Hold[$CellContext`d2$$, $CellContext`d2$1830$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Cp$, $CellContext`\[Gamma]$, $CellContext`d1$, \
$CellContext`T1$, $CellContext`P2$, $CellContext`sol$, $CellContext`P1$, \
$CellContext`u2$, $CellContext`T2$, $CellContext`iu2$, $CellContext`iT2$}, \
$CellContext`Cp$ = 1000; $CellContext`\[Gamma]$ = 1.4; $CellContext`d1$ = 
         0.06; $CellContext`T1$ = 400; $CellContext`P2$ = 
         100; $CellContext`sol$ = Quiet[
           Part[
            Solve[
             
             And[($CellContext`u1$$ $CellContext`d1$^2) \
($CellContext`p/$CellContext`T1$) == ($CellContext`u $CellContext`\[Delta]^2) \
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
$CellContext`iu2$[$CellContext`d$]^2)/(2 $CellContext`Cp$); Show[
          Switch[$CellContext`drown$$, 1, 
           Show[
            $CellContext`diagram[$CellContext`d1$, $CellContext`d2$$, \
$CellContext`u1$$, $CellContext`u2$, $CellContext`T1$, $CellContext`T2$, \
$CellContext`P1$, $CellContext`P2$], PlotLabel -> Style[
              
              Which[$CellContext`d2$$ < $CellContext`d1$, 
               "nozzle", $CellContext`d2$$ == $CellContext`d1$, 
               "straight tube", $CellContext`d2$$ > $CellContext`d1$, 
               "diffuser"], 18, Black]], 2, 
           Show[
            Switch[$CellContext`bn$$, 1, 
             Show[
              Plot[{
                $CellContext`u2$[$CellContext`d], 
                $CellContext`iu2$[$CellContext`d]}, {$CellContext`d, 0.04, 
                0.1}, PlotStyle -> {{Thick, Blue}, {Thick, 
                  RGBColor[0., 0.6, 0]}}, FrameLabel -> {
                 Style["outlet diameter (m)", 17], 
                 Style["outlet  velocity  (m/s)", 17]}, 
               PlotRange -> {3, 295}], 
              $CellContext`labels[$CellContext`d1$, $CellContext`d2$$, 
               "u", $CellContext`u1$$, $CellContext`u2$, $CellContext`iu2$, 
               "m/s", 305, -10]], 2, 
             Show[
              Plot[{
                $CellContext`T2$[$CellContext`d], 
                $CellContext`iT2$[$CellContext`d]}, {$CellContext`d, 0.04, 
                0.1}, PlotStyle -> {{Thick, Dashed, Blue}, {Thick, Dashed, 
                  RGBColor[0., 0.6, 0]}}, FrameLabel -> {
                 Style["outlet diameter (m)", 17], 
                 Style["outlet  temperature  (K)", 17]}, 
               PlotRange -> {361, 405}], 
              $CellContext`labels[$CellContext`d1$, $CellContext`d2$$, 
               "T", $CellContext`T1$, $CellContext`T2$, $CellContext`iT2$, 
               "K", 362, 415]]], Frame -> True, LabelStyle -> {14, Black}, 
            PlotRangePadding -> {{
               Scaled[0.02], 
               Scaled[0.055]}, {
               Scaled[0.05], 
               Scaled[0.1]}}]], ImageSize -> {600, 300}, AspectRatio -> 
          Full]], "Specifications" :> {{{$CellContext`drown$$, 1, ""}, {
         1 -> " diagram ", 2 -> " plots "}, ControlType -> Setter, 
         ControlPlacement -> 1}, {{$CellContext`bn$$, 1, ""}, {
         1 -> " velocity ", 2 -> " temperature "}, ControlType -> RadioButton,
          ControlPlacement -> 2}, {{$CellContext`u1$$, 100, 
          Row[{"inlet velocity ", 
            Subscript[
             Style["u", Italic], 1], " (m/s)"}]}, 10, 100, 1, Appearance -> 
         "Labeled", ControlPlacement -> 3}, {{$CellContext`d2$$, 0.04, 
          Row[{"outlet diameter ", 
            Subscript[
             Style["d", Italic], 2], " (m)"}]}, 0.04, 0.1, 0.001, Appearance -> 
         "Labeled", ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           PaneSelector[{2 -> Manipulate`Place[2]}, 
            Dynamic[$CellContext`drown$$]]}, {
           Manipulate`Place[3], SpanFromLeft}, {
           Manipulate`Place[4], SpanFromLeft}}, Alignment -> Left]}, 
      "Options" :> {}, "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {218., 225.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`diagram[
         Pattern[$CellContext`\[Delta]1, 
          Blank[]], 
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`\[Upsilon]1, 
          Blank[]], 
         Pattern[$CellContext`\[Upsilon]2, 
          Blank[]], 
         Pattern[$CellContext`\[Tau]1, 
          Blank[]], 
         Pattern[$CellContext`\[Tau]2, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalPi]1, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalPi]2, 
          Blank[]]] := Graphics3D[{{
           GrayLevel[0.4], 
           Tube[{{4, 0, -($CellContext`\[Delta]1/2)}, {2, 0, -7}}, 0.2], 
           Tube[{{10, 0, -($CellContext`\[Delta]2/2)}, {12, 0, -7}}, 0.2], 
           Cuboid[{0, -5, -7.25}, {14, 5, -7}]}, {
           Cylinder[{{0, 0, 0}, {4, 0, 0}}, 100 ($CellContext`\[Delta]1/2)], 
           Cylinder[{{10, 0, 0}, {14, 0, 0}}, 100 ($CellContext`\[Delta]2/2)], 
           CapForm["Butt"], 
           
           Tube[{{4, 0, 0}, {10, 0, 0}}, {
            100 ($CellContext`\[Delta]1/2), 
             100 ($CellContext`\[Delta]2/2)}]}, {Thick, 
           Arrowheads[0.03], 
           
           Arrow[{{2, (-100) ($CellContext`\[Delta]1/2), -0.75}, {
             2, (-100) ($CellContext`\[Delta]1/
               2), ((-100) $CellContext`\[Delta]1) 0.45}}], 
           
           Arrow[{{2, (-100) ($CellContext`\[Delta]1/2), 0.75}, {
             2, (-100) ($CellContext`\[Delta]1/2), (
               100 $CellContext`\[Delta]1) 0.45}}], 
           
           Arrow[{{12, (-100) ($CellContext`\[Delta]2/2), -0.75}, {
             12, (-100) ($CellContext`\[Delta]2/
               2), ((-100) $CellContext`\[Delta]2) 0.45}}], 
           
           Arrow[{{12, (-100) ($CellContext`\[Delta]2/2), 0.75}, {
             12, (-100) ($CellContext`\[Delta]2/2), (
               100 $CellContext`\[Delta]2) 0.45}}], 
           Arrowheads[0.04], 
           Arrow[{{-3, 0, 0}, {-0.5, 0, 0}}], 
           Arrow[{{14, 0, 0}, {18, 0, 0}}]}, 
          Text[
           Style[
            Row[{$CellContext`\[Delta]1, " m"}], 18], {
           2, (-100) ($CellContext`\[Delta]1/2), 0}], 
          Text[
           Style[
            Row[{$CellContext`\[Delta]2, " m"}], 18], {
           12, (-100) ($CellContext`\[Delta]2/2), 0}], 
          Text[
           Style[
            Column[{
              Row[{
                Subscript[
                 Style["u", Italic], 1], " = ", $CellContext`\[Upsilon]1, 
                ". m/s"}], 
              Row[{
                Subscript[
                 Style["T", Italic], 1], " = ", $CellContext`\[Tau]1, ". K"}], 
              Row[{
                Subscript[
                 Style["P", Italic], 1], " = ", 
                NumberForm[$CellContext`\[CapitalPi]1, {4, 0}], " kPa"}]}, 
             Alignment -> "="], 18], {-3, 0, 0}, {1.25, 0}], 
          Text[
           Style[
            Column[{
              Row[{
                Subscript[
                 Style["u", Italic], 2], " = ", 
                NumberForm[
                 $CellContext`\[Upsilon]2[$CellContext`\[Delta]2], {4, 0}], 
                " m/s"}], 
              Row[{
                Subscript[
                 Style["T", Italic], 2], " = ", 
                NumberForm[
                 $CellContext`\[Tau]2[$CellContext`\[Delta]2], {4, 0}], 
                " K"}], 
              Row[{
                Subscript[
                 Style["P", Italic], 2], " = ", $CellContext`\[CapitalPi]2, 
                " kPa"}]}, Alignment -> "="], 18], {18, 0, 0}, {-1.25, 0}]}, 
         ViewPoint -> Front, Boxed -> False, 
         PlotRange -> {{All, All}, {All, All}, {-7.5, 5}}, 
         ImagePadding -> {{95, 95}, {5, 5}}], 
       Attributes[Subscript] = {NHoldRest}, 
       Subscript[Notebook$$18$257955`c1, 0] = 0, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`labels[
         Pattern[$CellContext`\[Delta]1, 
          Blank[]], 
         Pattern[$CellContext`\[Delta]2, 
          Blank[]], 
         Pattern[$CellContext`f, 
          Blank[]], 
         Pattern[$CellContext`f1, 
          Blank[]], 
         Pattern[$CellContext`f2, 
          Blank[]], 
         Pattern[$CellContext`if2, 
          Blank[]], 
         Pattern[$CellContext`unit, 
          Blank[]], 
         Pattern[$CellContext`y1, 
          Blank[]], 
         Pattern[$CellContext`y2, 
          Blank[]]] := Graphics[{
          Text[
           Style[
            Subscript[
             Style[$CellContext`f, Italic], 1], 17, 
            GrayLevel[0.4]], {0.1, $CellContext`f1}, {-1.75, 0}], 
          PointSize[0.017], 
          Point[{{$CellContext`\[Delta]2, 
             $CellContext`f2[$CellContext`\[Delta]2]}, \
{$CellContext`\[Delta]2, 
             $CellContext`if2[$CellContext`\[Delta]2]}}], {
           GrayLevel[0.2], Thick, Dotted, 
           Line[{{0, $CellContext`f1}, {0.1, $CellContext`f1}}]}, 
          Text[
           Column[{
             Style[
              Row[{"compressible = ", 
                NumberForm[
                 $CellContext`f2[$CellContext`\[Delta]2], {4, 1}], 
                " ", $CellContext`unit}], 17, Blue], 
             Style[
              Row[{"incompressible = ", 
                NumberForm[
                 $CellContext`if2[$CellContext`\[Delta]2], {4, 1}], 
                " ", $CellContext`unit}], 17, 
              RGBColor[0., 0.6, 0]]}, Alignment -> "="], 
           Scaled[{0.8, 0.6}]], {
           GrayLevel[0.2], Thick, Dotted, 
           
           Line[{{$CellContext`\[Delta]1, $CellContext`y1}, {$CellContext`\
\[Delta]1, $CellContext`y2}}], 
           Arrowheads[
            Map[# 0.025& , {-1, 1}]], 
           Arrow[
            
            Map[{$CellContext`\[Delta]1 + # 0.01, $CellContext`y1}& , {-1, 
             1}]]}, 
          Text[
           Framed[
            Style[
             Subscript[
              Style["d", Italic], 1], 17, 
             GrayLevel[0.4]], Background -> White, FrameStyle -> 
            None], {$CellContext`\[Delta]1, $CellContext`y1}], 
          Text[
           Style["nozzle", 17, 
            GrayLevel[0.4]], {$CellContext`\[Delta]1 - 
            0.01, $CellContext`y1}, {1.3, 0}], 
          Text[
           Style["diffuser", 17, 
            GrayLevel[0.4]], {$CellContext`\[Delta]1 + 
            0.01, $CellContext`y1}, {-1.3, 0}]}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->161485683]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell[TextData[{
 "This Demonstration performs mass and energy balances on air moving through \
a nozzle/diffuser where the outlet pressuer is atmospheric. Slides set the \
outlet diameter ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "2"], TraditionalForm]], "InlineMath"],
 " and inlet velocity ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "1"], TraditionalForm]], "InlineMath"],
 ". For a nozzle, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["d", "2"], "<", 
    SubscriptBox["d", "1"]}], TraditionalForm]], "InlineMath"],
 " and pressure increases. For a diffuser, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["d", "2"], ">", 
    SubscriptBox["d", "1"]}], TraditionalForm]], "InlineMath"],
 " and pressure decreases. The inlet pressure ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "1"], TraditionalForm]], "InlineMath"],
 ", and outlet velocity ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "2"], TraditionalForm]], "InlineMath"],
 " and temperature ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]], "InlineMath"],
 " are calculated from mass and enthalpy balances. Either a diagram of the \
nozzle/diffuser or plots of outlet velocity or temperature can be selected \
using buttons. In addition to plots for an ideal gas (compressible (blue) \
flow, incompressible (green) flow plots are also shown."
}], "ManipulateCaption"],

Cell[TextData[{
 "View a diagram of the nozzle/diffuser or plots of outlet velocity or \
temperature using buttons. In addition to plotting  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "2"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm"],
 " or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]], "InlineMath",
  FormatType->"TraditionalForm"],
 " for compressible flow (blue), incompressible flow is also plotted (green). \
The air is assumed to behave as an ideal gas."
}], "ManipulateCaption",
 CellID->202393376]
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

Cell["Mass balance around nozzle/diffuser:", "DetailNotes",
 CellID->55081618],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["u", "1"], " ", 
     SubscriptBox["A", "1"], " ", 
     SubscriptBox["\[Rho]", "1"]}], "=", 
    RowBox[{
     SubscriptBox["u", "2"], " ", 
     SubscriptBox["A", "2"], " ", 
     SubscriptBox["\[Rho]", "2"]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->256734174],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["A", "i"], "=", 
    RowBox[{
     FractionBox["\[Pi]", "4"], " ", 
     SubsuperscriptBox["d", "i", "2"]}]}], TraditionalForm]], "InlineMath"],
 " is the area, and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Rho]", "i"], "=", 
    FractionBox[
     SubscriptBox["P", "i"], 
     RowBox[{"R", " ", 
      SubscriptBox["T", "i"]}]]}], TraditionalForm]], "InlineMath"],
 " is density calculated from the ideal gas law. The mass balance simplifies \
to:"
}], "DetailNotes",
 CellID->588835620],

Cell[TextData[{
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
      SubscriptBox["T", "2"]]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->47462072],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "1"}], TraditionalForm]], "InlineMath"],
 " for the inlet and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"i", "=", "2"}], TraditionalForm]], "InlineMath"],
 " for outlet, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "i"], TraditionalForm]], "InlineMath"],
 " is diameter (m), ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "i"], TraditionalForm]], "InlineMath"],
 " is pressure (kPa), ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]], "InlineMath"],
 " is the ideal gas constant, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "i"], TraditionalForm]], "InlineMath"],
 " is temperature (K)."
}], "DetailNotes",
 CellID->103355972],

Cell["Energy balance for adiabatic nozzle/diffuser:", "DetailNotes",
 CellID->257240695],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["m", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["H", "1"], "+", 
        FractionBox[
         SubsuperscriptBox["u", "1", "2"], "2"]}], ")"}]}], "-", 
     RowBox[{
      SubscriptBox["m", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["H", "2"], "+", 
        FractionBox[
         SubsuperscriptBox["u", "2", "2"], "2"]}], ")"}]}]}], "=", "0"}], 
   TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->511081802],

Cell[TextData[{
 "and applying conservation of mass (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", "1"], "=", 
    SubscriptBox["m", "2"]}], TraditionalForm]], "InlineMath"],
 ") yields:"
}], "DetailNotes",
 CellID->502527371],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["H", "2"], "-", 
     SubscriptBox["H", "1"]}], "=", 
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
        SubsuperscriptBox["u", "2", "2"]}], ")"}]}]}]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->85458655],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[InvisibleSpace]", "H"}], "=", 
    RowBox[{"Cp", " ", "\[CapitalDelta]", "\[InvisibleSpace]", "T"}]}], 
   TraditionalForm]], "InlineMath"],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["H", "i"], TraditionalForm]], "InlineMath"],
 " is enthalpy (J/kg), and ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]], "InlineMath"],
 " is the ideal gas heat capacity of air (J/kg/K)."
}], "DetailNotes",
 CellID->67387113],

Cell[TextData[{
 "For compressible flow the inlet pressure ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["P", "1"], TraditionalForm]], "InlineMath"],
 " is:"
}], "DetailNotes",
 CellID->148924686],

Cell[TextData[{
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
      RowBox[{"\[Gamma]", "-", "1"}], "\[Gamma]"]]}], TraditionalForm]], 
  "InlineMath"],
 ","
}], "DetailNotes",
 CellID->40148694],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Gamma]", "=", "1.4"}], TraditionalForm]], "InlineMath"],
 "."
}], "DetailNotes",
 CellID->718813309]
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

Cell["thermodynamics", "SearchTerms",
 CellID->14319873],

Cell["nozzle", "SearchTerms",
 CellID->42369079],

Cell["diffuser", "SearchTerms",
 CellID->793423649],

Cell["mechanical engineering", "SearchTerms",
 CellID->361887668],

Cell["chemical engineering", "SearchTerms",
 CellID->54822018],

Cell["incompressible", "SearchTerms",
 CellID->23588055],

Cell["ideal gas", "SearchTerms",
 CellID->873873165]
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
 CellID->142231542],

Cell[TextData[{
 "Additional contributions by: Jeffrey Knutsen and",
 ButtonBox[" John L. Falconer",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=John%20L.%\
20Falconer"], None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=John%20L.%20Falconer"]
}], "Author",
 CellID->293857471],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
},
WindowSize->{667, 670},
WindowMargins->{{Automatic, 0}, {Automatic, 0}},
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
  Cell[55950, 1499, 311, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[56264, 1509, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[56945, 1527, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[57288, 1540, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[57928, 1557, 843, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[58774, 1580, 304, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[59081, 1590, 1463, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[60547, 1623, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 63410, 1727},
 {"RotateAndZoomIn3D", 63519, 1730},
 {"DragLocators", 63629, 1733},
 {"CreateAndDeleteLocators", 63745, 1736},
 {"SliderZoom", 63859, 1739},
 {"GamepadControls", 63965, 1742},
 {"AutomaticAnimation", 64078, 1745},
 {"BookmarkAnimation", 64195, 1748}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 64, 0, 104, "DemoTitle"],
Cell[CellGroupData[{
Cell[1575, 39, 33, 0, 287, "InitializationSection"],
Cell[1611, 41, 12432, 321, 384, "Input",
 InitializationCell->True,
 CellID->202999112],
Cell[14046, 364, 5845, 156, 268, "Input",
 InitializationCell->True,
 CellID->2130786]
}, Closed]],
Cell[CellGroupData[{
Cell[19928, 525, 29, 0, 192, "ManipulateSection"],
Cell[CellGroupData[{
Cell[19982, 529, 11962, 280, 790, "Input"],
Cell[31947, 811, 14129, 322, 455, "Output",
 CellID->161485683]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[46122, 1139, 36, 0, 169, "ManipulateCaptionSection"],
Cell[46161, 1141, 1399, 39, 130, "ManipulateCaption"],
Cell[47563, 1182, 564, 15, 53, "ManipulateCaption",
 CellID->202393376]
}, Open  ]],
Cell[CellGroupData[{
Cell[48164, 1202, 28, 0, 173, "ThumbnailSection"],
Cell[48195, 1204, 1242, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49474, 1243, 28, 0, 143, "SnapshotsSection"],
Cell[49505, 1245, 1241, 34, 230, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50783, 1284, 26, 0, 336, "DetailsSection"],
Cell[50812, 1286, 78, 1, 22, "DetailNotes",
 CellID->55081618],
Cell[50893, 1289, 377, 14, 23, "DetailNotes",
 CellID->256734174],
Cell[51273, 1305, 589, 21, 37, "DetailNotes",
 CellID->588835620],
Cell[51865, 1328, 488, 18, 37, "DetailNotes",
 CellID->47462072],
Cell[52356, 1348, 717, 26, 23, "DetailNotes",
 CellID->103355972],
Cell[53076, 1376, 88, 1, 22, "DetailNotes",
 CellID->257240695],
Cell[53167, 1379, 578, 22, 42, "DetailNotes",
 CellID->511081802],
Cell[53748, 1403, 243, 9, 23, "DetailNotes",
 CellID->502527371],
Cell[53994, 1414, 569, 22, 33, "DetailNotes",
 CellID->85458655],
Cell[54566, 1438, 518, 17, 23, "DetailNotes",
 CellID->67387113],
Cell[55087, 1457, 195, 7, 23, "DetailNotes",
 CellID->148924686],
Cell[55285, 1466, 418, 17, 46, "DetailNotes",
 CellID->40148694],
Cell[55706, 1485, 167, 7, 23, "DetailNotes",
 CellID->718813309]
}, Open  ]],
Cell[CellGroupData[{
Cell[55910, 1497, 37, 0, 126, "ControlSuggestionsSection"],
Cell[55950, 1499, 311, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[56264, 1509, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[56945, 1527, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[57288, 1540, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[57928, 1557, 843, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[58774, 1580, 304, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[59081, 1590, 1463, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[60547, 1623, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61492, 1649, 30, 0, 155, "SearchTermsSection"],
Cell[61525, 1651, 56, 1, 22, "SearchTerms",
 CellID->14319873],
Cell[61584, 1654, 48, 1, 22, "SearchTerms",
 CellID->42369079],
Cell[61635, 1657, 51, 1, 22, "SearchTerms",
 CellID->793423649],
Cell[61689, 1660, 65, 1, 22, "SearchTerms",
 CellID->361887668],
Cell[61757, 1663, 62, 1, 22, "SearchTerms",
 CellID->54822018],
Cell[61822, 1666, 56, 1, 22, "SearchTerms",
 CellID->23588055],
Cell[61881, 1669, 52, 1, 22, "SearchTerms",
 CellID->873873165]
}, Open  ]],
Cell[61948, 1673, 31, 0, 141, "RelatedLinksSection"],
Cell[CellGroupData[{
Cell[62004, 1677, 25, 0, 129, "AuthorSection"],
Cell[62032, 1679, 331, 10, 22, "Author",
 CellID->142231542],
Cell[62366, 1691, 366, 10, 22, "Author",
 CellID->293857471],
Cell[62735, 1703, 131, 4, 22, "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature EwpIft3jnaf3zDKJNJ0uHWz# *)
