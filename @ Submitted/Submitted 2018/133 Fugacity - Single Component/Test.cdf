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
NotebookDataLength[     16391,        337]
NotebookOptionsPosition[     16983,        335]
NotebookOutlinePosition[     17343,        351]
CellTagsIndexPosition[     17300,        348]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`fTfP$$ = 1, $CellContext`highpressure$$ = 
    False, $CellContext`pres$$ = 0.07, $CellContext`temp$$ = 380, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pres$$], 0.08, ""}, 0.02, 0.15, 0.01}, {{
       Hold[$CellContext`temp$$], 375, "temperature (K)"}, 358, 383, 2}, {{
       Hold[$CellContext`temp$$], 375, "temperature (K)"}, 358, 395, 2}, {{
       Hold[$CellContext`fTfP$$], 1, ""}, {
      1 :> "fugacity vs. temperature", 2 :> "fugacity vs. pressure"}}, {{
       Hold[$CellContext`highpressure$$], True, "high pressure"}, {
      True, False}}, {
      Hold[
       Row[{
         PaneSelector[{1 -> Row[{
              Dynamic[
               Text[
                If[
                 Or[$CellContext`fTfP$$ == 1, 
                  
                  And[$CellContext`fTfP$$ == 2, $CellContext`highpressure$$ == 
                   False]], "pressure (bar)", "pressure (MPa)"]]], 
              Manipulate`Place[1], 
              Dynamic[
               Text[
                If[$CellContext`fTfP$$ == 1, 
                 Row[{" ", $CellContext`pres$$}], 
                 Row[{" ", $CellContext`pres$$ 10}]]]]}], 2 -> Row[{
              
              PaneSelector[{
               True -> Manipulate`Place[2], False -> Manipulate`Place[3]}, 
               Dynamic[$CellContext`highpressure$$]], 
              Dynamic[
               Text[
                If[$CellContext`highpressure$$ == True, 
                 Row[{" ", $CellContext`temp$$ + 100}], 
                 Row[{" ", $CellContext`temp$$}]]]]}]}, 
          Dynamic[$CellContext`fTfP$$]], 
         Manipulate`Place[4], 
         Spacer[{5, 0}], 
         PaneSelector[{2 -> Manipulate`Place[5]}, 
          Dynamic[$CellContext`fTfP$$]]}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    590., {205., 210.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`pres$4257$$ = 
    0, $CellContext`temp$4258$$ = 0, $CellContext`fTfP$4259$$ = 
    False, $CellContext`highpressure$4260$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`fTfP$$ = 1, $CellContext`highpressure$$ = 
        True, $CellContext`pres$$ = 0.08, $CellContext`temp$$ = 375}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pres$$, $CellContext`pres$4257$$, 0], 
        Hold[$CellContext`temp$$, $CellContext`temp$4258$$, 0], 
        Hold[$CellContext`fTfP$$, $CellContext`fTfP$4259$$, False], 
        Hold[$CellContext`highpressure$$, $CellContext`highpressure$4260$$, 
         False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`fugRealvap$, $CellContext`fugRealliq$, \
$CellContext`clausius$, $CellContext`invclausius$, $CellContext`fugliq$, \
$CellContext`fugvap$, $CellContext`PTPlot$, $CellContext`fTPlot$, \
$CellContext`fPPlot$, $CellContext`bp$, $CellContext`bp2$}, \
$CellContext`clausius$[
           Pattern[$CellContext`T, 
            Blank[]]] := 
         0.101325 
          Exp[(-5268.134) (1/$CellContext`T - 1/
             373)]; $CellContext`invclausius$[
           Pattern[$CellContext`p, 
            Blank[]]] := 
         1/(Log[$CellContext`p/0.101325]/(-5268.134) + 
          1/373); $CellContext`fugliq$[
           Pattern[$CellContext`pres$, 
            Blank[]], 
           Pattern[$CellContext`temp$, 
            
            Blank[]]] := $CellContext`clausius$[$CellContext`temp$]; \
$CellContext`fugvap$[
           Pattern[$CellContext`pres$, 
            Blank[]], 
           Pattern[$CellContext`temp$, 
            Blank[]]] := $CellContext`pres$ - ($CellContext`fTfP$$ - 1) 
          If[$CellContext`highpressure$$ == True, 0.8, 0] ($CellContext`pres$ - 
           Log[$CellContext`pres$ + 1]); $CellContext`bp$ = 
         ReplaceAll[$CellContext`Tb, 
           Part[
            
            FindRoot[$CellContext`fugvap$[$CellContext`pres$$, \
$CellContext`Tb] == $CellContext`fugliq$[$CellContext`pres$$, \
$CellContext`Tb], {$CellContext`Tb, 280, 400}], 1]]; $CellContext`bp2$ = 
         ReplaceAll[$CellContext`P, 
           Part[
            
            FindRoot[$CellContext`fugvap$[$CellContext`P, \
$CellContext`temp$$] == $CellContext`fugliq$[$CellContext`P, \
$CellContext`temp$$] 10, {$CellContext`P, 0.00001, 100}], 
            1]]; $CellContext`fTPlot$ = Show[{
            Plot[
             Piecewise[{{
                $CellContext`fugliq$[$CellContext`pres$$, $CellContext`T], \
$CellContext`T < $CellContext`bp$}, {
                $CellContext`fugvap$[$CellContext`pres$$, $CellContext`T], \
$CellContext`T >= $CellContext`bp$}}], {$CellContext`T, 280, 400}, 
             PlotStyle -> {Thick, Darker, Blue}, Axes -> True, Frame -> True, 
             FrameLabel -> {
               Style["temperature (\[Degree]C)", 17], 
               Style["fugacity  (bar)", 17]}, LabelStyle -> {14, Black}, 
             PlotRange -> {{280, 400}, {0, 0.2}}, ImageSize -> {590, 415}], 
            Plot[
             Piecewise[{{
                $CellContext`fugvap$[$CellContext`pres$$, $CellContext`T], \
$CellContext`T < $CellContext`bp$}, {
                $CellContext`fugliq$[$CellContext`pres$$, $CellContext`T], \
$CellContext`T >= $CellContext`bp$}}], {$CellContext`T, 280, 500}, 
             PlotStyle -> {Dashed, Blue, 
               Opacity[0.3]}], 
            Graphics[{
              Style[
               Text[
               "liquid", {315, $CellContext`clausius$[315] + 0.01}, 
                Automatic, {1, 0.15}], 18, FontFamily -> "Times New Roman"], 
              Style[
               Text[
               "vapor", {
                390, $CellContext`fugvap$[$CellContext`pres$$, 390] + 0.013}],
                18, FontFamily -> "Times New Roman"], 
              PointSize[0.015], 
              Point[{$CellContext`bp$, 
                $CellContext`clausius$[$CellContext`bp$]}], Dashed, 
              Line[{{$CellContext`bp$, 
                 $CellContext`clausius$[$CellContext`bp$]}, {$CellContext`bp$,
                  0}}], 
              Style[
               Text[
                Subscript[
                "T", "sat"], {$CellContext`bp$ - 
                 4, $CellContext`clausius$[$CellContext`bp$] + 0.017}, 
                Background -> White], 17]}]}]; $CellContext`fPPlot$ = Show[{
            Plot[
             Piecewise[{{
                $CellContext`fugvap$[$CellContext`P, $CellContext`temp$$], \
$CellContext`P < $CellContext`bp2$}, {$CellContext`fugliq$[$CellContext`P, \
$CellContext`temp$$] 
                10, $CellContext`P >= $CellContext`bp2$}}], {$CellContext`P, 
              0, 8}, PlotStyle -> {Thick, Darker, Blue}, Axes -> False, Frame -> 
             True, FrameLabel -> If[$CellContext`highpressure$$ == True, {
                Style["pressure (MPa)", 17], 
                Style["fugacity  (MPa)", 17]}, {
                Style["pressure (bar)", 17], 
                Style["fugacity  (bar)", 17]}], LabelStyle -> {14, Black}, 
             PlotRange -> {{0, 3}, {0, 3}}, ImageSize -> {590, 415}, 
             ImagePadding -> {{60, 10}, {50, 5}}], 
            Plot[
             
             Piecewise[{{$CellContext`fugliq$[$CellContext`P, \
$CellContext`temp$$] 10, $CellContext`P < $CellContext`bp2$}, {
                $CellContext`fugvap$[$CellContext`P, $CellContext`temp$$], \
$CellContext`P >= $CellContext`bp2$}}], {$CellContext`P, 0, 3}, 
             PlotStyle -> {Dashed, Blue, 
               Opacity[0.3]}], 
            Graphics[{
              PointSize[0.015], 
              Point[{$CellContext`bp2$, 
                $CellContext`fugvap$[$CellContext`bp2$, \
$CellContext`temp$$]}], Dashed, 
              Line[{{$CellContext`bp2$, 
                 $CellContext`fugvap$[$CellContext`bp2$, \
$CellContext`temp$$]}, {$CellContext`bp2$, 0}}], 
              Style[
               Text[
                Subscript[
                "P", "sat"], {$CellContext`bp2$ - 
                 0.1, $CellContext`fugvap$[$CellContext`bp2$, \
$CellContext`temp$$] + 0.13}, Background -> White], 17], 
              Style[
               Text[
               "liquid", {
                2.7, $CellContext`fugliq$[2.7, $CellContext`temp$$] 10 + 
                 0.12}], 18, FontFamily -> "Times New Roman"], 
              Style[
               Text[
               "vapor", {
                0.3, $CellContext`fugvap$[0.3, $CellContext`temp$$] + 0.15}, 
                Automatic, 
                If[$CellContext`highpressure$$ == True, {1, 0.5}, {1, 0.7}]], 
               18, FontFamily -> "Times New Roman"]}]}]; 
        Which[$CellContext`fTfP$$ == 1, 
          Graphics[$CellContext`fTPlot$], $CellContext`fTfP$$ == 2, 
          Graphics[$CellContext`fPPlot$]]], 
      "Specifications" :> {{{$CellContext`pres$$, 0.08, ""}, 0.02, 0.15, 0.01,
          ControlPlacement -> 
         1}, {{$CellContext`temp$$, 375, "temperature (K)"}, 358, 383, 2, 
         ControlPlacement -> 
         2}, {{$CellContext`temp$$, 375, "temperature (K)"}, 358, 395, 2, 
         ControlPlacement -> 3}, {{$CellContext`fTfP$$, 1, ""}, {
         1 :> "fugacity vs. temperature", 2 :> "fugacity vs. pressure"}, 
         ControlType -> PopupMenu, ControlPlacement -> 
         4}, {{$CellContext`highpressure$$, True, "high pressure"}, {
         True, False}, ControlType -> Checkbox, ControlPlacement -> 5}, 
        Row[{
          PaneSelector[{1 -> Row[{
               Dynamic[
                Text[
                 If[
                  Or[$CellContext`fTfP$$ == 1, 
                   
                   And[$CellContext`fTfP$$ == 2, $CellContext`highpressure$$ == 
                    False]], "pressure (bar)", "pressure (MPa)"]]], 
               Manipulate`Place[1], 
               Dynamic[
                Text[
                 If[$CellContext`fTfP$$ == 1, 
                  Row[{" ", $CellContext`pres$$}], 
                  Row[{" ", $CellContext`pres$$ 10}]]]]}], 2 -> Row[{
               
               PaneSelector[{
                True -> Manipulate`Place[2], False -> Manipulate`Place[3]}, 
                Dynamic[$CellContext`highpressure$$]], 
               Dynamic[
                Text[
                 If[$CellContext`highpressure$$ == True, 
                  Row[{" ", $CellContext`temp$$ + 100}], 
                  Row[{" ", $CellContext`temp$$}]]]]}]}, 
           Dynamic[$CellContext`fTfP$$]], 
          Manipulate`Place[4], 
          Spacer[{5, 0}], 
          PaneSelector[{2 -> Manipulate`Place[5]}, 
           Dynamic[$CellContext`fTfP$$]]}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{635., {251., 257.}},
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
 CellChangeTimes->{
  3.742929958204834*^9, {3.7429301158493195`*^9, 3.742930157695529*^9}, {
   3.74293022483429*^9, 3.742930245764744*^9}, 3.742930308606858*^9, 
   3.7429303622421727`*^9, 3.7429303970304403`*^9, 3.7429304461019545`*^9, 
   3.7429304941960154`*^9, 3.742930533659465*^9, 3.742930630756689*^9, 
   3.7429306896764607`*^9, {3.7429307897238245`*^9, 3.742930824358808*^9}, 
   3.7429308890423236`*^9, 3.7429310968003416`*^9, 3.7429311830407457`*^9, 
   3.742931250076231*^9, {3.742931282978035*^9, 3.742931330939636*^9}, {
   3.742931390126686*^9, 3.74293148614923*^9}, {3.7429315481026335`*^9, 
   3.742931561553919*^9}, 3.7429316037827168`*^9, 3.7429316673093348`*^9, 
   3.742931733718491*^9, {3.742931801902423*^9, 3.742931857821804*^9}, {
   3.7429319468805685`*^9, 3.742931965386857*^9}, 3.742932162432563*^9, 
   3.743263299534082*^9, {3.74334023169333*^9, 3.7433403730291257`*^9}, {
   3.7433405127286377`*^9, 3.743340528225758*^9}, 3.7433406120899725`*^9, 
   3.7433406436747413`*^9, {3.7433407004214983`*^9, 3.7433407157604046`*^9}, {
   3.743340982640687*^9, 3.7433410151143017`*^9}, {3.743341065121575*^9, 
   3.7433410771704936`*^9}, {3.7433411334698505`*^9, 3.74334116303903*^9}, 
   3.743341212253789*^9, {3.743341252140958*^9, 3.7433412640257363`*^9}, 
   3.7433413949386454`*^9, 3.7433415346415586`*^9, {3.7433415887627416`*^9, 
   3.743341630219121*^9}, {3.743341661143767*^9, 3.743341727964664*^9}, {
   3.7433417590527687`*^9, 3.7433417915722156`*^9}, {3.7433418531291027`*^9, 
   3.7433418873531284`*^9}, {3.7433420191433716`*^9, 
   3.7433421075471897`*^9}, {3.743342262724278*^9, 3.74334227537529*^9}, {
   3.7433423101027327`*^9, 3.7433423236483526`*^9}, 3.7433423754112177`*^9, {
   3.7433424309725485`*^9, 3.743342472290606*^9}, {3.7433425029323854`*^9, 
   3.743342518523548*^9}, {3.743342597643244*^9, 3.7433427352813025`*^9}, 
   3.74334288668573*^9, {3.743342920224081*^9, 3.743342931851634*^9}, {
   3.7433429664159164`*^9, 3.7433430695712605`*^9}, {3.7433431891615577`*^9, 
   3.7433432164262834`*^9}, {3.743343253547964*^9, 3.74334326823096*^9}, 
   3.7433433123555613`*^9, {3.7433433539369845`*^9, 3.743343392327796*^9}, {
   3.7433434257550955`*^9, 3.7433434452047787`*^9}, 3.7433434766693535`*^9, {
   3.7433435104811845`*^9, 3.743343534887348*^9}, 3.7433477743751464`*^9, 
   3.7433479112283945`*^9, {3.743347947967682*^9, 3.743347982272504*^9}, {
   3.7435135170119534`*^9, 3.743513573722019*^9}, {3.7435136738468475`*^9, 
   3.7435136838315725`*^9}, {3.7435137276611814`*^9, 3.743513784542756*^9}, {
   3.7435138427693233`*^9, 3.7435138836022863`*^9}, 3.7435139721587267`*^9, 
   3.7435140902167616`*^9, 3.743514156122518*^9, {3.743514323303952*^9, 
   3.7435143359766197`*^9}, 3.7435143836508665`*^9, {3.743514508447669*^9, 
   3.7435145283379917`*^9}, {3.743514599986943*^9, 3.7435146627642903`*^9}, {
   3.7435147055634985`*^9, 3.743514749835993*^9}, 3.743514785929391*^9, 
   3.7435148550323324`*^9, {3.7435149040235834`*^9, 3.743514913267995*^9}, 
   3.7435149713203807`*^9, {3.7435150083955956`*^9, 3.7435150152828236`*^9}, {
   3.743515103097989*^9, 3.7435151184902773`*^9}, {3.7435151537143607`*^9, 
   3.743515246770382*^9}, {3.74351528432026*^9, 3.7435152891056128`*^9}, {
   3.743515322621665*^9, 3.7435153355653553`*^9}, 3.743515398262208*^9, {
   3.7435156184102583`*^9, 3.7435156698653183`*^9}, {3.743515777554792*^9, 
   3.743515808285748*^9}, {3.7435158949513025`*^9, 3.7435159223720665`*^9}, 
   3.743516001709375*^9, {3.743516033338021*^9, 3.743516052874798*^9}, {
   3.743516102296397*^9, 3.7435161138766127`*^9}, {3.743516185734337*^9, 
   3.7435162421349897`*^9}, {3.7435162754099426`*^9, 3.743516289833627*^9}, {
   3.7435163303758936`*^9, 3.7435163586685896`*^9}, {3.7435164491122913`*^9, 
   3.7435166033546944`*^9}, {3.743716711677247*^9, 3.7437167601271286`*^9}, 
   3.7439519571664267`*^9},
 CellID->1253590481,ExpressionUUID->"515a4097-16f8-4d62-9812-dfd8e7b74d8c"]
},
WindowSize->{808, 653},
WindowMargins->{{202, Automatic}, {Automatic, 24}},
FrontEndVersion->"11.2 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
10, 2017)",
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
Cell[1488, 33, 15491, 300, 527, "Output",ExpressionUUID->"515a4097-16f8-4d62-9812-dfd8e7b74d8c",
 CellID->1253590481]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature evTU6OZhs@#LtDgEAXUoxgsz *)
