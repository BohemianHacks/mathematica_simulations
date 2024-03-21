(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.2' *)

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
NotebookDataLength[     23767,        646]
NotebookOptionsPosition[     23767,        626]
NotebookOutlinePosition[     24201,        645]
CellTagsIndexPosition[     24158,        642]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "d1", ",", "V", ",", "d2", ",", "u2", ",", "MW", ",", "Cp", ",", "T1", 
       ",", "T2"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"d1", "=", "6"}], ";", 
      RowBox[{"(*", "cm", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"V", "=", 
       RowBox[{"u1", "*", 
        RowBox[{"\[Pi]", "/", "4"}], "*", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"d1", "/", "100"}], ")"}], "2"]}]}], ";", 
      RowBox[{"(*", 
       RowBox[{"m3", "/", "s"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"d2", ":=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"fob", "\[Equal]", "1"}], ",", "nozzle", ",", "diffuser"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"u2", "=", 
       FractionBox["V", 
        RowBox[{
         RowBox[{"\[Pi]", "/", "4"}], "*", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d2", "/", "100"}], ")"}], "2"]}]]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"MW", "=", "0.02897"}], ";", 
      RowBox[{"(*", 
       RowBox[{"kg", "/", "mol"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Cp", "=", 
       RowBox[{
        FractionBox["5", "2"], "*", 
        RowBox[{"8.314", "/", "MW"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"T1", "=", "400"}], ";", 
      RowBox[{"(*", "K", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"T2", "=", 
       RowBox[{"T1", "+", 
        FractionBox[
         RowBox[{
          SuperscriptBox["u1", "2"], "-", 
          SuperscriptBox["u2", "2"]}], 
         RowBox[{"2", "*", "Cp"}]]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
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
                   RowBox[{"-", "d1"}], "/", "2"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"2", ",", "0", ",", 
                  RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], 
            ",", 
            RowBox[{"Tube", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"10", ",", "0", ",", 
                  RowBox[{
                   RowBox[{"-", "d2"}], "/", "2"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"12", ",", "0", ",", 
                  RowBox[{"-", "7"}]}], "}"}]}], "}"}], ",", "0.2"}], "]"}], 
            ",", 
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
              RowBox[{"d1", "/", "2"}]}], "]"}], ",", 
            RowBox[{"Cylinder", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"10", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"14", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
              RowBox[{"d2", "/", "2"}]}], "]"}], ",", 
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
                RowBox[{"d1", "/", "2"}], ",", 
                RowBox[{"d2", "/", "2"}]}], "}"}]}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", 
            RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2", ",", 
                 RowBox[{
                  RowBox[{"-", "d1"}], "/", "2"}], ",", 
                 RowBox[{"-", "0.75"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2", ",", 
                 RowBox[{
                  RowBox[{"-", "d1"}], "/", "2"}], ",", 
                 RowBox[{
                  RowBox[{"-", "d1"}], "*", "0.45"}]}], "}"}]}], "}"}], "]"}],
             ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2", ",", 
                 RowBox[{
                  RowBox[{"-", "d1"}], "/", "2"}], ",", "0.75"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"2", ",", 
                 RowBox[{
                  RowBox[{"-", "d1"}], "/", "2"}], ",", 
                 RowBox[{"d1", "*", "0.45"}]}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"12", ",", 
                 RowBox[{
                  RowBox[{"-", "d2"}], "/", "2"}], ",", 
                 RowBox[{"-", "0.75"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"12", ",", 
                 RowBox[{
                  RowBox[{"-", "d2"}], "/", "2"}], ",", 
                 RowBox[{
                  RowBox[{"-", "d2"}], "*", "0.45"}]}], "}"}]}], "}"}], "]"}],
             ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"12", ",", 
                 RowBox[{
                  RowBox[{"-", "d2"}], "/", "2"}], ",", "0.75"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"12", ",", 
                 RowBox[{
                  RowBox[{"-", "d2"}], "/", "2"}], ",", 
                 RowBox[{"d2", "*", "0.45"}]}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
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
             RowBox[{"\"\<6.0 cm\>\"", ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{
               RowBox[{"-", "d1"}], "/", "2"}], ",", "0"}], "}"}]}], "]"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"NumberForm", "[", 
                  RowBox[{"d2", ",", 
                   RowBox[{"{", 
                    RowBox[{"3", ",", "1"}], "}"}]}], "]"}], ",", 
                 "\"\< cm\>\""}], "}"}], "]"}], ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"12", ",", 
              RowBox[{
               RowBox[{"-", "d2"}], "/", "2"}], ",", "0"}], "}"}]}], "]"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{"u1", ",", "\"\< m/s\>\""}], "}"}], "]"}], ",", 
                 "\"\<400 K\>\""}], "}"}], "]"}], ",", "18"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"N", "@", "u2"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< m/s\>\""}], "}"}], "]"}], ",", 
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{"T2", ",", 
                    RowBox[{"{", 
                    RowBox[{"4", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< K\>\""}], "}"}], "]"}]}], "}"}], "]"}], ",", "18"}],
              "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"18", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.5"}], ",", "0"}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
        RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"50", ",", "60"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"5", ",", "5"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "7.25"}], ",", "5"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"500", ",", "350"}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<0.1 MPa\>\"", ",", "18", ",", "Black"}], "]"}]}]}], 
       "]"}]}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"fob", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"1", "\[Rule]", "\"\< nozzle \>\""}], ",", 
        RowBox[{"2", "\[Rule]", "\"\< diffuser \>\""}]}], "}"}], ",", 
      "Setter"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"PaneSelector", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"1", "\[Rule]", 
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"nozzle", ",", "4", ",", "\"\<nozzle width (cm)\>\""}], 
            "}"}], ",", "3", ",", "6", ",", "0.1", ",", 
           RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
         "]"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"2", "\[Rule]", 
        RowBox[{"Control", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
            "diffuser", ",", "8", ",", "\"\<diffuser width (cm)\>\""}], "}"}],
            ",", "6", ",", "10", ",", "0.1", ",", 
           RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
         "]"}]}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Dynamic", "@", "fob"}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"u1", ",", "30", ",", "\"\<inlet velocity (m/s)\>\""}], "}"}], 
      ",", "10", ",", "50", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`diffuser$$ = 8, $CellContext`fob$$ = 
    1, $CellContext`nozzle$$ = 4, $CellContext`u1$$ = 30, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`fob$$], 1, ""}, {
      1 -> " nozzle ", 2 -> " diffuser "}}, {{
       Hold[$CellContext`nozzle$$], 4, "nozzle width (cm)"}, 3, 6, 0.1}, {{
       Hold[$CellContext`diffuser$$], 8, "diffuser width (cm)"}, 6, 10, 0.1}, {
      Hold[
       PaneSelector[{1 -> Manipulate`Place[1], 2 -> Manipulate`Place[2]}, 
        Dynamic[$CellContext`fob$$]]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`u1$$], 30, "inlet velocity (m/s)"}, 10, 50, 1}}, 
    Typeset`size$$ = {500., {173., 177.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`fob$29849$$ = False, $CellContext`nozzle$29850$$ = 
    0, $CellContext`diffuser$29851$$ = 0, $CellContext`u1$29852$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`diffuser$$ = 8, $CellContext`fob$$ = 
        1, $CellContext`nozzle$$ = 4, $CellContext`u1$$ = 30}, 
      "ControllerVariables" :> {
        Hold[$CellContext`fob$$, $CellContext`fob$29849$$, False], 
        Hold[$CellContext`nozzle$$, $CellContext`nozzle$29850$$, 0], 
        Hold[$CellContext`diffuser$$, $CellContext`diffuser$29851$$, 0], 
        Hold[$CellContext`u1$$, $CellContext`u1$29852$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`d1$, $CellContext`V$, $CellContext`d2$, \
$CellContext`u2$, $CellContext`MW$, $CellContext`Cp$, $CellContext`T1$, \
$CellContext`T2$}, $CellContext`d1$ = 
         6; $CellContext`V$ = $CellContext`u1$$ (Pi/
           4) ($CellContext`d1$/100)^2; $CellContext`d2$ := 
         If[$CellContext`fob$$ == 
           1, $CellContext`nozzle$$, $CellContext`diffuser$$]; \
$CellContext`u2$ = $CellContext`V$/((Pi/
           4) ($CellContext`d2$/100)^2); $CellContext`MW$ = 
         0.02897; $CellContext`Cp$ = (5/2) (
           8.314/$CellContext`MW$); $CellContext`T1$ = 
         400; $CellContext`T2$ = $CellContext`T1$ + ($CellContext`u1$$^2 - \
$CellContext`u2$^2)/(2 $CellContext`Cp$); Graphics3D[{{
            GrayLevel[0.4], 
            Tube[{{4, 0, (-$CellContext`d1$)/2}, {2, 0, -7}}, 0.2], 
            Tube[{{10, 0, (-$CellContext`d2$)/2}, {12, 0, -7}}, 0.2], 
            Cuboid[{0, -5, -7.25}, {14, 5, -7}]}, {
            Cylinder[{{0, 0, 0}, {4, 0, 0}}, $CellContext`d1$/2], 
            Cylinder[{{10, 0, 0}, {14, 0, 0}}, $CellContext`d2$/2], 
            CapForm["Butt"], 
            
            Tube[{{4, 0, 0}, {10, 0, 
             0}}, {$CellContext`d1$/2, $CellContext`d2$/2}]}, {Thick, 
            Arrowheads[0.03], 
            
            Arrow[{{2, (-$CellContext`d1$)/2, -0.75}, {
              2, (-$CellContext`d1$)/2, (-$CellContext`d1$) 0.45}}], 
            
            Arrow[{{2, (-$CellContext`d1$)/2, 0.75}, {
              2, (-$CellContext`d1$)/2, $CellContext`d1$ 0.45}}], 
            
            Arrow[{{12, (-$CellContext`d2$)/2, -0.75}, {
              12, (-$CellContext`d2$)/2, (-$CellContext`d2$) 0.45}}], 
            
            Arrow[{{12, (-$CellContext`d2$)/2, 0.75}, {
              12, (-$CellContext`d2$)/2, $CellContext`d2$ 0.45}}], 
            Arrowheads[0.04], 
            Arrow[{{-3, 0, 0}, {-0.5, 0, 0}}], 
            Arrow[{{14, 0, 0}, {18, 0, 0}}]}, 
           Text[
            Style["6.0 cm", 18], {2, (-$CellContext`d1$)/2, 0}], 
           Text[
            Style[
             Row[{
               NumberForm[$CellContext`d2$, {3, 1}], " cm"}], 18], {
            12, (-$CellContext`d2$)/2, 0}], 
           Text[
            Style[
             Column[{
               Row[{$CellContext`u1$$, " m/s"}], "400 K"}], 18], {-3, 0, 0}, {
            1.5, 0}], 
           Text[
            Style[
             Column[{
               Row[{
                 NumberForm[
                  N[$CellContext`u2$], {4, 0}], " m/s"}], 
               Row[{
                 NumberForm[$CellContext`T2$, {4, 0}], " K"}]}], 18], {18, 0, 
            0}, {-1.5, 0}]}, ViewPoint -> Front, Boxed -> False, 
          ImagePadding -> {{50, 60}, {5, 5}}, PlotRange -> {-7.25, 5}, 
          ImageSize -> {500, 350}, PlotLabel -> Style["0.1 MPa", 18, Black]]],
       "Specifications" :> {{{$CellContext`fob$$, 1, ""}, {
         1 -> " nozzle ", 2 -> " diffuser "}, ControlType -> 
         Setter}, {{$CellContext`nozzle$$, 4, "nozzle width (cm)"}, 3, 6, 0.1,
          Appearance -> "Labeled", ControlPlacement -> 
         1}, {{$CellContext`diffuser$$, 8, "diffuser width (cm)"}, 6, 10, 0.1,
          Appearance -> "Labeled", ControlPlacement -> 2}, 
        PaneSelector[{1 -> Manipulate`Place[1], 2 -> Manipulate`Place[2]}, 
         Dynamic[$CellContext`fob$$]], {{$CellContext`u1$$, 30, 
          "inlet velocity (m/s)"}, 10, 50, 1, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{551., {243., 250.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, {2}]],

Cell[BoxData[""], "Input"],

Cell["air flows through a nozzle/diffuser", "Text"],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{"V", "=", 
   RowBox[{
    SubscriptBox["u", "1"], " ", 
    FractionBox["\[Pi]", "4"], " ", 
    SubsuperscriptBox["d", "1", "2"]}]}], TraditionalForm]],
 FormatType->"TraditionalForm"]], "Text"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is volumetric flow rate, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is velocity at inlet, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "1"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is inlet diameter"
}], "Text"],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["u", "2"], "=", 
   FractionBox["V", 
    RowBox[{
     FractionBox["\[Pi]", "4"], " ", 
     SubsuperscriptBox["d", "2", "2"]}]]}], TraditionalForm]],
 FormatType->"TraditionalForm"]], "Text"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["u", "2"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is the outlet velocity and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "2"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is the nozzle/diffuser diameter"
}], "Text"],

Cell["energy balance:", "Text"],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubscriptBox["h", "2"], "+", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     SubsuperscriptBox["u", "2", "2"]}]}], "=", 
   RowBox[{
    SubscriptBox["h", "1"], "+", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     SubsuperscriptBox["u", "1", "2"]}]}]}], TraditionalForm]],
 FormatType->"TraditionalForm"]], "Text"],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["h", "i"], "=", 
   RowBox[{
    RowBox[{"Cp", " ", "\[CapitalDelta]", "\[InvisibleSpace]", 
     SubscriptBox["T", "i"]}], "=", 
    RowBox[{
     FractionBox["5", "2"], " ", "R", " ", 
     SubscriptBox["T", "i"]}]}]}], TraditionalForm]],
 FormatType->"TraditionalForm"]], "Text"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["h", "i"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is enthalpy, ",
 Cell[BoxData[
  FormBox["Cp", TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is the heat capacity, ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is the ideal gas constant, and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "i"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is temperature"
}], "Text"],

Cell[TextData[{
 "solving for outlet air temperature (",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "2"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "):"
}], "Text"],

Cell[TextData[Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["T", "2"], "=", 
   RowBox[{
    SubscriptBox["T", "1"], "+", 
    FractionBox[
     RowBox[{
      SubsuperscriptBox["u", "1", "2"], "-", 
      SubsuperscriptBox["u", "2", "2"]}], 
     RowBox[{"5", " ", "R"}]]}]}], TraditionalForm]],
 FormatType->"TraditionalForm"]], "Text"],

Cell["pressure is atmospheric pressure", "Text"]
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.2 for Microsoft Windows (64-bit) (July 7, 2015)",
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
Cell[CellGroupData[{
Cell[1486, 35, 13207, 340, 781, "Input"],
Cell[14696, 377, 5845, 116, 510, "Output"]
}, {2}]],
Cell[20553, 496, 26, 0, 31, "Input"],
Cell[20582, 498, 51, 0, 30, "Text"],
Cell[20636, 500, 244, 7, 41, "Text"],
Cell[20883, 509, 418, 16, 30, "Text"],
Cell[21304, 527, 258, 8, 49, "Text"],
Cell[21565, 537, 319, 12, 30, "Text"],
Cell[21887, 551, 31, 0, 30, "Text"],
Cell[21921, 553, 389, 13, 42, "Text"],
Cell[22313, 568, 347, 10, 42, "Text"],
Cell[22663, 580, 520, 20, 30, "Text"],
Cell[23186, 602, 180, 7, 30, "Text"],
Cell[23369, 611, 343, 11, 50, "Text"],
Cell[23715, 624, 48, 0, 30, "Text"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0u0UKcN2gjKoXAgNyVUeyNTp *)
