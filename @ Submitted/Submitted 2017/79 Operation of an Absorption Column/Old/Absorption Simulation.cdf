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
NotebookDataLength[     24695,        501]
NotebookOptionsPosition[     25227,        495]
NotebookOutlinePosition[     25678,        515]
CellTagsIndexPosition[     25635,        512]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`inletconcentration$$ = 
    100, $CellContext`L$$ = 100000, $CellContext`LoVmin$$ = 
    False, $CellContext`P$$ = 2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 2, "pressure (atm)"}, 1.5, 3, 0.1}, {{
       Hold[$CellContext`L$$], 100000, "solvent flow rate (kmol/hr)"}, 50000, 
      300000, 5000}, {{
       Hold[$CellContext`inletconcentration$$], 100, 
       "inlet concentration (PPM)"}, 40, 120, 1}, {{
       Hold[$CellContext`LoVmin$$], False, "L/V min"}, {True, False}}, {
      Hold[
       Grid[{{
          Manipulate`Place[1], 
          Manipulate`Place[2]}, {
          Manipulate`Place[3], 
          Manipulate`Place[4]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    592., {192.134033203125, 197.865966796875}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`P$288675$$ = 0, $CellContext`L$288676$$ = 
    0, $CellContext`inletconcentration$288677$$ = 
    0, $CellContext`LoVmin$288678$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`inletconcentration$$ = 
        100, $CellContext`L$$ = 100000, $CellContext`LoVmin$$ = 
        False, $CellContext`P$$ = 2}, "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$288675$$, 0], 
        Hold[$CellContext`L$$, $CellContext`L$288676$$, 0], 
        Hold[$CellContext`inletconcentration$$, \
$CellContext`inletconcentration$288677$$, 0], 
        Hold[$CellContext`LoVmin$$, $CellContext`LoVmin$288678$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`y1$, $CellContext`x0$, $CellContext`yN1$, \
$CellContext`yeq$, $CellContext`yinlet$, $CellContext`check$, \
$CellContext`test$, $CellContext`n$, $CellContext`stages$, \
$CellContext`steps$, $CellContext`stepping$, $CellContext`plot$, \
$CellContext`column$, $CellContext`stage$, $CellContext`soln$, \
$CellContext`check2$, $CellContext`LoVminLine$, \
$CellContext`inlterconcentration$}, $CellContext`y1$ = 10; $CellContext`x0$ = 
         0; $CellContext`yN1$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`L$$/$CellContext`V) ($CellContext`x$ - \
$CellContext`x0$) + $CellContext`y1$; $CellContext`yeq$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := ($CellContext`HB/$CellContext`P$$) $CellContext`x$; \
$CellContext`yinlet$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] := $CellContext`inletconcentration$$; \
$CellContext`soln$ = ReplaceAll[$CellContext`x, 
           Part[
            
            Solve[$CellContext`yeq$[$CellContext`x] == \
$CellContext`yinlet$[$CellContext`x], $CellContext`x], 
            1]]; $CellContext`check$ = ReplaceAll[$CellContext`x, 
           Part[
            
            Solve[$CellContext`yN1$[$CellContext`x] == \
$CellContext`yinlet$[$CellContext`x], $CellContext`x], 
            1]]; $CellContext`check2$ = ReplaceAll[$CellContext`x, 
           Part[
            
            Solve[$CellContext`yeq$[$CellContext`x] == \
$CellContext`yN1$[$CellContext`x], $CellContext`x], 1]]; $CellContext`stage$[
          1] = ReplaceAll[$CellContext`x, 
           Part[
            
            Solve[$CellContext`yeq$[$CellContext`x] == $CellContext`y1$, \
$CellContext`x], 1]]; 
        Do[$CellContext`stage$[$CellContext`i] = ReplaceAll[$CellContext`x, 
            Part[
             Solve[$CellContext`yeq$[$CellContext`x] == $CellContext`yN1$[
                $CellContext`stage$[$CellContext`i - 1]], $CellContext`x], 
             1]], {$CellContext`i, 2, 50}]; $CellContext`test$ = Table[
           $CellContext`stage$[$CellContext`n$], {$CellContext`n$, 1, 
            50}]; $CellContext`n$ = 1; While[
          And[Part[$CellContext`test$, $CellContext`n$] < $CellContext`check$, 
           
           If[$CellContext`check2$ > 
            0, $CellContext`yeq$[$CellContext`check2$] > \
$CellContext`yinlet$[$CellContext`check2$], True]], 
          Increment[$CellContext`n$]]; $CellContext`steps$ = Flatten[
           Table[{{
              Part[$CellContext`test$, $CellContext`i], 
              $CellContext`yeq$[
               Part[$CellContext`test$, $CellContext`i]]}, {
              Part[$CellContext`test$, $CellContext`i], 
              $CellContext`yN1$[
               Part[$CellContext`test$, $CellContext`i]]}}, {$CellContext`i, 
             1, $CellContext`n$}], 1]; $CellContext`stepping$ = ReplacePart[
           
           Join[{{0, $CellContext`y1$}}, $CellContext`steps$], {
            2 $CellContext`n$ + 1, 
             2} -> $CellContext`inletconcentration$$]; $CellContext`plot$ = 
         Plot[{
            $CellContext`yN1$[$CellContext`x], 
            $CellContext`yeq$[$CellContext`x], 
            $CellContext`yinlet$[$CellContext`x]}, {$CellContext`x, 0, 1.3}, 
           PlotRange -> {{0, 1.3}, {0, 120}}, 
           Frame -> {{True, False}, {True, False}}, FrameLabel -> {
             Style["x, ppm", Black, 18], 
             Style["y, ppm", Black, 18]}, ImageSize -> {320, 390}, 
           AspectRatio -> Full, PlotRangeClipping -> False, Epilog -> {
             If[$CellContext`LoVmin$$ == True, {Purple, 
               Line[{{0, 10}, {$CellContext`soln$, 
                  $CellContext`yeq$[$CellContext`soln$]}}]}], 
             If[
              
              Or[$CellContext`yN1$[$CellContext`check2$] > \
$CellContext`yinlet$[$CellContext`check2$], $CellContext`check2$ < 0], {
               If[$CellContext`LoVmin$$ == False, 
                Line[{$CellContext`stepping$}]], 
               If[$CellContext`LoVmin$$ == False, 
                Table[
                 Text[
                  
                  Style[$CellContext`i, 
                   15], {$CellContext`stage$[$CellContext`i] + 
                   0.025, $CellContext`yeq$[
                    $CellContext`stage$[$CellContext`i]] - 
                   3}], {$CellContext`i, 1, $CellContext`n$}]]}], 
             Apply[Text[
               Style[#, #2], #3]& , {{
               "\!\(\*SubscriptBox[\(y\), \(N + 1\)]\)", {
                Black, 16, Background -> White}, {
                0.15, $CellContext`inletconcentration$$}}, {
               "\!\(\*SubscriptBox[\(y\), \(1\)]\)", {
                Black, 16}, {-0.04, 10}}, {
               "\!\(\*SubscriptBox[\(x\), \(0\)]\)", {Black, 16}, {0, -6}}, 
               If[$CellContext`LoVmin$$ == True, {
                 StringJoin["L/\!\(\*SubscriptBox[\(V\), \(min\)]\)", " = ", 
                  ToString[
                   
                   NumberForm[($CellContext`yeq$[$CellContext`soln$] - 
                    10)/$CellContext`soln$, {10, 1}]]], {Purple, 16}, {1, 
                 20}}]}, {1}]}]; $CellContext`column$ = Graphics[{
            Thickness[0.02], 
            Map[
            Line, {{{0, 0}, {
               0, $CellContext`h}, {$CellContext`w, $CellContext`h}, \
{$CellContext`w, 0}, {0, 0}}}], 
            Thickness[0.01], Arrowheads -> 0.1, 
            Map[
            Arrow, {{{
               0 - $CellContext`w/4, (-$CellContext`h)/5}, {$CellContext`w/
                3, (-$CellContext`h)/5}, {$CellContext`w/3, 0}}, {{
               2 ($CellContext`w/3), 0}, {
               0 + 2 ($CellContext`w/3), (-$CellContext`h)/
                5}, {$CellContext`w + $CellContext`w/4, (-$CellContext`h)/
                5}}, {{$CellContext`w - 
                2 ($CellContext`w/3), $CellContext`h}, {$CellContext`w - 
                2 ($CellContext`w/3), $CellContext`h + $CellContext`h/5}, {
               0 - $CellContext`w/
                4, $CellContext`h + $CellContext`h/
                 5}}, {{$CellContext`w + $CellContext`w/
                 4, $CellContext`h + $CellContext`h/
                 5}, {$CellContext`w - $CellContext`w/
                3, $CellContext`h + $CellContext`h/
                 5}, {$CellContext`w - $CellContext`w/3, $CellContext`h}}}], 
            Apply[Text[
              Style[#, #2], #3]& , {{
               StringJoin["V", " = ", 
                ToString[
                 NumberForm[1000, Infinity, DigitBlock -> 3]]], {Black, 16}, {
               0, $CellContext`h + $CellContext`h/5 + $CellContext`h/8}}, {
               StringJoin["L", " = ", 
                ToString[
                 NumberForm[
                 1000 ($CellContext`L$$/$CellContext`V), Infinity, DigitBlock -> 
                  3]]], {Black, 
                16}, {$CellContext`w, $CellContext`h + $CellContext`h/
                 5 + $CellContext`h/8}}, {
              "\!\(\*SubscriptBox[\(y\), \(N + 1\)]\)", {Black, 16}, {
               0, -2}}, {
              "\!\(\*SubscriptBox[\(x\), \(N\)]\)", {
               Black, 16}, {$CellContext`w, -2}}, {
              "\!\(\*SubscriptBox[\(y\), \(1\)]\)", {Black, 16}, {
               0, $CellContext`h + 2}}, {
              "\!\(\*SubscriptBox[\(x\), \(0\)]\)", {
               Black, 16}, {$CellContext`w, $CellContext`h + 2}}, {
              "Stages Needed:", {
               Black, 16}, {$CellContext`w/2, $CellContext`h - 2}}, {
               If[
                
                And[$CellContext`yeq$[$CellContext`check2$] < \
$CellContext`yinlet$[$CellContext`check2$], $CellContext`check2$ > 0], 
                Infinity, $CellContext`n$], {
               Black, 16}, {$CellContext`w/2, $CellContext`h - 3.5}}, {
               StringJoin["L/V", " = ", 
                ToString[
                 NumberForm[$CellContext`L$$/$CellContext`V, 10]]], {
               Black, 16}, {$CellContext`w/2, $CellContext`h/2}}}, {1}]}, 
           ImageSize -> {220, 390}]; $CellContext`LoVminLine$ = Graphics[
           Line[{{0, 10}, {$CellContext`soln$, 
              $CellContext`yeq$[$CellContext`soln$]}}]]; 
        Grid[{{$CellContext`plot$, $CellContext`column$}}, Spacings -> 4]], 
      "Specifications" :> {{{$CellContext`P$$, 2, "pressure (atm)"}, 1.5, 3, 
         0.1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`L$$, 100000, "solvent flow rate (kmol/hr)"}, 
         50000, 300000, 5000, Appearance -> "Labeled", ImageSize -> Small, 
         ControlPlacement -> 
         2}, {{$CellContext`inletconcentration$$, 100, 
          "inlet concentration (PPM)"}, 40, 120, 1, Appearance -> "Labeled", 
         ImageSize -> Small, ControlPlacement -> 
         3}, {{$CellContext`LoVmin$$, False, "L/V min"}, {True, False}, 
         ControlPlacement -> 4}, 
        Grid[{{
           Manipulate`Place[1], 
           Manipulate`Place[2]}, {
           Manipulate`Place[3], 
           Manipulate`Place[4]}}, Alignment -> Left]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{637., {248., 254.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`n = 4, $CellContext`plot = 
       Graphics[{{{{}, {}, 
            Annotation[{
              Directive[
               Opacity[1.], 
               RGBColor[0.368417, 0.506779, 0.709798], 
               AbsoluteThickness[1.6]], 
              Line[CompressedData["
1:eJwB8QEO/iFib1JlAgAAAB4AAAACAAAA898WL7RLWj4mJlmkAAAkQJ2DHyAM
Hzg/PjHygrAlJEBvJbeI1x5IP1U8i2FgSyRAWPYCPb0eWD+EUr0ewJYkQM3e
KBewHmg/4X4hmX8tJUAH0zuEqR54P5zX6Y3+WiZAJE3FOqYeiD8RiXp3/LUo
QDMKCpakHpg//OubSvhrLUCc0fQFVCKpP+GhU9Jo0TNA1GW0asSrsj+O71xz
MZY4QC0uUeS3p7g/E2xfqgdDPUD2KhJ/gyW/P8gYo12nKkFAQZ8KUjSawj9r
TBjgeIhDQEBDHvWS4sU/iqR/zwIZRkDoTCMhnhvJPxWU44mTnUhA8mFJEjYd
zD+FVEk+0vZKQDSRARS6X88/cTmhX8mCTUDtZW1tZTXRP0Lv+npu409AFLZS
FUSz0j9AnqgwDRxRQFgTgcWYUdQ/HddMWr9fUkBN9j/YM9TVP2z48YDIjVNA
XuZH80R31z/5KxDeLdVUQESJyFKsEtk/PausoJYWVkDbsdkUWpLaP/MSSmBW
QldAjucz330y3D/njGBWcodYQPKiHgzott0/Te93SeW2WUBya1JByFvfP/Fj
CHO0/1pAY3N/XX984D9LJBcCh0JcQOXzncs9PeE/Fs0mjrBvXUCZmZmZmZnh
PwAAAAAAAF5ACOLTsw==
               "]]}, "Charting`Private`Tag$47119#1"], 
            Annotation[{
              Directive[
               Opacity[1.], 
               RGBColor[0.880722, 0.611041, 0.142051], 
               AbsoluteThickness[1.6]], 
              Line[CompressedData["
1:eJwBcQOO/CFib1JlAgAAADYAAAACAAAA898WL7RLWj5zCuOIZLHFPp2DHyAM
Hzg/B8LHQCzmoz9vJbeI1x5IP0Cw/t0A5rM/WPYCPb0eWD9dJ5os6+XDP83e
KBewHmg/7OLnU+Dl0z8H0zuEqR54P7PAjufa5eM/JE3FOqYeiD+WL2Ix2OXz
PzMKCpakHpg/CedL1tblA0Cc0fQFVCKpP2Y8osYRvBRA1GW0asSrsj+whacX
Ps4eQC0uUeS3p7g/kKYpy+tWJED2KhJ/gyW/PxpHcFnWsSlAQZ8KUjSawj/W
Z3viQ7EuQEBDHvWS4sU/s6I7necNMkDoTCMhnhvJPwQxo5SItjRA8mFJEjYd
zD9u/2wJazE3QDSRARS6X88/QiyvZdzhOUDtZW1tZTXRPzCZUz+PZDxAFLZS
FUSz0j+opWFkndo+QFgTgcWYUdQ/RQh0OB3DQEBN9j/YM9TVP8JdaH0MAkJA
XuZH80R31z904hg2w1tDQESJyFKsEtk/6zZ+lCevREDbsdkUWpLaP2+rlLGs
60VAjucz330y3D8nT2dC+UJHQPKiHgzott0/7BLrkWaDSEBya1JByFvfP+YF
K1Wb3klAY3N/XX984D+kyB++fTNLQOXzncs9PeE/bavF5YBxTED1+uA9Nw7i
P2u9J4FLyk1A3kRs4VPR4j937zrbNgxPQDHoM6ebkOM/o3iB7ecjUEASEiBx
HmDkPyaRQycYz1BAzH5UbMQh5T+vOV7A2G5RQBRyrWul8+U/0vlWE/0bUkDG
vkKNscHmP9chKjn4xVJAUU4g4OCB5z/j2VW+g2RTQGpkIjdLUug/iqlf/XIQ
VEBbvWy/2BTpPzYJwpvysFRAt2/zaZHT6T/F0P4MSU5VQKGonhiFouo/768Z
OAP5VUBjJJL4m2PrPx4fjcJNmFZAsyaq3O007D/opd4G/ERXQNxrCvJi+Ow/
uLyIqjrmV0BvCqcpA7jtP2s7DSFQhFhAkC9oZd6H7j+40W9RyS9ZQIqXcdLc
Se8/C/gq4dLPWUAKw88hCw7wP/s1xCpAfVpABOeEaz118D/M2zdHhCdbQGos
3k2B1fA/pBEEw1jGW0AXtUmy4j3xPxVfrviQclxAMF9Zr1Wf8T+NPLGNWRNd
QP41hz3e/vE/54GO9fiwXUBQ4MkOxC7yPwAAAAAAAF5AoAWXSg==
               "]]}, 
             "Charting`Private`Tag$47119#2"], 
            Annotation[{
              Directive[
               Opacity[1.], 
               RGBColor[0.560181, 0.691569, 0.194885], 
               AbsoluteThickness[1.6]], 
              Line[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ/fm+mP4W7yg7BjCIdFDxPWq1TK7DHsY35uKatkRu
Bpw/5+IX1hCllXD+ldQtWUdWb4LzdfUCn2xfvgPO/6YlVN+suh/Od5zPFWQy
6xCc7+As93XSo6Nw/gsfZcV50ifh/E+JnkJmsmfgfJOJjCK74s/D+W9Tc3NT
TS/C+SLbgkRdNl+C8yOEG4/OCLwC5/t+s79hfOUqnB/3zP2zS/l1ON+l80TQ
GqGbcP7tjTdFoibdgvP7nhvfrzW6g3DfIjmeF9vuwvlF2UGOJ6Lvw/nJxfWx
9TUP4Pynn+eetrV9COd//fXA1pzvEZx/zyXnYfBFBN/whfHy2RMew/lCQgqF
cglP4PwzdSE5RxSfIvxftDZ76WcE/9g+p96NB5/B+YF+Cg8eND6H87NSlMy9
g17A+dF7c/bfEHkJ52/P/5w58TKCv3DFPInWRa8Q/lOZ9GN28ms4f7Paqjtv
Td7A+XeyuT4l/UDw87mWazLveAvnT9DPSL3X/g7O75peeOmO53s4n+vweUVu
vg9wPsvzlmzbUgQ/S+eeb+NVBF98q+emR7Yf4XyD+Mj1ofMR/H+m7bb3/iH4
wgHHfVvSPsH5U7tXf7M+juDfe7F0ovlfBF/dbYGOsfFnOB8AFwXvIQ==
               "]]}, 
             "Charting`Private`Tag$47119#3"]}}, {}, {}}, {
         DisplayFunction -> Identity, Ticks -> {Automatic, Automatic}, 
          AxesOrigin -> {0, 0}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, DisplayFunction -> Identity, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, PlotRangeClipping -> True, 
          ImagePadding -> All, DisplayFunction -> Identity, AspectRatio -> 
          Full, Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 0}, DisplayFunction :> Identity, Epilog -> 
          Line[{{{0, 10}, {0.09470145366731379, 10.}, {0.09470145366731379, 
              28.94029073346276}, {0.27406876020136145`, 
              28.940290733462763`}, {0.27406876020136145`, 
              64.81375204027229}, {0.6137956535846611, 64.81375204027229}, {
              0.6137956535846611, 132.75913071693225`}, {1.2572482666502416`, 
              132.75913071693225`}, {1.2572482666502416`, 
              261.4496533300483}, {2.4759662231170823`, 261.4496533300483}, {
              2.4759662231170823`, 100}}}], 
          Frame -> {{True, False}, {True, False}}, FrameLabel -> {{
             Style["y, ppm", 
              GrayLevel[0], 18], None}, {
             Style["x, ppm", 
              GrayLevel[0], 18], None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], ImageSize -> {350, 390}, 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
            AbsolutePointSize[6], "ScalingFunctions" -> None, 
            "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
                (
                Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
                 Part[#, 1]], 
                (
                Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
                 Part[#, 2]]}& ), "CopiedValueFunction" -> ({
                (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 
                 2][#]& )[
                 Part[#, 1]], 
                (
                Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
                 Part[#, 2]]}& )}}, PlotRange -> {{0, 1.2}, {0, 120}}, 
          PlotRangeClipping -> True, 
          PlotRangePadding -> {{Automatic, Automatic}, {
            Automatic, Automatic}}, Ticks -> {Automatic, Automatic}}], 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`column = 
       Graphics[{
          Thickness[0.02], {
           Line[{{0, 0}, {0, 10}, {4, 10}, {4, 0}, {0, 0}}]}, Arrowheads -> 
          0.1, {
           Arrow[{{1, -2}, {1, 0}}], 
           Arrow[{{3, 0}, {3, -2}}], 
           Arrow[{{1, 10}, {1, 12}}], 
           Arrow[{{3, 12}, {3, 10}}]}, ImageSize -> {296, 390}, AspectRatio -> 
          Full}], $CellContext`stage[1] = 
       0.09943652635067948, $CellContext`stage[2] = 
       0.21808799962295197`, $CellContext`stage[3] = 
       0.3596674838059752, $CellContext`stage[4] = 
       0.5286055491221447, $CellContext`stage[5] = 
       0.7301889217234739, $CellContext`stage[6] = 
       0.9707259258218449, $CellContext`stage[7] = 
       1.257743895577939, $CellContext`stage[8] = 
       1.6002247345311835`, $CellContext`stage[9] = 
       2.0088859941373087`, $CellContext`stage[10] = 
       2.496516267449225, $CellContext`stage[11] = 
       3.078375393708058, $CellContext`stage[12] = 
       3.7726719977954954`, $CellContext`stage[13] = 
       4.601133308605828, $CellContext`stage[14] = 
       5.58968508816075, $CellContext`stage[15] = 
       6.769262949081439, $CellContext`stage[16] = 
       8.176780449682857, $CellContext`stage[17] = 
       9.856284262134004, $CellContext`stage[18] = 
       11.860332563368384`, $CellContext`stage[19] = 
       14.251639783933108`, $CellContext`stage[20] = 
       17.105039185336157`, $CellContext`stage[21] = 
       20.509824682535683`, $CellContext`stage[22] = 
       24.57254519626399, $CellContext`stage[23] = 
       29.420338981289483`, $CellContext`stage[24] = 
       35.20491227465765, $CellContext`stage[25] = 
       42.107286771218945`, $CellContext`stage[26] = 
       50.34346449333385, $CellContext`stage[27] = 
       60.171187330461336`, $CellContext`stage[28] = 
       71.89800278079576, $CellContext`stage[29] = 
       85.8908883032366, $CellContext`stage[30] = 
       102.58773546292733`, $CellContext`stage[31] = 
       122.5110532537416, $CellContext`stage[32] = 
       146.28431942773275`, $CellContext`stage[33] = 
       174.65149152795422`, $CellContext`stage[34] = 
       208.50028820040944`, $CellContext`stage[35] = 
       248.88996934752203`, $CellContext`stage[36] = 
       297.0844844716869, $CellContext`stage[37] = 
       354.5920265489138, $CellContext`stage[38] = 
       423.21222922641357`, $CellContext`stage[39] = 
       505.0924843271756, $CellContext`stage[40] = 
       602.795142054303, $CellContext`stage[41] = 
       719.3776968496821, $CellContext`stage[42] = 
       858.4884682329651, $CellContext`stage[43] = 
       1024.4807708447713`, $CellContext`stage[44] = 
       1222.549146516797, $CellContext`stage[45] = 
       1458.891921597769, $CellContext`stage[46] = 
       1740.9051765833503`, $CellContext`stage[47] = 
       2077.4141981107264`, $CellContext`stage[48] = 
       2478.9496563469056`, $CellContext`stage[49] = 
       2958.077150430514, $CellContext`stage[50] = 
       3529.790434719871, $CellContext`stage[51] = 
       47074.9032099452, $CellContext`stage[52] = 
       59292.31617901143, $CellContext`stage[53] = 
       74680.5061963968, $CellContext`stage[54] = 
       94062.38291700151, $CellContext`stage[55] = 
       118474.42519021923`, $CellContext`stage[56] = 
       149222.10853069898`, $CellContext`stage[57] = 
       187949.7176436665, $CellContext`stage[58] = 
       236728.27734843167`, $CellContext`stage[59] = 
       298166.304155892, $CellContext`stage[60] = 
       375549.30112915987`, $CellContext`stage[61] = 
       473015.4557524339, $CellContext`stage[62] = 
       595776.9365507241, $CellContext`stage[63] = 
       750398.6226738605, $CellContext`stage[64] = 
       945149.171983744, $CellContext`stage[65] = 
       1.19044320160839*^6, $CellContext`stage[66] = 
       1.4993982273205728`*^6, $CellContext`stage[67] = 
       1.8885361450223608`*^6, $CellContext`stage[68] = 
       2.378666767251991*^6, $CellContext`stage[69] = 
       2.9960006633317377`*^6, $CellContext`stage[70] = 
       3.7735508141779546`*^6, $CellContext`stage[71] = 
       4.752898037650154*^6, $CellContext`stage[72] = 
       5.986414593564757*^6, $CellContext`stage[73] = 
       7.540064879436647*^6, $CellContext`stage[74] = 
       9.49693298892063*^6, $CellContext`stage[75] = 
       1.1961665775145072`*^7, $CellContext`stage[76] = 
       1.5066069019312415`*^7, $CellContext`stage[77] = 
       1.8976155969208308`*^7, $CellContext`stage[78] = 
       2.3901025180214074`*^7, $CellContext`stage[79] = 
       3.0104042416482523`*^7, $CellContext`stage[80] = 
       3.791692458347626*^7, $CellContext`stage[81] = 
       4.77574788541346*^7, $CellContext`stage[82] = 
       6.015194561863631*^7, $CellContext`stage[83] = 
       7.576314008502893*^7, $CellContext`stage[84] = 
       9.542589745072065*^7, $CellContext`stage[85] = 
       1.201917171357152*^8, $CellContext`stage[86] = 
       1.5138499350395495`*^8, $CellContext`stage[87] = 
       1.9067384010631195`*^8, $CellContext`stage[88] = 
       2.4015929489217755`*^8, $CellContext`stage[89] = 
       3.024876767901853*^8, $CellContext`stage[90] = 
       3.809921021174738*^8, $CellContext`stage[91] = 
       4.798707286483642*^8, $CellContext`stage[92] = 
       6.044112592474307*^8, $CellContext`stage[93] = 
       7.612737107808919*^8, $CellContext`stage[94] = 
       9.588465698551885*^8, $CellContext`stage[95] = 
       1.2076953814171133`*^9, $CellContext`stage[96] = 
       1.521127759254473*^9, $CellContext`stage[97] = 
       1.9159050332955625`*^9, $CellContext`stage[98] = 
       2.4131385902581544`*^9, $CellContext`stage[99] = 
       3.0394188409899573`*^9, $CellContext`stage[100] = 
       3.828237187950796*^9, $CellContext`soln = 
       0.947014536673138, $CellContext`LoVminLine = Graphics[
         Line[{{0, 10}, {0.947014536673138, 100.}}]], $CellContext`V = 
       1000, $CellContext`HB = 211.19, $CellContext`h = 16, $CellContext`w = 
       8}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->1914037785]
},
WindowSize->{808, 825},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
21, 2016)",
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
Cell[1464, 33, 23759, 460, 519, "Output",
 CellID->1914037785]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature awpJrXvbgQalhCguQ0LB9n5n *)
