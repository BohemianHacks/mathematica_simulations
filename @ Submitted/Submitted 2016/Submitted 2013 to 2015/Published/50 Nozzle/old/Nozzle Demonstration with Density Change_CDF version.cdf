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
NotebookDataLength[     11434,        261]
NotebookOptionsPosition[     12001,        257]
NotebookOutlinePosition[     12438,        276]
CellTagsIndexPosition[     12395,        273]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d2$$ = 0.03, $CellContext`npr$$ = 
    1, $CellContext`top$$ = 1, $CellContext`u1$$ = 100, Typeset`show$$ = True,
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`npr$$], 1, ""}, {1 -> " diagram ", 2 -> " plot "}}, {{
       Hold[$CellContext`top$$], 1, ""}, {
      1 -> " velocity ", 2 -> " temperature "}}, {
      Hold[
       Row[{
         Manipulate`Place[1], 
         Spacer[30], 
         PaneSelector[{2 -> Manipulate`Place[2]}, 
          Dynamic[$CellContext`npr$$]]}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`d2$$], 0.03, "outlet diameter (m)"}, 0.02, 0.1, 
      0.01}, {{
       Hold[$CellContext`u1$$], 100, "inlet velocity (m/s)"}, 10, 150, 1}}, 
    Typeset`size$$ = {600., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`npr$30450$$ = False, $CellContext`top$30451$$ = 
    False, $CellContext`d2$30452$$ = 0, $CellContext`u1$30453$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`d2$$ = 0.03, $CellContext`npr$$ = 
        1, $CellContext`top$$ = 1, $CellContext`u1$$ = 100}, 
      "ControllerVariables" :> {
        Hold[$CellContext`npr$$, $CellContext`npr$30450$$, False], 
        Hold[$CellContext`top$$, $CellContext`top$30451$$, False], 
        Hold[$CellContext`d2$$, $CellContext`d2$30452$$, 0], 
        Hold[$CellContext`u1$$, $CellContext`u1$30453$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`\[Rho]$, $CellContext`Cp$, $CellContext`d1$, \
$CellContext`T1$, $CellContext`m$, $CellContext`sol$, $CellContext`u2$, \
$CellContext`T2$, $CellContext`incompu2$, $CellContext`incompT2$}, \
$CellContext`\[Rho]$[
           Pattern[$CellContext`T, 
            Blank[]]] := (-Rational[9, 1000000000]) $CellContext`T^3 + 
          Rational[1, 50000] $CellContext`T^2 - 0.012 $CellContext`T + 
          3.4578; $CellContext`Cp$ = (5/2) (8.314/0.02897); $CellContext`d1$ = 
         0.06; $CellContext`T1$ = 
         400; $CellContext`m$ = $CellContext`u1$$ (Pi/
           4) $CellContext`d1$^2 $CellContext`\[Rho]$[$CellContext`T1$]; \
$CellContext`sol$[
           Pattern[$CellContext`d$, 
            Blank[]]] := Quiet[
           First[
            Solve[
             
             And[$CellContext`m$ == $CellContext`u (Pi/
                4) $CellContext`d$^2 $CellContext`\[Rho]$[$CellContext`t], \
$CellContext`Cp$ $CellContext`T1$ + $CellContext`u1$$^2/
                2 == $CellContext`Cp$ $CellContext`t + $CellContext`u^2/
                2], {$CellContext`t, $CellContext`u}, 
             Reals]]]; $CellContext`u2$[
           Pattern[$CellContext`d$, 
            Blank[]]] = ReplaceAll[$CellContext`u, 
           $CellContext`sol$[$CellContext`d$]]; $CellContext`T2$[
           Pattern[$CellContext`d$, 
            Blank[]]] = ReplaceAll[$CellContext`t, 
           $CellContext`sol$[$CellContext`d$]]; $CellContext`incompu2$[
           Pattern[$CellContext`d$, 
            Blank[]]] = $CellContext`u1$$ (Pi/4) $CellContext`d1$^2/((Pi/
           4) $CellContext`d$^2); $CellContext`incompT2$[
           Pattern[$CellContext`d$, 
            
            Blank[]]] = $CellContext`T1$ + ($CellContext`u1$$^2 - \
$CellContext`incompu2$[$CellContext`d$]^2)/(2 $CellContext`Cp$); 
        Switch[$CellContext`npr$$, 1, 
          Graphics3D[{{
             GrayLevel[0.4], 
             Tube[{{4, 0, (-$CellContext`d1$)/2}, {2, 0, -7}}, 0.2], 
             Tube[{{10, 0, (-$CellContext`d2$$)/2}, {12, 0, -7}}, 0.2], 
             Cuboid[{0, -5, -7.25}, {14, 5, -7}]}, {
             Cylinder[{{0, 0, 0}, {4, 0, 0}}, 100 ($CellContext`d1$/2)], 
             Cylinder[{{10, 0, 0}, {14, 0, 0}}, 100 ($CellContext`d2$$/2)], 
             CapForm["Butt"], 
             
             Tube[{{4, 0, 0}, {10, 0, 0}}, {
              100 ($CellContext`d1$/2), 100 ($CellContext`d2$$/2)}]}, {Thick, 
             Arrowheads[0.03], 
             
             Arrow[{{2, (-100) ($CellContext`d1$/2), -0.75}, {
               2, (-100) ($CellContext`d1$/2), (-100) $CellContext`d1$ 
                0.45}}], 
             
             Arrow[{{2, (-100) ($CellContext`d1$/2), 0.75}, {
               2, (-100) ($CellContext`d1$/2), 100 $CellContext`d1$ 0.45}}], 
             Arrow[{{12, (-100) ($CellContext`d2$$/2), 
                
                If[$CellContext`d2$$ < 0.04, -1.75 - 100 $CellContext`d2$$ 
                 0.45, -0.75]}, {
               12, (-100) ($CellContext`d2$$/2), (-100) $CellContext`d2$$ 
                0.45}}], 
             Arrow[{{12, (-100) ($CellContext`d2$$/2), 
                
                If[$CellContext`d2$$ < 0.04, 1.75 + 
                 100 $CellContext`d2$$ 0.45, 0.75]}, {
               12, (-100) ($CellContext`d2$$/2), 100 $CellContext`d2$$ 
                0.45}}], 
             Arrowheads[0.04], 
             Arrow[{{-3, 0, 0}, {-0.5, 0, 0}}], 
             Arrow[{{14, 0, 0}, {18, 0, 0}}]}, 
            Text[
             Style["0.06 m", 18], {2, (-100) ($CellContext`d1$/2), 0}], 
            Text[
             Style[
              Row[{$CellContext`d2$$, " m"}], 18], {
             12, (-100) ($CellContext`d2$$/2), 0}], 
            Text[
             Style[
              Column[{
                Row[{$CellContext`u1$$, " m/s"}], "400 K"}], 18], {-3, 0, 
             0}, {1.25, 0}], 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[
                   N[
                    $CellContext`u2$[$CellContext`d2$$]], {4, 0}], " m/s"}], 
                Row[{
                  NumberForm[
                   $CellContext`T2$[$CellContext`d2$$], {4, 0}], " K"}]}], 
              18], {18, 0, 0}, {-1.25, 0}], Null}, ViewPoint -> Front, Boxed -> 
           False, PlotRange -> {{All, All}, {All, All}, {-7.5, 5}}, 
           ImageSize -> {600, 300}, ImagePadding -> {{60, 60}, {5, 5}}, 
           PlotLabel -> Style[
             Row[{
               If[$CellContext`d2$$ < $CellContext`d1$, "nozzle", "diffuser"], 
               Spacer[10], "0.1 MPa"}], 18, Black]], 2, 
          Show[
           Switch[$CellContext`top$$, 1, 
            Plot[{
              $CellContext`u2$[$CellContext`d], 
              $CellContext`incompu2$[$CellContext`d]}, {$CellContext`d, 0.02, 
              0.1}, PlotStyle -> {{Thick, Blue}, {Thick, Dashed, 
                RGBColor[0., 0.56, 0.09]}}, FrameLabel -> {
               Style["outlet diameter (m)", 17], 
               Style["oulet  velocity  (m/s)", 17]}, 
             PlotRange -> {{0.02, 0.1}, {All, All}}, Epilog -> {
               PointSize[0.016], 
               Point[{$CellContext`d2$$, 
                 $CellContext`u2$[$CellContext`d2$$]}], 
               Point[{$CellContext`d2$$, 
                 $CellContext`incompu2$[$CellContext`d2$$]}], 
               Text[
                Column[{
                  Style[
                   Row[{"compressible = ", 
                    NumberForm[
                    $CellContext`u2$[$CellContext`d2$$], {4, 0}], " m/s"}], 
                   Blue, 17], 
                  Style[
                   Row[{"incompressible = ", 
                    NumberForm[
                    $CellContext`incompu2$[$CellContext`d2$$], {4, 0}], 
                    " m/s"}], 
                   RGBColor[0., 0.56, 0.09], 17]}], 
                Scaled[{0.7, 0.8}]]}], 2, 
            Plot[{
              $CellContext`T2$[$CellContext`d], 
              $CellContext`incompT2$[$CellContext`d]}, {$CellContext`d, 0.02, 
              0.1}, PlotStyle -> {{Thick, Purple}, {Thick, Dashed, 
                RGBColor[0., 0.56, 0.09]}}, FrameLabel -> {
               Style["outlet diameter (m)", 17], 
               Style["outlet  temperature  (K)", 17]}, 
             PlotRange -> {{0.02, 0.1}, {All, All}}, Epilog -> {
               PointSize[0.016], 
               Point[{$CellContext`d2$$, 
                 $CellContext`T2$[$CellContext`d2$$]}], 
               Point[{$CellContext`d2$$, 
                 $CellContext`incompT2$[$CellContext`d2$$]}], 
               Text[
                Column[{
                  Style[
                   Row[{"compressible = ", 
                    NumberForm[
                    $CellContext`T2$[$CellContext`d2$$], {4, 0}], " K"}], 
                   Purple, 17], 
                  Style[
                   Row[{"incompressible = ", 
                    NumberForm[
                    $CellContext`incompT2$[$CellContext`d2$$], {4, 0}], 
                    " K"}], 17, 
                   RGBColor[0., 0.56, 0.09]]}], 
                Scaled[{0.7, 0.6}]]}]], Axes -> False, Frame -> True, 
           LabelStyle -> {Black, 14}, AspectRatio -> Full, 
           ImageSize -> {600, 300}, ImagePadding -> {{55, 20}, {45, 10}}, 
           PlotRangePadding -> {0.001, 
             Scaled[0.05]}]]], 
      "Specifications" :> {{{$CellContext`npr$$, 1, ""}, {
         1 -> " diagram ", 2 -> " plot "}, ControlType -> Setter, 
         ControlPlacement -> 1}, {{$CellContext`top$$, 1, ""}, {
         1 -> " velocity ", 2 -> " temperature "}, ControlType -> RadioButton,
          ControlPlacement -> 2}, 
        Row[{
          Manipulate`Place[1], 
          Spacer[30], 
          PaneSelector[{2 -> Manipulate`Place[2]}, 
           Dynamic[$CellContext`npr$$]]}], {{$CellContext`d2$$, 0.03, 
          "outlet diameter (m)"}, 0.02, 0.1, 0.01, Appearance -> 
         "Labeled"}, {{$CellContext`u1$$, 100, "inlet velocity (m/s)"}, 10, 
         150, 1, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{651., {218., 225.}},
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
},
WindowSize->{1366, 686},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (October 9, 2015)",
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
Cell[1464, 33, 10533, 222, 460, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature AvDw0uWcG4zsmBKzLZ33erV# *)
