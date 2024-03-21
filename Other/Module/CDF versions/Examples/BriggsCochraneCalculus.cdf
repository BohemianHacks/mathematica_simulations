(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       150,          7]
NotebookDataLength[    761773,      17328]
NotebookOptionsPosition[    661856,      15133]
NotebookOutlinePosition[    742269,      16840]
CellTagsIndexPosition[    739864,      16784]
WindowTitle->CDF InfoKit - Briggs & Cochrane Calculus
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[{
 StyleBox["Chapter Preview", "FigureFontText",
  FontSize->24],
 "  Now that you are familiar with limits, the door to calculus stands open. \
The first task is to introduce the fundamental concept of the ",
 StyleBox["derivative",
  FontSlant->"Italic"],
 ". Suppose a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " represents a quantity of interest, say the variable cost of manufacturing \
an item, the population of a country, or the position of an orbiting \
satellite. The derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is another function, denoted ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 ", which gives the changing slope of the curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 ". Equivalently, the derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " gives the ",
 StyleBox["instantaneous rate of change",
  FontSlant->"Italic"],
 " of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at points in the domain. We use limits not only to define the derivative, \
but also to develop efficient rules for finding derivatives. The applications \
of the derivative\[LongDash]which we introduce along the way\[LongDash]are \
endless because almost everything around us is in a state of change, and \
derivatives describe change."
}], "Text",
 CellChangeTimes->{{3.4549432071083517`*^9, 3.4549433609079227`*^9}, 
   3.454953700958207*^9, {3.5082508478845043`*^9, 3.50825084815221*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox[
  RowBox[{"3.1", "Introducing", " ", "the", " ", "Derivative"}], 
  SectionTitleFont]], "Section",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454943377020125*^9, 3.4549433887208242`*^9}},
 CellTags->"3.1 Introducing the Derivative"],

Cell["\<\
In this section we return to the problem of finding the slope of a line \
tangent to a curve, introduced at the beginning of Chapter 2. This concept is \
important for several reasons.\
\>", "Text",
 CellChangeTimes->{{3.45494339235919*^9, 3.454943419782358*^9}}],

Cell[CellGroupData[{

Cell["Tangent Lines", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454979660240427*^9, 3.4549796827886133`*^9}},
 CellTags->"Tangent Lines"],

Cell[TextData[{
 "We identify the slope of the tangent line with the ",
 StyleBox["instantaneous rate of change",
  FontSlant->"Italic"],
 " of a function (",
 StyleBox["Figure 3.1", "FigureFontText"],
 ")."
}], "Item",
 CellChangeTimes->{{3.454943425047307*^9, 3.454943444482624*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = -3.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], -3.5, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -3.5, 3.5, 
      0.1}, {{
       Hold[$CellContext`xValue$$], -3.5, ""}, -3.5, 3.5, 0.01}}, 
    Typeset`size$$ = {295., {148., 153.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55182$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = -3.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55182$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           $CellContext`funcC3F1[$CellContext`x], 
           Derivative[
             1][$CellContext`funcC3F1][$CellContext`xValue$$] ($CellContext`x - \
$CellContext`xValue$$) + $CellContext`funcC3F1[$CellContext`xValue$$]}, \
{$CellContext`x, -5, 5}, 
          PlotStyle -> {{Thick, Black}, {Thick, $CellContext`bcR}}], 
         Graphics[{Black, 
           Text[
            Framed[
             Pane[
              If[
              Derivative[1][$CellContext`funcC3F1][$CellContext`xValue$$] < 0,
                "Slope of tangent line and instantaneous rate of change are \
\!\(\*\nStyleBox[\"negative\",\nFontWeight->\"Bold\"]\).", 
               "Slope of tangent line and instantaneous rate of change are \!\
\(\*\nStyleBox[\"positive\",\nFontWeight->\"Bold\"]\)."], {
              120, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> White], {0, 9}, {Sign[
               Derivative[1][$CellContext`funcC3F1][$CellContext`xValue$$]] 
             1.1, 1}], $CellContext`bcB, 
           AbsolutePointSize[6], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F1[$CellContext`xValue$$]}]}]}, 
        PlotRange -> {{-5.2, 5.2}, {-1, 9}}, Ticks -> None, 
        AxesOrigin -> {0, 0}, AspectRatio -> 1, 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, ImageSize -> 4.1 72, 
        BaseStyle -> {"Text", 13}, AxesStyle -> Arrowheads[{0, 0.04}]], 
      "Specifications" :> {{{$CellContext`xValue$$, -3.5, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -3.5, 3.5, 
         0.1, ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, -3.5, ""}, -3.5, 3.5, 0.01, 
         ControlType -> Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.1", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{432., {187., 192.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F1[
           Pattern[$CellContext`x, 
            Blank[]]] := 0.4 ($CellContext`x - 1/2)^2 + 2, 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = RGBColor[0, 0.4, 0.8], 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F1[
           Pattern[$CellContext`x, 
            Blank[]]] := 0.4 ($CellContext`x - 1/2)^2 + 2}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5005506993520203`*^9},
 CellTags->"FIGURE 3.1  \[LightBulb]"],

Cell[CellGroupData[{

Cell[TextData[{
 "The slopes of the tangent lines as they change along a curve are the values \
of a new function called the ",
 StyleBox["derivative",
  FontSlant->"Italic"],
 "."
}], "Item",
 CellChangeTimes->{{3.4549434541969976`*^9, 3.454943472383292*^9}}],

Cell[TextData[{
 "If a curve represents the trajectory of a moving object, the line tangent \
to the curve at a point gives the direction of motion at that point (",
 StyleBox["Figure 3.2", "FigureFontText"],
 ")."
}], "Item",
 CellChangeTimes->{{3.454943474557921*^9, 3.45494350450816*^9}, 
   3.454946612593912*^9, {3.454952522522286*^9, 3.454952522676373*^9}, 
   3.454953703728374*^9, {3.459191365596281*^9, 3.459191381254589*^9}}]
}, Open  ]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = 0.1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], 0.1, "Move point along path"}, 0.1, 3.9, 
      0.01}}, Typeset`size$$ = {288., {142., 146.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55221$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = 0.1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55221$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           $CellContext`funcC2F2[$CellContext`x], 
           Derivative[
             1][$CellContext`funcC2F2][$CellContext`xValue$$] ($CellContext`x - \
$CellContext`xValue$$) + $CellContext`funcC2F2[$CellContext`xValue$$]}, \
{$CellContext`x, 0, 4}, PlotStyle -> {{Thick, $CellContext`bcB}, {
             AbsoluteThickness[1.5], Dotted, $CellContext`bcR}}], 
         Graphics[{Black, 
           Text[
            Framed[
             Pane[
             "Trajectory of moving object", {
              90, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> White], {4.5, 1.5}, {1.1, 1}], 
           Text[
            Framed[
             Pane[
             "Tangents give direction of motion.", {
              80, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> White], {$CellContext`xValue$$ - 
             0.2, -2.2}, {-1, -1}], $CellContext`bcB, 
           AbsolutePointSize[8], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC2F2[$CellContext`xValue$$]}], $CellContext`bcR,
            Thick, 
           Arrow[{{$CellContext`xValue$$, 
              $CellContext`funcC2F2[$CellContext`xValue$$]}, \
{$CellContext`xValue$$, 
               $CellContext`funcC2F2[$CellContext`xValue$$]} + Normalize[{1, 
                Derivative[
                1][$CellContext`funcC2F2][$CellContext`xValue$$]}]}]}]}, 
        PlotRange -> {{-0.1, 5.4}, {-2.4, 2.8}}, AspectRatio -> 1, Axes -> 
        None, ImageSize -> 4 72], 
      "Specifications" :> {{{$CellContext`xValue$$, 0.1, 
          "Move point along path"}, 0.1, 3.9, 0.01, ControlType -> Trigger, 
         DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Top, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.2", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{337., {196., 201.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC2F2[
           Pattern[$CellContext`x, 
            Blank[]]] := (2 Sin[(Pi/2) $CellContext`x - 0.7])/
          2^(($CellContext`x^2 - $CellContext`x + 1)/($CellContext`x + 2)), 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8], $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> GrayLevel[0.85]}, 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC2F2[
           Pattern[$CellContext`x, 
            Blank[]]] := (2 Sin[(Pi/2) $CellContext`x - 0.7]) 
          2^((-($CellContext`x^2 - $CellContext`x + 1))/($CellContext`x + 
            2))}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.50055069952044*^9},
 CellTags->"FIGURE 3.2  \[LightBulb]"],

Cell["\<\
In Section 2.1 we gave an intuitive definition of a tangent line and used \
numerical evidence to estimate its slope. We now make these ideas precise.\
\>", "Text",
 CellChangeTimes->{{3.4549435255979*^9, 3.454943550146625*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Tangent Lines and Rates of Change", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454943574800398*^9, 3.4549435798089933`*^9}, 
   3.454979715789153*^9},
 CellTags->"Tangent Lines and Rates of Change"],

Cell[TextData[{
 "Consider the curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " and a secant line intersecting the curve at the points ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Q", "(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 " (",
 StyleBox["Figure 3.3", "FigureFontText"],
 "). The difference ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "-", 
    RowBox[{"f", "(", "a", ")"}]}], TraditionalForm]]],
 " is the change in the value of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"a", ",", "x"}], "]"}], TraditionalForm]]],
 ", while ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "-", "a"}], TraditionalForm]]],
 " is the change in ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ". As discussed in Chapter 2, the slope of the secant line ",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["PQ",
     FontSlant->"Italic"], "\[LongLeftRightArrow]"], TraditionalForm]]],
 " is "
}], "Text",
 CellChangeTimes->{{3.4549435826095037`*^9, 3.454943667996902*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          SubscriptBox["m", "sec"], "=", 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", "x", ")"}], "-", 
            RowBox[{"f", "(", "a", ")"}]}], 
           RowBox[{"x", "-", "a"}]]}], ","}]}
      },
      GridBoxAlignment->{"Columns" -> {{"="}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454943674096422*^9, 3.454943691237216*^9}, 
   3.454946663046369*^9, {3.4549467623031197`*^9, 3.4549467652045517`*^9}, {
   3.487446686316614*^9, 3.487446686316658*^9}}],

Cell[TextData[{
 "and it gives the ",
 StyleBox["average rate of change",
  FontSlant->"Italic"],
 " of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"a", ",", "x"}], "]"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454946679106435*^9, 3.454946692569086*^9}, {
   3.454953072516279*^9, 3.4549530731603737`*^9}, 3.457018711869816*^9}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942042047*^9, 
  3.457291879791379*^9}],

Cell[TextData[{
 "Figure 3.3 assumes ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "a"}], TraditionalForm]]],
 ". Analogous pictures and arguments can be made for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", "a"}], TraditionalForm]]],
 "."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760509878063*^9, 3.454760527601894*^9}, 
   3.457018715369776*^9, 3.457180942042165*^9, 3.457291879791471*^9, 
   3.487446712671167*^9}]
}, Open  ]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = 5.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Pane[
       "Change location of point \!\(\*\nStyleBox[\"Q\",\nFontSlant->\"Italic\
\"]\)", {100, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`xValue$$], 5.5, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 1.51, 6.5, 
      0.01}}, Typeset`size$$ = {360., {180., 185.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55258$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = 5.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55258$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           $CellContext`funcC3F3[$CellContext`x], \
(($CellContext`funcC3F3[$CellContext`xValue$$] - $CellContext`funcC3F3[
              1.5])/($CellContext`xValue$$ - 1.5)) ($CellContext`x - 
             1.5) + $CellContext`funcC3F3[1.5], 
           Derivative[1][$CellContext`funcC3F3][1.5] ($CellContext`x - 
             1.5) + $CellContext`funcC3F3[1.5]}, {$CellContext`x, 0, 10}, 
          PlotRange -> {{-0.5, 11}, {-3, 8}}, PlotStyle -> {{Thick, Black}, {
             AbsoluteThickness[1.5], 
             RGBColor[0, 0.6, 0.4]}, {Thick, $CellContext`bcR}}], 
         Graphics[{Black, 
           Text[
           "\!\(\*\nStyleBox[\"O\",\nFontSlant->\"Italic\"]\)", {0, 0}, {1.5, 
            1.5}], 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"f\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {10, 
             $CellContext`funcC3F3[10]}, {1, 3}], 
           Text[
           "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"f\", \"(\", \"x\", \
\")\"}], \"-\", \n  RowBox[{\"f\", \"(\", \"a\", \")\"}]}],\n \
TraditionalForm]\)", {$CellContext`xValue$$, ($CellContext`funcC3F3[
               1.5] + $CellContext`funcC3F3[$CellContext`xValue$$])/2}, {-1.1,
              0}], 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"x\", \"-\", \"a\"}],\n \
TraditionalForm]\)", {($CellContext`xValue$$ + 1.5)/2, 
             $CellContext`funcC3F3[1.5]}, {0, 1.5}], 
           Text["\!\(\*FormBox[\"P\",\n TraditionalForm]\)", {1.5, 
             $CellContext`funcC3F3[1.5]}, {1.5, -1.5}], 
           Text[
           "\!\(\*FormBox[\"Q\",\n TraditionalForm]\)", \
{$CellContext`xValue$$, 
             $CellContext`funcC3F3[$CellContext`xValue$$]}, {-1.5, -1.5}], 
           Text[
            Framed[
             Pane[
             "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"tan\"], \"=\", \n\
  RowBox[{SubscriptBox[\"lim\", \n    RowBox[{\"x\", \"\[Rule]\", \"a\"}]], \
FractionBox[\n    RowBox[{\n     RowBox[{\"f\", \"(\", \"x\", \")\"}], \"-\", \
\n     RowBox[{\"f\", \"(\", \"a\", \")\"}]}], \n    RowBox[{\"x\", \"-\", \
\"a\"}]]}]}],\n TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> 
             White], {(10.5 - $CellContext`funcC3F3[1.5])/Derivative[
              1][$CellContext`funcC3F3][1.5] + 1.5, 10.5}, {0, 1}], 
           Text[
            Framed[
             Pane[
             "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"sec\"], \"=\", \
FractionBox[\n   RowBox[{\n    RowBox[{\"f\", \"(\", \"x\", \")\"}], \"-\", \n\
    RowBox[{\"f\", \"(\", \"a\", \")\"}]}], \n   RowBox[{\"x\", \"-\", \
\"a\"}]]}],\n TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> 
             White], {(
               7 - $CellContext`funcC3F3[$CellContext`xValue$$])/(($\
CellContext`funcC3F3[$CellContext`xValue$$] - $CellContext`funcC3F3[
               1.5])/($CellContext`xValue$$ - 1.5)) + $CellContext`xValue$$, 
             7}, {-0.5, -1.25}], $CellContext`bcR, 
           AbsoluteThickness[1], 
           Line[{{1.5, 
              $CellContext`funcC3F3[1.5]}, {$CellContext`xValue$$, 
              $CellContext`funcC3F3[1.5]}, {$CellContext`xValue$$, 
              $CellContext`funcC3F3[$CellContext`xValue$$]}}], Dashed, 
           Line[{{1.5, 
              $CellContext`funcC3F3[1.5]}, {0, 
              $CellContext`funcC3F3[1.5]}}], 
           Line[{{1.5, 0}, {1.5, 
              $CellContext`funcC3F3[1.5]}}], 
           Line[{{$CellContext`xValue$$, 0}, {$CellContext`xValue$$, 
              $CellContext`funcC3F3[1.5]}}], 
           Line[{{$CellContext`xValue$$, 
              $CellContext`funcC3F3[$CellContext`xValue$$]}, {0, 
              $CellContext`funcC3F3[$CellContext`xValue$$]}}], 
           AbsoluteThickness[4], 
           Opacity[0.5], 
           Dashing[{}], 
           
           Arrow[{{$CellContext`xValue$$, 0}, {$CellContext`xValue$$ - 1, 
              0}}], 
           Arrow[{{0, 
              $CellContext`funcC3F3[$CellContext`xValue$$]}, {
             0, $CellContext`funcC3F3[$CellContext`xValue$$] - 1}}], 
           Opacity[1], $CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{1.5, 
             $CellContext`funcC3F3[1.5]}], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F3[$CellContext`xValue$$]}]}]}, AspectRatio -> 
        1, ImageSize -> 5 72, PlotRange -> {{-1.5, 10}, {-1, 11}}, 
        BaseStyle -> {"Text", 13}, AxesStyle -> Arrowheads[{0, 0.04}], 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
        Ticks -> {{{
           1.5, "\!\(\*FormBox[\"a\",\n TraditionalForm]\)"}, \
{$CellContext`xValue$$, "\!\(\*FormBox[\"x\",\n TraditionalForm]\)"}}, {{
            $CellContext`funcC3F3[1.5], 
            "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \"a\", \")\"}],\n \
TraditionalForm]\)"}, {
            $CellContext`funcC3F3[$CellContext`xValue$$], 
            "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \"x\", \")\"}],\n \
TraditionalForm]\)"}}}], "Specifications" :> {
        Pane[
        "Change location of point \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
         BaseStyle -> {
          LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
           LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
           Left}], {{$CellContext`xValue$$, 5.5, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 1.51, 6.5, 
         0.01, ControlType -> Slider, ImageSize -> Tiny}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.3", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{506., {216., 221.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F3[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4, 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, 
         Attributes[PlotRange] = {ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F3[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550699620776*^9},
 CellTags->"FIGURE 3.3  \[LightBulb]"],

Cell[TextData[{
 "\tFigure 3.3 also shows what happens as the variable point ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " approaches the fixed point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". Under suitable conditions on ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ", the slopes ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", "sec"], TraditionalForm]]],
 " of the secant lines approach a unique number ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", "tan"], TraditionalForm]]],
 " that we call the ",
 StyleBox["slope of the tangent line",
  FontSlant->"Italic"],
 "; that is, "
}], "Text",
 CellChangeTimes->{{3.454946699006279*^9, 3.454946743468644*^9}, {
  3.456102017714055*^9, 3.456102020208729*^9}, {3.487446773512856*^9, 
  3.487446774777505*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "tan"], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"x", "\[Rule]", "a"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", "x", ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], 
            RowBox[{"x", "-", "a"}]]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454943674096422*^9, 3.454943691237216*^9}, 
   3.454946663046369*^9, {3.471111382200295*^9, 3.471111382200341*^9}}],

Cell[TextData[{
 "The secant lines themselves approach a unique line that intersects the \
curve at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " with slope ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", "tan"], TraditionalForm]]],
 "; this line is the ",
 StyleBox["tangent line at ",
  FontSlant->"Italic"],
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". The slope of the tangent line is also referred to as the ",
 StyleBox["instantaneous rate of change",
  FontSlant->"Italic"],
 " of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " because it measures how quickly ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " changes at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". We summarize these observations as follows."
}], "Text",
 CellChangeTimes->{{3.454943701661975*^9, 3.454943764559752*^9}, {
  3.454952545493948*^9, 3.454952552548539*^9}}],

Cell[TextData[{
 StyleBox["DEFINITION", "DefinitionFont"],
 "\t",
 StyleBox["Rates of Change and the Tangent Line",
  FontWeight->"Bold"],
 "\nThe ",
 StyleBox["average rate of change",
  FontWeight->"Bold"],
 " in ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"a", ",", "x"}], "]"}], TraditionalForm]]],
 " is the slope of the corresponding secant line: \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "sec"], "=", 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", "x", ")"}], "-", 
            RowBox[{"f", "(", "a", ")"}]}], 
           RowBox[{"x", "-", "a"}]]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "\nThe ",
 StyleBox["instantaneous rate of change",
  FontWeight->"Bold"],
 " in ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " is \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           SubscriptBox["m", "tan"], "=", 
           RowBox[{
            UnderscriptBox["lim", 
             RowBox[{"x", "\[Rule]", "a"}]], 
            FractionBox[
             RowBox[{
              RowBox[{"f", "(", "x", ")"}], "-", 
              RowBox[{"f", "(", "a", ")"}]}], 
             RowBox[{"x", "-", "a"}]]}]}], ","}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "(1)\nwhich is also the ",
 StyleBox["slope of the tangent line",
  FontWeight->"Bold"],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", provided this limit exists. The ",
 StyleBox["tangent line",
  FontWeight->"Bold"],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 " is the unique line through ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " with slope ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["m", "tan"], TraditionalForm]]],
 ". Its equation is \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{"y", "-", 
           RowBox[{"f", "(", "a", ")"}]}], "=", 
          RowBox[{
           RowBox[{
            SubscriptBox["m", "tan"], "(", 
            RowBox[{"x", "-", "a"}], ")"}], "."}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]]
}], "Definition",
 CellChangeTimes->{{3.454943768639003*^9, 3.454943794848013*^9}, 
   3.45494390049126*^9, 3.454944680925736*^9, {3.454944736682966*^9, 
   3.454944738795808*^9}, {3.454952588470038*^9, 3.454952588822103*^9}, {
   3.460806263024012*^9, 3.460806265289612*^9}, {3.487446866068108*^9, 
   3.487446870348157*^9}},
 CellTags->"DEFINITION Rates of Change and the Tangent Line"],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "1"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  Sketch the graph of a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " near a point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". As in Figure 3.3, draw a secant line that passes through ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " and a neighboring point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 " with ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", "a"}], TraditionalForm]]],
 ". Show how the secant lines approach the tangent line as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " approaches ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.4549443431669893`*^9, 3.454944403782998*^9}, {
   3.454952582148054*^9, 3.4549525823164663`*^9}, 3.471116795132535*^9, 
   3.4874469049754744`*^9},
 CellTags->"QUICK CHECK 1"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 1\t", "ExampleFont"],
 "Equation of a tangent line"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454943907032363*^9, 3.454943913974142*^9}},
 CellTags->"EXAMPLE 1 Equation of a tangent line"],

Cell[TextData[{
 "Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "16"}], 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"96", "x"}]}]}], TraditionalForm]]],
 " (the position function considered in Section 2.1) and consider the point \
",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 " on the curve."
}], "Text",
 CellChangeTimes->{{3.4549439165256863`*^9, 3.454943942461842*^9}, {
   3.4549531023493223`*^9, 3.454953103282393*^9}, 3.45701869904535*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFind the slope of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 ".",
 "\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind an equation of the tangent line in part (a)."
}], "Text",
 CellChangeTimes->{{3.454943944498665*^9, 3.454943962587446*^9}, 
   3.457018136309683*^9}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942042246*^9, 
  3.457291880647956*^9}],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]]],
 " have physical units, then the average and instantaneous rates of change \
have units of ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"(", 
     RowBox[{"units", " ", "of", " ", "y"}], ")"}], 
    RowBox[{"(", 
     RowBox[{"units", " ", "of", " ", "x"}], ")"}]], TraditionalForm]]],
 ". For example, if ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]]],
 " has units of meters and ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " has units of seconds, the units of the rates of change are ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    StyleBox["m",
     FontSlant->"Plain"], "/", 
    StyleBox["s",
     FontSlant->"Plain"]}], TraditionalForm]]],
 ".",
 Cell[BoxData[
  FormBox[Cell[""], TraditionalForm]]]
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760541228279*^9, 3.4547606062906322`*^9}, 
   3.457018702833288*^9, 3.4571809420423803`*^9, 3.4572918806480293`*^9, {
   3.471111414878087*^9, 3.471111422019312*^9}, {3.487446935612542*^9, 
   3.487446943420467*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tWe use the definition of the slope of the tangent line with ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]]],
 ": "
}], "Text",
 CellChangeTimes->{{3.454943985450436*^9, 3.454944003151122*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         SubscriptBox["m", "tan"], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "1"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", "x", ")"}], "-", 
            RowBox[{"f", "(", "1", ")"}]}], 
           RowBox[{"x", "-", "1"}]]}]}], 
        StyleBox[
         RowBox[{
         "Definition", " ", "of", " ", "slope", " ", "of", " ", "tangent", 
          " ", "line"}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "1"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "16"}], 
               SuperscriptBox["x", "2"]}], "+", 
              RowBox[{"96", "x"}]}], ")"}], "-", "80"}], 
           RowBox[{"x", "-", "1"}]]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{
           RowBox[{"f", "(", "x", ")"}], "=", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "16"}], 
             SuperscriptBox["x", "2"]}], "+", 
            RowBox[{"96", "x"}]}]}], ";", " ", 
          RowBox[{
           RowBox[{"f", "(", "1", ")"}], "=", "80"}]}], 
         "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "1"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"-", "16"}], 
            RowBox[{"(", 
             RowBox[{"x", "-", "5"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"x", "-", "1"}], ")"}]}], 
           RowBox[{"x", "-", "1"}]]}]}], 
        StyleBox[
         RowBox[{"Factor", " ", "the", " ", 
          RowBox[{"numerator", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "16"}], 
           UnderscriptBox[
            RowBox[{
             UnderscriptBox["lim", 
              RowBox[{"x", "\[Rule]", "1"}]], 
             RowBox[{"(", 
              RowBox[{"x", "-", "5"}], ")"}]}], 
            StyleBox[
             UnderscriptBox["\[UnderBrace]", 
              RowBox[{"-", "4"}]], "TypesetAnnotationFont"]]}], "=", "64"}]}], 
        StyleBox[
         RowBox[{"Cancel", " ", "factors", " ", 
          RowBox[{"(", 
           RowBox[{"x", "\[NotEqual]", "1"}], ")"}], " ", "and", " ", 
          "evaluate", " ", "the", " ", 
          RowBox[{"limit", "."}]}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.45494400498529*^9, 3.454944168786602*^9}, {
  3.4549526016386843`*^9, 3.4549526053937273`*^9}, {3.471111430621656*^9, 
  3.471111436408009*^9}, {3.471119769254384*^9, 3.471119771024214*^9}}],

Cell[TextData[{
 "We have confirmed the conjecture made in Section 2.1 that the slope of the \
line tangent to the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "16"}], 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"96", "x"}]}]}], TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 " is 64."
}], "Text",
 CellChangeTimes->{{3.45494419025248*^9, 3.4549442216383553`*^9}}],

Cell[TextData[{
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tAn equation of the line passing through ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 " with slope ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", "tan"], "=", "64"}], TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "-", "80"}], "=", 
    RowBox[{"64", 
     RowBox[{"(", 
      RowBox[{"x", "-", "1"}], ")"}]}]}], TraditionalForm]]],
 " or ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{
     RowBox[{"64", "x"}], "+", "16"}]}], TraditionalForm]]],
 ". The graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 " are shown in ",
 StyleBox["Figure 3.4", "FigureFontText"],
 "."
}], "Text",
 CellChangeTimes->{{3.454944224638728*^9, 3.4549442732939*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
RJfVuLPJ1q4JRI1NkusethzuLh7SPPkKOZPaNj0zso306tJCDRDq2vNRGf97
jzTQxZ9VO2TrmWW34ZzrGdbMFx2xaIO1taJKrUZQ2Ex+kf92BS8NOY3DmzHk
wIeQg70ZXLUVDwtht+Smm6p6/rk7t20r25t3JtUtakJ6lUwlqcdP66OJpBuU
l+1f93zdYx+Uy3+vdNp+sKE9c2rlyX9twvHy8lI/oq+B0a1Dmtccm+EeTb3p
0mgfbRtOqX7Edivn7erqygRUhbtpywmSFqpUhR12XsfDcZmK2fm5cAHAJ0/j
uc04eeADycHebI5dtaxkDfWRm24GJ+3JVapT1rQ3LbUk7fF6LIVgbwYzzTpM
e/9o5e6DFMqfRDKsd7IeXtQz6KkJit+PWTp3/f/FUchr5/kZ1jzbSfDTnuzP
9Xx2uStNXExuWjeWzbya25mR971y+XGCNMzHL+nI5O7MHN5Xm3HgaRSxE1kf
3oz+Ax9ODvZmg6sWaicr3ZQO5y/v/d53NSMGqyvbmz3SmYbRGq1+WnXW+b5X
35dfzMrzQSPe1JX9qGF7vfFxn29Tq9otBxPGWzr93fW5zfPDg1nmN1tDsLyU
+ybZGRCR8naiSbyP1LKd+EDWO8v6eOOBp1Evx1nNqGN+szmcf/8csEQCVEZW
uiliF5y0I564lec3FdWIIwvllrQP7IqnNa+j9N7pUfvqCmoT+W65K+7Ievhg
4ar1p7+ELbuO8azm6X7m1U0vka1v2pkMZ8Y29u5Tv3Pv/vXf6HdipuXw0zi6
GaXbm83xSta4aqEystJN0bvgpB2R27iyvWmY4RmmOy+cQ89o9dP2dJvBpNVu
PHTLPs/FO/20G2+3iI/pT4o5t3nNrLqpvlOtCRA8z+a8bbU3/Znp2rl/0zfS
3rednHUapzRjyIlKycTebHDVQtXko5uqdxOdtM1G9qah3ftRkb3bbrM/ntb3
sa3dprdo+nWzuZ34s5gZVRzdUmvOX11dPT9G3umRthHNaxbIQzFLSscnFrFz
cSz6owXLTwc3vbo55DRupZs52Ju4aqFi8tFNUbq/vPf76c/aVvZm2gx/LMGU
S/20/cKkUhsmxXq65SaZ+EslIKXnbI9oXrNM/qYpps4YDvHTnhSsYCxbO2/G
P26e+qzTuGd7s8FVC/WSiW5Kp5o6accNUNe0N6W/FeFLh/cqakc+veNCc6mf
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
McW5Q/765e/0in/4xfcvX734869/prfBk7/9o/+D/m4RnUU3AWCHhIUttm4O
LI5Ymnq5/eonIp3Xb917JDLaZXWmy+igmwCwQ/wUp2hoNeH30vmLBEhXH0oh
6Zu7jYCSs/HHX/xSHbPeujQxFQu067NhcrOpMY0OAOAklU1xikS2ztw1B8W8
saouLj741ddbt3QbTB8f/emHo/dv9VRNztbhU5jcbNBNANgrNU1xSof/1y9/
9/TJV/L6zfsf6GBADKs7Xdi3btrMppwTL45igPs/pR+UjS8carCjm/ljSalb
N2Q26jsijxxXNU6/gAzIyy2EHpCjqGyKUx8oOS6zLkUINPRFfpFrJ7bS8AWa
a0LOjD8n4a+mm8EUVdLJzaZG3VSnhPkoiubN86cyVrRR8cP7D8JgqTjk6qRH
tHWj5kQumRxdBbffj998J7IiaqI/5YieffZp15i8LMJjZV3i1u2aDRMCRS6l
PHf6p6J7j9HI4asN3hr/06+b6eRmU5du+j75g199XXrHJVczPNr639aLWwTp
EfXcriViPrHSb7+7fsbdeHpcRXe8NtOnYxv5rz/Gog/No4M3PS49zK1btDH9
umlTn3J7p04wP7lpdUGr0U0dDIv90nMGCsJHeclwUY/OKHHML7fr9bN875E0
XkP+LIahmkfbLlPpt18wWPyNV664yHN0cxiHm7A5uO/kd5OYaqole5kosa+Y
F7ljR+tm6+RmU4tu6pnRl56foh1l0vLrUfGtxOhLLq6ZAMVN7ssFutYUd9PK
Map/oOtmLg57+qQfLlo3b6zm2/BC/9q6aeO5Gwkch036EWkFU5xKmOLcujnb
M1A30wF8mNy09+vQTcPmf4t2lOl1DN5LjTM33Szr6PS+7YxkK39UrAcoFrR6
PIoetulFkduvXOkP2IMT7jQ5wCoL1d6NSCuaBBnNSXvT5o/SFE4/uenX2KpY
N8t96q8f83uPQseruqlXvzjd7LJWdD66aJVpbu86jVosfdjmIw/lJpSeRDPo
t27XePxcbSoiIYuz3E7DOLqCBy2o4KAmcuPB6xii98QFpZmb/v36dLPcrrjH
J2Y9QNGjAsOGAUXPmjXOQDP/WLkX6M4084tUluwQMGtCvXDSLUh3p7/oBq2B
H+WixytyaeVx6ggemII+mFaKNvQ2Pn/TP7bX098O/5FadbPcAX8PXSUvSkTH
AHInq9xs3ZzxaOyiCmUFw7Yfv/lO+gQfTGuUKJ3B+LK4QW+L1ZTFaXdjamGJ
OpQ7nJtOV+d5NxecDA67JjebqnWzvjvEZgOLjqKRJ9oHY8hjLn11oSpjEVxW
EKDoYZvWo9Dfpf1yXXRsY1ZncTdeSKiR7u7pk68sW00lpvQpTjlGkXtN0pSD
NQPTux/199IdO6PxU5whl8q/Hz7VNbnZ1Kub5Q74u7DrW7SxGfoxk84SbZnG
eWj1vzUN27Tqka9CpgZaQR2vD6Xz95h/Xy+fvxXLunA3keqGM5r8MV7UFeg1
Aq1DmN4JPUX2uiY3m3p1s9ABfw/6dBSXgeLx87ZqdfqE+uIeau2X/BXxw7aa
JpWsbyluOOpTDELL7aDkCvpyHMVNcfoUm6OVPlxlWjn8ggY8C+F91+o56Zn5
6pncbKrWzeL64R70+mpvXNP9f1dB6BA/XNCh3RjOx8mA1d5+xdZB6knduiuq
c++RPFkmnSVOcdrCYf5NrS4ifXtZl2xR9E72wyQNsUi37JncbOrVzeIGxj3c
xJ0WOLs0hCHrxmaIdsjy0H184OH9BxpO40vvdj2SxWHe2uLGAz2lYHxO39Mn
X/V0kqVT0HB0HUQarg74sOpAz+RmU69uFjcw7sLbNWV1WQMpNNgpTB510bMY
blnoZSrO/9yVunU9xXkccWoDnuKmOGEc/SWweiY3m6p1s4Kb34tm6mWqw2dr
hkxZ45zrK/L86Y/ffCddrv28q4V46Io1xLGC+7Bxl6mgW66/UIyvyanVkq2f
LG6KE+alf3KzQTcz5qZYVodoXpSZTxew61VisJ9eFIs79fmbls5ZkMr0YBJT
YiKDhc0E29/rpvy3pixOmEj/5GZTnW6GMeTWzRmPLXgkByJPsX9ZYG1BPZgo
iK7nGCpy3Hg7j6NryqX0YZvay2J5+WGMxeoXelDeVStDHVvcOSQglJ7FCTPS
P7nZ1KWb2jnb8ZY4NlbuZl66Kevo/IKAula19GZ+ZrMsJ20XpeehHE3aHlzN
Nn5T0SzollN0DstHB1kCQljN1rvmmOLcOf2Tm01Futm1YmCJAY0nY06K65Z9
uTNff0ZnAIvrjbuwAu9Fm2ZxbfGDgBZ9jfyaCF4cQ6GqygrVwjhOTm42Fenm
fvDF0MrCwr8110xfWzdqfsqVGL21NBnQAvVLX3nT8Iema/WG54gpTmgGTG42
6CYA7Ib+AQBTnNAkk5ut26CbAAANU5xw4OTkZoNuAgDcwhTnznn3r3d+crPL
QYFuAgAoTHHunDC5iW4CAPTDFOfOOZm5qaCbAADKm7ev/RRnHYHEMJwhk5sN
ugkA4PDpq3SMuyJMbvYEhqGbAAAGU5y7ZeDkZoNuAgA4mOLcLX5yU4ZPPVui
mwAARpji3Lo5sB4DJzcbdBMA4BimOPeJv+79qxigmwAAHqY4d4if3DzpZ0A3
AQA8foqzf54LqiFkbvZXWUQ3AQA8THHukOGTmw26CQCQwBTn3vBX/OT6hugm
AEDAT3GK9cHaKHUjCniWhwHdBAAIMMW5K4ZnbiroJgBA4OWrF0xx7ofgXji5
PboJAJASJryo8V4x515rdBMAICXYIOhmrZw7udmgmwAAbTDFuRNGXGh0EwAg
ZYQZAiUywrGAbgIAtMIU5x4YkauLbgIAtHJumCUUx7jaUOgmAEAr56b1QXGM
m8VGNwEAWmGKs3rGrX2DbgIAdHFW2VIojnGFiNFNAIAuzlomA8pi9MI36CYA
QBdMcVaM6KaMheSyimjKz+Hx0nJXiHQSYg0AkHJ1dSWKKZ2kdJXy+9bNgZkx
4RuhgIgmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgPH/AZE7NuM=
    "], {{0, 623}, {616, 
    0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 252., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->252.,
  ImageSizeRaw->{616, 623},
  PlotRange->{{0, 616}, {0, 623}}]], "Output",
 CellChangeTimes->{3.500550700069541*^9},
 CellTags->"FIGURE 3.4"],

Cell[TextData[StyleBox["FIGURE 3.4", "FigureFont"]], "FigureCaption",
 CellChangeTimes->{{3.454951767799337*^9, 3.4549517706290817`*^9}}],

Cell[TextData[{
 "Related Exercises 11\[LongDash]16 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.454944283481987*^9, 3.454944287265051*^9}}]
}, Open  ]]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "2"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  In Example 1, is the slope of the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"2", ",", "128"}], ")"}], TraditionalForm]]],
 " greater than or less than the slope at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 "? ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.454944297996519*^9, 3.454944320222816*^9}, 
   3.471116799857918*^9, {3.4781895658235903`*^9, 3.478189577703312*^9}},
 CellTags->"QUICK CHECK 2"],

Cell[TextData[{
 "\tAn alternative formula for the slope of the tangent line is helpful for \
future work. We now let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"a", "+", "h"}], ",", 
     RowBox[{"f", "(", 
      RowBox[{"a", "+", "h"}], ")"}]}], ")"}], TraditionalForm]]],
 " be the coordinates of ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 ", respectively (",
 StyleBox["Figure 3.5", "FigureFontText"],
 "). The difference in the ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 "-coordinates of ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"a", "+", "h"}], ")"}], "-", "a"}], "=", "h"}], 
   TraditionalForm]]],
 ". Note that ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 " is located to the right of ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", ">", "0"}], TraditionalForm]]],
 " and to the left of ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "<", "0"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.4549444174287252`*^9, 3.454944502167989*^9}, 
   3.471111446525138*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`aValue$$ = 1.5, $CellContext`hValue$$ = 
    4, $CellContext`resetAValue$$ = False, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Pane[
       "Change location of point \!\(\*\nStyleBox[\"Q\",\nFontSlant->\"Italic\
\"]\)", {100, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`hValue$$], 4, 
       "\!\(\*\nStyleBox[\"h\",\nFontSlant->\"Italic\"]\)"}, 0.01, 4.5, 
      0.01}, {
      Hold[
       Grid[{{
          Spacer[20], 
          Row[{"\!\(\*FormBox[\"h\",\n TraditionalForm]\)", " = ", 
            Dynamic[$CellContext`hValue$$]}]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Pane[
       "Change location of points \!\(\*\nStyleBox[\"P\",\n\
FontSlant->\"Italic\"]\) and \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`aValue$$], 1.5, 
       "\!\(\*\nStyleBox[\"a\",\nFontSlant->\"Italic\"]\)"}, 1.03, 3, 0.01}, {{
       Hold[$CellContext`resetAValue$$], False, 
       "reset \!\(\*\nStyleBox[\"P\",\nFontSlant->\"Italic\"]\)"}, {
      True, False}}}, Typeset`size$$ = {360., {179., 185.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`hValue$55325$$ = 0, $CellContext`aValue$55326$$ = 
    0, $CellContext`resetAValue$55327$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`aValue$$ = 1.5, $CellContext`hValue$$ = 
        4, $CellContext`resetAValue$$ = False}, "ControllerVariables" :> {
        Hold[$CellContext`hValue$$, $CellContext`hValue$55325$$, 0], 
        Hold[$CellContext`aValue$$, $CellContext`aValue$55326$$, 0], 
        Hold[$CellContext`resetAValue$$, $CellContext`resetAValue$55327$$, 
         False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`resetAValue$$, {$CellContext`aValue$$, \
$CellContext`resetAValue$$} = {1.5, False}]; Show[{
          Plot[{
            $CellContext`funcC3F4[$CellContext`x], \
(($CellContext`funcC3F4[$CellContext`aValue$$ + $CellContext`hValue$$] - \
$CellContext`funcC3F4[$CellContext`aValue$$])/$CellContext`hValue$$) \
($CellContext`x - $CellContext`aValue$$) + \
$CellContext`funcC3F4[$CellContext`aValue$$], 
            Derivative[
              1][$CellContext`funcC3F4][$CellContext`aValue$$] \
($CellContext`x - $CellContext`aValue$$) + \
$CellContext`funcC3F4[$CellContext`aValue$$]}, {$CellContext`x, 0, 10}, 
           PlotRange -> {{-1.5, 11}, {-1, 11}}, PlotStyle -> {{Thick, Black}, {
              AbsoluteThickness[1.5], 
              RGBColor[0, 0.6, 0.4]}, {Thick, $CellContext`bcR}}], 
          Graphics[{Black, 
            Text[
            "\!\(\*\nStyleBox[\"O\",\nFontSlant->\"Italic\"]\)", {0, 0}, {1.5,
              1.5}], 
            Text[
            "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"f\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {10, 
              $CellContext`funcC3F4[10]}, {1, 3}], 
            Text[
            "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"f\", \"(\", \n   RowBox[{\
\"a\", \"+\", \"h\"}], \")\"}], \"-\", \n  RowBox[{\"f\", \"(\", \"a\", \
\")\"}]}],\n TraditionalForm]\)", {$CellContext`aValue$$ + \
$CellContext`hValue$$, ($CellContext`funcC3F4[$CellContext`aValue$$] + \
$CellContext`funcC3F4[$CellContext`aValue$$ + $CellContext`hValue$$])/
              2}, {-1.1, 0}], 
            Text[
            "\!\(\*FormBox[\"h\",\n TraditionalForm]\)", \
{$CellContext`aValue$$ + $CellContext`hValue$$/2, 
              $CellContext`funcC3F4[$CellContext`aValue$$]}, {0, 1.5}], 
            Text[
            "\!\(\*FormBox[\"P\",\n TraditionalForm]\)", \
{$CellContext`aValue$$, 
              $CellContext`funcC3F4[$CellContext`aValue$$]}, {1.5, -1.5}], 
            Text[
            "\!\(\*FormBox[\"Q\",\n TraditionalForm]\)", \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
              $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {-1.5, -1.5}], 
            Text[
             Framed[
              Pane[
              "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"tan\"], \"=\", \
\n  RowBox[{SubscriptBox[\"lim\", \n    RowBox[{\"h\", \"\[Rule]\", \"0\"}]], \
FractionBox[\n    RowBox[{\n     RowBox[{\"f\", \"(\", \n      RowBox[{\"a\", \
\"+\", \"h\"}], \")\"}], \"-\", \n     RowBox[{\"f\", \"(\", \"a\", \
\")\"}]}], \"h\"]}]}],\n TraditionalForm]\)", $CellContext`bcPBS], \
$CellContext`bcFO, Background -> 
              White], {(10.5 - $CellContext`funcC3F4[$CellContext`aValue$$])/
               Derivative[
               1][$CellContext`funcC3F4][$CellContext`aValue$$] + \
$CellContext`aValue$$, 10.5}, {0, 1}], 
            Text[
             Framed[
              Pane[
              "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"sec\"], \"=\", \
FractionBox[\n   RowBox[{\n    RowBox[{\"f\", \"(\", \n     RowBox[{\"a\", \
\"+\", \"h\"}], \")\"}], \"-\", \n    RowBox[{\"f\", \"(\", \"a\", \")\"}]}], \
\"h\"]}],\n TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, 
              Background -> 
              White], {(
                7 - $CellContext`funcC3F4[$CellContext`aValue$$])/(($\
CellContext`funcC3F4[$CellContext`aValue$$ + $CellContext`hValue$$] - \
$CellContext`funcC3F4[$CellContext`aValue$$])/$CellContext`hValue$$) + \
$CellContext`aValue$$, 7}, {-0.5, -1.25}], $CellContext`bcR, 
            AbsoluteThickness[1], 
            Line[{{$CellContext`aValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}}], Dashed, 
            Line[{{$CellContext`aValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}, {0, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}}], 
            Line[{{$CellContext`aValue$$, 0}, {$CellContext`aValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}}], 
            
            Line[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               0}, {$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$]}}], 
            Line[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {0, 
               $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}}], 
            AbsoluteThickness[4], 
            Opacity[0.5], 
            Dashing[{}], 
            
            Arrow[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               0}, {$CellContext`aValue$$ + $CellContext`hValue$$ - 1, 0}}], 
            Arrow[{{0, 
               $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {
              0, $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$] - 1}}], 
            Opacity[1], $CellContext`bcB, 
            AbsolutePointSize[7], 
            Point[{$CellContext`aValue$$, 
              $CellContext`funcC3F4[$CellContext`aValue$$]}], 
            Point[{$CellContext`aValue$$ + $CellContext`hValue$$, 
              $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$]}]}]}, AspectRatio -> 1, ImageSize -> 5 72, 
         PlotRange -> {{-1.5, 10}, {-1, 11}}, BaseStyle -> {"Text", 13}, 
         AxesStyle -> Arrowheads[{0, 0.04}], 
         AxesLabel -> {
          "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
           "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
         Ticks -> {{{$CellContext`aValue$$, 
             "\!\(\*FormBox[\"a\",\n TraditionalForm]\)"}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
             "\!\(\*FormBox[\n RowBox[{\"a\", \"+\", \"h\"}],\n \
TraditionalForm]\)"}}, {{
             $CellContext`funcC3F4[$CellContext`aValue$$], 
             "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \"a\", \")\"}],\n \
TraditionalForm]\)"}, {
             $CellContext`funcC3F4[$CellContext`aValue$$ + \
$CellContext`hValue$$], 
             "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \n  RowBox[{\"a\", \
\"+\", \"h\"}], \")\"}],\n TraditionalForm]\)"}}}]), "Specifications" :> {
        Pane[
        "Change location of point \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
         BaseStyle -> {
          LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
           LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
           Left}], {{$CellContext`hValue$$, 4, 
          "\!\(\*\nStyleBox[\"h\",\nFontSlant->\"Italic\"]\)"}, 0.01, 4.5, 
         0.01, ControlType -> Slider, ImageSize -> Tiny}, 
        Grid[{{
           Spacer[20], 
           Row[{"\!\(\*FormBox[\"h\",\n TraditionalForm]\)", " = ", 
             Dynamic[$CellContext`hValue$$]}]}}], Delimiter, 
        Pane[
        "Change location of points \!\(\*\nStyleBox[\"P\",\n\
FontSlant->\"Italic\"]\) and \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
         BaseStyle -> {
          LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
           LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
           Left}], {{$CellContext`aValue$$, 1.5, 
          "\!\(\*\nStyleBox[\"a\",\nFontSlant->\"Italic\"]\)"}, 1.03, 3, 0.01,
          ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`resetAValue$$, False, 
          "reset \!\(\*\nStyleBox[\"P\",\nFontSlant->\"Italic\"]\)"}, {
         True, False}, ControlType -> Checkbox}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.5", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{521., {215., 221.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F4[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4, 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, 
         Attributes[PlotRange] = {ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F4[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550700172351*^9},
 CellTags->"FIGURE 3.5  \[LightBulb]"],

Cell[TextData[{
 "\tThe slope of the secant line ",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["PQ",
     FontSlant->"Italic"], "\[LongLeftRightArrow]"], TraditionalForm]]],
 " using the new notation is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", "sec"], "=", 
    FractionBox[
     RowBox[{
      RowBox[{"f", "(", 
       RowBox[{"a", "+", "h"}], ")"}], "-", 
      RowBox[{"f", "(", "a", ")"}]}], "h"]}], TraditionalForm]]],
 ". As ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]]],
 " approaches 0, the variable point ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 " approaches ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " and the slopes of the secant lines approach the slope of the tangent line. \
Therefore, the slope of the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 ", which is also the instantaneous rate of change of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", is "
}], "Text",
 CellChangeTimes->{{3.4549445562298403`*^9, 3.4549446261664762`*^9}, {
   3.454952627692108*^9, 3.454952633276804*^9}, 3.471111525102013*^9}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "tan"], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", "0"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", 
              RowBox[{"a", "+", "h"}], ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], "h"]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454944629646585*^9, 3.454944645843308*^9}}],

Cell[TextData[{
 StyleBox["ALTERNATIVE DEFINITION", "DefinitionFont"],
 "\t",
 StyleBox["Rates of Change and the Tangent Line",
  FontWeight->"Bold"],
 "\nThe ",
 StyleBox["average rate of change",
  FontWeight->"Bold"],
 " in ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"a", ",", 
     RowBox[{"a", "+", "h"}]}], "]"}], TraditionalForm]]],
 " is the slope of the corresponding secant line: \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "sec"], "=", 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", 
             RowBox[{"a", "+", "h"}], ")"}], "-", 
            RowBox[{"f", "(", "a", ")"}]}], "h"]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "\nThe ",
 StyleBox["instantaneous rate of change",
  FontWeight->"Bold"],
 " in ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " is \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           SubscriptBox["m", "tan"], "=", 
           RowBox[{
            UnderscriptBox["lim", 
             RowBox[{"h", "\[Rule]", "0"}]], 
            FractionBox[
             RowBox[{
              RowBox[{"f", "(", 
               RowBox[{"a", "+", "h"}], ")"}], "-", 
              RowBox[{"f", "(", "a", ")"}]}], "h"]}]}], ","}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "(2)\nwhich is also the ",
 StyleBox["slope of the tangent line",
  FontWeight->"Bold"],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 ", provided this limit exists. "
}], "Definition",
 CellChangeTimes->{{3.454944654993936*^9, 3.45494474976772*^9}, {
  3.4549518777111692`*^9, 3.454951884742343*^9}, {3.460806271054368*^9, 
  3.4608062731390657`*^9}, {3.478189589239235*^9, 3.478189591304613*^9}, {
  3.487447061963195*^9, 3.487447061963235*^9}},
 CellTags->"DEFINITION (ALTERNATIVE) Rates of Change and the Tangent Line"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 2\t", "ExampleFont"],
 "Equation of a tangent line"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454944763883801*^9, 3.454944770830621*^9}},
 CellTags->"EXAMPLE 2 Equation of a tangent line"],

Cell[TextData[{
 "Find an equation of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     SuperscriptBox["x", "3"], "+", 
     RowBox[{"4", "x"}]}]}], TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "1"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454944774417952*^9, 3.4549447951428633`*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "We let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]]],
 " in definition (2) and first find ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "(", 
    RowBox[{"1", "+", "h"}], ")"}], TraditionalForm]]],
 ". After expanding and collecting terms, we have "
}], "Text",
 CellChangeTimes->{{3.454944802093669*^9, 3.45494482314225*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          RowBox[{"f", "(", 
           RowBox[{"1", "+", "h"}], ")"}], "=", 
          RowBox[{
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"1", "+", "h"}], ")"}], "3"], "+", 
            RowBox[{"4", 
             RowBox[{"(", 
              RowBox[{"1", "+", "h"}], ")"}]}]}], "=", 
           RowBox[{
            SuperscriptBox["h", "3"], "+", 
            RowBox[{"3", 
             SuperscriptBox["h", "2"]}], "+", 
            RowBox[{"7", "h"}], "+", "5"}]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454944826423503*^9, 3.4549448508949423`*^9}}],

Cell[TextData[{
 "Substituting ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "(", 
    RowBox[{"1", "+", "h"}], ")"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "1", ")"}], "=", "5"}], TraditionalForm]]],
 ", the slope of the tangent line is "
}], "Text",
 CellChangeTimes->{{3.454944858856038*^9, 3.4549448775427113`*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         SubscriptBox["m", "tan"], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", 
             RowBox[{"1", "+", "h"}], ")"}], "-", 
            RowBox[{"f", "(", "1", ")"}]}], "h"]}]}], 
        StyleBox[
         RowBox[{"Definition", " ", "of", " ", 
          SubscriptBox["m", "tan"]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["h", "3"], "+", 
              RowBox[{"3", 
               SuperscriptBox["h", "2"]}], "+", 
              RowBox[{"7", "h"}], "+", "5"}], ")"}], "-", "5"}], "h"]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Substitute", " ", 
           RowBox[{"f", "(", 
            RowBox[{"1", "+", "h"}], ")"}], " ", "and", " ", 
           RowBox[{"f", "(", "1", ")"}]}], "=", "5."}], 
         "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{"h", "(", 
            RowBox[{
             SuperscriptBox["h", "2"], "+", 
             RowBox[{"3", "h"}], "+", "7"}], ")"}], "h"]}]}], 
        StyleBox[
         RowBox[{"Simplify", "."}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["h", "2"], "+", 
            RowBox[{"3", "h"}], "+", "7"}], ")"}]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Cancel", " ", "h"}], ",", " ", 
          RowBox[{
           RowBox[{"noting", " ", "h"}], "\[NotEqual]", "0."}]}], 
         "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", "7"}], 
        StyleBox[
         RowBox[{"Evaluate", " ", "the", " ", 
          RowBox[{"limit", "."}]}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454944881020898*^9, 3.4549449932538958`*^9}, {
  3.454953133417046*^9, 3.4549531354937267`*^9}, {3.4570186783808002`*^9, 
  3.457018678380848*^9}, {3.471119778481717*^9, 3.471119781473003*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942043936*^9, 
  3.457291605553234*^9}],

Cell[TextData[{
 "In this limit, notice that ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]]],
 " approaches 0 but ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "\[NotEqual]", "0"}], TraditionalForm]]],
 ". Therefore, it is permissible to cancel ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]]],
 " from the numerator and denominator of ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"h", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["h", "2"], "+", 
       RowBox[{"3", "h"}], "+", "7"}], ")"}]}], "h"], TraditionalForm]]],
 "."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.45476063065413*^9, 3.4547606739909782`*^9}, 
   3.45701867147705*^9, 3.457180942045402*^9, 3.457291605554646*^9, {
   3.4781896105106773`*^9, 3.4781896122607594`*^9}}]
}, Open  ]],

Cell[TextData[{
 "The tangent line has slope ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["m", "tan"], "=", "7"}], TraditionalForm]]],
 " and passes through the point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "5"}], ")"}], TraditionalForm]]],
 " (",
 StyleBox["Figure 3.6", "FigureFontText"],
 "); its equation is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "-", "5"}], "=", 
    RowBox[{"7", 
     RowBox[{"(", 
      RowBox[{"x", "-", "1"}], ")"}]}]}], TraditionalForm]]],
 " or ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{
     RowBox[{"7", "x"}], "-", "2"}]}], TraditionalForm]]],
 ". We could also say that the instantaneous rate of change of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "1"}], TraditionalForm]]],
 " is 7."
}], "Text",
 CellChangeTimes->{{3.4549450104325657`*^9, 3.454945075806769*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
d0mQVDDkSo6bOeRbp+nXaNPHZWbvtlIm0yPqCZK6MEjqSHa2brC84v5pQmuB
pILS2BwpXz21NoOW31tYpUwHSOrCdHc0gp2opFqSlfyiy7jL49XLF7ZW+LAu
jguDpMJmexkEeir/7ag3T5y2NdrS/z5OApK6GHJRyZzvs0NFCzRPJtPvzloE
ubtBHY3mbGdxSpFU0GaD5ehpS5vBSvR0g6QuiNinXx5dPo6vkd/l/Ps6DuiP
3qLoOdTzqWnba49rD5DUyomb98plnKn6aKVMXHm69riWBkldEus8YLegWtax
6qCy5OJ6GVb/3+xu7JHUmont03z1tObgaQCSCrAWSGq1NOrp2oMaSBw81UqZ
7G5xJwFJBVgLJLVO4sVlMtVT32bQfpaxRttgkFSAtUBSK6QYPW1rM5ip73oq
kFSAtUBSayPWU7kA1h7UEIpfo20wSCrAWiCpVdGopzk6SGtYo20wFUqqNnjX
EtGg5sIa7+iiMFMPNlG0zLOtkfWle+fszV4LrPTBLwRgfezlpy60urnOIcyr
KGZfkNR6iPORcrRPfZtBr6eVO3s9VUmqaoe/sIOeAMES5DVcJ1fLcDe1w1Ux
nakZUfBB3HA9El3de8nW98uDpFZCrKc5Ln4aV8po8HTtcaVFVZJ6eYu1XfzL
Lu9uSc3RJ7MXapLHq6+qmPoZYForVeWyQU9d62Ot2NUuSaV+FkhqDZRhn7a1
GazHm9eTqiR1c90TwNrZBXO1LqV9ePhAl+eeZ8jTI8OW+4R9u2h6+zQ4CZfn
5+4j9Y2blTqVqMl+VMrlPB/f5sujI2+TqotexbdIWxVJLZ6S9LTmNoP9qU1S
FetdH5s/1uBoylHOzICFzOIlRz12+HaiJrRSr1RyO2BbgrxtvVp58sp1kPxK
bQNAUssm7jeYXT6SBk/DSpn62gz2B0nN6wqPMcXpb8eZ6bdTKL2kTnWidJ9/
/Od/931JeWv3IKkFIx/u4eEDb59mV39qwVMqZfqDpGYtqTdByX2MuKvD7/GS
ya1UW0RGfc6yW7n2uj++G0N16pDu6iCppSJfq9z1tK3NYGGeoslBUgNJ1cyc
oL5Gg3ryKvWUapqTLs0pD53nY2m2l6iC7LvomH8XVcD7D5/6fAARmmCpuFcv
X2j5T8dlbyrcx+ib3Eq1HR64RdnsHLZheUp6BsYPIxGQ1CKJ1xPPT0+rX6Nt
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
AAAAAAAAAMzI/wcoUHHD
    "], {{0, 600}, {625, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 252., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->252.,
  ImageSizeRaw->{625, 600},
  PlotRange->{{0, 625}, {0, 600}}]], "Output",
 CellChangeTimes->{3.500550700607276*^9},
 CellTags->"FIGURE 3.6"],

Cell[TextData[StyleBox["FIGURE 3.6", "FigureFont"]], "FigureCaption",
 CellChangeTimes->{{3.454951781907196*^9, 3.454951783417302*^9}}],

Cell[TextData[{
 "Related Exercises 17\[LongDash]22 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.454945081540708*^9, 3.454945084770328*^9}}]
}, Open  ]]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "3"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  Set up the calculation in Example 2 using definition (1) for the slope of \
the tangent line rather than definition (2). Does the calculation appear more \
difficult using definition (1)? ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.4549450905197163`*^9, 3.454945125432966*^9}, 
   3.471116805595665*^9},
 CellTags->"QUICK CHECK 3"]
}, Open  ]],

Cell[CellGroupData[{

Cell["The Derivative Function", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.45494514704665*^9, 3.454945150794614*^9}},
 CellTags->"The Derivative Function"],

Cell[TextData[{
 "So far we have computed the slope of the tangent line at one fixed point on \
the curve. If this point is moved along the curve, the tangent line also \
moves, and, in general, its slope changes (",
 StyleBox["Figure 3.7", "FigureFontText"],
 "). For this reason, the slope of the tangent line for the function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is itself a function of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ", called the ",
 StyleBox["derivative",
  FontSlant->"Italic"],
 " of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454945153309328*^9, 3.454945211934683*^9}, 
   3.4711115520939703`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = 2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], 2, 
       "\!\(\*\nStyleBox[\"a\",\nFontSlant->\"Italic\"]\)"}, 0.2, 9.8, 0.1}, {{
       Hold[$CellContext`xValue$$], 2, ""}, 0.2, 9.8, 0.01}}, 
    Typeset`size$$ = {360., {114., 119.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55404$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = 2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55404$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           $CellContext`funcC3F7[$CellContext`x], 
           Derivative[
             1][$CellContext`funcC3F7][$CellContext`xValue$$] ($CellContext`x - \
$CellContext`xValue$$) + $CellContext`funcC3F7[$CellContext`xValue$$]}, \
{$CellContext`x, 0, 10}, 
          PlotStyle -> {{Thick, Black}, {Thick, $CellContext`bcR}}], 
         Graphics[{
           Text[
            Framed[
             Pane[
              
              Grid[{{"\!\(\*SubscriptBox[\n StyleBox[\"m\",\n\
FontSlant->\"Italic\"], \"tan\"]\)", "=", "instantaneous rate of change"}, {
                "", "=", 
                 "derivative at \!\(\*\nStyleBox[\"a\",\n\
FontSlant->\"Italic\"]\)"}, {
                "\!\(\*SubscriptBox[\n StyleBox[\"m\",\n\
FontSlant->\"Italic\"], \"tan\"]\)", 
                 
                 Piecewise[{{">", $CellContext`xValue$$ < 4.95}, {
                   "=", 4.95 <= $CellContext`xValue$$ <= 5.05}, {
                   "<", $CellContext`xValue$$ > 5.05}}], 0}}, 
               BaseStyle -> {"TR", 13}, 
               Alignment -> {{
                 Right, Center, 
                  Left}}], $CellContext`bcPBS], $CellContext`bcFO], {5, -1}, {
            0, 1}], $CellContext`bcR, Dashed, 
           AbsoluteThickness[1], 
           Line[{{$CellContext`xValue$$, 0}, {$CellContext`xValue$$, 
              $CellContext`funcC3F7[$CellContext`xValue$$]}}], 
           Dashing[{}], LightGray, 
           Line[{{5, -1}, {$CellContext`xValue$$, 
              $CellContext`funcC3F7[$CellContext`xValue$$]}}], \
$CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F7[$CellContext`xValue$$]}]}]}, 
        Ticks -> {{{$CellContext`xValue$$, 
            "\!\(\*FormBox[\"a\",\n TraditionalForm]\)"}}, None}, 
        PlotRange -> {{-1, 11}, {-5, 6}}, AxesOrigin -> {0, 0}, 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
        BaseStyle -> {"Text", 13}, AxesStyle -> Arrowheads[{0, 0.04}], 
        ImageSize -> 5 72], 
      "Specifications" :> {{{$CellContext`xValue$$, 2, 
          "\!\(\*\nStyleBox[\"a\",\nFontSlant->\"Italic\"]\)"}, 0.2, 9.8, 0.1,
          ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, 2, ""}, 0.2, 9.8, 0.01, ControlType -> 
         Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.7", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{490., {150., 155.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F7[
           Pattern[$CellContext`x, 
            Blank[]]] := (((-5)/17) ($CellContext`x - 2)) ($CellContext`x - 
            8) + 2, Attributes[Derivative] = {
          NHoldAll, ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = RGBColor[0, 0.4, 0.8], 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F7[
           Pattern[$CellContext`x, 
            Blank[]]] := (((-5)/17) ($CellContext`x - 2)) ($CellContext`x - 
            8) + 2}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550700770197*^9},
 CellTags->"FIGURE 3.7  \[LightBulb]"],

Cell[TextData[{
 "\tWe let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " (read ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " ",
 StyleBox["prime",
  FontSlant->"Italic"],
 ") denote the derivative function for ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ", which means that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 ", when it exists, is the slope of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 ". Using definition (2) for the slope of the tangent line, we have "
}], "Text",
 CellChangeTimes->{{3.454945223009763*^9, 3.45494527358366*^9}, {
   3.454948942516827*^9, 3.45494894459132*^9}, 3.4711115592693243`*^9}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{"f", "'"}], 
           RowBox[{"(", "a", ")"}]}], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", "0"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", 
              RowBox[{"a", "+", "h"}], ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], "h"]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454945277098762*^9, 3.45494529807325*^9}, {
  3.487447110965033*^9, 3.487447111173697*^9}}],

Cell[TextData[{
 "\tMore generally, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 ", when it exists, is the slope of the tangent line (and the instantaneous \
rate of change) at the variable point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 ". Replacing ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " by the variable ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in the expression for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " gives the definition of the ",
 StyleBox["derivative function",
  FontSlant->"Italic"],
 "."
}], "Text",
 CellChangeTimes->{{3.454945308206849*^9, 3.4549453627981586`*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942046813*^9, 
  3.457291605556336*^9}],

Cell[TextData[{
 "The process of finding ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " is called ",
 StyleBox["differentiation",
  FontSlant->"Italic"],
 ", and to ",
 StyleBox["differentiate",
  FontSlant->"Italic"],
 " ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " means to find ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 "."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760692191393*^9, 3.454760718527775*^9}, 
   3.457018664051751*^9, 3.45718094204781*^9, 3.457291605557375*^9}]
}, Open  ]],

Cell[TextData[{
 StyleBox["DEFINITION", "DefinitionFont"],
 "\t",
 StyleBox["The Derivative",
  FontWeight->"Bold"],
 "\nThe ",
 StyleBox["derivative",
  FontWeight->"Bold"],
 " of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is the function \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"f", "'"}], 
            RowBox[{"(", "x", ")"}]}], "=", 
           RowBox[{
            UnderscriptBox["lim", 
             RowBox[{"h", "\[Rule]", "0"}]], 
            FractionBox[
             RowBox[{
              RowBox[{"f", "(", 
               RowBox[{"x", "+", "h"}], ")"}], "-", 
              RowBox[{"f", "(", "x", ")"}]}], "h"]}]}], ","}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "\nprovided the limit exists. If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " exists, we say ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is ",
 StyleBox["differentiable",
  FontWeight->"Bold"],
 " at ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ". If ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable at every point of an open interval ",
 Cell[BoxData[
  FormBox["I", TraditionalForm]]],
 ", we say that ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable on ",
 Cell[BoxData[
  FormBox["I", TraditionalForm]]],
 "."
}], "Definition",
 CellChangeTimes->{{3.4549454397747183`*^9, 3.454945479273583*^9}, {
   3.4549526548705177`*^9, 3.454952682000218*^9}, {3.4549531604162607`*^9, 
   3.4549531613843803`*^9}, 3.45610197189914*^9, {3.457018685884729*^9, 
   3.457018686094338*^9}, {3.460806279695016*^9, 3.460806280388792*^9}, {
   3.487447145313581*^9, 3.4874471453136177`*^9}},
 CellTags->"DEFINITION The Derivative"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942046813*^9, 
  3.457291605556336*^9}],

Cell[TextData[{
 "Just as we have two definitions for the slope of a tangent line, we may \
also use the following definition for the derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ": \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{"f", "'"}], 
           RowBox[{"(", "a", ")"}]}], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"x", "\[Rule]", "a"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", "x", ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], 
            RowBox[{"x", "-", "a"}]]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]]
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760692191393*^9, 3.454760718527775*^9}, 
   3.457018664051751*^9, 3.45718094204781*^9, 3.457291605557375*^9, {
   3.4874472654603443`*^9, 3.487447285959684*^9}, 3.4874473284373198`*^9, {
   3.496397917887102*^9, 3.496397963561434*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 3\t", "ExampleFont"],
 "The slope of a curve"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.4549454999094763`*^9, 3.454945505472012*^9}},
 CellTags->"EXAMPLE 3 The slope of a curve"],

Cell[TextData[{
 "Consider once again the function ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "16"}], 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"96", "x"}]}]}], TraditionalForm]]],
 " (Example 1) and find its derivative."
}], "Text",
 CellChangeTimes->{{3.454945507997384*^9, 3.4549455447724543`*^9}, 
   3.487447187224738*^9}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"f", "'"}], 
          RowBox[{"(", "x", ")"}]}], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", 
             RowBox[{"x", "+", "h"}], ")"}], "-", 
            RowBox[{"f", "(", "x", ")"}]}], "h"]}]}], 
        StyleBox[
         RowBox[{"Definition", " ", "of", " ", 
          RowBox[{"f", "'"}], 
          RowBox[{"(", "x", ")"}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            FormBox[
             OverscriptBox[
              RowBox[{
               RowBox[{
                RowBox[{"-", "16"}], 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"x", "+", "h"}], ")"}], "2"]}], "+", 
               RowBox[{"96", 
                RowBox[{"(", 
                 RowBox[{"x", "+", "h"}], ")"}]}]}], 
              StyleBox[
               OverscriptBox["\[OverBrace]", 
                RowBox[{"f", "(", 
                 RowBox[{"x", "+", "h"}], ")"}]], "TypesetAnnotationFont"]],
             TraditionalForm], "-", 
            FormBox[
             OverscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", "16"}], 
                 SuperscriptBox["x", "2"]}], "+", 
                RowBox[{"96", "x"}]}], ")"}], 
              StyleBox[
               OverscriptBox["\[OverBrace]", 
                RowBox[{"f", "(", "x", ")"}]], "TypesetAnnotationFont"]],
             TraditionalForm]}], "h"]}]}], 
        StyleBox[
         RowBox[{"Substitute", "."}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{
             RowBox[{"-", "16"}], 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["x", "2"], "+", 
               RowBox[{"2", "x", " ", "h"}], "+", 
               SuperscriptBox["h", "2"]}], ")"}]}], "+", 
            RowBox[{"96", "x"}], "+", 
            RowBox[{"96", "h"}], "+", 
            RowBox[{"16", 
             SuperscriptBox["x", "2"]}], "-", 
            RowBox[{"96", "x"}]}], "h"]}]}], 
        StyleBox[
         RowBox[{"Expand", " ", "the", " ", 
          RowBox[{"numerator", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{"h", "(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "32"}], "x"}], "+", "96", "-", 
             RowBox[{"16", "h"}]}], ")"}], "h"]}]}], 
        StyleBox[
         RowBox[{"Simplify", " ", "and", " ", "factor", " ", "out", " ", 
          RowBox[{"h", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", "0"}]], 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "32"}], "x"}], "+", "96", "-", 
             RowBox[{"16", "h"}]}], ")"}]}], "=", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "32"}], "x"}], "+", "96"}]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Cancel", " ", "h"}], "\[NotEqual]", 
          RowBox[{"0", " ", "and", " ", "evaluate", " ", "the", " ", 
           RowBox[{"limit", "."}]}]}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454945553905115*^9, 3.45494566006171*^9}, {
  3.454945735266168*^9, 3.454945774695209*^9}, {3.4549527176701307`*^9, 
  3.454952720256483*^9}, {3.454953197825933*^9, 3.454953198662075*^9}, {
  3.457018644937249*^9, 3.457018644937307*^9}, {3.471116402102291*^9, 
  3.4711164395438843`*^9}, {3.471119787346903*^9, 3.471119789499606*^9}, {
  3.487447392021811*^9, 3.487447392021853*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.4571809420490847`*^9, 
  3.45729160555897*^9}],

Cell[TextData[{
 "Notice that this argument applies for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", ">", "0"}], TraditionalForm]]],
 " and for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "<", "0"}], TraditionalForm]]],
 "; that is, the limit as ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "\[Rule]", 
    SuperscriptBox["0", "+"]}], TraditionalForm]]],
 " and the limit as ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", "\[Rule]", 
    SuperscriptBox["0", "-"]}], TraditionalForm]]],
 " are equal."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760728442075*^9, 3.454760762390526*^9}, 
   3.457018652057148*^9, 3.45718094205021*^9, 3.457291605560116*^9}]
}, Open  ]],

Cell[TextData[{
 "The derivative is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "32"}], "x"}], "+", "96"}]}], TraditionalForm]]],
 ", which gives the slope of the tangent line (equivalently, the \
instantaneous rate of change) at ",
 StyleBox["any",
  FontSlant->"Italic"],
 " point on the curve. For example, at the point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"1", ",", "80"}], ")"}], TraditionalForm]]],
 ", the slope of the tangent line is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "1", ")"}]}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "32"}], 
       RowBox[{"(", "1", ")"}]}], "+", "96"}], "=", "64"}]}], 
   TraditionalForm]]],
 ", confirming the calculation in Example 1. The slope of the tangent line at \
",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"3", ",", "144"}], ")"}], TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "3", ")"}]}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "32"}], 
       RowBox[{"(", "3", ")"}]}], "+", "96"}], "=", "0"}]}], 
   TraditionalForm]]],
 ", which means the tangent line is horizontal at that point (",
 StyleBox["Figure 3.8", "FigureFontText"],
 ")."
}], "Text",
 CellChangeTimes->{{3.4549457960265493`*^9, 3.454945892337923*^9}, 
   3.454953706304991*^9, {3.471116446903372*^9, 3.471116447147511*^9}, {
   3.478189650840127*^9, 3.478189652365878*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = 2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], 2, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 0, 6, 0.1}, {{
       Hold[$CellContext`xValue$$], 2, ""}, 0, 6, 0.01}}, Typeset`size$$ = {
    360., {137., 142.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`xValue$55451$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = 2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55451$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           $CellContext`funcC3F8[$CellContext`x], 
           Derivative[
             1][$CellContext`funcC3F8][$CellContext`xValue$$] ($CellContext`x - \
$CellContext`xValue$$) + $CellContext`funcC3F8[$CellContext`xValue$$]}, \
{$CellContext`x, -0.5, 6.5}, 
          PlotStyle -> {{Thick, Black}, {Thick, $CellContext`bcR}}], 
         Graphics[{
           Text[
           "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"f\", \"(\", \"x\", \
\")\"}], \"=\", \n  RowBox[{\n   RowBox[{\n    RowBox[{\"-\", \"16\"}], \
SuperscriptBox[\"x\", \"2\"]}], \"+\", \n   RowBox[{\"96\", \"x\"}]}]}],\n \
TraditionalForm]\)", {4.5, 155}, {-1, 1}], $CellContext`bcR, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"f\", \"'\"}], \
\n   RowBox[{\"(\", \"x\", \")\"}]}], \"=\", \n  RowBox[{\n   RowBox[{\n    \
RowBox[{\"-\", \"32\"}], \"x\"}], \"+\", \"96\"}]}],\n TraditionalForm]\)", {
            4.5, 135}, {-1, 1}], Black, 
           Text[
            Pane[
             
             Row[{"\!\(\*FormBox[\n RowBox[{\"f\", \"'\"}],\n \
TraditionalForm]\)", "(", $CellContext`xValue$$, ")", " = ", 
               Round[
                Derivative[1][$CellContext`funcC3F8][$CellContext`xValue$$], 
                0.1]}], {Automatic, Automatic}, 
             BaseStyle -> {
              LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
               LineBreakWithin -> Automatic, Hyphenation -> True, 
               TextAlignment -> Center, FontSize -> 
               13}], {$CellContext`xValue$$, 
             $CellContext`funcC3F8[$CellContext`xValue$$]}, {1.2, -1}], 
           Dashed, 
           AbsoluteThickness[1], 
           Line[{{$CellContext`xValue$$, 0}, {$CellContext`xValue$$, 
              $CellContext`funcC3F8[$CellContext`xValue$$]}}], \
$CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F8[$CellContext`xValue$$]}]}]}, 
        Ticks -> {{1, 2, 3, 4, 5, 6}, {50, 100, 150}}, 
        PlotRange -> {{-2, 8}, {-20, 160}}, 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, AxesOrigin -> {0, 0}, 
        AspectRatio -> 0.75, BaseStyle -> {"Text", 13}, AxesStyle -> 
        Arrowheads[{0, 0.04}], ImageSize -> 5 72], 
      "Specifications" :> {{{$CellContext`xValue$$, 2, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 0, 6, 0.1, 
         ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, 2, ""}, 0, 6, 0.01, ControlType -> 
         Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.8", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{492., {173., 178.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F8[
           Pattern[$CellContext`x, 
            Blank[]]] := (-16) $CellContext`x^2 + 96 $CellContext`x, 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcB = RGBColor[0, 0.4, 0.8], 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F8[
           Pattern[$CellContext`x, 
            Blank[]]] := (-16) $CellContext`x^2 + 96 $CellContext`x}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550700887981*^9},
 CellTags->"FIGURE 3.8  \[LightBulb]"],

Cell[TextData[{
 "Related Exercises 23\[LongDash]32 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.454945914900241*^9, 3.454945916925775*^9}}]
}, Open  ]]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "4"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  In Example 3, determine the slope of the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "2"}], TraditionalForm]]],
 ". ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.454945922732892*^9, 3.454945944313768*^9}, {
   3.454952733869668*^9, 3.454952745973508*^9}, 3.4711168111978083`*^9},
 CellTags->"QUICK CHECK 4"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Derivative Notation", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.45494597240292*^9, 3.454945977088998*^9}},
 CellTags->"Derivative Notation"],

Cell[TextData[{
 "For historical and practical reasons, several notations for the derivative \
are used. To see the origin of one notation, recall that the slope of the \
secant line ",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["PQ",
     FontSlant->"Italic"], "\[LongLeftRightArrow]"], TraditionalForm]]],
 " between two points ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Q", "(", 
    RowBox[{
     RowBox[{"x", "+", "h"}], ",", 
     RowBox[{"f", "(", 
      RowBox[{"x", "+", "h"}], ")"}]}], ")"}], TraditionalForm]]],
 " on the curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{
     RowBox[{"f", "(", 
      RowBox[{"x", "+", "h"}], ")"}], "-", 
     RowBox[{"f", "(", "x", ")"}]}], "h"], TraditionalForm]]],
 ". The quantity ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]]],
 " is the ",
 StyleBox["change",
  FontSlant->"Italic"],
 " in the ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 "-coordinates in moving from ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " to ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 ". A standard notation for change is the symbol ",
 Cell[BoxData[
  FormBox["\[CapitalDelta]", TraditionalForm]]],
 " (uppercase Greek letter delta). So, we replace ",
 Cell[BoxData[
  FormBox["h", TraditionalForm]]],
 " by ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}], TraditionalForm]]],
 " to represent the change in ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ". Similarly, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", 
     RowBox[{"x", "+", "h"}], ")"}], "-", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " is the change in ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]]],
 ", denoted ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "y"}], TraditionalForm]]],
 " (",
 StyleBox["Figure 3.9", "FigureFontText"],
 "). Therefore, the slope of ",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["PQ",
     FontSlant->"Italic"], "\[LongLeftRightArrow]"], TraditionalForm]]],
 " is "
}], "Text",
 CellChangeTimes->{{3.454945979364147*^9, 3.45494616017758*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", 
             RowBox[{"x", "+", 
              RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]}], ")"}], 
            "-", 
            RowBox[{"f", "(", "x", ")"}]}], 
           RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]], "=", 
          FractionBox[
           RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "y"}], 
           RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.4549461633752317`*^9, 3.4549461871564913`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`aValue$$ = 1.5, $CellContext`hValue$$ = 
    4, $CellContext`resetAValue$$ = False, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Pane[
       "Change location of point \!\(\*\nStyleBox[\"Q\",\nFontSlant->\"Italic\
\"]\)", {100, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`hValue$$], 4, 
       "\!\(\*FormBox[\n RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\", \
\"x\"}],\n TraditionalForm]\)"}, 0.01, 4.5, 0.01}, {
      Hold[
       Grid[{{
          Spacer[10], 
          
          Row[{"\!\(\*FormBox[\n RowBox[{\"\[CapitalDelta]\", \"\
\[VeryThinSpace]\", \"x\"}],\n TraditionalForm]\)", " = ", 
            Dynamic[$CellContext`hValue$$]}]}}]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Pane[
       "Change location of points \!\(\*\nStyleBox[\"P\",\n\
FontSlant->\"Italic\"]\) and \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`aValue$$], 1.5, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 1.03, 3, 
      0.005}, {{
       Hold[$CellContext`resetAValue$$], False, 
       "reset \!\(\*\nStyleBox[\"P\",\nFontSlant->\"Italic\"]\)"}, {
      True, False}}}, Typeset`size$$ = {360., {175., 181.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`hValue$55508$$ = 0, $CellContext`aValue$55509$$ = 
    0, $CellContext`resetAValue$55510$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`aValue$$ = 1.5, $CellContext`hValue$$ = 
        4, $CellContext`resetAValue$$ = False}, "ControllerVariables" :> {
        Hold[$CellContext`hValue$$, $CellContext`hValue$55508$$, 0], 
        Hold[$CellContext`aValue$$, $CellContext`aValue$55509$$, 0], 
        Hold[$CellContext`resetAValue$$, $CellContext`resetAValue$55510$$, 
         False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`resetAValue$$, {$CellContext`aValue$$, \
$CellContext`resetAValue$$} = {1.5, False}]; Show[{
          Plot[{
            $CellContext`funcC3F9[$CellContext`x], \
(($CellContext`funcC3F9[$CellContext`aValue$$ + $CellContext`hValue$$] - \
$CellContext`funcC3F9[$CellContext`aValue$$])/$CellContext`hValue$$) \
($CellContext`x - $CellContext`aValue$$) + \
$CellContext`funcC3F9[$CellContext`aValue$$], 
            Derivative[
              1][$CellContext`funcC3F9][$CellContext`aValue$$] \
($CellContext`x - $CellContext`aValue$$) + \
$CellContext`funcC3F9[$CellContext`aValue$$]}, {$CellContext`x, 0, 10}, 
           PlotRange -> {{-1.5, 11}, {-1, 11}}, PlotStyle -> {{Thick, Black}, {
              AbsoluteThickness[1.5], 
              RGBColor[0, 0.6, 0.4]}, {Thick, $CellContext`bcR}}], 
          Graphics[{Black, 
            Text[
            "\!\(\*\nStyleBox[\"O\",\nFontSlant->\"Italic\"]\)", {0, 0}, {1.5,
              1.5}], 
            Text[
            "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"f\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {10, 
              $CellContext`funcC3F9[10]}, {1, 3}], 
            Text[
            "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"\[CapitalDelta]\", \"\
\[VeryThinSpace]\", \"y\"}], \"=\", \n  RowBox[{\n   RowBox[{\"f\", \"(\", \n \
   RowBox[{\"x\", \"+\", \n     RowBox[{\"\[CapitalDelta]\", \"\
\[VeryThinSpace]\", \"x\"}]}], \")\"}], \"-\", \n   RowBox[{\"f\", \"(\", \"x\
\", \")\"}]}]}],\n TraditionalForm]\)", {$CellContext`aValue$$ + \
$CellContext`hValue$$, ($CellContext`funcC3F9[$CellContext`aValue$$] + \
$CellContext`funcC3F9[$CellContext`aValue$$ + $CellContext`hValue$$])/
              2}, {-1.1, 0}], 
            Text[
            "\!\(\*FormBox[\n RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\
\", \"x\"}],\n TraditionalForm]\)", {$CellContext`aValue$$ + \
$CellContext`hValue$$/2, 
              $CellContext`funcC3F9[$CellContext`aValue$$]}, {0, 1.5}], 
            Text[
            "\!\(\*FormBox[\"P\",\n TraditionalForm]\)", \
{$CellContext`aValue$$, 
              $CellContext`funcC3F9[$CellContext`aValue$$]}, {1.5, -1.5}], 
            Text[
            "\!\(\*FormBox[\"Q\",\n TraditionalForm]\)", \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
              $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {-1.5, -1.5}], 
            Text[
             Framed[
              Pane[
              "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"tan\"], \"=\", \
\n  RowBox[{\n   RowBox[{\n    RowBox[{\"f\", \"'\"}], \n    RowBox[{\"(\", \
\"x\", \")\"}]}], \"=\", \n   RowBox[{\n    RowBox[{SubscriptBox[\"lim\", \n  \
    RowBox[{\n       RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\", \
\"x\"}], \"\[Rule]\", \"0\"}]], FractionBox[\n      RowBox[{\"\[CapitalDelta]\
\", \"\[VeryThinSpace]\", \"y\"}], \n      RowBox[{\"\[CapitalDelta]\", \"\
\[VeryThinSpace]\", \"x\"}]]}], \"=\", FractionBox[\n     RowBox[{\"d\", \"\
\[VeryThinSpace]\", \"y\"}], \n     RowBox[{\"d\", \"\[VeryThinSpace]\", \
\"x\"}]]}]}]}],\n TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO,
               Background -> 
              White], {(10.5 - $CellContext`funcC3F9[$CellContext`aValue$$])/
               Derivative[
               1][$CellContext`funcC3F9][$CellContext`aValue$$] + \
$CellContext`aValue$$, 10.5}, {0, 1}], 
            Text[
             Framed[
              Pane[
              "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"m\", \"sec\"], \"=\", \
FractionBox[\n   RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\", \"y\"}], \
\n   RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\", \"x\"}]]}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
              White], {(
                7 - $CellContext`funcC3F9[$CellContext`aValue$$])/(($\
CellContext`funcC3F9[$CellContext`aValue$$ + $CellContext`hValue$$] - \
$CellContext`funcC3F9[$CellContext`aValue$$])/$CellContext`hValue$$) + \
$CellContext`aValue$$, 7}, {-0.5, -1.25}], $CellContext`bcR, 
            AbsoluteThickness[1], 
            Line[{{$CellContext`aValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}}], Dashed, 
            Line[{{$CellContext`aValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}, {0, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}}], 
            Line[{{$CellContext`aValue$$, 0}, {$CellContext`aValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}}], 
            
            Line[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               0}, {$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$]}}], 
            Line[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {0, 
               $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}}], 
            AbsoluteThickness[4], 
            Opacity[0.5], 
            Dashing[{}], 
            
            Arrow[{{$CellContext`aValue$$ + $CellContext`hValue$$, 
               0}, {$CellContext`aValue$$ + $CellContext`hValue$$ - 1, 0}}], 
            Arrow[{{0, 
               $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}, {
              0, $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$] - 1}}], 
            Opacity[1], $CellContext`bcB, 
            AbsolutePointSize[7], 
            Point[{$CellContext`aValue$$, 
              $CellContext`funcC3F9[$CellContext`aValue$$]}], 
            Point[{$CellContext`aValue$$ + $CellContext`hValue$$, 
              $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$]}]}]}, AspectRatio -> 1, ImageSize -> 5 72, 
         PlotRange -> {{-1.5, 10}, {-1, 11}}, BaseStyle -> {"Text", 13}, 
         AxesStyle -> Arrowheads[{0, 0.04}], 
         AxesLabel -> {
          "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
           "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
         Ticks -> {{{$CellContext`aValue$$, 
             "\!\(\*FormBox[\"x\",\n TraditionalForm]\)"}, \
{$CellContext`aValue$$ + $CellContext`hValue$$, 
             "\!\(\*FormBox[\n RowBox[{\"x\", \"+\", \n  RowBox[{\"\
\[CapitalDelta]\", \"\[VeryThinSpace]\", \"x\"}]}],\n TraditionalForm]\)"}}, {{
             $CellContext`funcC3F9[$CellContext`aValue$$], 
             "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \"x\", \")\"}],\n \
TraditionalForm]\)"}, {
             $CellContext`funcC3F9[$CellContext`aValue$$ + \
$CellContext`hValue$$], 
             "\!\(\*FormBox[\n RowBox[{\"f\", \"(\", \n  RowBox[{\"x\", \
\"+\", \n   RowBox[{\"\[CapitalDelta]\", \"\[VeryThinSpace]\", \"x\"}]}], \")\
\"}],\n TraditionalForm]\)"}}}]), "Specifications" :> {
        Pane[
        "Change location of point \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
         BaseStyle -> {
          LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
           LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
           Left}], {{$CellContext`hValue$$, 4, 
          "\!\(\*FormBox[\n RowBox[{\"\[CapitalDelta]\", \
\"\[VeryThinSpace]\", \"x\"}],\n TraditionalForm]\)"}, 0.01, 4.5, 0.01, 
         ControlType -> Slider, ImageSize -> "Tiny"}, 
        Grid[{{
           Spacer[10], 
           
           Row[{"\!\(\*FormBox[\n RowBox[{\"\[CapitalDelta]\", \"\
\[VeryThinSpace]\", \"x\"}],\n TraditionalForm]\)", " = ", 
             Dynamic[$CellContext`hValue$$]}]}}], Delimiter, 
        Pane[
        "Change location of points \!\(\*\nStyleBox[\"P\",\n\
FontSlant->\"Italic\"]\) and \!\(\*\nStyleBox[\"Q\",\n\
FontSlant->\"Italic\"]\)", {100, Automatic}, 
         BaseStyle -> {
          LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
           LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
           Left}], {{$CellContext`aValue$$, 1.5, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 1.03, 3, 
         0.005, ControlType -> Slider, ImageSize -> 
         "Tiny"}, {{$CellContext`resetAValue$$, False, 
          "reset \!\(\*\nStyleBox[\"P\",\nFontSlant->\"Italic\"]\)"}, {
         True, False}, ControlType -> Checkbox}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.9", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     ImageSizeCache->{521., {211., 217.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F9[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4, 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, 
         Attributes[PlotRange] = {ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F9[
           Pattern[$CellContext`x, 
            Blank[]]] := 1.5 Log[$CellContext`x - 1] + 4}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550701006562*^9},
 CellTags->"FIGURE 3.9  \[LightBulb]"],

Cell[TextData[{
 "\tBy letting ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}], "\[Rule]", "0"}], 
   TraditionalForm]]],
 ", the slope of the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 " is "
}], "Text",
 CellChangeTimes->{{3.454946199504636*^9, 3.4549462162651577`*^9}, 
   3.47111672614843*^9}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{"f", "'"}], 
           RowBox[{"(", "x", ")"}]}], "=", 
          RowBox[{
           RowBox[{
            UnderscriptBox["lim", 
             RowBox[{
              RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}], "\[Rule]",
               "0"}]], 
            FractionBox[
             RowBox[{
              RowBox[{"f", "(", 
               RowBox[{"x", "+", 
                RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]}], ")"}],
               "-", 
              RowBox[{"f", "(", "x", ")"}]}], 
             RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]]}], "=", 
           RowBox[{
            RowBox[{
             UnderscriptBox["lim", 
              RowBox[{
               RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}], 
               "\[Rule]", "0"}]], 
             FractionBox[
              RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "y"}], 
              RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]]}], "=", 
            FractionBox[
             RowBox[{"d", "\[VeryThinSpace]", "y"}], 
             RowBox[{"d", "\[VeryThinSpace]", "x"}]]}]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.4549462355526867`*^9, 3.454946280705551*^9}}],

Cell[TextData[{
 "The new notation for the derivative is ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "y"}], 
    RowBox[{"d", "\[VeryThinSpace]", "x"}]], TraditionalForm]]],
 "; it reminds us that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " is the limit of ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "y"}], 
    RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}]], 
   TraditionalForm]]],
 " as ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", "x"}], "\[Rule]", "0"}], 
   TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454946285552986*^9, 3.4549463218325157`*^9}, {
  3.454953240050221*^9, 3.45495324129176*^9}, {3.457018632320569*^9, 
  3.4570186334953823`*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.4571809420515013`*^9, 
  3.45729160556168*^9}],

Cell[TextData[{
 "The notation ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    StyleBox["dy",
     FontSlant->"Italic"], 
    StyleBox["dx",
     FontSlant->"Italic"]], TraditionalForm]]],
 " is read ",
 StyleBox["the derivative of y with respect to x",
  FontSlant->"Italic"],
 " or ",
 StyleBox["dy dx",
  FontSlant->"Italic"],
 ". It does not mean ",
 StyleBox["dy",
  FontSlant->"Italic"],
 " divided by ",
 StyleBox["dx",
  FontSlant->"Italic"],
 ", but it is a reminder of the limit of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalDelta]", "\[VeryThinSpace]", 
    RowBox[{"y", "/", "\[CapitalDelta]"}], "\[VeryThinSpace]", "x"}], 
   TraditionalForm]]],
 "."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454760779667243*^9, 3.454760862191346*^9}, {
   3.45476095420614*^9, 3.454760956555283*^9}, 3.457018628522274*^9, 
   3.457180942052669*^9, 3.457291605562845*^9, {3.471116734138464*^9, 
   3.471116737085672*^9}}]
}, Open  ]],

Cell[TextData[{
 "\tIn addition to the notation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "y"}], 
    RowBox[{"d", "\[VeryThinSpace]", "x"}]], TraditionalForm]]],
 ", other common ways of writing the derivative include "
}], "Text",
 CellChangeTimes->{{3.454946323928359*^9, 3.454946354394596*^9}, {
  3.454953233728674*^9, 3.454953235939396*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          FractionBox[
           RowBox[{"d", "\[VeryThinSpace]", "f"}], 
           RowBox[{"d", "\[VeryThinSpace]", "x"}]], ","}], 
         RowBox[{
          RowBox[{
           FractionBox["d", 
            RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
           RowBox[{"(", 
            RowBox[{"f", "(", "x", ")"}], ")"}]}], ","}], 
         RowBox[{
          RowBox[{
           SubscriptBox["D", "x"], "(", 
           RowBox[{"f", "(", "x", ")"}], ")"}], ","}], "and", 
         RowBox[{
          RowBox[{"y", "'"}], 
          RowBox[{"(", "x", ")"}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454946358066142*^9, 3.4549464214831963`*^9}, {
  3.4549532730051394`*^9, 3.454953273982916*^9}, {3.457018619972731*^9, 
  3.457018619972769*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.45718094205394*^9, 
  3.457291605564437*^9}],

Cell[TextData[{
 "The derivative notation ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "y"}], 
    RowBox[{"d", "\[VeryThinSpace]", "x"}]], TraditionalForm]]],
 " was introduced by Leibniz (1646-1716), one of the coinventors of calculus. \
His notation is used today in its original form. The notation used by Isaac \
Newton (1642-1727), the other coinventor of calculus, has fallen into \
disuse."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454935553969612*^9, 3.454935626441635*^9}, 
   3.4570186065099688`*^9, 3.457180942054693*^9, 3.457291605565222*^9, {
   3.487447868099566*^9, 3.4874478723881617`*^9}}]
}, Open  ]],

Cell[TextData[{
 "Each of the following notations represents the derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " evaluated at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454946429305966*^9, 3.454946444793631*^9}, 
   3.4711167579426537`*^9, {3.4874479279822474`*^9, 3.487447927982285*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"f", "'"}], 
          RowBox[{"(", "a", ")"}]}], ","}], 
        RowBox[{
         RowBox[{
          RowBox[{"y", "'"}], 
          RowBox[{"(", "a", ")"}]}], ","}], 
        RowBox[{
         SubscriptBox[
          RowBox[{
           FractionBox[
            RowBox[{"d", "\[VeryThinSpace]", "f"}], 
            RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
           "\[RightBracketingBar]"}], 
          RowBox[{"x", "=", "a"}]], ","}], 
        RowBox[{"and", " "}], 
        SubscriptBox[
         RowBox[{
          FractionBox[
           RowBox[{"d", "\[VeryThinSpace]", "y"}], 
           RowBox[{"d", "\[VeryThinSpace]", "x"}]], "\[RightBracketingBar]"}], 
         RowBox[{"x", "=", "a"}]]}
      },
      GridBoxAlignment->{"Columns" -> {{"="}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454946450358015*^9, 3.45494651022047*^9}, {
  3.487448728147307*^9, 3.487448747986258*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "5"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  What are some other ways to write ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "3", ")"}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 "? ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.4549465215984077`*^9, 3.4549465390962753`*^9}, 
   3.471116814777083*^9},
 CellTags->"QUICK CHECK 5"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 4\t", "ExampleFont"],
 "A derivative calculation"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.4549478105871773`*^9, 3.4549478179392633`*^9}},
 CellTags->"EXAMPLE 4 A derivative calculation"],

Cell[TextData[{
 "Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{
     RowBox[{"f", "(", "x", ")"}], "=", 
     SqrtBox["x"]}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.4549478207907867`*^9, 3.4549478293901443`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 " \tCompute ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "y"}], 
    RowBox[{"d", "\[VeryThinSpace]", "x"}]], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.45494783297082*^9, 3.454947850728696*^9}}],

Cell[TextData[{
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind an equation of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"4", ",", "2"}], ")"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454947854302931*^9, 3.454947869852612*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\t"
}], "Text",
 CellChangeTimes->{{3.4549478779034643`*^9, 3.454947886101863*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         FractionBox[
          RowBox[{"d", "\[VeryThinSpace]", "y"}], 
          RowBox[{"d", "\[VeryThinSpace]", "x"}]], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", 
             RowBox[{"x", "+", "h"}], ")"}], "-", 
            RowBox[{"f", "(", "x", ")"}]}], "h"]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Definition", " ", "of", " ", 
           FractionBox[
            RowBox[{"d", "\[VeryThinSpace]", "y"}], 
            RowBox[{"d", "\[VeryThinSpace]", "x"}]]}], "=", 
          RowBox[{
           RowBox[{"f", "'"}], 
           RowBox[{"(", "x", ")"}]}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            SqrtBox[
             RowBox[{"x", "+", "h"}]], "-", 
            SqrtBox["x"]}], "h"]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Substitute", " ", 
           RowBox[{"f", "(", "x", ")"}]}], "=", 
          RowBox[{
           SqrtBox["x"], "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{
           FractionBox[
            RowBox[{
             SqrtBox[
              RowBox[{"x", "+", "h"}]], "-", 
             SqrtBox["x"]}], "h"], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{
              SqrtBox[
               RowBox[{"x", "+", "h"}]], "+", 
              SqrtBox["x"]}], 
             RowBox[{
              SqrtBox[
               RowBox[{"x", "+", "h"}]], "+", 
              SqrtBox["x"]}]], ")"}]}]}]}], 
        StyleBox[
         PaneBox["\<\"Multiply the numerator and denominator by \
\\!\\(\\*FormBox[\\n RowBox[{SqrtBox[\\n   RowBox[{\\\"x\\\", \\\"+\\\", \
\\\"h\\\"}]], \\\"+\\\", SqrtBox[\\\"x\\\"]}],\\n TraditionalForm]\\).\"\>",
          
          BaseStyle->{
           LineIndent -> 0, LineSpacing -> {1, 0}, 
            LinebreakAdjustments -> {1, 1, 0, 0, 0}, LineBreakWithin -> 
            Automatic, Hyphenation -> True, TextAlignment -> Left},
          ImageSize->{200, Automatic}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", "0"}]], 
           FractionBox["1", 
            RowBox[{
             SqrtBox[
              RowBox[{"x", "+", "h"}]], "+", 
             SqrtBox["x"]}]]}], "=", 
          FractionBox["1", 
           RowBox[{"2", 
            SqrtBox["x"]}]]}]}], 
        StyleBox[
         RowBox[{"Simplify", " ", "and", " ", "evaluate", " ", "the", " ", 
          RowBox[{"limit", "."}]}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.45494788942275*^9, 3.454948047974326*^9}, {
  3.4549481470428762`*^9, 3.454948179913992*^9}, {3.4549482436221323`*^9, 
  3.454948259475108*^9}, {3.454948291992584*^9, 3.4549482919926367`*^9}, {
  3.4549532921143503`*^9, 3.454953293162875*^9}, {3.457018596514419*^9, 
  3.45701859696382*^9}, {3.471119796360414*^9, 3.471119797662758*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.4571809420560217`*^9, 
  3.457291605566649*^9}],

Cell[TextData[{
 "Example 4 gives the first of many derivative formulas to be presented in \
the text: ",
 "\n",
 Cell[BoxData[
  FormBox[GridBox[{
     {
      RowBox[{GridBox[{
         {
          RowBox[{
           RowBox[{
            FractionBox["d", 
             RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
            RowBox[{"(", 
             SqrtBox["x"], ")"}]}], "=", 
           FractionBox["1", 
            RowBox[{"2", 
             SqrtBox["x"]}]]}]}
        },
        GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]]
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454935832146891*^9, 3.4549358602834463`*^9}, {
   3.4549358992321377`*^9, 3.454935915516534*^9}, 3.4570185895060377`*^9, 
   3.457180942057233*^9, 3.4572916055679893`*^9}]
}, Open  ]],

Cell[TextData[{
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tThe slope of the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "4"}], TraditionalForm]]],
 " is "
}], "Text",
 CellChangeTimes->{{3.45494830161808*^9, 3.4549483152057734`*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          SubscriptBox[
           RowBox[{
            FractionBox[
             RowBox[{"d", "\[VeryThinSpace]", "y"}], 
             RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
            "\[RightBracketingBar]"}], 
           RowBox[{"x", "=", "4"}]], "=", 
          RowBox[{
           FractionBox["1", 
            RowBox[{"2", 
             SqrtBox["4"]}]], "=", 
           FractionBox["1", "4"]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], "."}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.4549483190975513`*^9, 3.454948344832048*^9}, {
  3.487448752938919*^9, 3.487448782310977*^9}}],

Cell[TextData[{
 "The tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"4", ",", "2"}], ")"}], TraditionalForm]]],
 " has slope ",
 Cell[BoxData[
  FormBox[
   RowBox[{"m", "=", 
    FractionBox["1", "4"]}], TraditionalForm]]],
 " (",
 StyleBox["Figure 3.10", "FigureFontText"],
 "), so an equation is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "-", "2"}], "=", 
    RowBox[{
     FractionBox["1", "4"], 
     RowBox[{"(", 
      RowBox[{"x", "-", "4"}], ")"}]}]}], TraditionalForm]]],
 " or ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{
     RowBox[{
      FractionBox["1", "4"], "x"}], "+", "1"}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.4549483496435137`*^9, 3.454948386694685*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
qNAqXk32tWgM4pOO+vSkquQ15aYmGYvPPupzekdU6LN828Z9R/QRUxajXxmi
QqgL9Ldt6lLh6KjQl4RYruL1it0sZtv3ubs10ajPVmqfHtmCCvnpVz9FPsg3
1Q6m3JKLRr6zQFQI5YP+9kNdKpwSFapR0fZ3iaApjNQ0x6aCO6/k9WtkCm73
4NmmUZ/Qu+30cGLP8mNDn58cFUI57E1/Vofo0rBH7rLkpC4VTswgXS5QckNp
NcPD7aTT+qtr7pW/fdf57x60mhQin+Kaiyzo4I2xJa98YSX09mpfp+Px46tF
C4wKoY/96M/Fp7ggvAbt59yly0ldKiwzg9Q7Ivvs4xk7fVX9N5+/H48ZD8Ha
RqaMs11sakQNOxOLwnbTgtYnVw/92Q6R3UVYaZe7XUGFELIH/dkFZSd8p/g6
KbO6WIe6VFjmuMKwz6vzXFKYZiFhZz3v/94XMwrpUh8R72ILs3Tiza1ZULzs
sfPhdr2qpTs3USFsWH92+dgZHoovbr1O9nx11KXCKVGh1bdql+vINjk1YOqW
SQvQm3fiuSuOBgzqf/vGDOoNnRGfrwgcz/yULo9h4/OblMRL77tUwmrKjhz7
GW8XWxz0KO3OpA9UuE82qT+76CQ+Cw0uT4wQn7Cax/7dtmNbIyqsRYXjokKN
9fNhfQ2DKIDS+AU7Dp6fqVGBkc2GS9g3aPyvxgl2h4S3zlLraPw9cmVK4qUb
9iI5mzSyO3HOHqhCQIX7YWP68w4+ie9sO2cE+1+LGe1hF4Jts4ordx3qUuGI
qFAj1u2r94ST0CBuGVeV/cnef5HQtGgOtcK4QSRT+9WeGxFlxETekhnxmj7C
S5g4HC/ccnxHhO315SgSw+fsoMJtsxn9De3gOys+RXx2/hc+wCovdalwXFSo
zqmXBrnfGiQceuDnifwYGQAYbta34GHdIFOHQWjnG1Rs74VMH44XqjClSAvO
wPP8RlkxQ5/ttJyxxQYVbo/a9ecdfFatmbPMXFPEp0muXHy5d64y6lLhlL7C
dvwVaiXM3lTrYjyJpb1ZU+cIm4QqbP+7d2J6N2L6JC2du5aFcCzkUKzkc9kQ
FW6DevXnHXxqopwY7kl8dkrb9ZV91zZAXSqcOAepO6sdYel+zCIRZTOmV79n
w7oI4XRw7R43/bWx5UZU2FfOhuUzDrdXSdRuPPT5eNsz3zWOCuulRv3ZtWkF
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
    "], {{0, 320}, {601, 
    0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 252., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->252.,
  ImageSizeRaw->{601, 320},
  PlotRange->{{0, 601}, {0, 320}}]], "Output",
 CellChangeTimes->{3.500550701285993*^9},
 CellTags->"FIGURE 3.10"],

Cell[TextData[StyleBox["FIGURE 3.10", "FigureFont"]], "FigureCaption",
 CellChangeTimes->{{3.454948406412405*^9, 3.454948408117571*^9}}],

Cell[TextData[{
 "Related Exercises 33\[LongDash]34 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.45494841930399*^9, 3.45494842129419*^9}}]
}, Open  ]]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "6"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  In Example 4, do the slopes of the tangent lines increase or decrease as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " increases? Explain. ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.4549484307134027`*^9, 3.454948452050511*^9}, 
   3.471116782308123*^9},
 CellTags->"QUICK CHECK 6"],

Cell[TextData[{
 "\tIf a function is given in terms of variables other than ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]]],
 ", we make an adjustment to the derivative definition. For example, if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"g", "(", "t", ")"}]}], TraditionalForm]]],
 ", we replace ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " by ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " by ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]]],
 " to obtain the ",
 StyleBox["derivative of g with respect to t ",
  FontSlant->"Italic"],
 ":  "
}], "Text",
 CellChangeTimes->{{3.454948457219573*^9, 3.454948504943862*^9}, {
   3.456102229581826*^9, 3.456102230918301*^9}, 3.4711167743444767`*^9, {
   3.4874479587547827`*^9, 3.487447962039487*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"g", "'"}], 
          RowBox[{"(", "t", ")"}]}], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"g", "(", 
             RowBox[{"t", "+", "h"}], ")"}], "-", 
            RowBox[{"g", "(", "t", ")"}]}], "h"]}]}]}
      },
      GridBoxAlignment->{"Columns" -> {{"="}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454948508566905*^9, 3.4549485253713093`*^9}}],

Cell[TextData[{
 "Other notation for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "t", ")"}]}], TraditionalForm]]],
 " includes ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "g"}], 
    RowBox[{"d", "\[VeryThinSpace]", "t"}]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"d", "\[VeryThinSpace]"}], 
     RowBox[{"d", "\[VeryThinSpace]", "t"}]], 
    RowBox[{"(", 
     RowBox[{"g", "(", "t", ")"}], ")"}]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["D", "t"], "(", 
    RowBox[{"g", "(", "t", ")"}], ")"}], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "'"}], 
    RowBox[{"(", "t", ")"}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454948529833973*^9, 3.454948566370531*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "7"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  Express the derivative of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"p", "=", 
    RowBox[{"q", "(", "r", ")"}]}], TraditionalForm]]],
 " in three ways. ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.454948580158752*^9, 3.454948596403152*^9}, 
   3.471116785007622*^9},
 CellTags->"QUICK CHECK 7"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 5\t", "ExampleFont"],
 "Another derivative calculation"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454948601555811*^9, 3.4549486080068417`*^9}},
 CellTags->"EXAMPLE 5 Another derivative calculation"],

Cell[TextData[{
 "Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "(", "t", ")"}], "=", 
    FractionBox["1", 
     SuperscriptBox["t", "2"]]}], TraditionalForm]]],
 " and compute ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "t", ")"}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454948611256897*^9, 3.454948624170404*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"g", "'"}], 
          RowBox[{"(", "t", ")"}]}], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"g", "(", 
             RowBox[{"t", "+", "h"}], ")"}], "-", 
            RowBox[{"g", "(", "t", ")"}]}], "h"]}]}], 
        StyleBox[
         RowBox[{"Definition", " ", "of", " ", 
          RowBox[{"g", "'"}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{
           FractionBox["1", "h"], "[", 
           RowBox[{
            FractionBox["1", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"t", "+", "h"}], ")"}], "2"]], "-", 
            FractionBox["1", 
             SuperscriptBox["t", "2"]]}], "]"}]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Substitute", " ", 
           RowBox[{"g", "(", "t", ")"}]}], "=", 
          RowBox[{"1", "/", 
           RowBox[{
            SuperscriptBox["t", "2"], "."}]}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{
           FractionBox["1", "h"], "[", 
           FractionBox[
            RowBox[{
             SuperscriptBox["t", "2"], "-", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"t", "+", "h"}], ")"}], "2"]}], 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox["t", "2"], "(", 
              RowBox[{"t", "+", "h"}], ")"}], "2"]], "]"}]}]}], 
        StyleBox[
         RowBox[{"Common", " ", "denominator"}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{
           FractionBox["1", "h"], "[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], "h", " ", "t"}], "-", 
             SuperscriptBox["h", "2"]}], 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox["t", "2"], "(", 
              RowBox[{"t", "+", "h"}], ")"}], "2"]], "]"}]}]}], 
        StyleBox[
         RowBox[{"Expand", " ", "the", " ", "numerator", " ", "and", " ", 
          RowBox[{"simplify", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"h", "\[Rule]", "0"}]], 
          RowBox[{"[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], "t"}], "-", "h"}], 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox["t", "2"], "(", 
              RowBox[{"t", "+", "h"}], ")"}], "2"]], "]"}]}]}], 
        StyleBox[
         RowBox[{
          RowBox[{"Cancel", " ", "h"}], "\[NotEqual]", "0."}], 
         "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{"-", 
          FractionBox["2", 
           SuperscriptBox["t", "3"]]}]}], 
        StyleBox[
         RowBox[{"Evaluate", " ", "the", " ", 
          RowBox[{"limit", "."}]}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454948632270249*^9, 3.454948843818046*^9}, {
  3.471116822545314*^9, 3.471116822545368*^9}, {3.471119805722978*^9, 
  3.471119810587263*^9}, {3.487448003371365*^9, 3.487448003371402*^9}}],

Cell[TextData[{
 "Related Exercises 35\[LongDash]38 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.4549488590701313`*^9, 3.454948861960409*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Graphs of Derivatives", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454948900688168*^9, 3.4549489040716143`*^9}},
 CellTags->"Graphs of Derivatives"],

Cell[TextData[{
 "The function ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " is called the derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " because it is ",
 StyleBox["derived",
  FontSlant->"Italic"],
 " from ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ". The following examples illustrate how to ",
 StyleBox["derive",
  FontSlant->"Italic"],
 " the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " from the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454948906659814*^9, 3.454948913613327*^9}, {
   3.454948960793748*^9, 3.454948990885716*^9}, 3.454953708553751*^9}],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 6\t", "ExampleFont"],
 "Graph of the derivative"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454948995554998*^9, 3.454949002784446*^9}},
 CellTags->"EXAMPLE 6 Graph of the derivative"],

Cell[TextData[{
 "Sketch the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " from the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " (",
 StyleBox["Figure 3.11", "FigureFontText"],
 ")."
}], "Text",
 CellChangeTimes->{{3.4549490064227333`*^9, 3.454949020634739*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = -4.8, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], -4.8, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -5., 5, 0.1}, {{
       Hold[$CellContext`xValue$$], -4.8, ""}, -5., 5, 0.1}}, 
    Typeset`size$$ = {288., {88., 94.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55586$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = -4.8}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55586$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[
          $CellContext`funcC3F11[$CellContext`x], {$CellContext`x, -5, 5}, 
          PlotRange -> {-2, 5}, PlotStyle -> {{Thick, Black}}], 
         Graphics[{Black, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"f\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {5, 4}, {1.5, 1.5}], 
           If[
            
            Or[$CellContext`xValue$$ < -2, -2 < $CellContext`xValue$$ < 
             0, $CellContext`xValue$$ > 0], {$CellContext`bcR, Thick, 
             Line[{{$CellContext`xValue$$, 
                 $CellContext`funcC3F11[$CellContext`xValue$$]} - 
               Normalize[{1, 
                 Derivative[
                 1][$CellContext`funcC3F11][$CellContext`xValue$$]}], \
{$CellContext`xValue$$, 
                 $CellContext`funcC3F11[$CellContext`xValue$$]} + 
               Normalize[{1, 
                  Derivative[
                  1][$CellContext`funcC3F11][$CellContext`xValue$$]}]}]}, 
            Black], $CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F11[$CellContext`xValue$$]}]}]}, 
        PlotRange -> {{-5, 5}, {-1, 5}}, GridLines -> {
          Range[-5, 5], 
          Range[-1, 5]}, GridLinesStyle -> LightGray, AspectRatio -> 
        Automatic, ImageSize -> 4 72, Ticks -> {
          Range[-5, 5], {-1, 0, 1, 2, 3, 4, 5}}, BaseStyle -> {"Text", 13}, 
        AxesStyle -> Arrowheads[{0, 0.04}], 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, AxesOrigin -> {0, 0}],
       "Specifications" :> {{{$CellContext`xValue$$, -4.8, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -5., 5, 0.1, 
         ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, -4.8, ""}, -5., 5, 0.1, ControlType -> 
         Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.11", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     
     ImageSizeCache->{420., {124., 130.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F11[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-$CellContext`x, $CellContext`x <= -2}, {$CellContext`x + 
             4, 
             Inequality[-2, Less, $CellContext`x, LessEqual, 0]}, {
            4 - $CellContext`x/2, $CellContext`x > 0}}], 
         Attributes[PlotRange] = {ReadProtected}, $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F11[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-$CellContext`x, $CellContext`x <= -2}, {$CellContext`x + 
             4, 
             Inequality[-2, Less, $CellContext`x, LessEqual, 0]}, {
            4 - $CellContext`x/2, $CellContext`x > 0}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550701401237*^9},
 CellTags->"FIGURE 3.11  \[LightBulb]"],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "The graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " consists of line segments, which are their own tangent lines. Therefore, \
the slope of the curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "1"}], TraditionalForm]]],
 "; that is, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", 
    RowBox[{"-", "1"}]}], TraditionalForm]]],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 ". Similarly, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", "1"}], TraditionalForm]]],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", "2"}], "<", "x", "<", "0"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", 
    RowBox[{"-", 
     FractionBox["1", "2"]}]}], TraditionalForm]]],
 " for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "0"}], TraditionalForm]]],
 " (",
 StyleBox["Figure 3.12", "FigureFontText"],
 ")."
}], "Text",
 CellChangeTimes->{{3.45494903766652*^9, 3.4549491038906717`*^9}, {
  3.454953343596657*^9, 3.45495334477376*^9}, {3.457018551828727*^9, 
  3.4570185523083897`*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942058516*^9, 
  3.457291605569635*^9}],

Cell[TextData[{
 "In terms of limits at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 ", we can write \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", 
             SuperscriptBox["0", "-"]}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", 
              RowBox[{
               RowBox[{"-", "2"}], "+", "h"}], ")"}], "-", 
             RowBox[{"f", "(", 
              RowBox[{"-", "2"}], ")"}]}], "h"]}], "=", 
          RowBox[{
           RowBox[{"-", "1"}], "  ", "and", " "}]}]},
        {
         RowBox[{
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", 
             SuperscriptBox["0", "+"]}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", 
              RowBox[{
               RowBox[{"-", "2"}], "+", "h"}], ")"}], "-", 
             RowBox[{"f", "(", 
              RowBox[{"-", "2"}], ")"}]}], "h"]}], "=", "1."}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "\nBecause the one-sided limits are not equal, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", 
     RowBox[{"-", "2"}], ")"}]}], TraditionalForm]]],
 " does not exist. The analogous one-sided limits at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]]],
 " are also unequal."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454935986247196*^9, 3.454935991157662*^9}, {
   3.454936053485709*^9, 3.454936072309785*^9}, {3.454952784490547*^9, 
   3.4549527880865*^9}, {3.454952833761415*^9, 3.454952850924755*^9}, 
   3.4570185484975767`*^9, 3.457180942060686*^9, 3.4572916055719223`*^9, {
   3.4874480289809713`*^9, 3.487448044072422*^9}}]
}, Open  ]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = -4.8, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], -4.8, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -5., 5, 0.1}, {{
       Hold[$CellContext`xValue$$], -4.8, ""}, -5., 5, 0.1}}, 
    Typeset`size$$ = {288., {111., 117.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55631$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = -4.8}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55631$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[
          $CellContext`funcC3F12a[$CellContext`x], {$CellContext`x, -5, 5}, 
          PlotRange -> {-2, 5}, PlotStyle -> {{Thick, Black}}], 
         Plot[
          $CellContext`funcC3F12b[$CellContext`x], {$CellContext`x, -5, 5}, 
          PlotRange -> {-2, 5}, PlotStyle -> {{Thick, $CellContext`bcR}}], 
         Graphics[{Black, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"f\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {5, 4}, {1.5, 
            1.5}], $CellContext`bcR, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\n   \
RowBox[{\"f\", \"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}]}],\n \
TraditionalForm]\)", {5, -1.25}, {1.5, -1}], 
           If[
            
            Or[$CellContext`xValue$$ < -2, -2 < $CellContext`xValue$$ < 
             0, $CellContext`xValue$$ > 0], {$CellContext`bcR, Thick, 
             Line[{{$CellContext`xValue$$, 
                 $CellContext`funcC3F11[$CellContext`xValue$$]} - 
               Normalize[{1, 
                 Derivative[
                 1][$CellContext`funcC3F11][$CellContext`xValue$$]}], \
{$CellContext`xValue$$, 
                 $CellContext`funcC3F11[$CellContext`xValue$$]} + 
               Normalize[{1, 
                  Derivative[
                  1][$CellContext`funcC3F11][$CellContext`xValue$$]}]}]}, 
            Black], $CellContext`bcB, 
           AbsolutePointSize[6], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F12a[$CellContext`xValue$$]}], 
           If[$CellContext`xValue$$ <= -2.1, {$CellContext`bcR, 
             Point[{$CellContext`xValue$$, 
               $CellContext`funcC3F12b[$CellContext`xValue$$]}], Black, 
             Text[
              Framed[
               Pane[
               "\!\(\*FormBox[GridBox[{\n   {\n    RowBox[{\n     RowBox[{\"f\
\", \" \", \"has\", \" \", \"slope\"}], \" \", \"-\", \"1\"}]},\n   {\n    \
RowBox[{\n     RowBox[{\n      RowBox[{\"f\", \"'\"}], \n      RowBox[{\"(\", \
\"x\", \")\"}]}], \"=\", \n     RowBox[{\"-\", \"1\"}]}]}\n  }],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO], {-3.5, -1}, {
              0, 1.5}]}, Black], 
           If[-1.9 <= $CellContext`xValue$$ <= -0.1, {$CellContext`bcR, 
             Point[{$CellContext`xValue$$, 
               $CellContext`funcC3F12b[$CellContext`xValue$$]}], Black, 
             Text[
              Framed[
               Pane[
               "\!\(\*FormBox[GridBox[{\n   {\n    RowBox[{\"f\", \" \", \
\"has\", \" \", \"slope\", \" \", \"1\"}]},\n   {\n    RowBox[{\n     \
RowBox[{\n      RowBox[{\"f\", \"'\"}], \n      RowBox[{\"(\", \"x\", \
\")\"}]}], \"=\", \"1\"}]}\n  }],\n TraditionalForm]\)", $CellContext`bcPBS], \
$CellContext`bcFO, Background -> White], {0, -1}, {1.2, 1.5}]}, Black], 
           If[0.1 <= $CellContext`xValue$$, {$CellContext`bcR, 
             Point[{$CellContext`xValue$$, 
               $CellContext`funcC3F12b[$CellContext`xValue$$]}], Black, 
             Text[
              Framed[
               Pane[
               "\!\(\*FormBox[GridBox[{\n   {\n    RowBox[{\n     RowBox[{\"f\
\", \" \", \"has\", \" \", \"slope\"}], \" \", \"-\", \n     RowBox[{\"1\", \
\"/\", \"2\"}]}]},\n   {\n    RowBox[{\n     RowBox[{\n      RowBox[{\"f\", \
\"'\"}], \n      RowBox[{\"(\", \"x\", \")\"}]}], \"=\", \n     RowBox[{\n    \
  RowBox[{\"-\", \"1\"}], \"/\", \"2\"}]}]}\n  }],\n TraditionalForm]\)", \
$CellContext`bcPBS], $CellContext`bcFO], {2.5, -1}, {0, 1.5}]}, Black], 
           EdgeForm[$CellContext`bcR], White, 
           Map[Disk[#, 0.12]& , {{-2, -1}, {-2, 1}, {0, 1}, {0, (-1)/2}}]}]}, 
        ImageSize -> 4 72, PlotRange -> {{-5, 5}, {-3, 5}}, AspectRatio -> 
        Automatic, Ticks -> {
          Range[-5, 5], {-1, 0, 1, 2, 3, 4, 5}}, BaseStyle -> {"Text", 13}, 
        AxesStyle -> Arrowheads[{0, 0.04}], 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, AxesOrigin -> {0, 0}],
       "Specifications" :> {{{$CellContext`xValue$$, -4.8, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -5., 5, 0.1, 
         ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, -4.8, ""}, -5., 5, 0.1, ControlType -> 
         Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.12", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     
     ImageSizeCache->{420., {147., 153.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F12a[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-$CellContext`x, $CellContext`x <= -2}, {$CellContext`x + 
             4, -2 <= $CellContext`x <= 0}, {
            4 - $CellContext`x/2, $CellContext`x >= 0}}], 
         Attributes[PlotRange] = {ReadProtected}, $CellContext`funcC3F12b[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-1, $CellContext`x <= -2.1}, {
            None, -2.1 < $CellContext`x < -1.9}, {
            1, -1.9 <= $CellContext`x <= -0.1}, {
            None, -0.1 < $CellContext`x < 0.1}, {(-1)/2, $CellContext`x >= 
             0.1}}], $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`funcC3F11[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-$CellContext`x, $CellContext`x <= -2}, {$CellContext`x + 
             4, 
             Inequality[-2, Less, $CellContext`x, LessEqual, 0]}, {
            4 - $CellContext`x/2, $CellContext`x > 0}}], 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}}; {$CellContext`funcC3F12a[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-$CellContext`x, $CellContext`x <= -2}, {$CellContext`x + 
             4, -2 <= $CellContext`x <= 0}, {
            4 - $CellContext`x/2, $CellContext`x >= 
             0}}], $CellContext`funcC3F12b[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{-1, $CellContext`x <= -2.1}, {
            None, -2.1 < $CellContext`x < -1.9}, {
            1, -1.9 <= $CellContext`x <= -0.1}, {
            None, -0.1 < $CellContext`x < 0.1}, {(-1)/2, $CellContext`x >= 
             0.1}}]}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5005507015051193`*^9},
 CellTags->"FIGURE 3.12  \[LightBulb]"],

Cell[TextData[{
 "\tNotice that the slopes of the tangent lines change abruptly at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]]],
 ". As a result, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", 
     RowBox[{"-", "2"}], ")"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "0", ")"}]}], TraditionalForm]]],
 " are undefined and the graph of the derivative is discontinuous at these \
points."
}], "Text",
 CellChangeTimes->{{3.454949119985845*^9, 3.454949158457965*^9}, 
   3.471116843599983*^9}],

Cell[TextData[{
 "Related Exercises 39\[LongDash]44 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.454949163762186*^9, 3.454949166398575*^9}}]
}, Open  ]]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "8"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  In Example 6, why is the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " not continuous at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 " and at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]]],
 "?",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.454949471690007*^9, 3.454949497364847*^9}},
 CellTags->"QUICK CHECK 8"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 7\t", "ExampleFont"],
 "Graph of the derivative"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454949172677792*^9, 3.454949177986184*^9}},
 CellTags->"EXAMPLE 7 Graph of the derivative"],

Cell[TextData[{
 "Sketch the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "'"}], TraditionalForm]]],
 " using the graph of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " (",
 StyleBox["Figure 3.13", "FigureFontText"],
 ").",
 Cell[BoxData[
  FormBox[Cell[""], TraditionalForm]]]
}], "Text",
 CellChangeTimes->{{3.4549491799484158`*^9, 3.454949196612118*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = -4.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], -4.2, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -4.5, 2.5, 
      0.1}, {{
       Hold[$CellContext`xValue$$], -4.2, ""}, -4.2, 2.5, 0.01}}, 
    Typeset`size$$ = {216., {106., 111.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55681$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = -4.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55681$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[
          $CellContext`funcC3F13[$CellContext`x], {$CellContext`x, -5, 2.5}, 
          PlotStyle -> {{Thick, Black}}], 
         Graphics[{Black, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"g\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {3, 5}, {1, 1.5}], {$CellContext`bcR,
             Thick, 
            Line[{{$CellContext`xValue$$, 
                $CellContext`funcC3F13[$CellContext`xValue$$]} - Normalize[{1, 
                Derivative[
                1][$CellContext`funcC3F13][$CellContext`xValue$$]}], \
{$CellContext`xValue$$, 
                $CellContext`funcC3F13[$CellContext`xValue$$]} + Normalize[{1, 
                 Derivative[
                 1][$CellContext`funcC3F13][$CellContext`xValue$$]}]}]}, \
$CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F13[$CellContext`xValue$$]}]}]}, 
        PlotRange -> {{-5, 3}, {-3, 5}}, AspectRatio -> Automatic, ImageSize -> 
        3 72, Ticks -> {
          Range[-5, 5], None}, BaseStyle -> {"Text", 13}, AxesStyle -> 
        Arrowheads[{0, 0.06}], 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, AxesOrigin -> {0, 0}],
       "Specifications" :> {{{$CellContext`xValue$$, -4.2, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -4.5, 2.5, 
         0.1, ControlType -> Slider, ImageSize -> 
         Tiny}, {{$CellContext`xValue$$, -4.2, ""}, -4.2, 2.5, 0.01, 
         ControlType -> Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}, ImageSize -> 
         Tiny}}, "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.13", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     
     ImageSizeCache->{348., {142., 147.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F13[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         0.5 (3 $CellContext`x + $CellContext`x^2/
            2 - $CellContext`x^3 - $CellContext`x^4/4 + 5), $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], 
         Attributes[Derivative] = {NHoldAll, ReadProtected}, $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8], 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F13[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         0.5 (3 $CellContext`x + $CellContext`x^2/
            2 - $CellContext`x^3 - $CellContext`x^4/4 + 5)}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550701637754*^9},
 CellTags->"FIGURE 3.13  \[LightBulb]"],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "Without an equation for ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 ", the best we can do is to find the general shape of the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "'"}], TraditionalForm]]],
 ". Here are the key observations."
}], "Text",
 CellChangeTimes->{{3.45494922125007*^9, 3.454949242861971*^9}}],

Cell[TextData[{
 StyleBox["1.",
  FontWeight->"Bold"],
 "\tFirst note that the lines tangent to the graph of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "3"}]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "1"}], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox["1", TraditionalForm]]],
 " have a slope of 0. Therefore, "
}], "Text",
 CellChangeTimes->{{3.454949250275478*^9, 3.4549492770492*^9}, {
  3.4781896745816307`*^9, 3.4781896795782833`*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{"g", "'"}], 
           RowBox[{"(", 
            RowBox[{"-", "3"}], ")"}]}], "=", 
          RowBox[{
           RowBox[{
            RowBox[{"g", "'"}], 
            RowBox[{"(", 
             RowBox[{"-", "1"}], ")"}]}], "=", 
           RowBox[{
            RowBox[{
             RowBox[{"g", "'"}], 
             RowBox[{"(", "1", ")"}]}], "=", "0"}]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}], ","}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.4549492803712387`*^9, 3.4549492950899277`*^9}}],

Cell[TextData[{
 "which means the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "'"}], TraditionalForm]]],
 " has ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 "-intercepts at these points (",
 StyleBox["Figure 3.14", "FigureFontText"],
 ")."
}], "Text",
 CellChangeTimes->{{3.454949299613214*^9, 3.454949317811742*^9}}],

Cell[TextData[{
 StyleBox["2.",
  FontWeight->"Bold"],
 "\tFor ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", 
    RowBox[{"-", "3"}]}], TraditionalForm]]],
 ", the slopes of the tangent lines are positive and decrease to 0 as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " approaches ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "3"}], TraditionalForm]]],
 " from the left. Therefore, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " is positive for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", 
    RowBox[{"-", "3"}]}], TraditionalForm]]],
 " and decreases to 0 as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " approaches ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "3"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454949331912611*^9, 3.454949377339028*^9}, {
  3.454952928206901*^9, 3.454952930124844*^9}}],

Cell[TextData[{
 StyleBox["3.",
  FontWeight->"Bold"],
 "\tFor ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", "3"}], "<", "x", "<", 
    RowBox[{"-", "1"}]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " is negative; it initially decreases as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " increases and then increases to 0 at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "1"}]}], TraditionalForm]]],
 ". For ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", "1"}], "<", "x", "<", "1"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " is positive; it initially increases as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " increases and then returns to 0 at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "1"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454949380663068*^9, 3.454949451578025*^9}}],

Cell[TextData[{
 StyleBox["4.",
  FontWeight->"Bold"],
 "\tFinally, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"g", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " is negative and decreasing for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "1"}], TraditionalForm]]],
 ". Because the slope of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " changes gradually, the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "'"}], TraditionalForm]]],
 " is continuous with no jumps or breaks."
}], "Text",
 CellChangeTimes->{{3.454949455539003*^9, 3.454949457112837*^9}, {
  3.454949508328705*^9, 3.4549495357008533`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`drawDerivative$$ = 
    False, $CellContext`showHorizontalTangents$$ = 
    False, $CellContext`xValue$$ = -4.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], -4.2, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -4.2, 2.5, 
      0.01}, {{
       Hold[$CellContext`xValue$$], -4.2, ""}, -4.2, 2.5, 0.01}, {
      Hold[
       Column[{
         Manipulate`Place[1], 
         Manipulate`Place[2]}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`showHorizontalTangents$$], False, 
       Pane[
       "Show horizontal tangent lines", {90, Automatic}, 
        BaseStyle -> {
         LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
          LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
          Left, FontSize -> 11}]}, {True, False}}, {{
       Hold[$CellContext`drawDerivative$$], False, 
       "draw \!\(\*FormBox[\n RowBox[{\n  RowBox[{\"g\", \"'\"}], \n  \
RowBox[{\"(\", \"x\", \")\"}]}],\n TraditionalForm]\)"}, {True, False}}}, 
    Typeset`size$$ = {360., {190., 195.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55720$$ = 
    0, $CellContext`showHorizontalTangents$55721$$ = 
    False, $CellContext`drawDerivative$55722$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`drawDerivative$$ = 
        False, $CellContext`showHorizontalTangents$$ = 
        False, $CellContext`xValue$$ = -4.2}, "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55720$$, 0], 
        Hold[$CellContext`showHorizontalTangents$$, \
$CellContext`showHorizontalTangents$55721$$, False], 
        Hold[$CellContext`drawDerivative$$, \
$CellContext`drawDerivative$55722$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[
          $CellContext`funcC3F14b[$CellContext`x], {$CellContext`x, -5, \
$CellContext`xValue$$}, PlotStyle -> {
            
            If[$CellContext`drawDerivative$$, {Thick, $CellContext`bcR}, 
             None]}], 
         Plot[
          $CellContext`funcC3F14a[$CellContext`x], {$CellContext`x, -5, 2.5}, 
          PlotStyle -> {{Thick, Black}}], 
         Graphics[{Black, 
           Text[
           "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\"g\", \"(\", \
\"x\", \")\"}]}],\n TraditionalForm]\)", {2.8, 3.2}, {1, 1}], 
           If[$CellContext`drawDerivative$$, {$CellContext`bcR, 
             Text[
             "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", \n  RowBox[{\n   \
RowBox[{\"g\", \"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}]}],\n \
TraditionalForm]\)", {-3.5, 5.5}, {-1, 1}]}, Black], 
           If[$CellContext`showHorizontalTangents$$, {Gray, Dashed, 
             Line[{{-3, 0}, {-3, 
                $CellContext`funcC3F14a[-3]}}], 
             Line[{{-1, 0}, {-1, 
                $CellContext`funcC3F14a[-1]}}], 
             Line[{{1, 0}, {1, 
                $CellContext`funcC3F14a[1]}}], $CellContext`bcR, 
             AbsoluteThickness[2], 
             Dashing[{}], 
             Line[{{-4, 
                $CellContext`funcC3F14a[-3]}, {-2, 
                $CellContext`funcC3F14a[-3]}}], 
             Line[{{-2, 
                $CellContext`funcC3F14a[-1]}, {0, 
                $CellContext`funcC3F14a[-1]}}], 
             Line[{{0, 
                $CellContext`funcC3F14a[1]}, {2, 
                $CellContext`funcC3F14a[1]}}], 
             Text[
             "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \n    RowBox[{\"-\", \"3\"}], \")\"}]}], \"=\", \
\"0\"}],\n TraditionalForm]\)", {-3, 
               $CellContext`funcC3F14a[-3]}, {0, -1.5}], 
             Text[
             "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"g\", \"(\", \n   \
RowBox[{\"-\", \"1\"}], \")\"}], \"=\", \"0\"}],\n TraditionalForm]\)", {-1, 
               $CellContext`funcC3F14a[-1]}, {0, -1.5}], 
             Text[
             "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \"1\", \")\"}]}], \"=\", \"0\"}],\n \
TraditionalForm]\)", {1, 
               $CellContext`funcC3F14a[1]}, {0, -1.5}], 
             AbsolutePointSize[7], $CellContext`bcR, 
             Point[{{-3, 0}, {-1, 0}, {1, 0}}], $CellContext`bcB, 
             Point[{{-3, 
                $CellContext`funcC3F14a[-3]}, {-1, 
                $CellContext`funcC3F14a[-1]}, {1, 
                $CellContext`funcC3F14a[1]}}]}, Black], $CellContext`bcR, 
           AbsoluteThickness[2], 
           Line[{{$CellContext`xValue$$, 
               $CellContext`funcC3F14a[$CellContext`xValue$$]} - Normalize[{1, 
               $CellContext`funcC3F14b[$CellContext`xValue$$]}], \
{$CellContext`xValue$$, 
               $CellContext`funcC3F14a[$CellContext`xValue$$]} + Normalize[{1, 
                $CellContext`funcC3F14b[$CellContext`xValue$$]}]}], 
           AbsolutePointSize[7], $CellContext`bcB, 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F14a[$CellContext`xValue$$]}], 
           If[$CellContext`drawDerivative$$, {$CellContext`bcB, 
             Dashing[{}], 
             AbsoluteThickness[1], 
             If[$CellContext`xValue$$ < 2.5, 
              Line[{{$CellContext`xValue$$, -3}, {$CellContext`xValue$$, 5}}],
               Black], 
             AbsolutePointSize[7], $CellContext`bcR, 
             Point[{$CellContext`xValue$$, 
               $CellContext`funcC3F14b[$CellContext`xValue$$]}], \
$CellContext`bcB, 
             Point[{$CellContext`xValue$$, 
               $CellContext`funcC3F14a[$CellContext`xValue$$]}], 
             If[-4.2 < $CellContext`xValue$$ < -3, {$CellContext`bcR, 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}], \">\", \"0\"}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
                 White], {-4.5, -2}, {-1, 1}], $CellContext`bcB, 
               Text[
                Framed[
                 Pane[
                 "positive slope", $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {-4.5, 4.25}, {-1, -1}]}, Black], 
             If[-3 < $CellContext`xValue$$ < -1, {$CellContext`bcR, 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}], \"<\", \"0\"}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
                 White], {-3, -2}, {-1, 1}], $CellContext`bcB, 
               Text[
                Framed[
                 Pane[
                 "negative slope", $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {-3, 4.25}, {-1, -1}]}, Black], 
             If[-1 < $CellContext`xValue$$ < 1, {$CellContext`bcR, 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}], \">\", \"0\"}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
                 White], {-1, -2}, {-1, 1}], $CellContext`bcB, 
               Text[
                Framed[
                 Pane[
                 "positive slope", $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {-1, 4.25}, {-1, -1}]}, Black], 
             If[1 < $CellContext`xValue$$ < 2.5, {$CellContext`bcR, 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\n   RowBox[{\"g\", \
\"'\"}], \n   RowBox[{\"(\", \"x\", \")\"}]}], \"<\", \"0\"}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
                 White], {1, -2}, {-1, 1}], $CellContext`bcB, 
               Text[
                Framed[
                 Pane[
                 "negative slope", $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {1, 4.25}, {-1, -1}]}, Black]}, 
            Black]}]}, ImageSize -> 5 72, PlotRange -> {{-5, 3}, {-3, 5.5}}, 
        AspectRatio -> Automatic, BaseStyle -> {"Text", 13}, AxesStyle -> 
        Arrowheads[{0, 0.04}], Ticks -> {
          Range[-5, 3], None}, AxesOrigin -> {0, 0}, 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
        Method -> {"AxesInFront" -> False}], 
      "Specifications" :> {{{$CellContext`xValue$$, -4.2, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -4.2, 2.5, 
         0.01, ControlType -> Slider, ImageSize -> Tiny, ControlPlacement -> 
         1}, {{$CellContext`xValue$$, -4.2, ""}, -4.2, 2.5, 0.01, ControlType -> 
         Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {"PlayPauseButton", "ResetButton"}, ImageSize -> 
         Tiny, ControlPlacement -> 2}, 
        Column[{
          Manipulate`Place[1], 
          Manipulate`Place[2]}], 
        Delimiter, {{$CellContext`showHorizontalTangents$$, False, 
          Pane[
          "Show horizontal tangent lines", {90, Automatic}, 
           BaseStyle -> {
            LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
             LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
             Left, FontSize -> 11}]}, {True, False}, ControlType -> Checkbox},
         Delimiter, {{$CellContext`drawDerivative$$, False, 
          "draw \!\(\*FormBox[\n RowBox[{\n  RowBox[{\"g\", \"'\"}], \n  \
RowBox[{\"(\", \"x\", \")\"}]}],\n TraditionalForm]\)"}, {True, False}, 
         ControlType -> Checkbox}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.14", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     
     ImageSizeCache->{522., {226., 231.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`funcC3F14b[
           Pattern[$CellContext`x, 
            Blank[]]] := (((-0.5) ($CellContext`x + 3)) ($CellContext`x + 
            1)) ($CellContext`x - 1), $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`funcC3F14a[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         0.5 (3 $CellContext`x + $CellContext`x^2/
            2 - $CellContext`x^3 - $CellContext`x^4/4 + 5), $CellContext`bcB = 
         RGBColor[0, 0.4, 0.8], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> GrayLevel[0.85]}, 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F14a[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         0.5 (3 $CellContext`x + $CellContext`x^2/
            2 - $CellContext`x^3 - $CellContext`x^4/4 + 
           5), $CellContext`funcC3F14b[
           Pattern[$CellContext`x, 
            Blank[]]] := (((-0.5) ($CellContext`x + 3)) ($CellContext`x + 
            1)) ($CellContext`x - 1)}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5005507018076*^9},
 CellTags->"FIGURE 3.14  \[LightBulb]"],

Cell[TextData[{
 "Related Exercises 39\[LongDash]44 ",
 Cell[BoxData[
  GraphicsBox[
   {RGBColor[0.796, 0, 0.42], EdgeForm[RGBColor[0.5306666666666667, 0, 0.28]],
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
   ImageSize->15,
   PlotRange->{-0.5, 0.3}]],
  CellChangeTimes->{3.443312659351997*^9}]
}], "RelatedExercises",
 CellChangeTimes->{{3.4549495464947863`*^9, 3.454949549039236*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Continuity", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454949559303137*^9, 3.4549495607021523`*^9}},
 CellTags->"Continuity"],

Cell["\<\
We now return to the discussion of continuity (Section 2.6) and investigate \
the relationship between continuity and differentiability. Specifically, we \
show that if a function is differentiable at a point, then it is also \
continuous at that point.\
\>", "Text",
 CellChangeTimes->{{3.4549495638023453`*^9, 3.454949606614546*^9}, 
   3.4549537116156282`*^9}],

Cell[TextData[{
 StyleBox["THEOREM 3.1", "TheoremFont"],
 "\t",
 StyleBox["Differentiable Implies Continuous",
  FontWeight->"Bold"],
 "\nIf ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "Theorem",
 CellChangeTimes->{{3.454949611834982*^9, 3.454949634064781*^9}, {
  3.454952943794148*^9, 3.454952952526574*^9}},
 CellTags->"THEOREM 3.1 Differentiable Implies Continuous"],

Cell[TextData[{
 StyleBox["Proof", "ProofFont"],
 "  Assume ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable at a point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", which implies that "
}], "Text",
 CellChangeTimes->{{3.4549496546535387`*^9, 3.4549496709519444`*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"f", "'"}], 
          RowBox[{"(", "a", ")"}]}], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "a"}]], 
          FractionBox[
           RowBox[{
            RowBox[{"f", "(", "x", ")"}], "-", 
            RowBox[{"f", "(", "a", ")"}]}], 
           RowBox[{"x", "-", "a"}]]}]}]}
      },
      GridBoxAlignment->{"Columns" -> {{"="}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454949700152987*^9, 3.454949713143488*^9}}],

Cell[TextData[{
 "exists. To show that ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", we must show that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", "a"}]], 
     RowBox[{"f", "(", "x", ")"}]}], "=", 
    RowBox[{"f", "(", "a", ")"}]}], TraditionalForm]]],
 ". The key is the identity "
}], "Text",
 CellChangeTimes->{{3.454949717014844*^9, 3.454949741314797*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{
           RowBox[{"f", "(", "x", ")"}], "=", 
           RowBox[{
            RowBox[{
             FractionBox[
              RowBox[{
               RowBox[{"f", "(", "x", ")"}], "-", 
               RowBox[{"f", "(", "a", ")"}]}], 
              RowBox[{"x", "-", "a"}]], 
             RowBox[{"(", 
              RowBox[{"x", "-", "a"}], ")"}]}], "+", 
            RowBox[{"f", "(", "a", ")"}]}]}], ",", "   ", 
          RowBox[{"x", "\[NotEqual]", 
           RowBox[{"a", "."}]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "(3)"
}], "Text",
 CellChangeTimes->{{3.4549497451055717`*^9, 3.4549497670529633`*^9}, {
  3.45495337365204*^9, 3.454953374219988*^9}, {3.457018534280488*^9, 
  3.457018534611813*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942061975*^9, 
  3.4572916055735407`*^9}],

Cell[TextData[{
 "Expression (3) is an identity because it holds for all values of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[NotEqual]", "a"}], TraditionalForm]]],
 ", which can be seen by canceling ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "-", "a"}], TraditionalForm]]],
 " and simplifying."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454936163585236*^9, 3.4549361909720783`*^9}, 
   3.457018530746748*^9, 3.457180942062778*^9, 3.457291605574357*^9}]
}, Open  ]],

Cell[TextData[{
 "Taking the limit as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " approaches ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " on both sides of (3) and simplifying, we have "
}], "Text",
 CellChangeTimes->{{3.454949774346724*^9, 3.454949788370222*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "a"}]], 
          RowBox[{"f", "(", "x", ")"}]}], "=", 
         RowBox[{
          UnderscriptBox["lim", 
           RowBox[{"x", "\[Rule]", "a"}]], 
          RowBox[{"[", 
           RowBox[{
            RowBox[{
             FractionBox[
              RowBox[{
               RowBox[{"f", "(", "x", ")"}], "-", 
               RowBox[{"f", "(", "a", ")"}]}], 
              RowBox[{"x", "-", "a"}]], 
             RowBox[{"(", 
              RowBox[{"x", "-", "a"}], ")"}]}], "+", 
            RowBox[{"f", "(", "a", ")"}]}], "]"}]}]}], 
        StyleBox[
         RowBox[{"Use", " ", 
          RowBox[{"identity", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          RowBox[{
           UnderscriptBox[
            RowBox[{
             UnderscriptBox["lim", 
              RowBox[{"x", "\[Rule]", "a"}]], 
             RowBox[{"(", 
              FractionBox[
               RowBox[{
                RowBox[{"f", "(", "x", ")"}], "-", 
                RowBox[{"f", "(", "a", ")"}]}], 
               RowBox[{"x", "-", "a"}]], ")"}]}], 
            StyleBox[
             UnderscriptBox["\[UnderBrace]", 
              RowBox[{
               RowBox[{"f", "'"}], 
               RowBox[{"(", "a", ")"}]}]], "TypesetAnnotationFont"]], 
           UnderscriptBox[
            RowBox[{
             UnderscriptBox["lim", 
              RowBox[{"x", "\[Rule]", "a"}]], 
             RowBox[{"(", 
              RowBox[{"x", "-", "a"}], ")"}]}], 
            StyleBox[
             UnderscriptBox["\[UnderBrace]", "0"], 
             "TypesetAnnotationFont"]]}], "+", 
          UnderscriptBox[
           RowBox[{
            UnderscriptBox["lim", 
             RowBox[{"x", "\[Rule]", "a"}]], 
            RowBox[{"f", "(", "a", ")"}]}], 
           StyleBox[
            UnderscriptBox["\[UnderBrace]", 
             RowBox[{"f", "(", "a", ")"}]], "TypesetAnnotationFont"]]}]}], 
        StyleBox[
         RowBox[{"Theorem", " ", "2.3"}], "TypesetAnnotationFont"]},
       {
        RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
         RowBox[{
          RowBox[{
           RowBox[{"f", "'"}], 
           RowBox[{
            RowBox[{"(", 
             SuperscriptBox["a", "\[VeryThinSpace]"], ")"}], "\[CenterDot]", 
            "0"}]}], "+", 
          RowBox[{"f", "(", "a", ")"}]}]}], 
        StyleBox[
         RowBox[{"Evaluate", " ", 
          RowBox[{"limits", "."}]}], "TypesetAnnotationFont"]},
       {
        RowBox[{
         RowBox[{
          RowBox[{"\[InvisiblePostfixScriptBase]", "=", 
           RowBox[{"f", 
            SuperscriptBox[
             RowBox[{"(", "a"}], "\[VeryThinSpace]"]}]}], ")"}], "."}], 
        StyleBox[
         RowBox[{"Simplify", "."}], "TypesetAnnotationFont"]}
      },
      GridBoxAlignment->{"Columns" -> {{"=", Left}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.454949791752513*^9, 3.454949897419383*^9}, {
  3.454949963039782*^9, 3.4549499989105453`*^9}, {3.471119821741431*^9, 
  3.471119823086125*^9}, {3.478189716980324*^9, 3.478189716980392*^9}}],

Cell[TextData[{
 "Therefore, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", "a"}]], 
     RowBox[{"f", "(", "x", ")"}]}], "=", 
    RowBox[{"f", "(", "a", ")"}]}], TraditionalForm]]],
 ", which means that ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". ",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0., 0.576, 0.816], EdgeForm[RGBColor[0., 0.384, 0.544]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "Text",
 CellChangeTimes->{{3.4549499139676847`*^9, 3.45494993330462*^9}, {
  3.454950256866928*^9, 3.454950258255082*^9}}],

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " ", "9"}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 "  Verify that the right-hand side of (3) equals ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "(", "x", ")"}], TraditionalForm]]],
 " if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "\[NotEqual]", "a"}], TraditionalForm]]],
 ".",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "QuickCheck",
 CellChangeTimes->{{3.4549502971701393`*^9, 3.454950317967309*^9}, {
  3.471116863044976*^9, 3.471116863045022*^9}},
 CellTags->"QUICK CHECK 9"],

Cell[TextData[{
 "\tTheorem 3.1 says that if ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable at a point, then it is necessarily continuous at that \
point. Therefore, if ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is ",
 StyleBox["not",
  FontSlant->"Italic"],
 " continuous at a point, then ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is ",
 StyleBox["not",
  FontSlant->"Italic"],
 " differentiable there (",
 StyleBox["Figure 3.15", "FigureFontText"],
 "). So, Theorem 3.1 can be stated in another way."
}], "Text",
 CellChangeTimes->{{3.454950323295341*^9, 3.454950385144335*^9}, 
   3.471116872018251*^9, {3.478189708937397*^9, 3.478189710377328*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzt3b2OG8e26HHfe16BMLTDg+tEDp061cQGrmFtyoGwcQwoPQ/g3Ilw4EQD
GNjaFgzBqWEHQzvnAxiwrYluPJlnw1AgCDMg7hLXzJrFqupi9Rf7g/8fBsKI
QzaLze5aveqr//O//vv//td/vPfee//vf7333v/53++99+73DQAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2Lq6
vrp8fbkGgAN6dX4uNc/b6zdDV4HokcQX+aK/++67Z6enT//nf/Rffvjhh59D
/kjNI7WQ1EVD14jonlxOyPdrIUa+6LPVSq8x+Jd/+Zd/D/Cv1Dl6oWsV0SvC
zRD62O2Sq1oWw4UEgGG9vX7zyjWtyC80ph3Yl19+eXV91eEG5Qu1iweJOB1u
GQDa0NpJf6R26rbqQxXZ1YvFosMNWpT512//JsoAGBsJLmerlV0JE2syZP9c
/HkhtbrfS/K7PLheryUrLNx7ssMl0HTVtCWl0q63V9uRHp1sEwA6J/UkrS5V
/vrj+5OTBwtHEgf/V33w3sNvC1sgZVfL87/77rv2ZZN31IRUvsH2WwOAXsll
tlZZQxdkdCT4SjSR/fP5+zeB5tOnv1hMsUCzuPdIUpuSWLNcLuXpnXTTaDba
ScwCgAPQ4QG088e0WSyIKRomZF/99s9/lAcaeZVu4/4HH7YslTaayVdGgyeA
qZCKS5Oa8u6GoyL758Xf/xa3nsnu+uH+J4VNZ6/Oz60JruV+1nSGRjMA06J1
l/w7dEFG6iZ5WSyW3/xqYUUSmc/ff/dIyRYkjlugabOf5d1JZwBMkVVfQxdk
pP764/v7H3woMeLjz76W+GIPBjlOxpdffmmBRnZ145JIZsQlAYCJ0p4apnAm
3bWe3XukkUUfuffw28ItaJy6SYuWy8Yl0dyT6f8ApkiHOjMeoIq1nmmgqZXO
SPj2w6TbjAeQ6wG+JgATpWOZmLxZxcaeLb/5VfaSDgMofK1Eh8Wuxl35uhRA
+fOlqJL+6IRT+9H/xgt66xC7J48fajSUX+TDyoOFh4Rs9senX0i+Ji98+eK5
tTEa2fi7seLbrJDDbCh69Mr3KwewfAs0YsyPTieXk7F88sXBEGjybirJ7Wwa
yW7kPC1MZza3M2i8xrNp6nalWSKWsHsQWvOg1D/vDlFr6HPjHzJs/0jxtJ0w
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
AAAAAAAAAIBD+P/Ws+5b
    "], {{0, 476}, {547, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 216, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->216,
  ImageSizeRaw->{547, 476},
  PlotRange->{{0, 547}, {0, 476}}]], "Output",
 CellChangeTimes->{3.500550702135902*^9},
 CellTags->"FIGURE 3.15"],

Cell[TextData[StyleBox["FIGURE 3.15", "FigureFont"]], "FigureCaption",
 CellChangeTimes->{{3.454951638468946*^9, 3.454951640120702*^9}}],

Cell[TextData[{
 StyleBox["THEOREM 3.1 (ALTERNATIVE VERSION)", "TheoremFont"],
 "\t",
 StyleBox["Not Continuous Implies Not Differentiable",
  FontWeight->"Bold"],
 "\nIf ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not differentiable at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "Theorem",
 CellChangeTimes->{{3.454950396931902*^9, 3.4549504314710484`*^9}, {
  3.454953399217417*^9, 3.454953400459552*^9}, {3.457018521658519*^9, 
  3.4570185219849863`*^9}, {3.48744811002244*^9, 3.4874481188152637`*^9}},
 CellTags->
  "THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not Differentiable"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.45718094206392*^9, 
  3.457291605575952*^9}],

Cell[TextData[{
 "The alternative version of Theorem 3.1 is called the ",
 StyleBox["contrapositive",
  FontSlant->"Italic"],
 " of the first statement of Theorem 3.1. A statement and its contrapositive \
are two equivalent ways of expressing the same statement.\nFor example, the \
statement \n     If I live in Denver, then I live in Colorado \nis logically \
equivalent to its contrapositive: \n     If I do not live in Colorado, then I \
do not live in Denver."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.4549362085107718`*^9, 3.454936298384944*^9}, {
   3.4549363600082397`*^9, 3.454936374549124*^9}, 3.457018487799635*^9, 
   3.45718094206456*^9, 3.4572916055767*^9, 3.460897249530614*^9, {
   3.48744816935225*^9, 3.487448191114533*^9}}]
}, Open  ]],

Cell[TextData[{
 "\tIt is tempting to read more into Theorem 3.1 than what it actually \
states. If ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at a point, ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is ",
 StyleBox["not",
  FontSlant->"Italic"],
 " necessarily differentiable at that point.  For example, consider the \
continuous function in ",
 StyleBox["Figure 3.16", "FigureFontText"],
 " and note the ",
 StyleBox["corner point",
  FontWeight->"Bold"],
 " at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". Ignoring the portion of the graph for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "a"}], TraditionalForm]]],
 ", we might be tempted to conclude that ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " is the line tangent to the curve at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". Ignoring the part of the graph for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "<", "a"}], TraditionalForm]]],
 ", we might incorrectly conclude that ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " is the line tangent to the curve at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". The slopes of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "1"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptL]", "2"], TraditionalForm]]],
 " are not equal. Because of the abrupt change in the slope of the curve at \
",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not differentiable at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ": The limit that defines ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " does not exist at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454950434333102*^9, 3.4549506204266872`*^9}, {
   3.454953426691229*^9, 3.454953428595952*^9}, {3.4549534707019787`*^9, 
   3.4549534719014263`*^9}, {3.457018472050126*^9, 3.457018477384762*^9}, 
   3.487448230012702*^9, {3.4965307467180157`*^9, 3.49653074817974*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.457180942065662*^9, 
  3.45729160557927*^9}],

Cell[TextData[{
 "To avoid confusion about continuity and differentiability, it helps to \
think about the function ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"\[LeftBracketingBar]", "x", "\[RightBracketingBar]"}]}], 
   TraditionalForm]]],
 ": It is continuous everywhere but not differentiable at 0. Continuity \
requires that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", "a"}]], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"f", "(", "x", ")"}], "-", 
       RowBox[{"f", "(", "a", ")"}]}], ")"}]}], "=", "0"}], TraditionalForm]]],
 ". Differentiability requires more: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"x", "\[Rule]", "a"}]], 
    FractionBox[
     RowBox[{
      RowBox[{"f", "(", "x", ")"}], "-", 
      RowBox[{"f", "(", "a", ")"}]}], 
     RowBox[{"x", "-", "a"}]]}], TraditionalForm]]],
 " must exist."
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.45493639697429*^9, 3.454936428265416*^9}, {
   3.4570184549712877`*^9, 3.457018467259089*^9}, 3.457018729173431*^9, 
   3.4571809420667257`*^9, 3.457291605580656*^9, {3.4874482426082487`*^9, 
   3.487448247394594*^9}, {3.4874485701272573`*^9, 3.487448577447534*^9}}]
}, Open  ]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xValue$$ = 0.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xValue$$], 0.2, 
       "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 0.1, 4.4, 0.1}, {{
       Hold[$CellContext`xValue$$], 0.2, ""}, 0.1, 4.4, 0.01}, {{
       Hold[$CellContext`xValue$$], {}, ""}, {
      2 -> "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"a\"}],\n \
TraditionalForm]\)"}}}, Typeset`size$$ = {288., {144., 149.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`xValue$55766$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`xValue$$ = 0.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xValue$$, $CellContext`xValue$55766$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         Plot[{
           
           If[$CellContext`xValue$$ <= 2, 
            Derivative[1][$CellContext`funcC3F16][1.999] ($CellContext`x - 
              1.999) + $CellContext`funcC3F16[1.999], None], 
           
           If[$CellContext`xValue$$ >= 2, 
            Derivative[1][$CellContext`funcC3F16][2.001] ($CellContext`x - 
              2.001) + $CellContext`funcC3F16[2.001], 
            None]}, {$CellContext`x, -0.5, 5}, PlotStyle -> {{Thick, 
             Lighter[$CellContext`bcR, 0.75]}}], 
         Plot[
          $CellContext`funcC3F16[$CellContext`x], {$CellContext`x, 0, 4.5}, 
          PlotStyle -> {Thick, Black}], 
         Plot[
         Derivative[
            1][$CellContext`funcC3F16][$CellContext`xValue$$] ($CellContext`x - \
$CellContext`xValue$$) + $CellContext`funcC3F16[$CellContext`xValue$$], \
{$CellContext`x, -0.5, 5}, PlotStyle -> {Thick, $CellContext`bcR}], 
         Graphics[{
           If[$CellContext`xValue$$ < 2, 
            Text[
             Framed[
              Pane[
              "Tangents approach \!\(\*FormBox[SubscriptBox[\"\[ScriptL]\", \
\"1\"],\n TraditionalForm]\) as \!\(\*FormBox[\n RowBox[{\"x\", \"\[Rule]\", \
SuperscriptBox[\"a\", \"-\"]}],\n TraditionalForm]\).", {
               120, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
              Background -> White], {0.1, 5.5}, {-1, 1}], Black], 
           If[$CellContext`xValue$$ > 2, 
            Text[
             Framed[
              Pane[
              "Tangents approach \!\(\*FormBox[SubscriptBox[\"\[ScriptL]\", \
\"2\"],\n TraditionalForm]\) as \!\(\*FormBox[\n RowBox[{\"x\", \"\[Rule]\", \
SuperscriptBox[\"a\", \"+\"]}],\n TraditionalForm]\).", {
               120, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
              Background -> White], {4.9, 5.5}, {1, 1}], Black], 
           Text[
            Framed[
             Pane[
             "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"\[ScriptL]\", \"1\"], \
\"\[NotEqual]\", \n  RowBox[{SubscriptBox[\"\[ScriptL]\", \"2\"], \" \", \
\"implies\", \" \", \n   RowBox[{\"f\", \"'\"}], \n   RowBox[{\"(\", \"a\", \
\")\"}], \" \", \"does\", \" \", \"not\", \" \", \n   RowBox[{\"exist\", \
\".\"}]}]}],\n TraditionalForm]\)", {
              120, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
             Background -> White], {4.9, 0.5}, {1, -1}], $CellContext`bcR, 
           Dashed, 
           AbsoluteThickness[1.5], 
           If[$CellContext`xValue$$ <= 2, 
            Text[
            "\!\(\*FormBox[SubscriptBox[\"\[ScriptL]\", \"1\"],\n \
TraditionalForm]\)", {0.3, 3}, {-1, 1}], $CellContext`bcR], 
           If[$CellContext`xValue$$ >= 2, 
            Text[
            "\!\(\*FormBox[SubscriptBox[\"\[ScriptL]\", \"2\"],\n \
TraditionalForm]\)", {3, 2}, {1, 1}], $CellContext`bcR], 
           Line[{{2, 0}, {2, 4}}], $CellContext`bcB, 
           AbsolutePointSize[7], 
           Point[{$CellContext`xValue$$, 
             $CellContext`funcC3F16[$CellContext`xValue$$]}]}]}, ImageSize -> 
        4 72, PlotRange -> {{-0.5, 5}, {-0.5, 5.5}}, AspectRatio -> 1, 
        AxesOrigin -> {0, 0}, 
        Ticks -> {{{2, "\!\(\*FormBox[\"a\",\n TraditionalForm]\)"}}, None}, 
        AxesLabel -> {
         "\!\(\*FormBox[\"x\",\n TraditionalForm]\)", 
          "\!\(\*FormBox[\"y\",\n TraditionalForm]\)"}, 
        BaseStyle -> {"Text", 13}, AxesStyle -> Arrowheads[{0, 0.04}]], 
      "Specifications" :> {{{$CellContext`xValue$$, 0.2, 
          "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, 0.1, 4.4, 0.1,
          ControlType -> Slider, ImageSize -> 
         Small}, {{$CellContext`xValue$$, 0.2, ""}, 0.1, 4.4, 0.01, 
         ControlType -> Trigger, DefaultDuration -> 10, 
         AppearanceElements -> {
          "PlayPauseButton", "ResetButton"}}, {{$CellContext`xValue$$, {}, 
          ""}, {2 -> 
          "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"a\"}],\n TraditionalForm]\
\)"}, ControlType -> RadioButtonBar}}, 
      "Options" :> {
       ControlPlacement -> Left, LabelStyle -> 11, Deployed -> True, 
        AppearanceElements -> "ResetButton", FrameLabel -> 
        Style["FIGURE 3.16", "FigureFont", Smaller]}, "DefaultOptions" :> {}],
     
     ImageSizeCache->{450., {180., 185.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{
        Attributes[Derivative] = {
          NHoldAll, ReadProtected}, $CellContext`funcC3F16[
           Pattern[$CellContext`x, 
            Blank[]]] := Piecewise[{{(2 Sqrt[2]) Sqrt[$CellContext`x], 
             Inequality[
             0, Less, $CellContext`x, LessEqual, 2]}, {($CellContext`x - 4)^2/
              2 + 2, 2 <= $CellContext`x <= 4.5}}], $CellContext`bcR = 
         RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
         BaseStyle -> {
           LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
            LineBreakWithin -> Automatic, Hyphenation -> True, TextAlignment -> 
            Left, FontSize -> 13}, $CellContext`bcFO = {
          RoundingRadius -> 5, FrameStyle -> 
           GrayLevel[0.85]}, $CellContext`bcB = RGBColor[0, 0.4, 0.8], 
         Attributes[PlotRange] = {ReadProtected}}; {$CellContext`funcC3F16[
           Pattern[$CellContext`x, 
            Blank[]]] := 
         Piecewise[{{(2 2^Rational[1, 2]) $CellContext`x^Rational[1, 2], 
             Inequality[
             0, Less, $CellContext`x, LessEqual, 2]}, {($CellContext`x - 4)^2/
              2 + 2, 2 <= $CellContext`x <= 4.5}}]}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.500550702188671*^9},
 CellTags->"FIGURE 3.16  \[LightBulb]"],

Cell[TextData[{
 "\tAnother common situation occurs when the graph of a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " has a vertical tangent line at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ". In this case, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " is undefined because the slope of a vertical line is undefined. A vertical \
tangent line may occur at a sharp point on the curve called a ",
 StyleBox["cusp",
  FontWeight->"Bold"],
 " (for example, the function ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SqrtBox[
     RowBox[{"\[LeftBracketingBar]", "x", "\[RightBracketingBar]"}]]}], 
   TraditionalForm]]],
 " in ",
 StyleBox["Figure 3.17a", "FigureFontText"],
 "). In other cases, a vertical tangent line may occur without a cusp (for \
example, the function ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RadicalBox["x", "3"]}], TraditionalForm]]],
 " in ",
 StyleBox["Figure 3.17b", "FigureFontText"],
 ")."
}], "Text",
 CellChangeTimes->{{3.45495063123379*^9, 3.454950733646694*^9}, {
  3.4549534891969633`*^9, 3.4549534899365187`*^9}, {3.4586765672953157`*^9, 
  3.458676567656559*^9}, {3.487448665631152*^9, 3.487448669515617*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4570183857819233`*^9, 3.45718094206774*^9, 
  3.457291605582234*^9}],

Cell["\<\
See Exercises 61-64 for a formal definition of a vertical tangent line.\
\>", "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.454936493925458*^9, 3.454936507336204*^9}, 
   3.457018443531837*^9, 3.4571809420681133`*^9, 3.45729160558272*^9}]
}, Open  ]],

Cell[BoxData[
 TagBox[GridBox[{
    {
     TagBox[
      StyleBox[
       DynamicModuleBox[{$CellContext`xValue$$ = -1.5, Typeset`show$$ = True, 
        Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
        Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
        "\"untitled\"", Typeset`specs$$ = {{{
           Hold[$CellContext`xValue$$], -1.5, 
           "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -1.9, 1.9, 
          0.01}, {{
           Hold[$CellContext`xValue$$], -1.5, ""}, -1.9, 1.9, 0.01}, {{
           Hold[$CellContext`xValue$$], {}, ""}, {
          0 -> "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"0\"}],\n \
TraditionalForm]\)"}}, {
          Hold[
           Grid[{{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
        Typeset`size$$ = {252., {75., 81.}}, Typeset`update$$ = 0, 
        Typeset`initDone$$, Typeset`skipInitDone$$ = 
        False, $CellContext`xValue$55830$$ = 0}, 
        DynamicBox[Manipulate`ManipulateBoxes[
         2, StandardForm, "Variables" :> {$CellContext`xValue$$ = -1.5}, 
          "ControllerVariables" :> {
            Hold[$CellContext`xValue$$, $CellContext`xValue$55830$$, 0]}, 
          "OtherVariables" :> {
           Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
            Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
            Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
            Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
          Show[{$CellContext`staticPlotC3F17a, 
             Plot[
              If[
               
               Or[$CellContext`xValue$$ < -0.005, $CellContext`xValue$$ > 
                0.005], (Sign[$CellContext`xValue$$]/(2 
                 Abs[$CellContext`xValue$$]^
                  Rational[
                   1, 2])) ($CellContext`x - $CellContext`xValue$$) + \
$CellContext`funcC3F17a[$CellContext`xValue$$], None], {$CellContext`x, -2, 
               2}, PlotStyle -> {Thick, $CellContext`bcR}], 
             Graphics[{
               Text[
               "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", SqrtBox[\n   \
RowBox[{\"\[LeftBracketingBar]\", \"x\", \"\[RightBracketingBar]\"}]]}],\n \
TraditionalForm]\)", {0.5, 1.6}, {-1, 1}], 
               If[$CellContext`xValue$$ < 0, 
                Text[
                 Framed[
                  Pane[
                  "\!\(\*FormBox[\n RowBox[{\n  RowBox[{SubscriptBox[\"lim\", \
\n    RowBox[{\"x\", \"\[Rule]\", SuperscriptBox[\"0\", \"-\"]}]], \n   \
RowBox[{\n    RowBox[{\"f\", \"'\"}], \n    RowBox[{\"(\", \"x\", \
\")\"}]}]}], \"=\", \n  RowBox[{\"-\", \"\[Infinity]\"}]}],\n \
TraditionalForm]\)", $CellContext`bcPBS], $CellContext`bcFO, Background -> 
                  White], {-2, 0}, {-1, 1.5}], Black], 
               If[$CellContext`xValue$$ > 0, 
                Text[
                 Framed[
                  Pane[
                  "\!\(\*FormBox[\n RowBox[{\n  RowBox[{SubscriptBox[\"lim\", \
\n    RowBox[{\"x\", \"\[Rule]\", SuperscriptBox[\"0\", \"+\"]}]], \n   \
RowBox[{\n    RowBox[{\"f\", \"'\"}], \n    RowBox[{\"(\", \"x\", \
\")\"}]}]}], \"=\", \"\[Infinity]\"}],\n TraditionalForm]\)", \
$CellContext`bcPBS], $CellContext`bcFO, Background -> White], {2, 0}, {
                 1, 1.5}], Black], 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"f\", \"'\"}], \n  \
RowBox[{\"(\", \"0\", \")\"}], \" \", \"does\", \" \", \"not\", \" \", \n  \
RowBox[{\"exist\", \".\"}]}],\n TraditionalForm]\)", {
                  60, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {2, 0}, {1, -1.5}], 
               If[$CellContext`xValue$$ == 0., {$CellContext`bcR, 
                 AbsoluteThickness[2], 
                 Line[{{0, -0.5}, {0, 2}}], 
                 Text[
                  Framed[
                   Pane[
                   "vertical tangent line", $CellContext`bcPBS], \
$CellContext`bcFO, Background -> White], {-0.1, 1.6}, {1, 1.5}]}, 
                Black], $CellContext`bcB, 
               AbsolutePointSize[7], 
               Point[{$CellContext`xValue$$, 
                 $CellContext`funcC3F17a[$CellContext`xValue$$]}]}]}, 
            ImageSize -> 3.5 72, PlotRange -> {{-2, 2}, {-0.5, 1.7}}, Ticks -> 
            None, AxesOrigin -> {0, 0}, BaseStyle -> {"Text", 13}, AxesStyle -> 
            Arrowheads[{0, 0.05}]], 
          "Specifications" :> {{{$CellContext`xValue$$, -1.5, 
              "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -1.9, 1.9,
              0.01, ControlType -> Slider, ImageSize -> Small, 
             ControlPlacement -> 1}, {{$CellContext`xValue$$, -1.5, ""}, -1.9,
              1.9, 0.01, ControlType -> Trigger, Exclusions -> {0.}, 
             DefaultDuration -> 10, 
             AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
             ControlPlacement -> 2}, {{$CellContext`xValue$$, {}, ""}, {
             0 -> "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"0\"}],\n \
TraditionalForm]\)"}, ControlType -> RadioButtonBar, ControlPlacement -> 3}, 
            Grid[{{
               Manipulate`Place[1], 
               Manipulate`Place[2], 
               Manipulate`Place[3]}}]}, 
          "Options" :> {
           ControlPlacement -> Top, LabelStyle -> 11, Deployed -> True, 
            AppearanceElements -> "ResetButton", FrameLabel -> 
            Style["FIGURE 3.17a", "FigureFont", Smaller]}, 
          "DefaultOptions" :> {}],
         ImageSizeCache->{295., {129., 134.}},
         SingleEvaluation->True],
        Deinitialization:>None,
        DynamicModuleValues:>{},
        Initialization:>({{$CellContext`staticPlotC3F17a = Graphics[{{{}, {}, {
                  Hue[0.67, 0.6, 0.6], 
                  Thickness[Large], 
                  GrayLevel[0], 
                  Line[CompressedData["
1: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
8i8//8/X+L+v/wMzTPij
                   "]]}}}, {
               AspectRatio -> GoldenRatio^(-1), Axes -> True, 
                AxesOrigin -> {0, 0}, 
                PlotRange -> {{-2, 2}, {0., 1.4142135335115935`}}, 
                PlotRangeClipping -> True, PlotRangePadding -> {
                  Scaled[0.02], 
                  Scaled[0.02]}}], 
             Attributes[PlotRange] = {ReadProtected}, $CellContext`funcC3F17a[
              
               Pattern[$CellContext`x, 
                Blank[]]] := Sqrt[
               Abs[$CellContext`x]], $CellContext`bcR = 
             RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
             BaseStyle -> {
               LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
                LineBreakWithin -> Automatic, Hyphenation -> True, 
                TextAlignment -> Left, FontSize -> 13}, $CellContext`bcFO = {
              RoundingRadius -> 5, FrameStyle -> 
               GrayLevel[0.85]}, $CellContext`bcB = 
             RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F17a[
                Pattern[$CellContext`x, 
                 Blank[]]] := 
              Abs[$CellContext`x]^
               Rational[1, 2]; $CellContext`staticPlotC3F17a = 
              Plot[Abs[$CellContext`x]^
                Rational[1, 2], {$CellContext`x, -2, 2}, 
                PlotStyle -> {Thick, Black}]; Null}}; 
         Typeset`initDone$$ = True),
        SynchronousInitialization->True,
        UnsavedVariables:>{Typeset`initDone$$},
        UntrackedVariables:>{Typeset`size$$}], "Manipulate",
       Deployed->True,
       StripOnInput->False],
      Manipulate`InterpretManipulate[1]], 
     TagBox[
      StyleBox[
       DynamicModuleBox[{$CellContext`xValue$$ = -1.5, Typeset`show$$ = True, 
        Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
        Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
        "\"untitled\"", Typeset`specs$$ = {{{
           Hold[$CellContext`xValue$$], -1.5, 
           "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -1.9, 1.9, 
          0.001}, {{
           Hold[$CellContext`xValue$$], -1.5, ""}, -1.9, 1.9, 0.001}, {{
           Hold[$CellContext`xValue$$], {}, ""}, {
          0 -> "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"0\"}],\n \
TraditionalForm]\)"}}, {
          Hold[
           Grid[{{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
        Typeset`size$$ = {252., {75., 81.}}, Typeset`update$$ = 0, 
        Typeset`initDone$$, Typeset`skipInitDone$$ = 
        False, $CellContext`xValue$55848$$ = 0}, 
        DynamicBox[Manipulate`ManipulateBoxes[
         2, StandardForm, "Variables" :> {$CellContext`xValue$$ = -1.5}, 
          "ControllerVariables" :> {
            Hold[$CellContext`xValue$$, $CellContext`xValue$55848$$, 0]}, 
          "OtherVariables" :> {
           Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
            Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
            Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
            Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
          Show[{$CellContext`staticPlotC3F17b, 
             Plot[
              
              If[$CellContext`xValue$$ != 
               0, (1/(3 
                 Abs[$CellContext`xValue$$]^(2/
                   3))) ($CellContext`x - $CellContext`xValue$$) + \
$CellContext`funcC3F17b[$CellContext`xValue$$], None], {$CellContext`x, -2, 
               2}, PlotStyle -> {Thick, $CellContext`bcR}], 
             Graphics[{
               Text[
               "\!\(\*FormBox[\n RowBox[{\"y\", \"=\", RadicalBox[\"x\", \
\"3\"]}],\n TraditionalForm]\)", {0, 1.2}, {-1.2, 1}], 
               If[$CellContext`xValue$$ < 0, 
                Text[
                 Framed[
                  Pane[
                  "\!\(\*FormBox[\n RowBox[{\n  RowBox[{SubscriptBox[\"lim\", \
\n    RowBox[{\"x\", \"\[Rule]\", SuperscriptBox[\"0\", \"-\"]}]], \n   \
RowBox[{\n    RowBox[{\"f\", \"'\"}], \n    RowBox[{\"(\", \"x\", \
\")\"}]}]}], \"=\", \"\[Infinity]\"}],\n TraditionalForm]\)", \
$CellContext`bcPBS], $CellContext`bcFO, Background -> White], {-2, 
                 0}, {-1, 1.5}], Black], 
               If[$CellContext`xValue$$ > 0, 
                Text[
                 Framed[
                  Pane[
                  "\!\(\*FormBox[\n RowBox[{\n  RowBox[{SubscriptBox[\"lim\", \
\n    RowBox[{\"x\", \"\[Rule]\", SuperscriptBox[\"0\", \"+\"]}]], \n   \
RowBox[{\n    RowBox[{\"f\", \"'\"}], \n    RowBox[{\"(\", \"x\", \
\")\"}]}]}], \"=\", \"\[Infinity]\"}],\n TraditionalForm]\)", \
$CellContext`bcPBS], $CellContext`bcFO, Background -> White], {2, 0}, {
                 1, 1.5}], Black], 
               Text[
                Framed[
                 Pane[
                 "\!\(\*FormBox[\n RowBox[{\n  RowBox[{\"f\", \"'\"}], \n  \
RowBox[{\"(\", \"0\", \")\"}], \" \", \"does\", \" \", \"not\", \" \", \n  \
RowBox[{\"exist\", \".\"}]}],\n TraditionalForm]\)", {
                  60, Automatic}, $CellContext`bcPBS], $CellContext`bcFO, 
                 Background -> White], {2, 0}, {1, -1.5}], 
               If[$CellContext`xValue$$ == 0., {$CellContext`bcR, 
                 AbsoluteThickness[2], 
                 Line[{{0, -2}, {0, 2}}], 
                 Text[
                  Framed[
                   Pane[
                   "vertical tangent line", $CellContext`bcPBS], \
$CellContext`bcFO], {-0.1, 1}, {1, 1.5}]}, Black], $CellContext`bcB, 
               AbsolutePointSize[7], 
               Point[{$CellContext`xValue$$, 
                 $CellContext`funcC3F17b[$CellContext`xValue$$]}]}]}, 
            ImageSize -> 3.5 72, PlotRange -> {{-2, 2}, {-1.2, 1.2}}, Ticks -> 
            None, AxesOrigin -> {0, 0}, BaseStyle -> {"Text", 13}, AxesStyle -> 
            Arrowheads[{0, 0.05}]], 
          "Specifications" :> {{{$CellContext`xValue$$, -1.5, 
              "\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)"}, -1.9, 1.9,
              0.001, ControlType -> Slider, Exclusions -> {0.}, ImageSize -> 
             Small, ControlPlacement -> 
             1}, {{$CellContext`xValue$$, -1.5, ""}, -1.9, 1.9, 0.001, 
             ControlType -> Trigger, Exclusions -> {0.}, DefaultDuration -> 
             10, AppearanceElements -> {"PlayPauseButton", "ResetButton"}, 
             ControlPlacement -> 2}, {{$CellContext`xValue$$, {}, ""}, {
             0 -> "\!\(\*FormBox[\n RowBox[{\"x\", \"=\", \"0\"}],\n \
TraditionalForm]\)"}, ControlType -> RadioButtonBar, ControlPlacement -> 3}, 
            Grid[{{
               Manipulate`Place[1], 
               Manipulate`Place[2], 
               Manipulate`Place[3]}}]}, 
          "Options" :> {
           ControlPlacement -> Top, LabelStyle -> 11, Deployed -> True, 
            AppearanceElements -> "ResetButton", FrameLabel -> 
            Style["FIGURE 3.17b", "FigureFont", Smaller]}, 
          "DefaultOptions" :> {}],
         ImageSizeCache->{295., {129., 134.}},
         SingleEvaluation->True],
        Deinitialization:>None,
        DynamicModuleValues:>{},
        Initialization:>({{$CellContext`staticPlotC3F17b = Graphics[{{{}, {}, {
                  Hue[0.67, 0.6, 0.6], 
                  Thickness[Large], 
                  GrayLevel[0], 
                  Line[CompressedData["
1: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
                   
                   "]]}}}, {
               AspectRatio -> GoldenRatio^(-1), Axes -> True, 
                AxesOrigin -> {0, 0}, 
                PlotRange -> {{-2, 2}, {-1.2599210327530899`, 
                  1.2599210327530899`}}, PlotRangeClipping -> True, 
                PlotRangePadding -> {
                  Scaled[0.02], 
                  Scaled[0.02]}}], 
             Attributes[PlotRange] = {ReadProtected}, $CellContext`funcC3F17b[
              
               Pattern[$CellContext`x, 
                Blank[]]] := 
             Sign[$CellContext`x] Abs[$CellContext`x]^(1/3), $CellContext`bcR = 
             RGBColor[0.8, 0, 0.4], $CellContext`bcPBS = 
             BaseStyle -> {
               LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
                LineBreakWithin -> Automatic, Hyphenation -> True, 
                TextAlignment -> Left, FontSize -> 13}, $CellContext`bcFO = {
              RoundingRadius -> 5, FrameStyle -> 
               GrayLevel[0.85]}, $CellContext`bcB = 
             RGBColor[0, 0.4, 0.8]}; {$CellContext`funcC3F17b[
                Pattern[$CellContext`x, 
                 Blank[]]] := 
              Sign[$CellContext`x] 
               Abs[$CellContext`x]^(1/3); $CellContext`staticPlotC3F17b = 
              Plot[Sign[$CellContext`x] 
                Abs[$CellContext`x]^(1/3), {$CellContext`x, -2, 2}, 
                PlotStyle -> {Thick, Black}]; Null}}; 
         Typeset`initDone$$ = True),
        SynchronousInitialization->True,
        UnsavedVariables:>{Typeset`initDone$$},
        UntrackedVariables:>{Typeset`size$$}], "Manipulate",
       Deployed->True,
       StripOnInput->False],
      Manipulate`InterpretManipulate[1]]}
   },
   AutoDelete->False,
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
  "Grid"]], "Output",
 CellChangeTimes->{3.500550702315563*^9},
 CellTags->"FIGURE 3.17  \[LightBulb]"],

Cell[TextData[{
 StyleBox["When Is a Function Not Differentiable at a Point?",
  FontWeight->"Bold"],
 "\nA function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is ",
 StyleBox["not",
  FontSlant->"Italic"],
 " differentiable at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " if at least one of the following conditions holds:\n",
 StyleBox["a.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " (Figure 3.15).\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " has a corner at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " (Figure 3.16).\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " has a vertical tangent at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " (Figure 3.17).",
 Cell[BoxData[
  FormBox[Cell[""], TraditionalForm]]]
}], "Important",
 CellChangeTimes->{{3.4549507575390863`*^9, 3.454950840848654*^9}},
 CellTags->"NOTE When Is a Function Not Differentiable at a Point?"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["EXAMPLE 8\t", "ExampleFont"],
 "Continuous and differentiable"
}], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.4549508487144003`*^9, 3.454950855410098*^9}},
 CellTags->"EXAMPLE 8 Continuous and differentiable"],

Cell[TextData[{
 "Consider the graph of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " in ",
 StyleBox["Figure 3.18", "FigureFontText"],
 "."
}], "Text",
 CellChangeTimes->{{3.4549508606735163`*^9, 3.4549508676481657`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "4"}], ",", "4"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " is not continuous.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "4"}], ",", "4"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " is not differentiable.\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tSketch a graph of the derivative of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.454950896248403*^9, 3.4549509143855333`*^9}, 
   3.454950950980977*^9, 3.471116921091116*^9}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzt3T+LZNfdJ3Dt7ltoRplBKO9MmdPCQYsNhKENBj08gkcTLpsq3Vw0mxhk
DDaeVHEj0Cuw0/Y7UDh4AgfNtmHYn/o3c+bo3qrb9edW3VOnPx+Goae6pvr0
rbrne8/f+8lX/+uLr/7HRx999P/+20cf/c///tFHP3/9FgAAAAAAAAAAAAAA
ADiyu7u7h38/LF0KADiW6+vrpYsAAEOv37z+6Z8/DZpj8XU+GN/d8nXiyZeX
l/cP98cpJgDs5l//+OtvVr++qPzl7k393Xzw49/+ecvwevXqVTw/8u5oRQaA
HURjLVLpxx++//3H75Lud3/4W2nBlaS7ePFlNO62Cbtvvvkmnn5zc3PkggPA
Vh7+/ZB/BqGWfZgReX//41eDB6etVqt4+suvXx6/7ACwgwi17774VenALKEW
7bh4fMvey3hOvsLl5eWRywsAO3vXfLu4+Ozzb8uD0ZT7/cc/d2lu8wp3d3dl
vG/7SSwAcBr/+sdfP3nxac4/GQzV1dNUJtzc3JSku729PWZhAWBnHzowX3yZ
0ZaPRPBt+QrX19cl6SL1rB8HoDWlAzOH6nZq0IXLy8uSdNaPA9CgMgMz1xrs
1KCL59fr8iL1tOkAaE0kXS6si6SL9t0nLz7dvkFXD9Klu7s7m6UA0JR6rUHm
3fb/t+661IEJQJty9Vy9hHzL/1ivL6hZawBAa+pJKdv3Pb78+uXapLMtGACt
+fGH7z958en2E1HeVlujjNksBYCmvOu93HqXyzSeizKYl2ISJgCNyK7Let/L
beSuzpvY7RmARuRiup3mW74dzUW5fM+8FAAW99M/f/rui19FtMUXuellfL3r
Crh6Lso3j3IiSv24eSkALKJMs0z1xs5bKnNRVqtV3mc8k+7Vq1fx9e3tbTbu
zEsBYBGRdKWbcddOy/SXP30Xr1A32eqke/t4p9ecr2JeCgCLiAD68Yfvt18h
PhCJNujtHCRdiqaim/gAcKYGLbW1Sac1B0A31iYdAHRD0gHQN0kHQN8kHQB9
k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kH
QN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN
0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0A
fZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJ
B0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0
TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQd
AH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3
SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA
9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8k
HQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdLBWj/986fvvvhV/H3/cL/9f/m/
//v/xN8P/344atmAnUg6GPvxh+8/efHpZ59/+5e7N1v+l0i3yLjff3wR/3H7
/wWcgKSDgb//8atIq49/++fXb15v/78i6eJP/JdoCcY5FWGnZQeNkHRQy9bc
xYsv9+uELC27DLtjlBDYlaSD4l//+GucDgd2P0bY5etkXG4/zAcciaSDVNpi
v/vD3w5/tb//8at4qV27QIFjkHSzuHtPtXa+MptmaYh9aNbNlJvAISTdIaI+
vLm5uby8vKisVqvb29u+ZyNEoEccRLLXv2YOUW0Z93Ho4ml7/Nk7g+L/lguS
8YuUBt10K6y8SP2L54ODcb0yNeWzz7+Nb+1XZmAWkm5vUbmVjIsvXn798vr6
ujwSX/c3QBPtlN+sfl3Hej2eVVoxERZP/u7vGlC7iybSrgc2CpaT/8uLxNfx
OpnXGU8533JTEyyeVp5QfvEsxrsZLKOjUf+O5mHCsiTdfkrMRaLF1+XxqNCi
QZffurq66qx+y8ZL1O3Z/MlcKC2gknTbdADGi1zvLg5p/Mftu4ijDNGwiiTK
VQPxz3hH6pCNx7Oo2f7aNBclfrVomsXvnk/LNH9b5ePapKujf8sCA8cg6faT
WRZHb22WRVWcT7i5uTl92Y4nl4zVg1D1bPz4reuhromUj29l6OxRgJ0adCXU
sk9y0HyLckZuRlFL1+VERg9+8XjB/DpfOV6ntPKK+skGcGFBkm4PcbguHnss
J54T1/9Zy/XXh/m2GoQadM1l42ib3ssT+JBfG3pZS4N0m6RL9S8+iLBxcG//
ssBRSbqd5CYY19fXcdCenHaST4tm3X7tl8aV5tJnn39bHsy6vZHZhjk8dzGa
E1I39PJ9iWeWVt50JJV+zomuzlQvIZd0sCxJt1YOSMVhiZwqU00Gcyyf7I+K
/1s/P18hXi2OeXwrgnIwhe+8lHSo2zXZXNpm2XU882Yv26/pLm23OunqRllJ
5LXP3KQE5ZOBLumgEZIuZa7F0ajnT0578jUjy7Z5nYy/zL4yltS+D5Hx4stM
n3xky9kXh8y93HLMqwRN5Ff5Lx9+bjWYuNNcmi2nmGrTQTuebdJFtRPJEvmS
fYx72LVNt6USfPWUzjYNZtFv36CLg58r73aVE0i2KVvOXcmJlyWLP6wIeP9I
2imS6qycvjKRdNCI55Z0UVtGiKxWq/3S7fK9i8dxuumfFYE1+C97/LgI4nh3
2mzrDaZ2bN+ge1tN49z+z36FrCeQlNLWobNT4+vDiN7FMC7Hv6Ckg0Y8h6SL
GiZ+wcid7eMmI6YeUKtbcDn3MuJy4oeunXs5GP67urraqUjZ0Gsn8sqUj8iO
nLrf2u7970r4GEm5mmDt7KC86erFU5NM3nXYvviybsxOx2I+zSoDWFbHSZf9
k1t2TkaOZK5tuZlVWU+39rv1erpB82HwzJzMmf2oW2ZxFrWFyBtMuW9kymVR
N6kyvzYdsXj8XT/n5v1M8jn5hMGS8PxB44i0chwa0WXSRQpsM7EknpNNtsHm
jVv+iPIig67FskdKNPq26bAa/MR4tZwb82T5Sytv6wMzs3rKfXbQLVWSter1
dO/y7k/fbVrSvnZD5vgFf/zh+zjIZTew3KFl0C0ZB2HtpM266XfcXxWY1FPS
RRU03m95nA7xK+cQ24Ftonrfywi18b6Xh3dYZeo92dbLsbwDf9Z+tuzHO70c
Jqu36ioilcZ9mGs3ZB5kZZn2OWjMrh2ws8MztKOPpMtG3EQWXF1dRQjOO1aS
HY/jxlf8c/bjGT8rfsfphl6G+InHg3I2Y4O9c/UIXRTyN6tfl9Qre2AO/kuZ
mVm6OuukqxfIv/3lwoRNW2WWfDzerwls49yTLlpnExMp41t1wB1pYCtj6PbR
CYLmyciLNuBpujTf9V4+tcvl6dW3/M7lBrmuoQzGjWee5HVLtsLq4F57R558
zVwosbYlW/p1yzYswILONOmi9pjoqCxzNhYp2Ml+VgRrLmRYK2+ycNTyZNdl
a7ekKYG1tjE13d2ajbhBDm5a4zDxW9dR21SnLjxPZ5d0Ub1EaTdlXFTv3d8F
dWB6dPJ4eZeVeYNdc6XLcaJTcdNqglz/novN9w6pfIUG11zAs3VeSTeRcUs1
4toREX91dTWRdwe+fvb+RbTFF1mZ73FT1GPLwbWn23STM0XrsNv1IqHc9VXM
QTvOJenK1P2BnGlvWW4RibapSzMeP2SvlcFOlS2vhh5swlzfPq+eczJhv8DS
aQltaj/pNs2rzIxTn6wVtfqmvNv7oEVMlIuNBjstB+obo2dfYmZc7va8zRHI
+6vulOYRcPlfnlX/ObSv5aSL6iiLJ+P2s6l9t/c6iJ32WF5QPd8y7waexc7Y
EkPw3DSbdJu6K/VV7mpTo3i8u0tnypzJvCjq+DcFpjWYdJt63nKYSVNuPxNX
DksXDeC4Wku6tbMrV6tVCxsad2DteoQ8vEsXDeBY2km6aKyNm3I5JLd00bqy
qcncwmcA4BgaSbp6t+TBQNKyBevV2s5MBxwakTtCrFarvI9z2blX19Z+Wki6
eAfHTbnFw7d7a6e2xpF/8l7qwFGNq8RCH9d+lk26uEQZb+uhZXFKa1vTziZY
ShlcyH2fchpevWIovli6jOdnwaRTx7Yg9/Afj9zF9cb4Jm7AUWVrLirG+jYZ
5TQsdaZ6cldLJV38xHG/mV7oBa19R8zJhJOJCjCDbNPdoPIGYaW2PH0Jz9ci
STceHoo2Re5rccpiMLC2lW3YDk4jG3TX19cTz4l6MntgNOt2cuKkiywb79fh
LWuHNwiWkhH25LVlPKH0uqTVanV1dRVnbrxCVOk3j/Le0DnSd5ryt+yUSRcH
fHB/cP1jbRpP/YrPydKFgs7l9Lwnq8TswNxVLlWIKCw5+Kzq3pMl3bhnLFLP
wFyzynVjEeeI7mU4nqMm3UQCRmMwgiBSYNP4YAdOk3TjmDO1r32b3rWlywV9
yt7LJ2vj8eSxecVZn02/noLvBEk3rjDjh8q4s1AmgxVx2dnNhx+akh0pq9Vq
+mk5BpTDeblKKP7cPYoHXz2KnIpqNgIrTtgcy9s7+OLHZYvvrMf7jp1044a2
6Q3nJXJtsLo/u52XLhf0JmLryeVyZcHdro2FXH6eURgvEiE4mDWxjfi5mXpn
1yN31KQTc30YT8gUdnAMpc5cW1WWqWIz9itmezDbgLnN5papl1txnsu0luMl
3TjmbGV5vsoqnvpzrhsT5hUnWhmGyzu55GKB+n5b8YQZ21ODl8ru0Gz3bRl8
2dBr/MZqR0q68dicBcjnbm3YtfzZhjO1dg+Hi/fLsk5z0uVPyT7P7O18MvVK
5J2geLs6RtKtjTlVYh8GYXd9fe2dhWOIijRnlZSZkIufa5l6480lxpHX2gyW
2ZNuPFtPp2VP4lwbfM7trA7HtnjGDUR5ov0S8THd0IvKoYWAfjt30kVTd/CL
m4LSn3HYxbvcwocZOL1se05E3mq1mndscQ8zJt3aCvDwl6VB46UHWu7wzOVN
9DZFXk6wWWoa24xJN7hDgZ0S+zbupu5pRwVgP1EJRKCMb7G9bN7NlXSDPYGn
bzxBH8ZhZyNTIGWv5kTenbKumCXpBkvnVquVa/vnoNwXsv4ASzqgiCyoFwMO
qouTjXocnnSDC3u3Dn9uBnc9MBUTGMgV8WvzLlpGJ1iCd2DSRfkH/bGNzCnl
lAZ912YiAWttyrtIoqOuvzsw6QbdsCbgPU/jabcueIC1omZY25951M7MQ5JO
txXFuBPbWC2wSdQYa+er5B2fZ79O3jvpBjXbarVyDf/MDWanuPIBpkWlMV6P
cIztPfdOukFvVQSfa3gGA3Z6s4EnrR28m3fZ3X5JN7i9++I7vdCO+hIor82W
LhHQumgrjTeOjkfmmqayR9LFjx4UZpaS0IdBt7aPB7Cl8UyVua6W90i6wUV7
U7dmoAWDqUr6MIEtRa6tVqtB4+7w25vumnSDSsz9VVmrvo2dyyFge/cP94P7
YF4cvEp3p6QbdEyZXMcmPirAIQbT2y4OuzvYTklXL39woc60wbQla8mBnQwW
Ll08bqWyXzWyfdINfqjBF540GNJdujjAmYncGcxR2e9+cNsnXV1rXV1d7fGz
eG4G03RdHQG7Gt8dbI+w2zLpBhNRLJJiS3Vnux5vYA/jsNt1zG6bpIsXNLuA
/dw/3NcfHneiB/YwDrud+oi2STqX5RxiMDXF7QuBPYzDbvtlbk8m3aBB59Zj
7KFeCqpPANjP+J4pWw6lPZl0gwadbZzZw2CcV7MO2M9gFcCWqTSddINBFg06
9lbfm0OzDtjbHrdGnU66QYNu7vLyjAyuxEzfBfY22EHlyVbYRNINRugshuIQ
8XGql2SahAkcYnCXn+mL54mkq6fMReQZWOFAg2adSbzA3gazU1ar1URITSSd
ETrmFZ/DerTOhwo4xODieaJK2ZR09ZCfKZfMxecKmEtcPA8G7DbN696UdIZU
OAaDv8CMBgsENu3JvDbpxuMpBumYS30Ntlqtli4OcN4GgbV245S1SVfXRZY+
Ma+4Bqs/lpYbAIeIhlh9j/K1C+LGSTdoDEZFZDCFedW39NU3DhxocIOw8dSU
cdIN5gzot2R2g94GnzHgQNMbV46Trp6LYh44R2JeCjCj6b0rB0k3aANa28uR
1PsSxMXV0sUBzt7E9pWDpKufqf7heFxTAbPb1Fk0SLq661KfEkelnxyY16Zm
XZ10g8vs+4d7UwU4Hh2YwLzGi5gyxeqk03XJKQ0+kzowgcPVi5jKevA66XRd
cmI+csC8BouYcrlBSbrBBbauS06g7sC0Gw8wi9VqNZgDUJKuXjC+aZNMmFc9
NOzWBsAs6kvojLOSdHXfpolwnMxg6zk9CcCBxnMAStINKpylS8pzUc+Diq8l
HXC4wRyATLrBGgS1DSdTd5u7iQ8wi8Eipky6tdMy4TTqfgZXWcDhBsvDM+Ou
rq4M0rGU+uNnqA6YRV2xZGemQToWNBiqW7o4QA/qiqVed5CWLh3PTj1UZ3Me
YBb1EvK6NaeeYRGDVXV6L4HDDdYa1EzzZhH1FVcEnw8hcLh6rUHN3oMs4uXX
L8uH8Pb2duniAD2oh+pqpqOwCJNSgNnVcwBqS5eLZ6r+QFrRCcxisKou2aGC
pQxmSS1dHKATg1mXrqVZlr4FYHb1+nHjIyzO9EtgdvVel8nESxZUzwe2Jxgw
i/H0S9ULC6ovvVx0AbMYT798/eb10oXi+bLQAJhdPdvNNAAWZ6EBMLvBQgNT
u1lWfell/1VgLnXSWUzHsuqku7q6Wro4QCfqed2uollWvfG4HgZgLnXSGRlh
WQ//fpB0kF6/eX17e/vq1av42/LSA9UrmL755puli8NzV196LV0WWEZE2/gG
2fGIe3zsrU4687pZXJ109w/3SxcHTm28oUdNe2Q/9U3BJB2Lqy9lre7kuZmO
uVJR68nclaSjKYOkc0bzfIwXOG9iM6td1ZcQko7F1buOuykwz8p4y/1NzJPf
lZ0Gacpgk+eliwMnsvaGoRPuH+4167ZX7zQo6VhcJF1OSom/JR3Px/Zdl64D
95PNOjEHsJTxfvvTrDjYlaQDWJY23bFJOoBl1VvhbcMg3a4kHcCyIrnqbROm
2blxD5IOYEF3d3fj7b8mWGq6B0kHsJSoe7dvzWVdLeb2IOkATu/+4b7epSpN
p56Kem+SDuDE7u7uxqGWe1q+fvM6quX6u/F1PGIn2ENIOoCTiSwb7+QcWVaW
yGXnZEZeBKJRuVlIOoDTWNuUu76+1l47NkkHcGzRLqt3X6x7LJcu2rMg6QCO
am1TbrVa2erkZCQdwJHcP9yvvb9qNOXiW0uX7hmRdADHcHt7O27K5X06TDI5
MUkHMK/Xb16P18ppyi1I0gHMJWeeGJVrjaQDmMXamScmWLZA0gEcaFN3Za6V
Myq3OEkHsLdNC+XKtidirgWSDmA/m+5EYOZJayQdwK423VTu+vrazJMGSTqA
7UWQrR2Sq3dppjWSDmAbeT+dtRlndmXjJB3AtPuH+7XTToI7x50FSQewyUTG
WUFwRiQdwNim3U4u3m94Ek8Qc+dC0gHUJjLOKrkzJekAUvZVbso49eT5knQA
0xlnauW5k3TAc/Zkxumo7ICkA56n129ey7hnQtIBz82mNeD6Knsl6YDnY9Ne
XjKub5IOeA4i466urjZlXNSB+io7JumAjkV+bbq3zsXjGnDbMj8Hkg7o0sSE
k4vHvbxk3PMh6YDO3N3dbZpwEl5+/TL38lq6mJyOpAO6Ec20aKxtyri874CM
e4YkHXDupjsqc1Ll/cO9jHu2JB1wvnLVwMSEE5UbbyUdcIZyRuWmVQNlMG7p
YtIKSQeckcivTbdGLR2VBuMYkHRA+yK5pmebZEelwTjWknRAy3KPyk0jcReP
Myp1VDJN0gENypG4iUZcmVEZf5YuLK2TdEBTct33RCPu5dcvbW/CTiQd0IJo
mk1PpyyzTZYuKedH0gHLml4TpxHH4SQdsIjpjU004piRpANO6cn1Ahc2YWZu
kg44jSenmqxWq2jERcDJOOYl6YCj2qaX0po4jkrSAcfw5IK4i/e3Q7UgjmOT
dMAxmGpCOyQdcAwvv36pl5JGSDrgGCLR6l7KqGTMM2Epkg44hsi1CDi9lLRA
0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0A
fZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJ
B0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0
TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQd
AH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3
SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA
9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8k
HQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQ
N0kHQN8kHTC7u7u7qFtub2+XLsiUqPdubm6iqEsXZEqUMI7k0qWYEgcwCtl4
iJxF0t08ev3m9dIF2SjKloVcuiBTsvKJv+8f7pcuy0ZnUfnwpHgfo2JpvIq+
vr6OQjZ+Rlw8WroUU+IARglffv1y6YJMOYuku7y8jEK2nHT5Xq9Wq6ULMiUS
JAoZfz/8+2HpsmxUKp+lC8JBziLponKOQjbe8Gw/6eIARgnjzF26IFMk3Syi
bGeUdEsXZIqk68NZJJ023Sy06ebSftJp081F0vXhLJJOm24W2nRzaT/ptOnm
Iun6cBZJp003C226ubSfdNp0c2k26eLjd3V1FWdKy7ViO84i6bTpZqFNN5f2
k06bbi7NJt3b9wcwPo05hXXp4jTtLJJOm24W2nRzaT/ptOnm0nLSRX2YH8UU
b7cm3iZnkXTadLPQpptL+0mnTTeXlpPu7fuTuvbJi0818cbOIum06WahTTeX
9pNOm24ujSfd2/clHIt3P9e8t3x4T+Yskk6bbhbadHNpP+m06ebSftLlez3t
6uoq98I63od21bY8Z+PvpQsypRQy3q+ly7JRuY5qlvd6Lvle/2b162YLWYZv
mi3hygdyPvVo3ZPiydF2yObejL1k2xcAAE4gZ2y+evVqrr7Nu7ZlB0JE/NIF
mZIdCPGmLF2QKfn5WboUU7KnOg7m0gWZkj3VecHZrLyEXroUU7KnOsq5dEGm
ZOWT0yeaFU259iufbdp08Zw49/PMarnj/UjOYpyudJW3PLSaH6elSzHl7jGO
jdMdrv1xuruzmpGydEGmtD9Ol4dxuuFWl7/lWvR4ziLpzEiZRV7nm3t5uPaT
7rxmpLRc9zaedPFGf/Li07UB12yZF3EWSWeVwSy06ebSftJp082l8aTLVkBh
f7BNziLptOlmoU03l/aTTptuLi0n3d376QEacU86i6TTppuFNt1c2k86bbq5
NJt0uRVYFG/G+ZMdO4uk06abhTbdXNpPOm26uTSbdPEWN1iqZp1F0mnTzUKb
bi7tJ5023VyaTTp2chZJp003C226ubSfdNp0c5F0fTiLpNOmm4U23VzaTzpt
urlIuj5ElRKnbeMftmiGRCF//OH7pQsy5fLR0qWYknspaNMd7urqKo5ky0kX
ZcvpCksXZMoZVT6SDs5Fy31ExVkkXfvO4r0GeJ4kHQB9k3QA9E3SAdA3SQdA
3yQdHCi3Txnc5iwf/OmfP5mtBIuTdLCfSLG///Gr+iY+f7l7k2uQf/zh+/J4
PLh0SeG5k3Swn3/946+fff5tNNy+++JXGWof//bP8fg4/pYu6ZIi+tts1Uap
omwt747y9kwKeRYk3Szy09jmGV1kIc/irMkTfOlSPC3KGX8i8krS5dfxxes3
r6NlV1p5z1McjQj9OBpNHYRojMfFSbka+c3q1w1ejcShGxeyzRomj2dc9bW8
uUf7SRfnSNQYv//4osFKI2uzKFuKj+Xv/vC31iJvUMjQYCFrUbY8x5s9tQfi
CJdmXYm5/NZZlP9IymFpKumixZ2nanm/8us4KZYu2geDboE2C/n2l9cM9ce+
QS0nXcm40gvUVL2R7/LF2Isv41uNnNqbChkXYPGtpUu3XpzmudNpa+/4JhnN
pUZqsIGwiMyUppIuPvM/1ycvvszL5vhntJWyom7njChdBJFrf/nTd+UwttYZ
Xq4ZStI18i6v1WzSxdtdN0Naq/c+XMbHWfOn7+JPXdp23vQsZJwycRZHmeuz
prXrw/SuLmrvHZ9WDmybR/X0SnXdTu9lfJZ+fpseL0Sz2znDrpzILVygvqtY
3mdxPlJXhjkWvLg4elmllBNW7+V+8kP47sPZXr2XJ3K8ueXUqHOkkQv7/BBG
3Vsft9IxMni8BYNuwKbe8Wn1UN3iteXi8oMXzaX4004dmKUaf6jenbZtJF1+
kAbXS4Ox4BYOZlE6NBr/5DebdG/fj3GUt7idei+KkSOwdXdHPFhX1IuXNi8S
xh+/cg3WYOsj65z/+K//bOQYbu9DY/nFl/ExOJdiH0M9zNpUHbjpTYlCXl5e
NtJ7+XN19/gRGj+ep22zSdfI9cwmLSddajDp8s1dmxRNtUDH1UteHOYp09oM
nzJrscF3fFrOMCxJ10JzfkHZaZA9Bu3XgeXCr4UPW/aprv1WKWcjlw2FNt1c
Gqz3Jubq10l34lJtKUvY2pXhu+GSxx6kBt/xCWVgpX7rWz7ljyreu2gfZaXX
fh1YBuka7MkfqKepLF2WX9Cmm8sZ1Xsf5uA91thLF2fow6BnYz1s5eI/3+Iz
esfrktcjKW+rUaGly3g6JfRzwKvlOnAwO6v9JS31YGJT5Wz/eiZJuhk1e4kY
n8A4jGVCdWnTNVLIMgqfZ0rj73gufrm5uSm7gcU/60loWR2NR3IbVw77tkZT
OLI2Lo2OY9SBhxfy7S/n99ZmuSypl5xsqXzyN5l9bH3GQrZ8PVOTdDOqr7uW
LssvDJbkpEauwfIsrkOh8Xd8UE9GDZAn+GDi6NkN2MVh/4//+s/48/Lrl0/+
iaflW1beoDLMWl6wrgPnOiMOLOTbX46FDVp2s5wR8QrxmluWMP5cX1/nldLE
a5YRhwPLdoxCatPNpfF6r6hneixdlvXGLbvFi5rpMFiU0fI7nsuIStJFRVp/
90OL49xiLu19tMuK7DrRjlQHzvuRqHvL5+rV3+mXfXKDvrKgad7r57kKqU03
l5brvaK83U9eni2u3jVl8dHtQX9Xav8dX3tHnrISOb7V8sXtMZS3LC7+41Jq
9SgX06W8vlr88zb2i8VBbSypq727fm5veK7QpptL+/VemenR4Im8Vj2Pa8FD
Wk/giRry8vLy6uoqasjS5Iwvfq4tmzzNN00Ib62cp7HN8FnZFXbpwq7R1OLx
om4pt1OqAW26ubSfdOcVc2+bWTw+HNjaXEOeY0/gs5JrQ3784ftoz97e3ubf
H/aweuzLjUearbEbXHpTx9ygVHFg27n206abS+NJtynmmu3Fqkealj2kWZJS
MZa/6z0k491/zsvTzsjgPcq+3EEd2OD5+7aqq9tpctbLSwdFyvqwnWs/STeX
lpNuU8xla6WRvVjH3h3SpWdNrL0JXU6bKe94y3cXYlprdWAuD3n59cvBtVM5
HRqZMl1G0j/7/NubXyptz3ZOinqH50YO4FrtJ12zu8THWVO2So5C1n/n+Pvi
1115M8ecBl/vRF2uYJct3iYtX9uwvWOsMjhElGFwY9NcEVliroWuy2269Ns5
L3K1Qj2Xu5GCjTWedPVEwQYXO09ooc9/cI+ecvuPNmfBFZKuD0216QYbsP9i
n9I/fXdGFUsjlw1v190utlQ1SxdtjWaTbvo+p8t+LLe57lr87c6FQuOP4ngt
bWvqpFu6LPQmV4ikxk+EsbUd/gs6o6PXbNLFG7qpTXRGh3dxuUtVObVz2MsB
5NnKD79T4LlpNumYi5MaeOYkHQB9k3QA9E3SAdA3SQdA3yQdAH2TdAD0TdIB
0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA3yQdAH2T
dAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN8kHQB9k3QA9E3SAdA3SQdA
3yQdAH2TdAD0TdIB0DdJB0DfJB0AfZN0APRN0gHQN0kHQN/u7u5ub2/j76UL
AgAAAAAAAAAAAAAAAAAAAHDe/j/nTIzZ
    "], {{0, 505}, {590, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 252., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->252.,
  ImageSizeRaw->{590, 505},
  PlotRange->{{0, 590}, {0, 505}}]], "Output",
 CellChangeTimes->{3.500550702670199*^9},
 CellTags->"FIGURE 3.18"],

Cell[TextData[StyleBox["FIGURE 3.18", "FigureFont"]], "FigureCaption",
 CellChangeTimes->{{3.4549508836788797`*^9, 3.454950885573411*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SECTION 3.1 EXERCISES", "ExerciseFont"]], "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454952101252179*^9, 3.454952101556967*^9}},
 CellTags->"SECTION 3.1 EXERCISES"],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Review Questions", "ExerciseGroupFont"]], \
"Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454953529455824*^9, 3.454953532817363*^9}}],

Cell[TextData[{
 StyleBox["1.",
  FontWeight->"Bold"],
 "\tUse definition (1) for the slope of a tangent line to explain how slopes \
of secant lines approach the slope of the tangent line at a point."
}], "Problem",
 CellChangeTimes->{{3.454955070714652*^9, 3.4549551025147257`*^9}}],

Cell[TextData[{
 StyleBox["2.",
  FontWeight->"Bold"],
 "\tExplain why the slope of a secant line can be interpreted as an average \
rate of change."
}], "Problem",
 CellChangeTimes->{{3.454955110002782*^9, 3.454955127014771*^9}}],

Cell[TextData[{
 StyleBox["3.",
  FontWeight->"Bold"],
 "\tExplain why the slope of the tangent line can be interpreted as an \
instantaneous rate of change."
}], "Problem",
 CellChangeTimes->{{3.454955129952758*^9, 3.454955146815013*^9}}],

Cell[TextData[{
 StyleBox["4.",
  FontWeight->"Bold"],
 "\tGiven the function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ", what does ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " represent?"
}], "Problem",
 CellChangeTimes->{{3.454955164365563*^9, 3.454955174465199*^9}}],

Cell[TextData[{
 StyleBox["5.",
  FontWeight->"Bold"],
 "\tGiven a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and a point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " in its domain, what does ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " represent?"
}], "Problem",
 CellChangeTimes->{{3.4549551769170103`*^9, 3.454955210352565*^9}}],

Cell[TextData[{
 StyleBox["6.",
  FontWeight->"Bold"],
 "\tExplain the relationships among the slope of a tangent line, the \
instantaneous rate of change, and the value of the derivative at a point."
}], "Problem",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454955212716393*^9, 3.454955237627944*^9}, 
   3.4571809420726137`*^9, 3.457291605665349*^9, {3.471116934725141*^9, 
   3.4711169349387293`*^9}, {3.4711182249254704`*^9, 3.47111822518371*^9}, {
   3.471118343521994*^9, 3.471118344059937*^9}}],

Cell[TextData[{
 StyleBox["7.",
  FontWeight->"Bold"],
 "\tWhy is the notation ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "y"}], 
    RowBox[{"d", "\[VeryThinSpace]", "x"}]], TraditionalForm]]],
 " used to represent the derivative?"
}], "Problem",
 CellChangeTimes->{{3.454955241466735*^9, 3.4549552589909973`*^9}}],

Cell[TextData[{
 StyleBox["8.",
  FontWeight->"Bold"],
 "\tIf ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 ", must ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " be continuous at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 "?"
}], "Problem",
 CellChangeTimes->{{3.454955277593553*^9, 3.454955295642453*^9}}],

Cell[TextData[{
 StyleBox["9.",
  FontWeight->"Bold"],
 "\tIf ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 ", must ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " be differentiable at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 "?"
}], "Problem",
 CellChangeTimes->{{3.4549552990672493`*^9, 3.4549553173046007`*^9}}],

Cell[TextData[{
 StyleBox["10.",
  FontWeight->"Bold"],
 "\tGive three different notations for the derivative of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " with respect to ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 "."
}], "Problem",
 CellChangeTimes->{{3.454955346792377*^9, 3.4549553618048477`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Basic Skills", "ExerciseGroupFont"]], \
"Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.45495354499823*^9, 3.4549535469908752`*^9}}],

Cell[TextData[StyleBox["11-16. Equations of tangent lines by definition (1)",
 FontWeight->"Bold",
 FontSlant->"Plain"]], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454955524402915*^9, 3.454955547717778*^9}, {
   3.454955591132283*^9, 3.4549556525512037`*^9}, 3.454957732950652*^9, {
   3.4549578589367943`*^9, 3.4549578734223146`*^9}, 3.454958509226067*^9, 
   3.457018428507824*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tUse definition (1) (see note below) to find the slope of the line tangent \
to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 ".\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tDetermine an equation of the tangent line at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 ".\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tPlot the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and the tangent line at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 "."
}], "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454955524402915*^9, 3.454955547717778*^9}, {
   3.454955591132283*^9, 3.4549556525512037`*^9}, 3.454957732950652*^9, {
   3.4549578589367943`*^9, 3.4549578734223146`*^9}, 3.454958509226067*^9, 
   3.457180942073599*^9, 3.457291605667012*^9, {3.471118382560763*^9, 
   3.471118398598238*^9}, {3.4711184540931168`*^9, 3.471118468185795*^9}, {
   3.471118523925*^9, 3.471118562837039*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Definition (1)", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.4570183857819233`*^9, 3.4570184100451307`*^9}, 
   3.457180942074418*^9, 3.457291605668456*^9}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "tan"], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"x", "\[Rule]", "a"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", "x", ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], 
            RowBox[{"x", "-", "a"}]]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "(1)"
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.4549577697496843`*^9, 3.454957797408617*^9}, 
   3.457018403126618*^9, 3.457180942075157*^9, 3.457291605669757*^9, {
   3.471118577936702*^9, 3.471118578548676*^9}}]
}, Open  ]],

Cell[TextData[{
 StyleBox["11.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     SuperscriptBox["x", "2"], "-", "5"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"3", ",", "4"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957951679214*^9}, {
  3.454959996375605*^9, 3.4549599965605*^9}}],

Cell[TextData[{
 StyleBox["12.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "3"}], 
      SuperscriptBox["x", "2"]}], "-", 
     RowBox[{"5", "x"}], "+", "1"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"1", ",", 
     RowBox[{"-", "7"}]}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957990446979*^9}, {
  3.454959997515956*^9, 3.454959997697343*^9}}],

Cell[TextData[{
 StyleBox["13.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "5"}], "x"}], "+", "1"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"1", ",", 
     RowBox[{"-", "4"}]}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454958003755273*^9}, {
  3.454959998410843*^9, 3.4549599985852337`*^9}}],

Cell[TextData[{
 StyleBox["14.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", "5"}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"1", ",", "5"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957971635757*^9}, {
  3.454958010468029*^9, 3.454958015323966*^9}, {3.4549599995107613`*^9, 
  3.454959999697267*^9}}],

Cell[TextData[{
 StyleBox["15.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", "x"]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{
     RowBox[{"-", "1"}], ",", 
     RowBox[{"-", "1"}]}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957973422765*^9}, {
  3.454958019099453*^9, 3.4549580250574093`*^9}, {3.454960000461039*^9, 
  3.454960000622505*^9}}],

Cell[TextData[{
 StyleBox["16.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["4", 
     SuperscriptBox["x", "2"]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "4"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.454958035532505*^9}, {3.45496000146097*^9, 
  3.454960001610417*^9}}],

Cell[TextData[StyleBox["17-22. Equations of tangent lines by definition (2)",
 FontWeight->"Bold",
 FontSlant->"Plain"]], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454955524402915*^9, 3.454955547717778*^9}, {
   3.454955591132283*^9, 3.4549556525512037`*^9}, 3.454957732950652*^9, {
   3.4549578589367943`*^9, 3.454957921409575*^9}, 3.454958527497751*^9, 
   3.4570184247256947`*^9, 3.487448952291587*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tUse definition (2) ",
 "(see note below)",
 " to find the slope of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 ".\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tDetermine an equation of the tangent line at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 "."
}], "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454955524402915*^9, 3.454955547717778*^9}, {
   3.454955591132283*^9, 3.4549556525512037`*^9}, 3.454957732950652*^9, {
   3.4549578589367943`*^9, 3.454957921409575*^9}, 3.454958527497751*^9, 
   3.4571809420758047`*^9, 3.4572916056708307`*^9, 3.471118423920989*^9, 
   3.471118572376896*^9}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  TooltipBox[
   FrameBox[
    PaneBox[
     StyleBox[
      GraphicsBox[
       {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
        PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
       ImageSize->15,
       PlotRange->{-0.5, 0.3}], "Note",
      Editable->False,
      Selectable->False],
     Alignment->{Center, Top},
     ImageSize->{18, 13}],
    Background->GrayLevel[1],
    FrameMargins->{{5, 5}, {-1, -0.1}},
    FrameStyle->RGBColor[0.976, 0.855, 0.514],
    RoundingRadius->2],
   "\"Show/Hide Note\"",
   TooltipStyle->"TextStyling"]]],
 "  ",
 StyleBox["Definition (2)", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True,
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.4570183857819233`*^9, 3.457018416956841*^9}, 
   3.4571809420766077`*^9, 3.457291605672269*^9}],

Cell[TextData[{
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          SubscriptBox["m", "tan"], "=", 
          RowBox[{
           UnderscriptBox["lim", 
            RowBox[{"h", "\[Rule]", "0"}]], 
           FractionBox[
            RowBox[{
             RowBox[{"f", "(", 
              RowBox[{"a", "+", "h"}], ")"}], "-", 
             RowBox[{"f", "(", "a", ")"}]}], "h"]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "(2)"
}], "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{
  3.454957822875106*^9, 3.457018385782062*^9, 3.457180942077322*^9, 
   3.4572916056735687`*^9, {3.471118582536433*^9, 3.471118583173769*^9}, {
   3.487448954999024*^9, 3.487448955322576*^9}}]
}, Open  ]],

Cell[TextData[{
 StyleBox["17.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"2", "x"}], "+", "1"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"0", ",", "1"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.454958035532505*^9}, {3.454958079246801*^9, 
  3.454958098160489*^9}, {3.454960003247929*^9, 3.454960003422381*^9}}],

Cell[TextData[{
 StyleBox["18.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"3", 
      SuperscriptBox["x", "2"]}], "-", 
     RowBox[{"4", "x"}]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"1", ",", 
     RowBox[{"-", "1"}]}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.4549580549487534`*^9}, {3.454958108411551*^9, 
  3.454958115875923*^9}, {3.454960004222924*^9, 3.4549600044022827`*^9}}],

Cell[TextData[{
 StyleBox["19.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "4"]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "1"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.4549580571239777`*^9}, {3.4549581205103083`*^9, 
  3.454958125825979*^9}, {3.454960005397895*^9, 3.454960005585329*^9}}],

Cell[TextData[{
 StyleBox["20.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", 
     RowBox[{
      RowBox[{"2", "x"}], "+", "1"}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"0", ",", "1"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.454958059285172*^9}, {3.454958131102584*^9, 
  3.4549581386150913`*^9}, {3.454960006461129*^9, 3.4549600066474543`*^9}}],

Cell[TextData[{
 StyleBox["21.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", 
     RowBox[{"3", "-", 
      RowBox[{"2", "x"}]}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{
     RowBox[{"-", "1"}], ",", 
     FractionBox["1", "5"]}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.4549580616352043`*^9}, {3.454958144181778*^9, 
  3.454958154043152*^9}, {3.454960007473261*^9, 3.4549600076474533`*^9}}],

Cell[TextData[{
 StyleBox["22.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SqrtBox[
     RowBox[{"x", "-", "1"}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{"2", ",", "1"}], ")"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454957931942828*^9, 3.454957975935898*^9}, {
  3.4549580291590223`*^9, 3.454958074610301*^9}, {3.454958158455265*^9, 
  3.454958164275082*^9}, {3.454960008661072*^9, 3.454960008822536*^9}}],

Cell[TextData[{
 StyleBox["23-28. Derivatives and tangent lines",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  "
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454958186284217*^9, 3.4549582380748453`*^9}, 
   3.454958540703156*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFor the following functions and points, find ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 ".\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tDetermine an equation of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " for the given value of ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454958186284217*^9, 3.4549582380748453`*^9}, 
   3.454958540703156*^9}],

Cell[TextData[{
 StyleBox["23.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"8", "x"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"-", "3"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.454958263683015*^9}, {
  3.454960010585896*^9, 3.454960010797377*^9}}],

Cell[TextData[{
 StyleBox["24.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "2"]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "3"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.4549582831497917`*^9}, {
  3.4549600124607887`*^9, 3.454960012635436*^9}}],

Cell[TextData[{
 StyleBox["25.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"4", 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"2", "x"}]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"-", "2"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.4549582960752697`*^9}, {
  3.454960013635991*^9, 3.454960013835547*^9}}],

Cell[TextData[{
 StyleBox["26.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"2", 
     SuperscriptBox["x", "3"]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "10"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.454958263683015*^9}, {
  3.454958298687653*^9, 3.454958308237467*^9}, {3.4549600145978947`*^9, 
  3.4549600147854223`*^9}}],

Cell[TextData[{
 StyleBox["27.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", 
     SqrtBox["x"]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"1", "/", "4"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.454958263683015*^9}, {
  3.4549583110877438`*^9, 3.454958321235755*^9}, {3.454960015586113*^9, 
  3.4549600157606153`*^9}}],

Cell[TextData[{
 StyleBox["28.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", 
     SuperscriptBox["x", "2"]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958252231823*^9, 3.454958263683015*^9}, {
  3.4549583252498417`*^9, 3.454958333466383*^9}, {3.45496001657304*^9, 
  3.454960016797656*^9}}],

Cell[TextData[{
 StyleBox["29-32. Lines tangent to parabolas",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  "
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.45495834079263*^9, 3.454958403774679*^9}, 
   3.454958549279213*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFind the derivative function ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " for the following functions ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ".\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind an equation of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " for the given value of ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ".\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tGraph ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and the tangent line."
}], "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.45495834079263*^9, 3.454958403774679*^9}, 
   3.454958549279213*^9}],

Cell[TextData[{
 StyleBox["29.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"3", 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"2", "x"}], "-", "10"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958419835177*^9, 3.454958433867779*^9}, {
  3.4549600201611013`*^9, 3.454960020347663*^9}}],

Cell[TextData[{
 StyleBox["30.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"3", 
     SuperscriptBox["x", "2"]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "0"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958419835177*^9, 3.454958464686274*^9}, {
  3.4549600210980053`*^9, 3.454960021285494*^9}}],

Cell[TextData[{
 StyleBox["31.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"5", 
      SuperscriptBox["x", "2"]}], "-", 
     RowBox[{"6", "x"}], "+", "1"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "2"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958419835177*^9, 3.4549584670127172`*^9}, {
  3.454960022011141*^9, 3.454960022210601*^9}}],

Cell[TextData[{
 StyleBox["32.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"1", "-", 
     SuperscriptBox["x", "2"]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"-", "1"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454958419835177*^9, 3.454958433867779*^9}, {
  3.454958468388295*^9, 3.454958478421382*^9}, {3.454960022948065*^9, 
  3.4549600231354837`*^9}}],

Cell[TextData[{
 StyleBox["33.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["A derivative formula",
  FontWeight->"Bold"]
}], "Problem",
 CellChangeTimes->{{3.454958568133574*^9, 3.4549585766134367`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tUse the definition of the derivative to determine ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["d", 
     RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"a", " ", 
       SuperscriptBox["x", "2"]}], "+", 
      RowBox[{"b", " ", "x"}], "+", "c"}], ")"}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox["c", TraditionalForm]]],
 " are constants."
}], "SubProblem",
 CellChangeTimes->{{3.4549585876417217`*^9, 3.45495862268878*^9}}],

Cell[TextData[{
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tUse the result of part (a) to find ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["d", 
     RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"4", 
       SuperscriptBox["x", "2"]}], "-", 
      RowBox[{"3", "x"}], "+", "10"}], ")"}]}], TraditionalForm]]],
 "."
}], "SubProblem",
 CellChangeTimes->{{3.4549586277367783`*^9, 3.454958650753274*^9}}],

Cell[TextData[{
 StyleBox["34.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["A derivative formula",
  FontWeight->"Bold"]
}], "Problem",
 CellChangeTimes->{{3.454958568133574*^9, 3.4549585766134367`*^9}, {
  3.454958661891181*^9, 3.454958662514234*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tUse the definition of the derivative to determine ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["d", 
     RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
    RowBox[{"(", 
     SqrtBox[
      RowBox[{
       RowBox[{"a", " ", "x"}], "+", "b"}]], ")"}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]]],
 " are constants."
}], "SubProblem",
 CellChangeTimes->{{3.4549585876417217`*^9, 3.45495862268878*^9}, {
  3.454958667843211*^9, 3.4549586713621264`*^9}, {3.47111861818786*^9, 
  3.471118623025085*^9}}],

Cell[TextData[{
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tUse the result of part (a) to find ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["d", 
     RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
    RowBox[{"(", 
     SqrtBox[
      RowBox[{
       RowBox[{"5", "x"}], "+", "9"}]], ")"}]}], TraditionalForm]]],
 "."
}], "SubProblem",
 CellChangeTimes->{{3.4549586277367783`*^9, 3.4549586796839733`*^9}}],

Cell[TextData[{
 StyleBox["35-38. Derivative calculations",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  Evaluate the derivative of the following functions at the given point."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.4549591533624277`*^9, 3.454959173904269*^9}, {
  3.459191530632584*^9, 3.4591915558425837`*^9}}],

Cell[TextData[{
 StyleBox["35.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"1", "/", 
     RowBox[{"(", 
      RowBox[{"t", "+", "1"}], ")"}]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "=", "1"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959180969234*^9, 3.454959195871863*^9}, {
  3.454960024761064*^9, 3.4549600249725237`*^9}}],

Cell[TextData[{
 StyleBox["36.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"t", "-", 
     SuperscriptBox["t", "2"]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "=", "2"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959180969234*^9, 3.454959218693963*^9}, {
  3.454960025685873*^9, 3.4549600258605213`*^9}}],

Cell[TextData[{
 StyleBox["37.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"c", "=", 
    RowBox[{
     RowBox[{"2", 
      SqrtBox["s"]}], "-", "1"}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"s", "=", "25"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959180969234*^9, 3.454959239647993*^9}, {
  3.45496002667311*^9, 3.45496002686062*^9}}],

Cell[TextData[{
 StyleBox["38.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{"A", "=", 
    RowBox[{"\[Pi]", " ", 
     SuperscriptBox["r", "2"]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", "3"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959180969234*^9, 3.454959208656869*^9}, {
  3.454959245342038*^9, 3.454959256756472*^9}, {3.454960027760912*^9, 
  3.454960027947564*^9}}],

Cell[TextData[{
 StyleBox["39-40. Derivatives from graphs",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  Use the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " to sketch a graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 "."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454959266829341*^9, 3.454959284855986*^9}}],

Cell[TextData[{
 StyleBox["39.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.454959296867551*^9, 3.454959299780301*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
2YyJ9H4Vaame4bleb758tjOD8qssiu251ohVvlx7HvjFi0P2S2pcbfBLrXcb
L5c04vvFWid9oV8+DVvf3jYnn/NQKiaPnnf22Hclfcyw165p5N0VtInQj5Rj
6SzosL46Tl/Te91TOeP5HXIH9FvxDafbAzf6X7ktmr3kZ4NfvDhwv6SW1Qa/
LH+rSZ2LMub7K5smvYpfXrx8KdVYP2G5Z64jDlpOO3vsvUnXd5vtlzHXIqVb
vzx79qXq419u+vYreVIvhFQtDjhLX3BxcZEvlskCzXLp/fcs3F3mag1+8eLw
/ZKaVRv8svx9psoljf5+5HZJX+gX/coq/TlX2nLPXG9xsH0Mqjfp2jjM+yST
TsmQT/Xq8rL8Kp98LEtnpzw4tj34kl8mEeWvpS/ydS56nabOctm1bV9fYwx+
8eJO+CW1qTb4ZcmbzOhclJF+Sc2SXnH8pWxVOnvmWsnLJ92Tfv32uhRi+dey
B9l7FCsfScsH2YbHa7KPHlQ6LW0q+MWLu+KX1KDa4Jcl7zBPLmmKX1KbpFf0
y8CeuZRrHYnIz7gnXf2yc3C/8Mvetkh7Fp10Ngf+pZRX5xZnNuAXL+6QX1Lt
aoNf5v377M5FmeSX1CDpFf2ilVM/W1mW9UTfTqEeSLp4Sib5VHpq1qTH8eeP
vXj5UvsI+cDb4yDj/ZIH+rMy9i4lWRq6zrgM8eMXL+6WX1LVaoNf5v3vErmk
6X5JtZNe9/qXXGnL86Z0975z2+GB88dyrZ46aZQxn1NmOQ++dBqrvz7GlP4l
XynTq6qepTTlzauDX7y4c35J9aoNfpn6jws7F2WGX1LVpNf1S3mITCutPrO9
oz58frLMztSpvEHxXtQv+jl7i/wkBUwasqd/Cctd9EuqVG3wy9T/Wi6XNNcv
qV7S6/pl+/rB3Lx0qnT188cmXQufO45dR7Smjb/cvliHcva+vgxtfwk/fvHi
jvol1ag2+GX8v1TpXJTZfkmVkt7CL7pw9KtSepuX5J30fBHKgx3fF9Y5P3nv
W+UUjDzfjPH9gNxdv6TF1Qa/jH99LbmkZX5JNZJe/f5j5fXpumPfe6Mt36SX
40TbQzblZZ7D9wTItwLo3KYgbWZQTzno/ZeRJwO0AL94caf9kpZVG/wy5sUV
OxdloV/S4qRX90t5ffrAISB3vwxcPpl239am+z63Au0MPH26qnQTYvtc5fJ6
zOEzmRuBX7y4635JC6oNfhnzyrpySTX8kpYlvbpfyv3z3lOzFMekd86j7n1N
/jqwzpC93o5AL89/8fKl/vWvbyUr3lPl0nv4a/yRt0bgFy+OwC9pbrXBL8Mv
q965KFX8khYkvbpfRt4i2Dfp+Yr73sEXpTzQV17LkwduOueeZXEM6KNzcWW7
GRwAv3hxHH5Js6oNfhl+TQu5pHp+SXOT3uL7X/IXAQ+8xjHpeYRdj2XtOvaV
W5hySKX0S3lsrbyx2IPbG5ptv/Pw15nZgF+8OBq/pOnVBr/sekGjzkWp6Jc0
K+mNjo/t/UJhx6TnM76Gzz0ubZJ7Db218vsPP8q0fca1zLs8PzCqUn5/pcvg
S8IvfhyTX9JmdsrvpxiuNvhl11/bySXV9kuaqJgm548VQ94DL/NKeudLisfc
+2XvKH/n/Xe9rLTVq8vLilv6JPCLF0fml7TZmRxZbfDL9p+adi5Kdb+kKYpp
cX+YXePaHSyTXtb8PAKiytgrQT1KpkMtS74lOZ/JLAtntVpdv73GL9E4Pr9o
zz6m2uCX7edbyyW18UsarZjlfpF9ctkV10M9OiCu3/+49x/Nkp6HPPRM6dxE
fDrLa7Ua+SZ5RGneGV/5Hv56RE62cVns+CUax+eXNFox+KV80qBzURr5JY1T
zEK/lIPdMiOTKrBZ0kuhaPOSj3dNGmHPXczwuNI2Zeeiz+CXmBylX9I4xeCX
8hkbuaSWfkkjFFPFL/nNded8ZO21Sbo2LPmULb1iJctl6hlc2qDtPaq297/w
S0yO1S9phGLwi/5q1rkoTf2S9ilmiV/+GpvYFM9nz76c+lXyZknXD6mntGkT
IcbRw3rjj4913nDqv3QG/fFLTI7YL2mfYvBLsu1clNZ+SYOKWdi/5K+8zz+M
xzjp5fh+uv3+SsctHb8E5Lj9kgYVg1+MOxfFwC9pt2IaXV85Bveky4zP61+W
g19icvR+SbsV8+ryUvboYpYaCS2zby+XZOWXtEMxkZOOX1yiRyaCX9JuxVxc
XMQsNV5ySYZ+SVuKkR9UMTGTjl9cokcmiF/SbsW4bHHOt2pfrbzkkmz9knZ0
MS6FDr94+UX2KK6urvCLPeoXPWJgj6ztEl0ezSLqiMO2Ysw+QEY2N13njdmW
i944S6YqSEsom/PAo7hMlr88Dr9Mu4wqbA8zRUv6erMQJLTsybtElz1YiW68
zGUVkp0ZybVM+MWF9cYvsvDfhGH70JAeKBPJ6ubf+gNIlDe3y9wmYubFy5fb
8y4LREclFn4Y+Xd5n9Ld25P8NU8DL9Op1lzrB+udcbPl/3pDqA2txGzGZSFL
ayx7L510y5qPX+xZ3/YvsoMhexfGjxLXJbpE7K02lp9BNwfLiL01VhbFasPy
EILsHsumPTzpZ5DHva+suwSk8mzPvh4yMk66y7b2bnPinPuW3i6E7CLqoddO
lnWSP+EXe9Zhxl86rLeu+5j0Ne4LsT8U3zu/4689r4jeVsVs/KUkWtJL1sc4
/iKLVGqXHgQb7oVld8VlbQ9OWL8IvTu0NtXGuNT0DkDIzqRN9A7G4/sd4iS9
w5H5ZbxWdCyP8RcXIvslHzKa8TXuC7EsNds77acnpzLjXkn39cuu44RHlvRt
jsMvk7SSw3F+shfB/SJ7Nb1nlLVeFc1KTe8V+noqUVi/aKE74qT3cqf9Mk8r
GfziRXC/6Fq3nvKtl1WwKTXbnYte5+Kb9EPwiy4EY8Xgl6lb+kKtZPCLF/hF
17rx33pZBYNSM3BvMfySl8ORJX2AO+SXWlrJ4Bcv8IuudeO/9bIKrUvNrs4l
/xW/6K+WisEvw1t6da1k8IsX+CWvdZaKaVpq9t4VGb90lsYRJH0vB+uXdlrJ
4Bcv8Eu51pkppl2pGe5c8mvwS/mkjWLwS7mlG2glg1+8wC+dtc5GMY1Kzcjv
c8EvvcvkjiZ9JAfiF0utZPCLF/hle60zUEyLUjOmc8mvxC/bf2qtmMh+eXV5
uX1PsNZayeAXL/BL71rXWjHVS82kb6LELwNL5g4lfRIufim7lYE7mjbSSga/
eIFfdq11TRVTt9SM71zy6/HLrhe0U0wcv7gcBBsAv3iBXwbWunaKqVhqJnUu
Cn7Zu3wOPOkzMPDLoWklg1+8wC/Da10jxdQqNVM7l/xf+GX4ZS0Uc6x+GakV
eYHXTfLxixf4Ze9a10IxVUrNjM5FwS8jl9IBJn021f0yqVu5fnut9/qrFX0S
+MUL/DJmrauumOWlZl7nkv8Xv4x5cV3FHIdf5h0Ea/T9LyPBL17gl5FrXV3F
LCw1szsXBb9MWlYHkvSFLPTLwrEV/BIT/DJ+rauomCWlZknnkt8Bv4z/l1qK
uYt+qTVkj19igl8mrXW1FDO71CzsXBT8MmOJOSa9CpP8Uv1MMPwSE/wyo0os
V8y8UrO8c8nvg1+m/uNyxRy+X9qdYIxfYoJf5h3oWKiYGaWmSuei4JfZy804
6RUZ8IvBdSv4JSb4ZfZY7RLFTC01tTqX/G74Zd6/L1HMofnF8nJI/BIT/LLk
dNPZiplUaip2Lgp+Wbj0DJJeHfWLzL7LVfb4JSb4ZeEVc/MUM77U1O1c8nvi
lyVvMk8xvn7xvYMxfokJfll+048ZihlZaqp3Lgp+qbIMGyW9LgdyB2P8EhP8
snytm6GYMaWmReeS3xm/LH+rqYqx9Muh3WoSv8RElrk0ztdvr12ir1Yrie71
nUcy1xK9ylo3VTHyegkt0643bNS5KL5J9/XL1dVVraSniYrZm/TlHJpWMrql
e/lF5FIx6TAeWey6UbhEl21BosujS3TdDGtt75MUI0/qCz7+8bH3r+3kkm6T
Lu9Z6w0n4esXXbAVm4jxislJrxU6M1Ir+tlcivwhbOleO1SRkVIjm0ZYv8i8
S9te6w3HK2bAL007F8V9p+KY/JJGK6a6XyZ1K7LAHXcqnj37Er8EJLhfKvYv
ykjF7PJL685FoX+pPggyRjG1/DLvIJh70t23dPxiT3C/1O1flDGK6fWLQeei
0L+0GGTfq5iFflk4tiJPymejfwFLgvulev+i7FXMtl9sOhfFfVf2KP2S9ilm
nl9qDdm7J919S7f0C+cSKMH90qJ/UYYV0/GLWeei0L+0O0l4QDGT/FL9TDD6
F0u/SCwJKit5cNEE90uj/kUZUEzpF8vORXHflT1iv6Tdihnjl3YnGLsn3X1L
Nz4+prOsTpe0SjWwjH4gBPdLu/5F2aUYqQz6s3HnotC/tL7IsVcxOenbrze4
boX+xdgvedPW1SBmOxPcL037F2WXYjo/mMklHcCu7NH7Je1QTMcvlpdDuifd
fUu3H9+XrPVmUz5JkHYmuF9a9y9Kr2J6Vzyb3Rv6F5ubtGwrRieXq+zpX+z9
Ihv+6cnpycNHOaeSgrKdkTWh9wrroyG4Xwz6F2WvYszkkg5gVzaIX9JuxZhp
JeOedPct3eX85NVqNZxulb4smaZ3sDl3QmZN9CrL3yW6bnqO0XWLsw/amYyX
gMyy42KX6PaLPXM4Sd9eB5p+Kt+kuyz2w4m+dwcjv0BXA9nBqNvajN+9qThN
2q061o9xIAuBWbac/YBLIOAsd2bfawmM2bvofX3FUwKeO3G+6Vt1RuzRfap8
fyRjNI+yBLxCey1596Q/KG6KZcwhJP3B7W6qZXSS7pJ0jT5SbfKy05PT882x
Mq97Tdfl6urqgd9R2eebe+7Jo8vZFLrOuxyVlZVHVzmX8xVfv37tONR77j3+
ItHtv/tG1vDypPT8pNkH0JFWkm6MlJdhuTQ6IHYgyOw7+sV3rVO/rH74zt5u
siLp2uUiVt+dikNIukupkX0JLTX2odPmO1B8k657ki7R1S/23zMlm/mug2Pq
lKO/HMbXL7l/cYnu2L/kUoNfjHHclfX1izStwf1in3Stb51uRRaF1zcq2kP/
Qv9izCEkHb8Ycwh+Ma7qnVtzaMMiG36QKysV+hf6F2PoX+xDJ/xinnQtL9qw
HMdg/QzoX+hfjDmEpOMXYw7BL5b9i9RVWdSvLi+Pb8h+EvQv9C/G0L/Yh074
xTbpwbWSoX+hfzHmEJKOX4w5BL/EGVU/HOhf6F+MoX+xD53wi1PSg0P/Qv9i
zCEkHb8Ycwh+oX+xR/xy8vCRY//iW2o+rXUeftHb6sqSdzlO65t0d7/IvHv5
RZPuslPx5s0bvVTcPnTaJF1vTeMS/a8tHb9AGEKdBl/i6xdfHJPuvr65fwAA
OHoi+wUAANqBXwAAoAX4BQAAWoBfAACgBfgFIvPxj4/r9frm5ubXP38pz3mQ
X3/6ed15EgAmgV8gIKKV1Q/fnZ6cnjx8pNe+PfrihV6eIEJZffuVPikvEMug
GIB54BcIiFhD3HFxcfH1089UMfKrXnyX5ZKf9P6wAHcV/ALREIloSyINy69/
/qJdjEyiEpnkB+ll5AdRz9Nvvk9cKwQLWK/X7z/8eHNzE7MRjukXPbqueecY
e2REMWULI5PIxftDwTHQOQCb2+FQd/OO5hexSXkARCaZfdlNDZV0KNGeRScd
cGFlgIVIkdE1KteZvI5pUxyEUH6R0iE7q50vYc/Du/JX7w8I1uSBfl0NQm37
0AjdY9HVSQ+65kZGim2oQb04ftEjIblLXQn/v5GhtsQk73Xo/XVpXmAJ+Yir
rEu//vlLuh3my9UmVAsTxy956DYfAJFHPY8oH36POQYXHNn21S+hNnxohJYU
WZFULpm8f6sH5L0+njFB/KLnnXY6U3ny037FbTMbqm+FTN6xZCQOFtJbZ8o/
RTtUEsQvuvPQe2pQbmHwS0A0++UwXGe3E2Aqu05JFb98/vgxfjk+9BDodtLl
mXz4Hb9EQ4+Mya7F9j6GrBjrNSeSQU1y/5KHZo6eIH5Ju6+Sy3uw7LtGQ7d3
3djzEIz+qkdNOVcZapHXsVCnqsbxSy+fDooWJxN6fxxoi57Go5fnv3j5Ugf0
dadCnpcNQTd/XSUYiwnIpzNLdQ2Z8jimdOTT4OM0Lym8X/LJhNq8cPLYcVOe
LqhJzwbJuxn6SDMbk3yxbV4TxjyKX4ZLR9m8hFqvgvslr05c+HD06Fhb9ku5
R6FnEuZrb/UIBjsb0ZCM6/c1TGWvMvRy/oA7sZH9kkf2OTIWBL3i6f2HH2Xq
7E6oYuR5xlygLnpkLObpQ2H9ki93Qi6QybdWBqiCtswx5ZIC+0XPHUIuANAI
PUKSv1rI++M4ENMvWS4xkw4ArVG59I7t6nmMEcb4AvpFx9p6zz7Vm52GOsED
AKpTdi6dOpPvJRLhKphoftFbNPTeKEaH4ThiBgBLyCcOyX7ss2dfSo19cnaW
H/UMxiB1JpRfyltZSt5lynmXn/PXSx190woAjShPdC+/xDA/hroVVRy/lBfQ
5e/60YzrTed0RIaDYwAwm1xnBqY438G9Xq9vbm7k0fuDtKV3p6IzcZUlACxB
qgcFJCBjrmuQFYMjYwAAAAAAABCcfwJBhXja
    "], {{0, 321}, {544, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 252., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->252.,
  ImageSizeRaw->{544, 321},
  PlotRange->{{0, 544}, {0, 321}}]], "Output",
 CellChangeTimes->{3.500550703337591*^9}],

Cell[TextData[{
 StyleBox["40.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.454959296867551*^9, 3.454959315592444*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
    "], {{0, 335}, {374, 
    0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 180., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->180.,
  ImageSizeRaw->{374, 335},
  PlotRange->{{0, 374}, {0, 335}}]], "Output",
 CellChangeTimes->{3.5005507034683657`*^9}],

Cell[TextData[{
 StyleBox["41.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Matching functions with derivatives",
  FontWeight->"Bold"],
 "  Match the functions (a)-(d) in the first set of figures with the \
derivative functions (A)-(D) in the next set of figures."
}], "Problem",
 CellChangeTimes->{{3.4549593258926697`*^9, 3.454959363617939*^9}, {
  3.4711186931917057`*^9, 3.471118694962685*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
sg1PeA7J5RJgeHIeKtBq18w9nEkQnkOaz+fNI9xtDgxDzkMFLPwfnvAczO5h
ZwsXYHhyHiqwv4Vs7hHVT3gO5od//NA8tufzuYZkYBhyHuqQXo/WcTEA4TkY
B+0BWch5qEN4FqezbbmHUz/hOZj0Ksl2u809HGAq5DzUoXX0nkvSfROew9Bv
D+Qi56Eajt4bkvAcRrr5m4P2gCHJeaiGvWSHJDyHYQ9wIBc5D9VoHb1nzq1X
wnMAHtJARnIeamLabTDCcwAujgAZyXmoSevoPTNv/RGeA9BmD2Qk56EmtgIY
jPDsW2vDFgftAQOT81AZm8oOQ3j2zdbfQF5yHirjeLJhCM++eSQDecl5qMx6
vW5Ki9lslns41RKevXr88Jj2Wty/u889ImBy5DxUZvewU10MQHj2yns9IDs5
D/WZz+dNgbFarXIPp07Cs1fx5tVrAWQk56E+oTC24qlvwrNX1p8C2cl5qE9r
7yy7JfdBePbHToZACeQ8VMkpDH0Tnv1JD9pbLpe5hwNMlJyHKjnPt2/Csz9O
VwdKIOehStvtNr1g7bSyqxOePWk9dDULAbnIeaiV6bheCc+euAgCFELOQ63S
YiM803MPpzbCsyfa6YFCyHmolS0CeiU8+9DamCX3cIBJk/NQMR0X/RGefdBr
AZRDzkPFlstlU3KE8sMaqCsSnn1ID4t02wJ5yXmomI6L/gjPq2v1WtiSBchL
zkPdHO/bE+F5dY5TB4oi56Fui8Ui7bjIPZx6CM+rS3stQsGcezjA1Ml5qNt6
vdZx0QfheV27h13aa3H/7j73iICpk/NQt8cPjzou+iA8ryvckmmvhUWmQHZy
Hqqn46IPwvO60l4Lj1KgBHIeqpd2XMxms9zDqYTwvCK9FkCB5DxUb78CcS37
csLzin74xw/exwGlkfMwBTourk54XpHHJ1AgOQ9ToOPi6oTntbjSAZRJzsMU
6Pm8OuF5Ld7B0ZO7uztZxyXkPEyEK9rXJTyvxSOTPoTH0s3HzeHte8nZ5DxM
RLoPrfm6ywnPq3j88KjXgquLFXIU6uTNZpN7RIySnIeJ0HFxXcLzKlq9Fipk
rmK5XKZxF+rk8EjLPSjGR87DdDiv4YqE51XotaAn6WRy5NnKqeQ8TIeOiysS
npfTa0GvVqtVq072RoyTyHmYDh0XVyQ8L6fXgr6lj7FosVjkHhSjIedhUnRc
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
NKac88B5Hj88pqG32WxyjyiDKYdn+i4pvOTlHg5QkC6r/OIEy3K5LHyh35Rz
HjhbCLf0Olru4WQw2fBs7fw2wVsA6CJUyy/uIHfz60K/MluXJ5vzwCX2122V
PBvQh8mGZ2vnt6nd78CpmtNJjp98ffNr63I5zRiTzXngQun8QEiS3MMZ2mTD
085vwHnCe+oXT75u3oCX0Iwx2ZwHLhTiKw200S1bvtA0wzO904Pdw85MMnCG
7XYb3mV3qZbn83lI2iwvMdPMeeAq0nyb2qTiNMMz3fkt3AIqZOBCHRf63fy6
M8aQS8WnmfPAVUz5YOIJhqed32AwIVumNvPQvXW5OdSv7+nlCeZ8geJFh2nu
o8WohUxL0yxE1nSmFicYnrY0gcHEaJ1aG1sUW5e7NGPc9Lzx8gRzvkDxnN8J
Ln2iApPdMndq4RneEKUvTCG1co8IajblIjnVvRkj3GIhlq87vTy1nC9TvGbt
aFfGqHUJfjoXRKYWno5ZhCEpklsePzyGArjLzhg319tKbmo5XyYzyYxajJEm
mnIPZyCTCk8HiMDAFMlHxCbVF4/Avrm4e3lSOV8sM8mMWutgkYms55pUeLZW
aBZ4MBZURpHcRciikE4dp5fP6F6eVM4Xa7wzyXFX8IkURRwxwYNFJhWeU97r
D7JQJJ+qj+nlSeV8sUY9kxwfkOH31WplfmmyWmdMTCHYpxOe8V188+IyhTsX
slMkny2UIj/844cuW8ndvLT38nRyvmTjnUl+2rvUHn6K6SzdItU6rbj6veCm
E57pPbtcLnMPByZBkXwVcXq54+YY+0f7TSfnSzbqmeSn/172nr41q75MIpXO
NwbV3/sTCc8JXiOAEiiSryueVNKxezl8Tqhh4udPIecLN+qZ5KePm4A996iL
mxZqw5iC1gYI1XeuTiQ80xmY8b6Rh9FRJPen+/RyE33hjqh+5qdYY59Jftqb
RTz4viwUFavVyiq/ik1qD4QpFMnT3LeEOixGLj7pQiGXeyCVm81mtx91qZbD
p4XPd6cMLLb8xeWWYxQfMB0fY83DLF7L8Da5JpOaTJ5Ckbz49ZX6Zko7YFOH
jq9HAAPoXiSnX7L4uA1L7jTlalrnslV8far6InmyZylSh/DKEh604/09vqSG
hMk+kgn+Hl7IOk79xeV+4fPdU/39HuuKcDuXMJizf+9YJM9ms+VyuTaHXKnW
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
yYUQntlVM5MMlEnOw7iYSS6E8MxuCjPJQEZyHsbFTHIhhGd2imSgV3IexqVZ
Cx+KZIVBRsIzu7ix8OeffOZYOqAPch5GJFQCza5Q8Viu3COaLuGZV3iHGN4w
hgrZhRWgJ3IeRiEtj1vHjoS/MqU8POGZUVoet07cyD00oB5yHkYhlMH788aP
Hx6Vx7kIz7zMGwN9k/MAZxCeAHWT8wBnEJ4AdZPzAGcQngB1k/MAZxCeAHWT
8wBnEJ4AdZPzAGcQngB1k/MAZxCeAHWT8wBnEJ4AdZPzAGcQngB1k/MAZxCe
AHWT8wBnEJ4AdZPzAGcQngB1k/MAZxCeAHWT8wBnEJ4AdZPzAGcQngB1k/MA
ZxCeAHWT8wBnEJ4AdZPzAGcQngB1k/MAZxCeAHWT8wBnEJ4AdZPzAGcQngB1
k/MAZxCeAHWT8wBnEJ4AdZPzAGcQngB1k/MAZ7i7u7u9vV2v17kHAkAv5DwA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AMBBjx8eX//43fzb192/5O37N198+U34wt3Drr+BAXC5jiEf8jxk+1//8NsQ
7+EP8X9FPTBZ9+/uQyTe3Nx0L5JDYMYg/fyTz17981+9Dg+AS3QJ+V9+/u73
v/ldiPTwaeH38OeY7aIemKwYgCEVQwCG0rfjV8VZhSZ4T/paAAbTMeRDnoc6
+Y9/+nOsk0ORHL5Q1AOT1YTnSY0Wre8QJx9MMgCUpnvIh+o3XiIMkR6L5DTV
RT0wKbuHXQzPT7/6/pJv8svP3+0nKgB5nRHyaZEcZ5KbbyXqgen46dXXsfEs
rs648FvFHL5/d3+t4QFwiVND/shMcvMNRT1QvSYJ59++vjDuQq7GGYZL2jYA
uKLzQv65meQnUQ9MQ8i6OCEQF2I892mxmS0G5ueffPbFl99st9uDYdss64i7
BvU5dgBe0DHkQ3S//vH/bmoRAjzucfHcTLKoB6rXBF2cK9j/hN3DLgZsSM75
t69f/W3VpOhzF9rSQLb8GSCjF0P+KVmLF34POR97M25+tT+THIl6oG7NJbMv
vvxmv+KNaz2afTLjJzTTC89daGu+5yXLAAG43PGQf0oq5JDYsYpudr9viuSD
U9CiHqhbMxVwvNxNE7JZJR2/an8NSJqc1nQAZHQ85Js8b1XCsUmjtU9y62tF
PVC3I/nZzCSEAGxVwseXbBxfEw3AYDrOhHzx5Tetv3oxyUU9ULHHD4+hDL69
vT04J5xWwq05hPC/9+/uD+4j1No46OD8AwADOB7yT8/3Fcf9K44kuagH6hbz
87lJhrRIPulSmukFgBIcD/lmTd/BxXdmkoEpSxNyPz+bhrT9meQjTC8AFOJ4
yKcLTFpV7otJLuqB6h1pV0v/6qRj+EwvABTiSMi3imQzyQCpI/nZtFs8d5Jp
+Mj+kSL70wsXnnMNwNk6FsmtyZAzZpJFPVCZpqdif6PLpkiOx4gc/NqDEwjh
C4+fNgLAMI6EfOxYTvd5S//2xYliUQ/U7UjKpc1srVmI5pxTh4kAlOx4KduU
0PuTIcd3t3gS9UDtnttJ/uljJfz6x+9uEuFzwkeak6m/+PKbg4ecpnsKDfVz
AHDAkZB/OjQZEgvp9MS9WD9vt9tWQ4WoB6oXK+EQg/v7ZIZIbGIwfk78vTmo
ev+7NZH7XAkNwJCeC/mnX/dDvvlvcQJ5/4Np47GoB6oXF180J+vtX1CL88mt
zAyp+FwH2vHD+AAY0osh//TrvHGcBmk6KGK7RZxGDp/QynxRD0xEjLs4z7D/
t/F8vRCS2+12PypTzXW956IYgOEdCfmY1QdzPvw5fHw/zEU9MCmxrSIk3vFt
fI7nYcxhe2YClKZLyHeseEU9MCnNXkBnXzuLa6jFJkCBLg/5SNQDExSvoJ0X
oXFHzecaNgDI7pKQj0Q9MFnNBsgv9l2kXHoDGIXzQj4S9cDExaXQJ2Vg+PzX
P37nxCWA8p0R8pGoByYubo98xlf1MRgAruu8kG++9rqDAQAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAGDU/g/lDhpQ
    "], {{0, 791}, {951, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 432, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->432,
  ImageSizeRaw->{951, 791},
  PlotRange->{{0, 951}, {0, 791}}]], "Output",
 CellChangeTimes->{3.500550704103695*^9}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
nS2w3Dc8ue/7+oDeKCXYyP3UNg2xYV1Fh4QKok4nlMq7I++RvFnajeXfRJ6+
sS62ENoOUWd1uo85c8xh/K1T+6r217dU/cR6tSooX5cedeRNsdkE+qjin6/l
HyVvmX0DtR2si0m72yHqrI5FEuDZMpIDD2udSkK5N9DSo44vvg1U2OzNkm+m
hxpr0cdkPQN5TF4XUWd1ftlAknnjbLPXG8s1Oi6x9Hpg0VHH908Np03tkbS0
U9McOuTlF9gv8SIKi6izLnnEY0MTGLshSsN1Y+71Q3quhoj8+LK4qFxu1LG+
g5FVNZ16YCMrivv3IiamtGyEqLMuu7UVPeICq7DcO36tDL8hTon99YVGHX9/
kUt45I/dpyOmzGAtLCe4BaLOimy2IE0f9q4rc1Lu1T4vW29nu8PbQqFRx2a+
TC3G2qMNy2dhLXIGMhJsdUSdFbFsIEynK3PSrd+XC8pq60qMOn4ewdSfNk83
2ALLCa6OqLMW+ljh+R3QZtz3/Ryfgrqxios6/rKdN/HNhldxV8JaiNCrI+qs
hQ5WmOULn3ZGva5+hBspLupYpJTLdt48AvnHMhULq1v4rIQOos4q5Lmbkg6M
5d4lT/o27bSgheLLijp+3Pi8y1b+mfKyQVkFhVIEx2TedRF1VuHvSrmPBZmt
2JVpw2VLGf1VVtSxiLLwx6tjq7QKt9axAUToFRF1lmOJS3h+EbCFf5Tvsi+i
WlhQ1PGjkRcWzayoy5QZrMhH6IIG7MVE1FmOjUvg+eWyl/9pfjDJ8j9ta6VE
Hd/jvMojs3VZllJ/Q3z+LOUheiGiznKUGWH8gORVetjLmtlXStTxPc6rPJ7Y
DiCMrMCKGBqxFqLOQr6kQxOHVQYke5IZ/OS+4GXDIqKOT48rPiyvW80D9u8K
O4yOWI6os5ANHKWkA2Ht0ooVmI1uzVsoIurYtp7rPimvOEYLMHa6sgHoEkSd
Jfx8wFKmA2M7vvdq3UZpo7vz6uJHHcuN8nHd3Oj/ZFoDrKWsLuywiDpLsLkn
vNV7r0wpdez4Ucf3Bq5+kFbjjfweoTisT7scUWc21u5Gxxa9V8YPUAwbJIJH
HRs8rO/R6gdJHxa2QGFnOaLObDYLmOml2G/Ze6WK2CoieNTxM/c3eo/0BJCP
TFLAiijsLETUmcc/HlLSwd4Np9muN1OLBhp4Yt5JI0edNOsxMg8LW/CrGVDY
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
AAAAAAAAAAAAAADE9P8ButshAg==
    "], {{0, 614}, {761, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 432, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->432,
  ImageSizeRaw->{761, 614},
  PlotRange->{{0, 761}, {0, 614}}]], "Output",
 CellChangeTimes->{3.500550704615818*^9}],

Cell[TextData[{
 StyleBox["42-44. Sketching derivatives",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  Reproduce the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and then sketch a graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " on the same axes."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454959382592258*^9, 3.4549594095064487`*^9}}],

Cell[TextData[{
 StyleBox["42.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.454959419111725*^9, 3.454959420956402*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJztnT+LHEe3xn25n+LV67UwLDJKV2BYpQ7e6IK44MACWUhf4E2kz7ACo8CJ
FAwGg7EzS5HB/g4OFuPAuRMjJBzYssHBcB/psc6tt2emt2f6X1X170dr2W31
zNb29FPnnKpTp969++//vfvfb7311r/+6623/kf/Xn2/BgAAAAAAAAAAAAAA
AACYlvPz87mbAADj8uDs7I8/X87dCgBo4+dff3n68Nb9e/c+evedoztfWrP6
urp59fjo+MPH37e//MaNGxh0gJz566+/JPMnT76+fPmmRH3pH//46qff14nM
3//gk+cvnu16uS7TS1ar1YRNBoC9kdKlVold1lyaDfPtM7LvumDXa2XH9RJ5
Ai3XAEAmSKc/fPaxNCvzLYHrjIy4DHq70/7o0SO95L0rV6ZqJgD04rcfv5Bm
5b3bb9ePctr9/S5kx/WSo7ffbnHsASAf7KVb2nLjnz68JY+9/SWy49K4lK7o
fppGAkAfPOzm8LyLKZcF18U6/nnp0oOzs8naCQB9UHgu6ywj7qi83RWXBQ+Z
37hxg1E4gCJweC47HhF6C5K2Ze6D2XOAIticVtuFRC0jnsr8/r170zQSAA7G
qTJpLlwLErXc+1Tp7125QtYrQOZ46vzCkbf168E6iTo15T4UrROhA+SMTfmF
7vr69eBb2HGnyPpQtD5BOwFgL56/ePb04a1vvv1OsXZHja/fDL5J6XLd/TUm
0BmIA8gND637uHAGzUjIUrQXpslFl8wfPXokN/7B2ZnOMxAHkBty1Fc3r3r6
rOMAmkQdS9Ikc/UPOuMfJXzJnMRXgDzpPkieDrI1ZN74XwCogE2ZA0BlIHOA
6kHmANWDzAGqB5kDVA8yB6geZA5QPcgcoHqQOUD1IHOA6kHmANWDzAGqB5kD
VA8yB6geZA5QPcgcoHqQOUD1IHOA6kHmANWDzAGqB5kDVA8yB6geZA5QPcgc
oHqQOUD1IHOA6kHmANWDzAGqB5kDVA8yB6geZA5QPcgcoHqQOUD1IHOA6kHm
ANWDzAGqB5kDVA8yB6geZA5QPcgcoHqQOUD1IHOA6kHmANWDzAGqB5kDVA8y
B6geZA5QPcgcoHqQOUD1IHOA6kHmANWDzAGqB5kDVA8yB6geZA5QPcgcoHqQ
OUD1IHOA6kHmANWDzAGqB5lny28/fvHg7Ozzx5/+/Osvf/z50if1/Tfffhc/
trz2q59+v/AyWAjIPEP0oTx9eOvo7bfv37unT+f46FiaXb8Wr348uvOlLmh/
B1/54ePvUTqskXmW/PDZx5K2RCrb/dG770jvkvleytXHGn3CBA2GzEHmuWFp
X75807661CovXV8lfGn2+Ytn3d8qeobxWgtFgMyzQh+HTXkoWmf0zerm1XDd
u7+VeokDXgj1gcyzQh+HhNkwwRK+zrz/wScHvGG47nu5AVAZyNzoPsg3lsTu
3rmtGxLmz96yXeitL7TF1AV64Y1W5Iq3+M/6RRLy04e39Ot06N3u37vn8NzC
b4ycS7ZqsC6L5jket8Pv9utM+vJBbxiUBDI3joJ1H3Q3/nnpUoxm2xra7901
9iVtSsWWubTZ8lXC3GVVpcfPH38qkfrXWfKOynUmQvW43t2CPXw3Txfrm1e2
+/WQndtvh59R94WTg8z1KD558vVqtZIWLIfAZ/Rf5+fnY7udf71GwpFMQlY6
7DN3tIYW1+ZXvY+D5fYXRmDukDzObMrchIp1gb0FnUmvdBTw3pUr6hPw2xfL
XDK3kywJXz89lax0qBnpIZPaOKNrJPwHZ2eS/HgN80B3Gh3LbrY47QNi/78R
hruTCbd881W+wJ2DzzQu8wX6X6z5Yple5hKppCr7sint7se1kxO1eXDzlA5r
h5erH20lt75E1ziol8utv6v9aE9gcw+jO5MGCCHSrQ2I+fEWfyPtKPa+I1AF
U8pcApc51mPcMNY6YzMt113HeYLP2JP3C1Nz7zyxwY17jGxLFzraJ6SiW3CT
Wg57CC0JbB7ua/y6VKRbuwi9SvehpZFpGHJh+hxUyTQyt8CthTjkru/lgaup
uli6limPXsIOv04OaNktHOtCEr4wkay7dtqvtF129xInG2MFjZeEn69rdg3j
t/sDsATGlrmeQ2kwNcT9TbDaLBOvfkNvFXrXr9BfMYi1svOsTkl++GS5JR79
2wyid420G3cC9gEcZfhoXIPMF86oMpcYG5bXZnco19HGPfUQpP3+PnwMX0+Z
KZrOfKXnw7VIexsL1v+l8zEa7zdJ5852vS0sipFkbiOeWtsxguj1G09e6k47
k/5mffphqxjhbzgPnhGzsfaZCMbjZAT14d433pZ814UzhsylOz9aMSousz7g
+29FvyIG93RI+H181Jgrn2bMygPmuwbKGjG7r0xXn6Wz56mc0wz5Cf4KyJbB
ZW65hcZlxCcb3dXTngbs6l4O8x+smomlIT2+mmTcMbv99OGtNN9VLWzEPo2s
GOMhxJZRelgIw8r8wdlZOiY2gRHfZLVaxYy8epsD2iBNOc4do3kpaV5cLCXb
7BVjNj8V7NbL0h9jEH4ynwSyZSiZ633S0bBBhsIORr86Tb/p8tc5RVwissan
MX8ODaJ8RGMqrUFqmi+UbeTotmTRw3IYROZ6qNJBMOl9dhfRDnwk0qhJ7RdH
iksjvB0V/1Kpu8uqcN1St7NLdrpDcsrBgekvc2s8ImL57Zm4iB7tj0G5dqVL
F/orrKDJ2i8X4u6d217E2qVv8eKaCzXuWACBQ9BT5tZ4+OqKi4dtXk/SUMJK
z6QLCtAjTEAfmae+ur7OMuDWBTkYkUXfbtMBquRgmeuF4avra7YaN1Z6lzgd
oD4OlnnqDGeucZMqXd/P3RyA6ThM5jG0pa/SeG4B7y7U7DTEKKXZAD05QOa6
OObOijOL6eT++fk5SoclsK/MZQRj7qzEIDcdNjw+Op4xhwdgMvaSubPLrBGJ
Zey2jYSUfv301COH+oYkMaie7jKXOq6dnNiUS+NFz/ZK2hX0VwAd6S7zmD6T
QEr3db1K3UnvDLxD9XSUuYQQU+SlazxYrVZlzQkCHEYXmUvXMbQ+VL21TIiZ
QbkoU2azA0zJhTJ3GGtTnsPSs2HRnxOFbhSVIHOokgtlHoWXr52c1Dco7c0E
HYyUmAYA0IV2mUcllppC8gYuBx1BOjkzUB8tMvcsefcCLEUT2XH6kysLTABa
ZB4LyZcws6x4JLICSszuA2hhl8yjeONyhqDlvaTrceZuDsBgbJW5HviowLyc
lVwuNeOxCFx3qIlNmbtexHLc9ZRId8d1h5rYlLm+j8Go+mbQLgTXHeqjIfN0
dH057noDV5/w+jVcd6iAhsxjfcqSU8K8Fo9VLVANqcyjZAT1FnwrosjM3M0B
6EXIXCYsctcxYeskYWZp45BQHyHz2I5cAeli3fWU5y+eyathLA4qwDJPdzLl
kQ486eBlqozFQblI5nqMyfPcim4O0+hQAZa5TbmUvpC81u7ENHrFa/SgeuSL
Rt1yRt42ic0WPck4d3MADiGKvMlvJ/zcSqQM5b9VHMAmLgDFyNuFeIhSMi+9
cjUskNhTTKZ87rZkjZMKitszDiBNX2cY+UKikJRuGjKHUkg3DVytVnM3J3fS
LZkYq4QiSOeJllDqbRAi53+ZS3ShOGJXUNt0ZN6RKLhBmAOZY1MehSOQeXfC
C8KgQ+aESVKMqZBTDy0y746X5GPQIWcaAeZe+5vDOvGFSH+FbElN+XqfjY8h
8ICGZI5BhwyRKY/q687mQuYH4C1ifScx6JAbYcpD18j8MFKDTrYM5MOmKV8j
80OREfcQh3dXnLs5AH+zacrXyLwHROiQG1tN+RqZ98AGneqvkA+NAfYAmfcB
gw75kKa9NZZLI/M+pHPoJMXBvEQG++bSKmTeE5LiIAcaGeyN/0XmPSHLHXJA
5sblI7aaG2TeH497sFsNzEVarnBrcWZk3p8nT74+PjreOvQBMAFRImZXshYy
H4Qw6NThgYmR+fboUEumFjIfhKgUR/FMmBiFihfu6YnMB0G30VuiUwobpsQ1
h2NZ9K7lFch8KOSus1EyTEz61LWMCyHzoUhruZP7CtNw/fS0iw+JzAfEURK7
rcE0RCUoBYztq6GR+YA8f/HMNbHZWxYmYOua060g82FJZzDnbgvUjEsY7cpu
bYDMhyXqR5EqA6Oyl0FB5oMTrhSpMjASMt/HR8fdx3uR+eBEBY/rp6dztwXq
RILda/YWmQ8OqTIwNn7AZE06PmDIfAwenJ15poOZNRicmEfr7i4i8zHwagJP
rpEqA8PiSiZ77YmGzEciysSxCB0GJCqH71XGBJmPRFpVhpk1GAqZjwOKkiHz
8YiZNQbiYBBiPdq+6yaQ+Xh4EboH4kh8hf5EWYN9h3aR+XiwZg2GJYoU7esf
IvNRcSSlz4UUd+hJy24LF4LMR+WwcVGATfqsikLmY0M1SOhPzwAQmY9NOmzC
QBwcxsGDbwaZj43uMANx0JOek7PIfAIYiIM+pBUkDku1QuYTkA7EkREH+9Lf
TCDzaYhNaeV0EaFDdxz0HZD51ngTZD4BaUbc3G2BkhhkCBeZT0NMiLRsdAWw
iZed9qw5hswnQ4GVZc7SVOjI8xfPbMqPj477pFch88lIl6bO3RYogyhDtGtH
444g8ym5fnpqg87SVOhCx72TLgSZT4kLcrpzZmYN2om1Kv1300bmU+Ldl6x0
VrJAO7FWpf9gDjKfmKjXx0oWaGHYYgXIfGJiswZWskALPdeqNEDmEzNIUhNU
z7BeHzKfngFjLqiSGMPxDtr93xCZTw8T6NCO9GiZ95wuD5D5LHgCXX01E+iw
yUfvvnN8dDxg6W9kPgtDZTdBfcjZs8YHdPaQ+SxErrLETp4MpDx9eMsyH7AI
CTKfC69AJ/EVUjxdbk9vwIkYZD4Xw06MQh0MmOCagsznIt0cmcRXMCNNtiLz
Gbl757Y/UxJfYd1jJ8QLQeYzkia+zt0WmB89D3bwBn8ekPmMsJcipNhj1/Mw
uB6R+bz4k1UfzkewcDxWM9IiZWQ+L/LTHI5dPz2duy0wJ6POvCDz2RljnhSK
I5akjVHJH5nPjiu+smBtychLd+bbSGWFkPnsjJQRAQUxdq4UMs8BCZxCE0vG
G56Ol/mMzHOALVOXTBSR6LnnQgvIPAei0AR++wJZrVb25e7euT3Sr0DmmSCB
kyezTOyxD1hEYhNkngkPzs68LhW/fVFE5YH3rlwZr/IAMs8ECsQtE3vsY2/E
g8zzIQrESfJUjloIE3jsa2SeE/bbh60OBDkzjce+RuY5EXky+O0LYRqPfY3M
MyP12+duC4zONB77GplnBuPtyyHNihm7ui8yzwryZJbD548/HalWzCbIPDfI
k1kIXnk6zc47yDw35LfHsMzcbYGxiFox09T1Rea5Yb9dnz71ZCpm4ir9yDxD
vC6VejIVY4/dY+wTpEIh8wyJdanUk6mSqMc+Uq2YTZB5hkSeDH57lUy/rxYy
zxB9KK7fjt9eJbGD0mS77SDzPHEdyDEq88O8pDsoyWOfZo0SMs8T77PDvkv1
ke6gNNk6RGSeJ/bbo8+fuzkwGOGnTTm+isyzJXbUYr/UmvDuGxNnOSLzbGG/
1PqYaw4FmWfLH3++nDIfEiZgdfOqd1eZOCMCmedMuq/W3G2Bvkhrly/ftMwn
nidF5jkTeRSK06kOVzqStjU+fXUgZJ4zUStMNh2Zl45UFp32xL8amWeO6whN
syoZRmWyklCbIPPMeXB2xvZqFTBZEdetIPPMUUBnmVM2qmimX66Sgszzh22R
K0Dq9vjbNAvMGyDz/GH5eelE6vJkC8w3G4DMMydSp6Zc7AADki5XmaUByDx/
Zlm6CAMSC8zn8seQeRGwjKVoZi/uh8yLgGUs5RIx14xzJci8CFzW27ufTz/r
Cn3IYaNbZF4KsuN+WkiHK4sZk98CZF4KzogmHa4s0uS3GZuBzEsh0uHY/bwg
5k1+C5B5QVw7ObHSSYcrBU+RzL7yCJkXBOlwZfHHny+Pj449ojJv/R9kXhCy
CM6LZlqtCPJJX0TmBaEPKxPrAF2w9zVj8luAzMsiXeg0d1vgAq6fnmaytBCZ
l4VHbj2tRnJ7zsxY+W0TZF4WP//6Sw7zsHAhnz/+NJ9ynci8OD56951ZigDD
Xrj4dibhFTIvC31eHz7+fpaS/u3oYabbCWLt8Fx1JBog87LQ8/Pbj1/EtNrs
3mAgjevBVpOkdxbXzF5HogEyLwt9XrIOeW6WKu/C9kvNU0C6ZOOez1SaQeYl
ElUmZqkfuAsZ8ahO6b19bdyz6oumwVNp+aQlI/MS+fzxp/bb7965PXdb/oNw
Vv2Qh+T12KtrGil+19vKf9CvyOSr+rq4A/o+k8OzM7M3g2OvIxQ0e0sahx71
EHgcqeQdwsub/ebb7waRud5ndfPqh4+/z+Sr+t7Y3VidWyaHB3NmbwbHXofE
EjVJsjrUsDDom4f6AV0j71FmfcBw46/XrF8HDvN+1ZHhPrY47YXi8a58BnlM
bAUVutaPtt0O0vMZSRiP6IHzGZRA5oWSz+qnIArWheGWuvN51KdBEURWU2kG
mRdKo3j73M15hZfVON8+H391YmJWMSsvC5mXS1ar1dSG66enCzTfDXQTMqzw
g8zLJeqM3c9gccRC4u52dBMcs8jRyupuIPNycRFIVqvlQ9rxZpXxi8yLJrds
q4Vz/81eaaPugSWf4fw1+qZjZ4LMi0bPlb1EPsHZ8e7GzvIdI4TRG/724xde
hhwzGpcv3/zqp98v/F3IvGicXEoRyByIKU65WIO/+c+//rK6eTXVtXqSpw9v
+dP/8PH37S9H5kUjn80ftL5mFQwukEgNuj/0tjg24q8+5TtfSu9xXuKV9uVC
SPs63/IAIPPSyWGLLli/+SAGz3GVfq3xrVpWD+BPv92gI/PS8d5qsiODGxHo
TrhVCpwHdKvCV1fvIV99MycBmS8Eh4Re7Dl3W/5GT+M33353985tPfO2QTF8
5NBy7gYOz0iDJD989vHfSwPufLm19wiZ64KWxCRkXgHpWokcsjL07L3/wSd6
RCVzHdK1VO+EPWmhy8hwcdx/s+/VgFKyu+77tuum6SY751kyb3krZF4B95Ni
MnO35f9RnxODw3pc5VXqTPtIUbl4lf2ACQwS5tOHtyxhe0RbL9Md9vwaTnv1
ZJX1mmKf89Vz+MbWZNW8oRhpE3PfPUt4a98Yo3M294y0181Ij1lPHI/HQzh3
c0ZkjG42fKEWCcftZUJtIeSZ9arnUMbI4fncbRmRMXJcpdlU5pu9R9oPkB6z
EDLMeo0H9cLIsXRcF2vYIdBQ8a5OMkz5+x98sityD5B5HeRW/3/9OrS0Kdfh
6NLH3O0aGLlP7mCvnZwM+84xsrFpzSMq7+gpIfM6kHxipfO8UvLsrd11PYGe
VlPwaPO0azSpXJye5MB82HdOU19SmUfOTPdoCJlXQ2S9DlUY+QAiGLcF9xn/
qPMtE0PlMmod10iPiainsYal4/sg82pwFTI9cjNWIbPM02yNdPa8voG4xuLT
wd9cno/doUtJrXv9qJ58r1+HzKshk1qvevwaI1EVZ8VMcM+95tR1JKRu3cnu
1STSN0HmdZBJrdetT3uVWTHrCeu49ryByLwmMtzvo25KWQWMzGtitVqNNOoL
m8Ti09zquG6CzGti1DpF0KCgCl3IvDJyW5RaMXluY7cVZF4ZeS5KrRJvsKK7
ndU6gq0g88pQeO5p3NwWpVZG7AuZf2C+RubVwVYs0yBnycFR/oH5GpnXyLWT
Ez2BEnv+zmS5ODjSTR51g5WhQOb1kYbn+fuTheIF/kUE5mtkXiNl+ZMlkme5
nhaQeX34IZQ/WcpDWBzZFt/bBTKvkrJcyuKYZufTAUHmVVLcc1gW105OyupF
kXmVEJ6Ph6TtBeAFxUTIvEoIz8fDgXlZCUjIvFaciplbSecKiICooHRiZF4r
Y+zqBeukXHNB/Scyr5UMSzpXQATmg5drHhVkXisKz72GpYi1FaWQzpjP3ZY9
QOYV4xJGhOcDUug6X2ReMRGe51/3oBRKDMzXyLxqCqpiVASKg5wYU1Zgvkbm
VfPHny/tYc5bub0yXDV97lbsDQ9AxeiBpCgcAAAAAAAAAAAAAAAAAAAAAEA+
/B99RxTu
    "], {{0, 327}, {333, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 180., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->180.,
  ImageSizeRaw->{333, 327},
  PlotRange->{{0, 333}, {0, 327}}]], "Output",
 CellChangeTimes->{3.500550704737611*^9}],

Cell[TextData[{
 StyleBox["43.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.454959419111725*^9, 3.454959434568553*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
Hfsf84pnJA==
    "], {{0, 325}, {325, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 180., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->180.,
  ImageSizeRaw->{325, 325},
  PlotRange->{{0, 325}, {0, 325}}]], "Output",
 CellChangeTimes->{3.500550704848517*^9}],

Cell[TextData[{
 StyleBox["44.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.454959419111725*^9, 3.454959437343555*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzt3TFvG1e6xnFf3E+xioXgwpFc21UgF+m228JqBKSJtV9gO/lbOE2KGFC6
NKkEuDJc7e0MKin2AkEKlilS2ICawIYtgLjP6oFfnB2RI4oczsx5+f9hLEj0
kBqRfOY958yZ4f/8/R+Hf//vO3fu/PW/7tz5m/79+/sZAAAAAAAAAAAAAAAA
AFTo7Oxs6E0AsFmHjx8PvQkAbvD7xR+vv//m+PjJl59/9cXRD28v3ujG9x/e
nR7t7e3e+/r5zy33nU6nn+3s+C4Axunj5aViroa3Qr3zl7/s3r370/Td7FPM
dUsEfy7dUevQbgdGTkl32FXNy/LtWxRzRX7RfZ+enGjP8O2zZ31tLIDVKctq
upflW19V0Nsb7eqY6y50z4Fa/Pnrj8qsKrjb7fpRxd3fz6U9gzrmqub39/d7
3EwAq4t2u6Lt4q7Krvb8ovXPJxPtFrxMp9M+NxXAatxKV2bVUL+xlIu65Crl
KuiMwgEVUQVXulXE3StvP1LmjrkWJZ3uOVALd8+V9OihL/J///pXtNjdQ9c+
oaWFD2Ak3D13u719zacnJxFzLxxWA8ZPtVjV/MZj5bOrMfb7+/tlxlXQGW8H
qqC+udLa3lyffZr81oi52u0MxAEj5xb7i5ev2kv5rBh80z5B3yvgWpgnA4zT
24s3quCKtpvrN46uz64G33wQTd3zmNPurjoDccAIxdC6h91urOOzq8G3RwcH
//vPf+p7fVW0X//ym+6osOt2BuKAsVFD/fRoz4fPljyfVHGOvYFirv2D6rt/
dNg3ta0AVuU29mot7UbMAeRDzIH0iDmQHjEH0iPmQHrEHEiPmAPpEXMgPWIO
pEfMgfSIOZAeMQfSI+ZAesQcSI+YA+kRcyA9Yg6kR8yB9Ig5kB4xB9Ij5kB6
xBxIj5gD6RFzID1iDqRHzIH0iDmQHjEH0iPmQHrEHEiPmAPpEXMgPWIOpEfM
gfSIOZAeMQfSI+ZAesQcSI+YA+kRcyA9Yg6kR8yB9Ig5kB4xB9Ij5kB6xBxI
j5gD6RFzID1iDqRHzIH0iDmQHjEH0iPmQHrEHEiPmAPpEXMgPWIOpEfMgfSI
OZAeMQfSI+ZAesQcSI+YA+kRcyA9Yg6kR8yB9Ig5kB4xB9Ij5kB6xBxIj5gD
6RFzID1iDqRHzIH0ti3mf/7647fPnp0+/+73iz/ef3jnG/X9i5ev4seW+/40
fXfjasDYbE/MP15evv7+G/2xT09O9HVv954yO7sKr3784uiHG/OrXYHu9fXz
n99evOllk4FubE/MlfHdu3cVUtXuLz//yjF3xpdJrvYS2g8svz4wHlsSc0db
i1vdSqtKs74q7Krjt8ps1PTNbS3QrS2JuUq5E62iPLsqzYr26dFeNN2XpF2E
76gn7VZ3BAa0DTFXqB3MsgS7n67gr/CA0Z2n6Y4qbDTmypeauIrY8fGTsvy5
tawmtNrSc++ooql7aQXd8fDx45ZF67S0n/WLFEaXci16tKcnJ+6eR0UuR94U
W22wVovN05+gB4kGv/+o8u6dPmHARmw05u4Ff/vsmVJTjmbrxt27d91gXjS+
rWw64wpmy1et0xJz5TEy7ka7fnSvXNsTyQ2N3YL+1z1xrVzuE6LdzlgcqrDp
Rrtqn49kKdcRK4XFbeaWauhOdHzT/rV9A8qOuVIZt7heX9/PRIpdxJ3lck33
AlYYvgMG0U/f3APdZUF0S3hRo71Dbv83uuHeyUSz/Pq9vIKDPPu0s7q+AjFH
FXqIeQxrl1nTjy0tXmXTnfrT59+pzd++aM2Wml4eJY9yHPV97ga4Px4N9bkP
G+2THvZUwJp6G2lXLu7v7ztZikb7kaw42qVt+2xnZ9HiJGp30TKBzc2Gxq8r
q/nc+5ajB4v+nHKY7jbPBNC33mIeo14epr7xSNby2Wlfs/y9cWNjrKAh2vme
NTf3YWm0oyK9xTwaz2qH33ZSyspiHntjynqZ/evVvBycd1PBS2MdYo5a9Bbz
6J43pqn080sbv9Ft8kY1d2D9X7q9bJY3RhIWPSwwTn3Ogit7xD38utl/jr+V
t8cRschpdMZ9o0fh/OP1obZFDwuMU/8x7/OU7XK6XaML35iw6piXxwLKo+dl
nBsH4vv5Q4B19NxoX20O+coij3N3LI3djg8BlCv4lkbv2234RcN3wAj1eUCt
n+a6Twz398rj/f39ue2HOJpfDsTdWJ1jEJ6MoyIbjbmniHtieW/lzzU6Lh/R
vm8p11km437wFy9fMcCOimwu5uUUlz6buDHbfJmmdZw/vsyhMXcBuBwcqrPR
aq5cHD5+7AT1NlqlJoQDvvwUNYe9fR33BQg4apTvshJl35xUArOMMc9K7Y3z
yeTs7Myn8/h0+6E3CnUg5qMSWfbJd75Czv39fR/T/2xnR9/EOTv6nuYKlkHM
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
ePfx8nLobQEAAAAAAAAAAACA8fp/yCCYPQ==
    "], {{0, 326}, {333, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 180., Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->180.,
  ImageSizeRaw->{333, 326},
  PlotRange->{{0, 333}, {0, 326}}]], "Output",
 CellChangeTimes->{3.5005507049696083`*^9}],

Cell[TextData[{
 StyleBox["45.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Where is the function continuous? Differentiable?",
  FontWeight->"Bold"],
 " Use the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " in the figure to do the following."
}], "Problem",
 CellChangeTimes->{{3.4549594469887877`*^9, 3.4549594684069967`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"0", ",", "3"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not continuous.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"0", ",", "3"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is not differentiable.\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tSketch a graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 "."
}], "SubProblem",
 CellChangeTimes->{{3.454959472909185*^9, 3.454959519646122*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
/h+VaTB+
    "], {{0, 428}, {455, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 216, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->216,
  ImageSizeRaw->{455, 428},
  PlotRange->{{0, 455}, {0, 428}}]], "Output",
 CellChangeTimes->{3.500550705157803*^9}],

Cell[TextData[{
 StyleBox["46.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Where is the function continuous? Differentiable?",
  FontWeight->"Bold"],
 " Use the graph of ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " in the figure to do the following."
}], "Problem",
 CellChangeTimes->{{3.4549594469887877`*^9, 3.4549594684069967`*^9}, {
  3.454959543110463*^9, 3.45495954824198*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"0", ",", "4"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " is not continuous.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tFind the values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " in ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"0", ",", "4"}], ")"}], TraditionalForm]]],
 " at which ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]]],
 " is not differentiable.\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tSketch a graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"g", "'"}], TraditionalForm]]],
 "."
}], "SubProblem",
 CellChangeTimes->{{3.454959472909185*^9, 3.454959519646122*^9}, {
  3.4549595523568907`*^9, 3.454959560944456*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
/wM+6z42
    "], {{0, 435}, {437, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 216, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->216,
  ImageSizeRaw->{437, 435},
  PlotRange->{{0, 437}, {0, 435}}]], "Output",
 CellChangeTimes->{3.500550705351006*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Further Explorations", "ExerciseGroupFont"]], \
"Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454953556067896*^9, 3.4549535602542057`*^9}}],

Cell[TextData[{
 StyleBox["47.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Explain why or why not",
  FontWeight->"Bold"],
 "  Determine whether the following statements are true and give an \
explanation or counterexample."
}], "Problem",
 CellChangeTimes->{{3.4549595695689287`*^9, 3.4549595955451717`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFor linear functions, the slope of any secant line always equals the \
slope of any tangent line.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tThe slope of the secant line passing through the points ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["Q", TraditionalForm]]],
 " is less than the slope of the tangent line at ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 ".\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tConsider the graph of the parabola ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "2"]}], TraditionalForm]]],
 ". For ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", ">", "0"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"h", ">", "0"}], TraditionalForm]]],
 ", the secant line through ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"x", "+", "h"}], ",", 
     RowBox[{"f", "(", 
      RowBox[{"x", "+", "h"}], ")"}]}], ")"}], TraditionalForm]]],
 " always has a greater slope than the tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", ",", 
     RowBox[{"f", "(", "x", ")"}]}], ")"}], TraditionalForm]]],
 ".\n",
 StyleBox["d.",
  FontWeight->"Bold"],
 "\tIf the function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is differentiable for all values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous for all values of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 "."
}], "SubProblem",
 CellChangeTimes->{{3.454959601631154*^9, 3.454959722650261*^9}}],

Cell[TextData[{
 StyleBox["48.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Slope of a line",
  FontWeight->"Bold"],
 "  Consider the line ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"m", " ", "x"}], "+", "b"}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]]],
 " are constants. Show that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", "m"}], TraditionalForm]]],
 " for all ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 ". Interpret this result."
}], "Problem",
 CellChangeTimes->{{3.45495972995081*^9, 3.454959768645829*^9}}],

Cell[TextData[StyleBox["49-52. Calculating derivatives",
 FontWeight->"Bold",
 FontSlant->"Plain"]], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454959790701254*^9, 3.4549598021589537`*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tFor the following functions, find ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]]],
 " using the definition.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tDetermine an equation of the line tangent to the graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 " for the given value of ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "."
}], "SubExerciseDirectionsCell",
 CellChangeTimes->{{3.454959807644313*^9, 3.454959863935624*^9}, {
  3.487449203865625*^9, 3.487449204859519*^9}}],

Cell[TextData[{
 StyleBox["49.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SqrtBox[
     RowBox[{
      RowBox[{"3", "x"}], "+", "1"}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "8"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959870891941*^9, 3.454959885857456*^9}, {
  3.454959925074889*^9, 3.4549599255481586`*^9}, {3.454959969172752*^9, 
  3.454959970460541*^9}}],

Cell[TextData[{
 StyleBox["50.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SqrtBox[
     RowBox[{"x", "+", "2"}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "7"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959870891941*^9, 3.454959917247857*^9}, {
  3.454959973491413*^9, 3.4549599745969477`*^9}}],

Cell[TextData[{
 StyleBox["51.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["2", 
     RowBox[{
      RowBox[{"3", "x"}], "+", "1"}]]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"-", "1"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959870891941*^9, 3.45495997807215*^9}}],

Cell[TextData[{
 StyleBox["52.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox["1", "x"]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", 
    RowBox[{"-", "5"}]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454959870891941*^9, 3.4549599834971523`*^9}}],

Cell[TextData[{
 StyleBox["53-54. Analyzing slopes",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  Use the points ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox["B", TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox["C", TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox["D", TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox["E", TraditionalForm]]],
 " in the following graphs to answer these questions."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.454960040925744*^9, 3.454960078397764*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tAt which point(s) is the slope of the curve negative?\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tAt which point(s) is the slope of the curve positive?\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tUsing ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 "-",
 Cell[BoxData[
  FormBox["E", TraditionalForm]]],
 ", list the slopes in decreasing order."
}], "SubExerciseDirectionsCell",
 CellChangeTimes->{{3.4549600831129227`*^9, 3.4549601282980337`*^9}}],

Cell[TextData[{
 StyleBox["53.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.4549601348856688`*^9, 3.45496013762323*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
gzQbVeLZ4v74bhw2T05OapeETfGr7VaQ3CXG3LoX3zHJxK79/ur5s6vruzwJ
/WsOXDIEm60Rb+bT09M1qmJW7RJK8+nVOmprYcaeBWvHmLhkaLPn3uWSITJM
PMP935/qES5Oc+CSfyKli6PZqi0w+S6w9u+N43PkmUUju82wx45bL8a0r21b
e+e9/vrh/PHDFGPi9npPwoBqHY5KvilXHPGWtIq0sZFO9niSuZsRh3F9TOys
9WJMy6aYZL3966/zw+8/f+/gzbu3ruVLZAg2pVsSYFLBbZvepXiGDTaYLNok
+xe7ab0Y02biykpcla+6VZFbfvv1fvUMymPKVTvervFmgEEsCTBp+HP1sOUH
wI5qw2IDmsfh2DDNMuya9WLMSuVta1wj/GiK+TvGaI0pVPzjIpE+mjyo/puG
sDFyS5Z6nDtEaMmySqkqrKPalXja09PT2m+Mg7NdjJ2yXoxpn2HWiDHvr57n
Z71wcPZ6pWdgPOJI++bd21rudcHIOEXkWCnA5NL0Wf+4kZYV6Od9PrfVKOJN
D78axmBsnUpxGEmVvc+urtONicFK5Wuugi3JMDaz2WxuO/P4J2mZm77iHodN
dsF6MWalUYcrHQGqQdZxFV91LRmstAVMJsNoLeoVKqvU5OLiohbDTHTALhjV
gOs3796eP374aPIg1fRGjPneu2SwUvnmroItyTCsRWUwZQWYSjOP2cvYemtP
f9eyQWalQ0Fqfjk4e50q4lLLTGKw0naoVSRudiAqrCRfyrYSh8SiS2TjYF4r
ldHyyXa7y2IEt84HFUeD9iep74Oss4aXfNi1wUpbozmZjCRDz+aWxe7t7UWw
2YJ3Y/wJzSTj+Mm2uuPSkIvmwUuzSrbfcVJl76PJg2pQUuyJ1US+E4OVtkvt
GGvaLnqzaCzS9q1PVPsz9S6xre4YY2pFMmmY4UqNMEk1yPq3X+/f//1ppJf0
uXpmg5W2TC3JGB9KD2oj5qqjVollMG00k8wWtDVBzQZbY9a+pv7R6nLvIGJM
9RFfVhPIGKy0ZeItV6tFXCP9QktzG2G2phdpiWYfrutBtswdY0x+TR1XNOsd
EF69fBFxJQWV+Ii9LCWWuGFlpS0W77rapXHRpZWM1qJ5+3ekk8XSZmy3u8SY
+Kl871gvY1R1vHPHIlWDlapR2GyTZiO/JMMGLWqE2am3WbwItT7c2Ww29EbB
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

    "], {{0, 389}, {749, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 288, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->288,
  ImageSizeRaw->{749, 389},
  PlotRange->{{0, 749}, {0, 389}}]], "Output",
 CellChangeTimes->{3.50055070561425*^9}],

Cell[TextData[{
 StyleBox["54.",
  FontWeight->"Bold"],
 "\t"
}], "Problem",
 CellChangeTimes->{{3.4549601348856688`*^9, 3.454960151911693*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
zGpTLwfz1cV1A8K2TafTuF5Y4SojsdABuyS9sDMRP1Zewi5RioGNix0zrg5W
XpIuUXhhx6QXdiku7tqv7OIQGsfSiCgthet04yRtvbCOOOyPx+OWHS121dFo
FDta7I/t0SXttvv+hjgu0gs71tIKOBwOy8fAdEPblrQTr+P+KbCU2WwWaaT2
losLe1Z6cvqqllsdxZNjHzTViB2TXtiLNMIex704JMb/z87Oamsps7nJZNLe
Qxifjef4M4YmRWhpuRyITzXtiekVYi+LV4h9Nk4csdOlysyOvxFIpBdykUbn
2ztn4tAqxkChS2hJ+T+etlT9RLGF/ZJeyEVxtLy17i3GcOQi6qeelltDi7FX
MiW9kKn4o711RCkdn+MwrqWQY5BaxW7dKYolCNRPyJf0Qu7SiFKXGGOmEocn
jt4XFy9Ho9GtU55TaLELcBikFw5GxxhzcnKSxpUUZMjUbDbrWGaR2zlU0guH
p2OMSQf2NMnCLkDPlRNLl+VwizFTw0McJOmFAxaH7jTH89ZDffkS1e5AT8Sf
Yvcay2C+kONoNLq4eOlvmIMnvXAM0rzRs7OzjsuhpyTjLMDupbWm42+1+30S
jQ1xhKQXjk0c5LtMJi1E4IlTSeqTUYRn41JcSQWW7jcbKgY9tW9xnKQXjtZS
rY9JBJ6iLCPMsJrV4kpKLGlgqEgs/gI5WtILx6w4+Kdpp0slmcG8zaAcZvb7
vdBPqXdlPB6nwaBlb7NeHsSUVaAgvUAhnR2WndxRSJWZOEnFqUpJ/zjFL72c
VZYqrSRFJI7XEVegifQC7VKSSTenW+1MFCeydDLSV3lIiqCS/jyWqtrVxhUV
POhOeoHuigGm1cJM8vPc+ZxI03Oz2aycUkaj0WoVFXEFNkt6gZUV7ZfrhJkk
vjzOaPE68Wpp4GlfqSa+qTSZZS/vvntFPolfZTmiLDtu2CSNJ8ZrprAqrsBG
SC+wKWv2Zzad+1KwSae/dMGeToLb223T+n7xppPJJOvWi/QbSckk5cwUTtJA
T/xgN5JPytIvS+8TbJv0AttT5JnUA7xya0STItsU3TUhIkdKOCuvGxzn3HuD
u8Vb9KEUkyokqUhSpJH0gw2xhUUm2VIsqSqCShEp9/sjgqMivcDOpDpGGm9K
JZo05LTtU2055Aznzr9KUadIOykhxHbGpxZeJN03Z8fHitiMHeSQFqlHZSGl
qKjA3kkv0AdF60WqJKQywkbGnlZWGxviwdFotLPJvNUQtXHxQy43HRURJdVS
sh44gwMmvUDPlYNNMTl3Uz2lLW4d50oVia1OnInXX+dbiB9RCidF6alcgIoY
dvat9Ej1caBv0j5ub4XeKu+excflD9K5uDg1n34VJ+51Es5SU4PjvVLtYrM3
6e54f3AAgGS18JMWM9lIeoksNJlMxgDfSkenfW8F0Ecday/FzSt1tAK7oe8F
qHVx8bK9wDIajSaTSXmmsB5XYDekF6Aqjgm1M55SjWU2t+9tBI6X9AJULUxV
LiZK73u7AD6TXoAFkVLKxZbxzhepA2gnvQAL0mIyZz24QQBALekFKLu6vhqP
x9pagD6TXgCAvEgvAEBepBcAYDdmN58ury+nX628vqX0AgBsW4SWZw/u3hvc
XVhF6v5PT+JTkWqWejXpBQDYnqvrqzdPH0fY+Bxd7jx8/epFxJX0YBFm4sGl
6jDSCwCwJRFUHvz4Q4ooj35/O7v5VJRZZrPZx3fP06cixvz9/kP3l5VeAIBt
iHBSji61z0llmfD9L8+7l1+kFwBg4yK6FANDn6sudatIlcsv4e/3HzouNiW9
AACbVR4wGtx5GP9semY5vXTvfpFegI7iqDKdThdmB/z7oOV5ga/K04v+fv+h
JZOU00tTiaZKegHaRTIpTw34Ut2dB5i4UCofoPa9pUAvlMeMbu1mWUgvHd9C
egHaxbHl/k9PptNpXEwVh6Obea/dQqTZ95YC+xeXNsWxoksgKbp2i0lJXd5F
egG6KDfXRXpJ11bxweX15etXL4pqDHDkyoWX1PHSfnBYKuoUpBego6vrq/Jx
pigIz+b2vXVAL5SrsrcOG33T3LtMCVd6AToqF4SXXVoKOAZxIbNULaXc9DK4
8zCijq5dYOOKq6ruUwOA47HUNU6KOreuCVNLegG6K7e+aHQBFnwzvnxb00t1
TZjuRxXpBeju39kBy9R4gSPxzYSjFEgajhLx+GqzjRLpBehoYSqBvhdgQU3t
pSG9lI8n93960rIYby3pBejiy0HpzsPicsksaaCqXKFtGgxaKNGscCkkvQC3
KuYRxEGm3Ppy83Xkuvu91YDD1uWui+WEs1oVV3oBasXF0etXL87Pz4s7BaTJ
j/822s0vrCLVrFD1BQ5YMZOoenC4ur7qUpy5lfQC1FpYRapYt2FhzToNMMCC
dF1TFGnTKHMcOj6+e14cVSLYpAdXewvpBaiazWbl9BLHmfJn49Lp5OREdAFq
xQHkmxrLt1JBZs2uOekFaBLHn+l0WjsqFA/Gp3TtAi1SveWvP/+YzMXFzpfb
i6x96JBegBZN9zDSowt0UQSVzd4QTXoBAPIivQAAeZFeAIC8SC8AQF6kFwAg
L9ILAJAX6QUAyIv0AgDkRXoBAPIivQAAeZFeAIC8SC8AQF6kFwAgL9ILAJAX
6QUAyIv0AgDkRXoBAPIivQAAeZFeAIC8SC8AQF6kFwAgL9ILAJAX6QUAyIv0
AgDkRXoBAPIivQAAeZFeAIC8nM9JLwAAAAAAAAAAAAAAcEj+P3tfiwI=
    "], {{0, 383}, {
    746, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 288, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->288,
  ImageSizeRaw->{746, 383},
  PlotRange->{{0, 746}, {0, 383}}]], "Output",
 CellChangeTimes->{3.500550705876255*^9}],

Cell[TextData[{
 StyleBox["55.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Finding ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox["f", TraditionalForm]],
  FontWeight->"Bold"],
 StyleBox[" from ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]],
  FontWeight->"Bold"],
 "  Sketch the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", "x"}], TraditionalForm]]],
 ". Then, sketch a possible graph of ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 ". Is there more than one possible graph?"
}], "Problem",
 CellChangeTimes->{{3.454960163572466*^9, 3.454960207450597*^9}, {
  3.487449173311323*^9, 3.487449174284121*^9}}],

Cell[TextData[{
 StyleBox["56.\tFinding ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox["f", TraditionalForm]],
  FontWeight->"Bold"],
 StyleBox[" from ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "'"}], TraditionalForm]],
  FontWeight->"Bold"],
 "  Create the graph of a continuous function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " such that "
}], "Problem",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454960212637473*^9, 3.454960235536233*^9}, {
  3.4549602863456373`*^9, 3.4549603162740583`*^9}, {3.487449227904847*^9, 
  3.48744923923623*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        RowBox[{
         RowBox[{
          RowBox[{"f", "'"}], 
          RowBox[{"(", "x", ")"}]}], "=", 
         RowBox[{"\[Piecewise]", GridBox[{
            {"1", "if", 
             RowBox[{"x", "<", "0"}]},
            {"0", "if", 
             RowBox[{"0", "<", "x", "<", "1"}]},
            {
             RowBox[{"-", "1"}], "if", 
             RowBox[{"x", ">", "1"}]}
           }]}]}]}
      },
      GridBoxAlignment->{"Columns" -> {{"="}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Problem",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454960212637473*^9, 3.454960235536233*^9}, {
  3.4549602863456373`*^9, 3.4549603162740583`*^9}, {3.487449227904847*^9, 
  3.487449240459242*^9}}],

Cell["\tIs there more than one possible graph?", "Problem",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.454960212637473*^9, 3.454960235536233*^9}, {
  3.4549602863456373`*^9, 3.4549603162740583`*^9}, {3.487449227904847*^9, 
  3.487449240459242*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Applications", "ExerciseGroupFont"]], \
"Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454953569393004*^9, 3.4549535709912777`*^9}}],

Cell[TextData[{
 Cell[BoxData[
  PaneBox[
   StyleBox["\<\"T\"\>", "SR",
    FontSize->9,
    FontColor->GrayLevel[1]],
   Alignment->{Center, Center},
   BaseStyle->{Background -> RGBColor[0, 0.6, 0.8]},
   ImageSize->{12, 12}]]],
 Cell[BoxData[
  StyleBox[
   GraphicsBox[{},
    BaselinePosition->Baseline,
    ImageSize->{6, 0}],
   CacheGraphics->False]],
  CellChangeTimes->{3.449270400725144*^9}],
 StyleBox["57.\tPower and energy",
  FontWeight->"Bold"],
 "  Energy is the capacity to do work, and power is the rate at which energy \
is used or consumed. Therefore, if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"E", "(", "t", ")"}], TraditionalForm]]],
 " is the energy function for a system, then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", "t", ")"}], "=", 
    RowBox[{
     RowBox[{"E", "'"}], 
     RowBox[{"(", "t", ")"}]}]}], TraditionalForm]]],
 " is the power function. A unit of energy is the kilowatt-hour (1 kWh is the \
amount of energy needed to light ten 100-W light bulbs for an hour); the \
corresponding units for power are kW. The following figure shows the energy \
consumed by a small community over a 25-hr period."
}], "TProblem",
 CellChangeTimes->{{3.4549603581102467`*^9, 3.454960452475361*^9}, 
   3.45610194228796*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tEstimate the power at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "=", "10"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "=", "20"}], TraditionalForm]]],
 " hr. Be sure to include units in your calculation.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tAt what times on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"0", ",", "25"}], "]"}], TraditionalForm]]],
 " is the power zero?\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tAt what times on the interval ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", 
    RowBox[{"0", ",", "25"}], "]"}], TraditionalForm]]],
 " is the power a maximum?"
}], "SubProblem",
 CellChangeTimes->{{3.454960460170762*^9, 3.45496051737604*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJztnb2OHMeyoM/uvsIAHJkrSwAdvgKNAS06SzkDAWNcm8LiPsN9Ac21RgYN
Hug4olyJBgECpMcDEQQl7LzCyCII/YAABRQ22DETk5NZVZ1dXX8Z+X1oNMie
6u6qrqr8MjIzMv/3f/zf//Mf/+sf//jH//sf//jHo//5j398+ncDAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAlfHx48eldwEAAKAuPrx7+9VnBztweHz+27ucT/7+
hx+m3nkAAACI+OPv31Xut7+4be4+DXj48Gv7052jbzK1Lu86Pz+feucBAAAg
RFvLfz47sYj80S/vw78qz54+kT/devAo82OlJkDADgAAMD8SsH/75ec98bho
XSP6k7NXOR94cXEhHyUB+wQ7CwAAAH2EPewi7j8//NW6jQbyOWPhfvzpJ9lY
AvYJdhYAAAD6eP/r47AFvlXc4vrz83OJ63M+8PT0VD+ttYYAAAAAEyESv+5Y
vznQXf707ZefZza8h9y/f18/79W//z3qzgIAAEAfYcf6rQePwnhcovjbX9wO
R9BlYrG/hO2j7iwAAAD0EbbAW2D+54e/LjvcsxPVjfPzc/tACdsn2GUAAABo
J0xtUxFfJ7Bv4vdd54uzjnVGzQEAAMyJ9p5bx/rDh1/LI5yaZkDHunxCWE9g
UhoAAIB5CFPbbKoZcf2fH/76pPtNC/yuo9nDYF9gUhoAAIB56Elt+/nsJH+q
WOPVv/99cBO61wEAAOYhSm0zrWu0fnL2ateO9agFXrm4uJhg3wEAAOCantS2
5mo2+J0+UCoDqdMPNmlurNMKAAAwKZqWbkPjesz7qa3+8Fi839/P/vif/2zV
OuPhAQAApubnsxPTes+cMzqsLg3nU2xyuZQff/pp7N0HAACAa8LUtrBjPcSG
yj97+qRf6+lgOQbOAQAAzEOU2pYqWzY4PT293CZjrrnWwXIhDJwDAAAYHV08
XUL1MMFcpHx6hc5IE3Jy9qo/VP/zw1/hp8m/9RF+CAPnAAAARifMVc8hZ7WX
cLCc6Fsb5O/fv39+fm4d7gycAwAAWJbMNDd1tzxrS7tpXf/6/Q8/aOTOwDkA
AICVIyG5WDtcWj3SerNppdcJ52mHBwAAWDMSoYu1Q1+nWldY9gUAAKA4urQO
AAAAxYHWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA
3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDW
AQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA
3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDW
AQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA
3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA3IDWAQAA8vnzw1/y+Pjx465v/PDu
7flv76bYpRC0DgAAsJU//v792dMnX312YJycvZIXWzeWLb/98nPZIHy+/cXt
R7+8Dzd7/+vjo3t35XX9wDtH38gHSp1hn/1E6wAAAP1IoC1qPkgQEacBuGws
9ldZm7KFWw8ehTH+z2cnVj3Qz9eNI/XvCloHAADoR50u/hWJS0AtRjZfi4Wj
+Np8HRH6WuJ0fVHiegv5L2sOh8f7tNWjdQAAgB40+hanm74l6Dazh683m7b6
T3a+UvPHgHibJNg310efuRNoHQAAoAcx+K0HjyLPqutVwdHGont5sWdMXajv
8HXT/T4BO1oHAADooVXQombVetgIL/+47oI/PBZrP3/xMo27rZVe3ht+uDYC
pC32O4HWAQAAdkX9K1F8OBjewvAbHB6Hjg7Vn7o7HEc3bMfQOgAAQD7XMfXh
cZSP9uzpk4cPvw6T4NLxctZ639rSHmp9QGp8g9YB9ubi4kLuox9/+kke3//w
g/7j/Px8z+RTAFgbclNHmeYarat/5dnu+jTJXSUu2/Rr3eL9tDffkAKn53F6
enqwSazTsqjrIVteAMAGUbbcOFInlxsnTEpNkb9KnVk2lpto6b0uDCpFsEJa
M9da/auil9fDt+j49v213lPm5CMlmBRNEok8/uc/v/vXv3jwqPBhKh98H6ni
uZVyHlJ3mqJYBtifNGbvH95mZtdJ5DK1rhu3fqAURFKYdD0LB1cxRQ9SED1/
8bLohzaQSnGh7aW+n9Uai//mMzz0nE79k8r1v4/NI+Sj5O6TT971ApZzuuu7
SnzIMaJ1WD/hvHP9w9ssbU0D8K19663p8PnU07f+8eNHLRWHDUIoC5VdDUeq
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
5m0UpY6ip7K0vmdqAFr3Bwlu4BvR+uD+8Z/PTuhbN1ao9SbpZB9luviCtL7/
GAO07g8S3MAxclWL1p89fTIs4tb3onVlnVpvknBVbvM9P7AUrUdZ6sNODVr3
Bwlu4J59iiz390U+q9W6nN9xh88VofVoKl3N3x9wqaN1f5DgBgA5rFbrTZvj
9inT1q/1aJjcwSZLfZia0bo/SHADgBzWrPUmaZE+ODz+4+/fh9lq/VqPWifE
VoM/Cq37gwQ3AMhh5VpvNoYKA/bBA+NXrvVoLMGeowTRuj9IcAOAHNav9aZt
YPwAYa1Z69EB7n860Lo/SHADgByK0Lroaf9gdrVaj9allXOx/5gotO4PEtwA
IIcitN5shpNFXc+7ZnOvU+vR4IGxZtVD6/4gwQ0AcihF603bQPGdzL5CrUvB
lQ59H+WT0bo/SHADgBwK0nqTpLztZPa1aT11upyLsUSM1v1BghsA5FCW1ps2
G2aafVVaT49in3S2FLTuDxLcACCH4rTeDDX7erQ+uGaSD1r3BwluAJBDiVpv
BplxJVqfwekNWvcICW4AkEOhWm8267dGfuzPeluD1uXXnsHpDVr3CAluAJBD
uVpv2iJfMXvXOOHFtR7lp0/n9Aate4QENwDIoWitN21ml2NpLeSX1Xo0j9yk
Tm/QukdIcAOAHErXetOW9Sb/TVdxXUrr6RR5B2MsH98PWvcHCW4AkIMDrTdt
c9AJIvFwm0W0LoVwumMz7ANa9wcJbgArQYwzrNHsw7u357+9G31/InxovekI
iuUVK/Dn17p8V9qMME9hhdb9QYIbwLL88ffvz54++eqz6/L85OxV11rhsuW3
X34uG4TP8pZHv7wPN3v/6+Oje3fNFHeOvpEP3LOjzY3WlbQLWxvkP26YTeut
dQz5kWcrqdC6P0hwA1gQCbRN6Dc4PE7zU3RjlXUY3N168Cjc8uezE31djC9v
EfXrxpH6d8WZ1pu2JDIL2+fRuu5A/hD9KUDr/iDBDWAppPQW56rEJXiUYidU
vMg6Kt7N1xGhryVO1xclrpcIXV+0b9mnrd6f1puOHm3xrLh13Dla0+9Ng/SD
6QfIpaB1f5DgBrAUquA7R99ooap96xZcR03r4uhPdr5S88eAeJvNZ4YGN9dL
/D74TnepdUXqVGnYLq9MYXb5/dP2/4N5G95D0Lo/SHADWAQpSEXBkX+bMIS/
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
ju/+9a+cHxwAAGAYUQ97DlLBE8tL7a6GRR/GRepR9ytALyp5XnpH5sBuCvfU
c6T1XMAcqUt20vr9jdC//+GHc9bBgW7ONw229+lb90U9fev3N3WYGkq5h5um
aQk33Mdo2rcuz+6PVPtAe9C6jfa8/PH37+5/EBiFeobMiePQuj9q07qIYOkd
mRzT+tI7Mi1pjlsYlUv9rYarGqYArbsErfsDrTtDT2gUm5PdBvuD1l2C1v2B
1j1xfpWuojxkLhoYD7TuErTuD7TuCb1uCc9hCtC6S9C6P9C6GyQwf7jJUFt6
R8AnaN0laN0faB0AckDrLkHr/kDrAJADWncJWvcHWgeAHNC6S9C6P9A6AORQ
j9Y/fvx4umHpHZkDPdIatP74n/+sZCzxjz/9pIt9LL0jkyOFkhwpCV8Aw6hH
683G7EvvwnzUc7AcKQCAUZXWAQAAVssff//+89nJ9azCh8fPnj6RF3f6ELQO
ALBC3v/6eECRDuXy4d3brz77JPOje3cf/fJeLgD1+60Hj3a6DNA6AMDa0BL+
ztE3aL0S5ER/++XnomM56ee/vWs2nW5ido3aT85e5X8UWgcAWBUWtUlhzoCK
Snj29InG5pHB1fUHh8fi+sxR0GgdAGAlSLltTa/Co1/eL71HMAcWqqu+wz9Z
V3t+wI7WAQDWgAhdg/SInRpgoUSsfSbtRg//RLS+Ffm5onoRuKS4Ey03bw1z
DjR7HKkUfa/fvB19f5ZFtC4Gv4zaNuOmdAKK/NZXKBTrQ0/dbVpPA/kuKtH6
s6dP5GbRW8aeb39xu/Q2LrkA5NDkpMuBdN34o2RMrAG5vOXE9Q8iKvpEy3Hp
2VRkt2Xn5cW0d7X0c5p/pM3VeRe7PXz4tT3Le6UAnH/PJ0UrOVGjK33rNSAn
3VpmojMeaT3neqhB6/qz6J1yXRJu6kXl3jIm9P4+uLEyJpZFC/ate170ib6+
eSOSe7n0c5p/pMqNCkxAEVW1AVi07vUAIaVH61LU73pJ1KB1+8XcFAtpH5wc
S2tMN1bGxILo6bOCvaeDqdwTfX3nHh7rvKnh+Q0PufRzmn+kSlcdIL+fsSzC
0EzOtctjhJR8rROtN1YMXvVKfAxYeteGIydabn9tr+sx14gZE0shp0l7xq24
62qEL/pEq5fl0HRvtTHWGijCToTSz2n+kSoaqltzdFmndQBWQ5OfaM3nEcaF
aH0nrFhwVg7o4VghkNbixs2YWBy7trvCtHJPtOywjhmITlN6O5d+TvOPVImq
ajUQFu9L7wvMx9a+dbm788cI+dZ6WFxI4SC/2PMXLz3VgUOtR38aN2NicexU
tkbrRZ9o3fm0GJe7O2qNKf2cZh6pFWt2eQs6Us633+0yLmWQJ4xF2I/WPxKe
RviwWLjm8NjNLdMTrY+bMbE4/dF60Se6J8kr0nrp5zT/SJuwaeIKa45Ybb1l
T6KepuLanWAYOjzGBr523dr5Y2J9a/3Z0ydSyW8dclNEgb+Vnmh93IyJxemP
1l2e6HB0mZra2Tk10iNtrtIf5LSm57SUMf+7EnasN5uKjdcKDESkQ2ENM35+
hdax1qVkC8cPh+lghZZ+KT3R+rhjMBanJ1r3eqLTicGdnVOjawp0G1YXZjja
L+BPeWGThf4mPfNRgCfSHjejf1x0K461HmLlQ5gD5aBkGBatD8iYWJz+aN3w
dKIvDyEIYJ2dUyM90gg9nBvJboX0sORj8ZrUXp6/eKnz7ZR43cIwwsb21hfz
b+pKtB5iZaODRQ+J1nso+kTb1AThCXJ2TpXWI+0iNHtZh7mVOEN/xWMkYCLC
gXNyg0eZL2i9B/utHPTQ7dO3vlPGxOJkRush5Z5oO9hoSlhn57TpPtIeLHO/
uEaJfkKtyxWL02tDZ2NIpxrTi2GnS71CrVsvRolBXETOSPhRMiYWZ0C0XuiJ
tt1OE8GcndOeI+15y07RfVno+jUIvWZU7nI7i5oHXwwVar25inqKC+JSuqL1
0TMmFmdAtN6UeaK7TOfvnO7qdMWO1Fm03rCqC1yx55VQudZLv49yZpkbJWNi
cQZE602BJ7rLdOIyeVxcXLg5pz1HKkFKz/my7gZ/0TrAKFSodU+1/Z6+9XEz
JhZngNaLO9Hh/OchWkPT8bE+zmnOkfa8t7iOFYA5cax17YM7undXxxdpwW6y
85E8Ehbm6eGMmDGxOOEEXGmg6uBEh2u4yJ6Hz3JoFpw6OKeZR6rqf/jw67Ci
4rhjHWAsfGv9ejThJstVJ7Wwon79BWA/djjWo5oe0VgZE8si+2kuSKNvBye6
ffLbgDA4LfqcZh7pjUn+N0cq5/T09LS4of4A8+NY6+0rNR8eP3/xcuVF31a6
FqGOcl1HzJhYkK5V1K0Jt/QTHSms/2CLPqf5Rxp2IRkidJP+0ocCsF4ca725
Wq379ZsbyQIrL/pGZ5SMiZVT+onedVfLPac7HakY/Pz8XI5RDxObA+TgW+tg
FOQ4yIRzCgApaB0AAMANaB0AAMANaB0AAMANaB0AAMANaB0AAMANaB0AAMAN
aB0AAMANaB0AAMANaB0AAMANaB0AAMANaB0AAMANaB0AAMANaH1B/vzw14d3
bwc8bEHq21/cvvXg0cePH0tZ3Ep2/r//87/Of3unOyz//bT+5s31ZKf76jtH
38j3lvJbAQAMAK0viIhGvNy//HSKvOXRL+/f//rY3iv/LWIxr2dPn3za543E
b6ymPZfWv/rs8teb+rsAAJYCrS+IikY5unf35OzV6YZr1x8en14hG1y+vpGg
aN2sWITW1eO3HjzSpgbZf21tmE3rzWb9bvnSUn4xAIABoPUFCeNHaxzW1nX1
tUhQX/y4QVQYxpsiSq0MiK0WPpJthHG6viKHI7t9WauZS+vypVaVImYHAJeg
9QVRxYi7wxcjrUfK1pg3DDbXH3Vqw0LU+h0adjath/ujX7r+Xw8AYCcuLi5O
T09//OmnpXekRrR/PAobQ63fOfom0roqqaA2ZHP3ydmrrj/NrPXmZo/AnN8L
AACOEa9JnSoyWmsjvCEaSt+yZi6HxrWFxktpXbsz9BdOKxsAAAAj0h+th2ZU
xYsZo3hfXhdtPXz4tdYK5L/Pnj45unf3k0MPj+Xf+pk3Xr/6rjT5S3PQdGyb
PMv2OhIg51hM3Gn9pEm0Lv8NB9HJoUXHbgPt9NNk53Wkgey5/TJ6RPrryS+g
ow3TOoONnZP3FlRHAgCA4uiP1nUDlVea4KZmtBHy8nZt54/S6CREtdF64eva
KB3WHOSLTJHyULPrlk1Gt77VB1qD4lDr5mjbGU3Jt/T2a+Nvvj3Mj7Mxh5fb
HB4/f/FShxd2NRTIf+0TCurRAACA4uiP1psrx6lkTUz6Jw3Ab6SEb1LnZIPI
jCZTUZ65O/LvpZQPj/XzNVhu3bILPZCuVPEwv88idNmfsGaizpU9lOPVje0Q
7t+/H24WDoSTXdWR9p8+qqOF344lGrIIAAAwIluj9eYqO8w2iwbGh7oM09/C
Tzb96etWE5DtLUBOE8HCIHdrh/jWrvNwP+VIdZvo0LTyoEcXVlf0dVHzf//n
f0llwA4h/MUu9zZD6wycAwCAidgaraebRbFwl0+7agJN4Dj7RrWkBtryinym
fNTFxUXo1v7U7x20HtQxmpuVB9G37We4k+kHhm8Jv0IOIefbew4EAABgMDnR
epNoPXR0j7DCDuXw9TR0DVvCu+gfO3c9vW1HhnjOfrZqvfVnCesbFvs3m8pM
6+6hdQAAmIHpovWecWKRMa8/fDP87LyN12/e9rdd9wfXPfvZDNJ63FN/1aHQ
NRwOrQMAwAwsG61rRcKa6/fpd74eXzd2tN5V27ke/W5cjfdLQesAADAD00Xr
zU2t90Tr0ScMy//atW+9dT/zo3X7zHjAf0dnAVoHAIAZWEO0Lp8WjUVP0eXL
dU+6NphI6115f5Z0L1uGef2tOzBK1QUAAKCf2aL18PXOvvUOJ2orff8UbdaS
vz1vfaQhc2EGunx7lIsXiZsENwAAmIF5ovUoBu9KcAvFZ19hc9n1J7j1VDx2
2s8crWveelrNsHnn+rXecxQAAAD7EGaX93T7DtB6+BabdkZJjdk6BdzrN291
Fvr+Kkf6saGdW/Yz8X46PU7rTqZviaor4UIzrdtvrZwAAAAMQ2d9iRLGRWFp
KplOCx/1HavpbjQ+B7O06bJl16YO3nLjSzdDx/X1cKrYCBXr1v7onhVVov3U
BgH73nA/dX+iSex12tvwA+3T7E/2E6VD5ljqBQAAJuVGd3aHRnXL1La2nEq7
iDcGb/3w/rc0G+PfGHt2cGMNuK3odO7mVns9zTFXZJtoQnslnAA/2t4+U2ew
j9e1CWopISzMCgAAU9MT/Pb/KWcU97CR3vrhn2aOVTYBfuaqrM3NCd4Hd2Fn
HqC2HuhCtJc7vK3/QnaJAfAAAAA7Ye3ns/Vi98s6XOttnv0BAADwxOX88Csw
qS1Az0g5AACAwazB7PO3GwAAAHhFh7gvZVXa3gGG8f8By27rCQ==
    "], {{0, 469}, {669, 
    0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 288, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->288,
  ImageSizeRaw->{669, 469},
  PlotRange->{{0, 669}, {0, 469}}]], "Output",
 CellChangeTimes->{3.500550706172024*^9}],

Cell[TextData[{
 Cell[BoxData[
  PaneBox[
   StyleBox["\<\"T\"\>", "SR",
    FontSize->9,
    FontColor->GrayLevel[1]],
   Alignment->{Center, Center},
   BaseStyle->{Background -> RGBColor[0, 0.6, 0.8]},
   ImageSize->{12, 12}]]],
 Cell[BoxData[
  StyleBox[
   GraphicsBox[{},
    BaselinePosition->Baseline,
    ImageSize->{6, 0}],
   CacheGraphics->False]],
  CellChangeTimes->{3.449270400725144*^9}],
 StyleBox["58.\tPopulation of Las Vegas",
  FontWeight->"Bold"],
 "  Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"p", "(", "t", ")"}], TraditionalForm]]],
 " represent the population of the Las Vegas metropolitan area ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]]],
 " years after 1950, as shown in the table and figure."
}], "TProblem",
 CellChangeTimes->{{3.454960528212151*^9, 3.454960562177464*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tCompute the average rate of growth of Las Vegas from 1970 to 1980.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tExplain why the average rate of growth calculated in part (a) is a good \
estimate of the instantaneous rate of growth of Las Vegas in 1975.\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tCompute the average rate of growth of Las Vegas from 1990 to 2000. Is the \
average rate of growth an overestimate or underestimate of the instantaneous \
rate of growth of Las Vegas in 2000? Approximate the growth rate in 2000."
}], "SubProblem",
 CellChangeTimes->{{3.454960567562858*^9, 3.454960669501614*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzs3bGK3Ej79/0/vKfQyzh9zZyAM4eODMb4Dl4Y3Gyw4Cft4DkMYzBvYBb3
wjJsYG42swO3I+fe4IE1GAcOjA/AwS7jaMDj5rmmr5ma6iqpVFJL6tI13w+9
xttWq9WqUumnklT6f//X//7//tf/8z//8z//W/74/+W/87+vAQAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAgNF9+fT53V/v3Ev+9/TstG7iH9/eBxN/P/s+
5tKWIFhjidX19Z+vb9+sFpdu3X/6erX6++QsZ7Z1L/l4vM5lGU4+vvjwn19z
vmgqZO0FP7xuSlkh8vNfPnnkVvXDx6/SReNIlV4+Xz57cNtfdX98+Fc+W1m3
g+n1i2xvBUNUeFmNMmVOha9ska5bKQy6LWipBR+RgpP3E4tkss1JG6jlV90a
sWtYCpV0hUub4K9zacbTdXjdqSXpsM4ppt0dHx3Mtkn5Vk4phS4F6k8pxdpY
E4z58PsvWyvrYF5Z36Sqy4Zz86ebbkL/75XrLZxzDfls0HbJJvDzwfn89Sv8
L5r/9n6iu29pQDIrm0wZ12FXOnWVWT947+4df6UFZRSsZ/lf2Y/Epdn4RZM2
UIXPrO1CWnX/s9ewFIbbFmRlpgui7otMtjlpw7X8666N2DUshYAmQF0JwWpz
78iqqPtsh5akwzqnmHoh28jP25vIjaPjyuO4zE3VKmlhXMVOrwR/E6gTrGSp
rpn77mC7060gPX1O12JR5EfFLU9lg9P482c1R176FfG31H1dcwGZi0nDVfj8
2t76g+ZKYdBtobHUZpsjhaDETbY5CYO2/Ouujdh1K4VKcXrJXBXdWpIO65xi
6lFcZHr2058mrhLxNIbVHvNWtVdSOVNV06ui/qfy+1TdUbn8pfZIfLukJnTg
Vrce4r1z5s+XMgr6MXLat6B655Sp7IPMnGIYusJ3S6rXrRQG3RYyS2223fNj
ss1JGHpD6NaIXbdSqCMtQ9bai6J+h5akwzqnmPoVn9aPj6ODNtPS7qBRZbfG
hai9iiunrCuZRt4P1mGwkrf+9WC+fL6Mr9l7+2br4pZwc9ssTNwDEJdmmar7
Li7Fe+e4tdFpgiAqZSfx3n1K2gQpoKBAZW3LKvry6bPMU7YF+Ve/ZYs3ED0Q
jo+XbRy+jVDh5StknVe+4rlpU3OtSmGEbSE+R6brLc5m/gUYxtqctHE2hLYF
V/Ep06WQ4CdVWT9SgfVa4qChmG13XXZrSTqsc4qpX3otd+X2ooINNtiPO1Km
dfehJL5aXvrBDoutr7YfbEUamcQ54ri9Cvvrtifwm6xgNQZJta7q1h2v+XOL
28zyT4nGF+MlKqQK2v+gxvql4HdEyz8dHh76q9pfOVoP4zM4/hfJDijxT1M/
Oh6nwtetpfisnCvW61MKI2wLerxWWTTrTQNSWabG2py0cTaEDo3YtSqFRrIC
3Zrx2+24b60uc+a0JB3WOcU0hIqOpssNLWjTZlE7qbfdBRupHCbI0U1lv6se
vCyfL8MLoQ/mrhUN5i/HIHpbn/Z9bR2VDHy5bOPVLPFFXP6/y3pw/6RHBMEF
1dVflPGjgoYx2DsHi1F3VXk5cq7n8acPzvvER09b9dlbn0GB5jQRiY+Ebc70
L94ercJXiruS6vbphkthhG0hvcaCGbo+H2NtTtoIG0K3RuxalUKjumPSeC25
pNqhJemwzimmgcQX77ku8a13t7fQykbVbVzxRQL+tll3xCq51/9UsGDh+cEh
90pStfyqqz8n/e3pGhj8ll2SavBF/kqTxU5sp8Xyf5H8nPSaDK9QitZY5foM
PpWzWur22pVfVHe6YSrGrPCV4p4Qff9alcJ6lG0h6JrwL5aLW494qWYm2pw6
42wI3Qru+pTCLoL14K5g6daSdFjnFNNwKq9cSnSoZl6W7BdBziXQwY6m4f6X
4ftPdAHcKYYe2yv/vEO8j3755JFsR5LMK6+7S/cNTnFD0DO/WvrxFSm77J1d
jYr3F9o/L+tZ/4yH4Gtck3FBTPrU83qsCl/3vZW1+rqVwgjbQtx662Xwlacm
dW3ba3PSht4QuhXcdSuFboK15AqxW0vSYZ1TTMNpjJH++gyvZZpd3AcU3wjg
B62tr9ic7tePBP2rfle5K1M3zdb4QqOc6ate/qpvjy908ZNPMNSe/6+VJ5v8
nymfTVyHE+ya4x6AqdwBV3c1UcPeebuaxdfMuz2+v/4//OdXvy658e78Vd3Y
pJg8jzNChY9JlfYvIfa7O655KQyxLVTemByf50ocTZtpcxIG3RDiK+tyCu4a
lkJblSeIK/8psyXpsM4ppuFU3loVrG03cTCljpSuhZ6oDPKX863v8j5TLTvt
DK9rB6r7VDepWF6yO9N7ssZZRW3bq1n9NhKsmZxxexLj/AQbQuNyli+9d05c
Wb2uGXgtnmfl9Sf6Zl2pBQPRV/Z3Tbo3LzBchQ/Ewckv8WteCkNsC+uMUXTS
I+nZa3MSBtoQ2hZcY1K1XQqZKs8O6z91a0k6rHOKaWh1o6P4T+1pvN5vq7g3
paDFJJN9+fS58nvjj+j7lZt5ULsGWRFVGitYfCCsm4PeQRa/n+5TjSVuMDG2
ITT2klUcVW2OX3SYqXi9NR6IBbOqu5b+OvTmOcNV+ED6evhrXgpDbAv6QVmx
4Qc9wTOVzLc5CQNtCB0K7jqXQo70QEZD9KmSVMcXX+tbuSbj4pbtzn8FxR1f
NqaR9e2b1X///FNer1errYScTKp7vF2isYK5C8z8Ba67d8zfTPQ50fowdJmn
Do+QOBlnfkNo7EfSipF4jl5cZyr3C7JmZFbxAVrlLZxx1rKdkYar8KlviTpF
r3kpDLEtrNPjhXpFVnc0ba/NSRhoQ+hQcNe5FBpV3OKdjC6ZLQlJtUzxFpe+
PrxRcIdU5QHjlvqkut+HDmRWsJzHFPpr1V3A4C6H0HcqnpBy+Y3mN4Sc7JHz
IEL/51d23Lk1H5yJ07Evrnlv3kAVPtA4YvM1L4UxtoXNP8nBcjwTt7bNtzkJ
w20IbQvuOpdCWmUs6aUlIamWKR7JocPzKOPiXuc/wi+ZVPd4l1xOBdMKWXlw
F4ylkPPM37oBpdMbQnCoPsVnimVmj8oDn4ePX719s4pXWmLM5/hftdo3HoMH
h3UGHpDkG6fC1w1O5VzzUuh9W4g7sd09PnoWO5hJTm+egTYnYdANoVUjdp1L
IaGydzreUrq1JB3WOcU0guBK+3g1dkuq8aekpPRKnv/++Wfm2f9J9KmuL1st
WXh9EKo+B6HtQOjr+rGI2w6CMbkNoVUvmfw6fY6evPSX+i2/u4u87UgycVI1
Pz5SYIQKX3l5T7AOr3kp9L4tVB7/Jp5XXtez5H+vgTYnYYQNIbMRu86lUCcz
pq67tiQd1jnFNILGG6Yar1N1L93otBTixx/788y8o6r8PtWEtsP7J76x7UDT
k9txdz6fG19r7R6Znd5fBP+qNa3t6NxTH3M+MEKFTzwVPX8xbJdC79tCt3Og
5tuchJFb/nQjdm1LoVJlTK0burlbS9JhnVNMI2g8+x9H2ZwjgvTWWvevbR9z
M6hd2qvgrFBm5I5PSVfekx7s3xOPk56KXa48DE6l+cPy+PfnBkVQ943x0XHd
aKuJe9snaugKH98xXVfQ17kUet8W0q1HfHNQ3d2FxtqchPFb/rpG7DqXQqzy
9K7G1Lrs16El6bDOKaYRNPaprqtWdTyNXn5TPbBS9FTWyiuj1hNMqjKNPu0l
eM5v3VjE+pHl86U76aPcSPVBR58b7ys4Q+ee11Z3aeu05Oyd5ZcGz96NT7v4
gyrrSqt8iGR881rdxdV+mxM/CcXS5ZHrwSq8ExdWXV29zqXQ+7aQGBq98l91
MzHf5iQMtyF0a8SuZykEKm9G07gSxNSgRPzpc1qSDuucYhpBY5+qhqigkty7
e0e3U0lckrsWi8Xs8jZerSdBNZDp5Z++fPpcORyTHyGmlVSvuok2D+F6+eSR
ropg6wiaJjdbmVg/VXklcOLhC7IO9Zlf8fCzI62dXmXe7xystMqKlOg4nW2a
o/TYJvFle1J14zEPDTxuPjZQha+eefIew+tcCr1vC/Gan1024HED4q9S221O
wnAbwu6N2PUphUDdgx0rRxZyW023lqTDOqeYhpbTp7qO6klQyu7vLnPmPCEo
/tTkkmrj7WaNg/DU8a9mqXseYmiyx2s5e+fGxyXEjUDlPrpyVScWxj13tXEJ
p26gCq/itZoOmde2FIbYFuJDtroG2R9Mz3abkzDchtC24K5zKfjiG53SgpHB
gnKZJVuSDuucYhpBY5+qszWMRg3/eDBRtWR7lEMbV1umm1TT42lXNlY5SbXy
ouvGD063f6lx71zxEMltdVcr1Y227QSP5lHpVtHqzZsDVfh11ZUY7sqWhOtZ
CgNtCzljBnYY+GW6bU7CQBvCjo3YdSuFQOek2vjZypakwzqnmAaV2aeqd0Yn
RvJ31wP4n4rPtMpnpRYFByDTvU5VfqAfuf2fWRmB1pvfWPkRlb5DRC9qij+r
l99M947CzH6kuoqn9afu58tKqzzLlr5tvLpkD+bBZWaWDFTh13mDU1W6hqUw
0LagN5hXbwjeB2NW25yE4TaEXRqx61YKgV2S6rpTS9JhnVNMRfHHgnODyCXu
a/CHmzN2+8P6suff/UZ9QGqiTurdCvLScb381eg/uyr9cbf+deX3/6uKFK80
HcA887NBGTVWRS1Z/7uuz6pOaFvh62bS6usohUDnbSHYEHI+eJ3bnIRuG0Ln
gqMUdtShJemwzikmlMxvarodOo35qetp9zKCw8qcrh3Li+L27WtDoBTG12Gd
U0wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABm
LJ8v5wAAAEAn7/56N1xSlfnPAAAAgE7+++efwyVVicG8ePHixYsXL168eHV7
ff3n63BJFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwTXz5
9Pnvk7N9LwWwTz++vX/24Pbh4aE+vOze3Tvz395/P/sur30v2rR9/efrh99/
mR3MGxsZiqB3ukplTV48k+9g/vDxKymR07PTuo/IP719s/r5YHbzp5v6oVv3
n0rZJT6CBFlvJx9fLBYL92BEKQ5ZwxTBfkmh6BZR1y5RCnshrdPy+VJe//3z
T//Pl08eSRH88eHf+CPsOHBNSJTS5kh3IrJpyP+ev3Mwr9w0kEMz6kU735RU
KYLe6Sp1+1mfrOHKx/NJm6+7ZnlJpn29Wh0fHehH5H/ZR7el6zOgJSKxR9Zn
vDOlCEZwVS417RKlsC9Xu4zIjaPjuNVix1EOKZ0vnz7z4NeBuKouG4K2WtoN
km7KkLCVUWfNq5Ei6J2//uOWX96Jm3EptWcPbusE8q8aoqQg5E2dw/y39/v4
KVMl6/Mi3hzMZQcqacetSS2CeH1SBOOQckkcQVMK++Kv+ZiURXCMwI6jHLLm
tblj6xhC4uD6/Jz15aEc5xFa0dP90rDoKZt0o0ER9M6t0oePX+kqlV3A2zcr
v9nXU5n+p9zalqbG3yP4HYN0U+TT3ah2BGntlT9lN+rCqvxTvOelCIZ2cd6/
vl2iFPbFXZKhFwAEr6Ck2HEU5WKdb8qCdd47v0oHew3apR1lHt5SBL3TAwT/
2Faajq3iiJqU9KpOlBEqae9QfDiw3l6Z/pkyimAEW5tAVbtEKeyLOwcR951W
YsdRDlcWlS0edhTU56C2u97s+OAamTKvB6MIeqT3F0iLUXm9kGtSZt6ZzXV9
fFJX3VAcMufRvtPKvaRbmcGqpgiG5tqT5fNlTnccpTAmXbeZUYcdRyH0kNyd
J+LU/xCCZieegCOFHTUmVYqgd7pK/RTqC1p4dw2e37CnP1V3NxZy6AUALgu5
MqIIRqCNiQ5/UdkuUQr74q95HaLk9Sq1etlx7J1eUeYPjqFtmhTcl0+fOTro
0VX/Ul6O4gi6rcakShH0TpqId3+9q2soKs+L+W9W7qD9/YjsRCiFXWidD3pc
KYKh+cNS1bVLlMK+bF087KnLmew49u7lk0d1ozToweC+F9AIv82pu+jI33zq
OqmQkE6qFMH4KkukcSXnlBRy6KqOLwygCAblbirX1V7XLlEK+5KIPfHGwo6j
BK5P9crmNurXqxXXBveobW3nAowO+k2qFMHuKk89N7bqVwMu1RQlGsladcMv
xD1FFMGggnsMOydVSmEI0vJLibz7651sIBpZ49Tqhx92HCWQrcMNO+zWM8du
vfNre93tJ/6NotT2DvKTKkUwAn+F+y1/Tv/D1WXz7KBbcqMuBCMMUwTj0HXr
3yHVOamuKYUhucvmpSDu3b1TNyI3O45CBNds0JU6BP+SpLrjssbLlpCWTqoU
wchcw6JPG3Tv1w0I4Gu8MAyVdK9a/bAwb01SBAO5aEC2jwvq2iVKoRz+vYdB
+8+OoxD+9iKbA9emDiHnuIzavqPd+1Qpgr64E5cdTj2v2UHvRqq6PmrQH9Fl
5t16QBEMoe65Obv0qVIKownCqusVZ8dRgq0rYbiLajD+euZal4GkkypFMCb3
DJH4HE2rG0nYQe8o2PlqtacIhuAeExa838sdVZTCOOIR/tlxlCB4iIYk1X0v
kU3cPzgC7v0vhA5E3zgWfc4OunJEdLQS98tRBL1zjY+sT1ld/ss901a3CO3u
1vcphdK4wnLdp+w4SvD2zerq9BBHbUNyZ+LqBm0Lavv4Szh1jeOpUgQjcHdo
1q1A/+i48tCYwXn6FW8XFEHv6oborCNbB6VQILex+CucHcd+uWHfFI9XGFTj
cy4aJ0Da7s+oogh25Pcs1U3jNzvBzVaq8dk9aOXq9OVlraYIetchqVIKBfKT
quvEZsexX/5lwJpU15tGTDYQuq/7pVdr+zkqXsPxFTJoJZ1UKYKh+b2p8bqV
d758+qx/cX0UDx+/itdz5ZOt0JkLPK5WUwS9kzX29s3q3V/vXq/CP5fPl+7E
pfxd1qdMqe0PpVAat87dsQM7jr2Lx6fSYmJtD0Gqd+IAOTi+3ssSTl1jnypF
MBzXcVf3gPLzxjy+TrKqpK4uSWIokj743UTuTYpgNEG75O9bKYXSuBLx2zF2
HPul9yq6LUWSqhTH4eEhh28DcVtBauieTaNEn3YHwZFv3TQUQe9cTNXnhsiq
kz/9l+5z3bPL/dtppbXx993+P9Hs59NzYZU9DG4cBr/CUwSjSRxBUwrjkxX7
7q938orDv1vn8f1r7Dj2aGsk1UuVF8ygF/51R/4hW/A0Hzq0u8m5rJ0i6F0w
0l2d4B6rupbff59+pEzuhmXtcPAbcLc+41pNEYwjfa6HUhiZH3v8XYD8RR+D
2zh0DDuOkcVJVU8PkVSH41ot2bNohdcdve5oeJRtB9qDFzwRT2qynmiLKzNF
0KPMmDqruoLLv7hLr/4KEte+ftTkBNdxyfqUtffl02e3520cWJ4iGE7jVUmU
wpiC2CPr/N1f72RH4K6QqTsfx45jX4I7qvQUAzF1aO7YLXjQsFR+qnoHbjdd
8QTJms5ViqAv+bc8V16/GoznrOhEakta8urjhYP58vkyvTIpgqE1JtU1pTCW
rdujoo2lsVOUHce+6CjEckzBeh6ZjvwsNVxeOhA0xwg7arsCKYLR1F1Cub4c
E0ALQofuWXO83J6sMb39XF6vVyu9PTYz51AEJaAUxqQbi2wpurFo45+5ttlx
4Fpx+27q+b5QBCXQ6zfWXnFgF7rPbVWlKYISUArjc+u8FXYcAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCcH9/ev32z+vrP1x6nBAAAAHZ0
8vHFbDa7+dPNv0/OMieeHcxzJgYAAAA6u0ies1lOT+n3s+8yzcsnj6YSVr98
+lz+QmKKTs9Of3x7/+6vd7JFyHax78XB2GhbpohSK5Y0pNKcZralNL/XisTU
nw/OU+f8t/f5n5K6cXx0/rEbR8clXAYgy7B8vpTXf//80/9TE/UfH/4Nppca
/uzB7Zs/3dSILn95+PhVtwrfYVb6kcPDQ/3Ivbt3ZOXL9HUfkU1SDiKkmNy3
3Lr/VBpbeb/t0rYl1UMWT35R+rvkF8mq1orkllBWQt2n9BfJnN308ncpph1/
Uf7Syvq/+vaDuRZZ5rfLlMHCt9p28rVdq+v2VSsgc9btutUvkrVRufUFfzY2
FG1P1nRb2ra6tS2tapf88MVicVXMLStk/O2Dti071rEOtAj8LU5WV7pfZYRS
i3XbEOQrggogiyGzqvxqWc6cr5AfOFBxyMJ/+P2XHTup5PdW/gr54ZIo0us8
p/nt0HLWGWFz7qXu2eaaeqkebT8rq7dDxB2IbDuupQ3EWVonlpf8k24yOqW8
E7dgOd/balZuUbU5ko/oHKR+Vn5E17NOIxX49WqlRSYaI9kudHPTRU0XceXK
T/8i+e36i+Tnyy9yG6k2Ux3a2LZLW1lbGs8p6G7db/2GO15ou1bX7atW5Rzq
Gv86rh1osNm1pQ/fLuaTvRPssLQddGtbMmuX/Gp/c5ZtQfawbg5tbwcYoW3Z
vY61Jd9ysT4P5vJ1LqVoq1tXVQYttUrdNoTKT+mSSPMSN4auzqcNsWvQjOrK
onNSlfnUrSjdb6aPqtzEdc1vh5azzgibcy91zzyt9jkJTdbYl0+f4w1cK+1A
bVQmWSo5JKnbZoOeOrelSz1fbyq/bBeuY1mnz0xKHWblNiLXxuoBdd0+2v9p
bm7yEdeLO8Q+Wnsm/W0n8S3u0hFZCbJhyq5kqxWKfpG/c9RqIz/n4jh9o20v
faul9RuxytYsUZP9knW/a6COi7Zrdd2+alV+qVsn+fXKLWpaY7FKC99qJ9ht
adtq27a0ql3uzJQ2oXF6aXXsPELbsnsda8vfEHQJ9U+/uYizyqCl1rioaf6G
4FcAPWYPTs8FRZD+XYnfuKOtjKp2KOvUijqY17USmc1vh5azzgibc191zza3
Ahs7VOvOsunBkR7b7vFCEXfSUE8oBC+/Zl7t3TZbhL/MV5tP2x1l9qwSvUZ+
w+vPyu818lse/0i838qsc9a+C/cVdUnAxU63YeplzH57GyyeCyRxXXJHo207
9Fot7WxztKvrX08k+Y2DHqfHn73q2Knp6+hRh7XaoWoFgp1gZhG4UtMeNlkq
+VN2EPqS/724oL1phls7r4wNsNvSdpDftnSoXW4/FS+/WyGZZ7tGaFt2r2Nt
uQ2hskpoxavcmw9aapW6bQhaATS7ui3dPwQLcrirFbK07/565+avr+EOGfR0
v/8rOn+FW1GyVuOiqduXZTa/HVrOOiNszn3VPfNc89JYdq7vNDh/J3/Pn8lA
XM3POYqsa5zlh/j99jk7vg6zSvQDVO4d0nE03auwC/kJOsPGmKEbYLzmgyWv
ONVV1dD5p/nyN8/8pdUJ/H/Vz8ZH63U94Zl1Y0dt1+q6fdWKBWcVM3+mLqrr
Jgo2BPlfd24rt7M6r/S7LW1brdqWDrXL/QrZVQVz87sRck4xjNC27F7H2nKz
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
K1cTk7Wasi2rSXW6XVsxkuokTL3i0acKAP2SpOp3J+p990EHY7/3/vtjom6J
4qJeQDvbfsZrcD2AC9jBPGVpg7nlT9mB1aRKn2rhrCbV6RZTq6T69s2K2/8B
IEGSm0TBIJfq0E9+D6obNqrfbtVMbjRXedVFZU2hEqvSk7WashWrSXW6XVsx
kuokTL3iyZLnJ9V+r6cCAHsuzv5fjnjvHlp63uvo9XC6XtB+76gaTv4+rq+9
odWkSp9q4awm1ekWU/7t/3SoAkCO4I4qvX3p4s2D+fL5Ul7udHm/o1RZYjWp
TrdrK0ZSnQQbFa8xrHIvFQBk0ueT+hdt6hPqK4eumkqf6visJlX6VAtnNalO
vZikXX324HZdXvXHMwEANPJzqcuiFfc9Hcyn3tExHKtJ1VKJk1QnwUbFk+P9
mz/dlJfkVXm5flR5yU8jpgJAB3H7KWFV2tj5hg6mOul9x6CsJlX6VAtnNalO
vZjkJ7hD/Ht37yyfL6f+iwCgTHqn/L6XYgKsJlVLhyck1UmwUfHk6N4lVYmp
9ioeAJTgx7f3r1creUkbyz2qaVaTKn2qhbOaVCddTLLw/mVTBn4RAOyRP1qp
P75o+JTVnZ/iZJvVpDr1ri0fSXUSDFS85fOlazgXi4XJigcAo9lKpJcDq8qb
/mOh3LAA3AhQx2pSpU+1cFaT6nSL6fTsNOhQNVnxAGA0buhU9/wp90Qq9fDx
K4kre3xG1SRYTaqT7toKmAwMVpPqdCuefy/V4eHh2mjFA4DR6DOq/M5Secd1
qLpBqyS+Pntw+8bR8Z4Ws3RWkyp9qoWzmlSnW0zBvVRroxUPAEYjuVTyp+u+
2BpG1bs2VZOqBFdurapkNalOt2srZjIwWE2qE614wb1U2gNgsuIBwDjOH1G9
nVTPu1gv/fHhX5dLXVLd38IWzWpSpU+1cFaT6kSLabFY+PdS6ZsmKx4AjEaj
qURQaU79mBrcP6WXs0p2nWJHxwisJtWJdm1VMhkYrCbVKVY8WeDDw0P/Xip9
32TFA4DR6On+8E5/77z/VYJloKp6VpMqfaqFs5pUp1hM8b1UymTFA4AxnXx8
cXVtqjcOQBxiufe/jtWkOsWurTomA4PVpDrFihffS6VMVjwAGNnp2akb/N9d
myp7ii+fPlc+FwABq0mVPtXCWU2qkyum4F4qaUVd0jZZ8QCgNCcfX3DqP8Fq
Up1i11Ydk4HBalKdXMWrvJdKmax4AFAUaWl/Pphx43+C1aRKn2rhrCbVaRWT
VC2/QzVYeJMVDwBG8+Pb++XzZfr17MHtmz/d9AezQsBqUp1c11aCycBgNalO
q+JJI+li6nw+D5bcZMUDgNFcPE01B/f+17OaVOlTLZzVpDqtYvIHp4qLw2TF
A4DRtEiqMy4AqGU1qU6rayvNZGCwmlQnVPFer1auhZTIGi+2yYoHAKPRpHrv
7p3l86U0p/Gfeup/djCXlvbLp888TbWS1aRKn2rhrCbVCRVTMDhV3EKarHgA
MJrzpNp0Wv/D779IWKVDNcFqUp1Q11Yjk4HBalKdSsULBqeqrF0mKx4AjEaS
6o2j4/Vm9NS6afQRABpoJ7H7GJ/VpEqfauGsJtWpFJN/L1UwOJVjsuIBQFEk
nR4fHXCdaoLVpDqVrq0cJgOD1aQ6iYoXDE71erWqm8xexQOAolz0qW6Savm7
j72wmlTpUy2c1aQ6iWLyO1QPDw/rJjNZ8QBgNNKKnnx88fbNyn9qqv+S1lhj
Kn2qCVaT6iS6tjKZDAxWk+okKl56cCrHZMUDgNG0GqXqjw//7nt5C2U1qdKn
WjirSbX8YgoGp0oMimKy4gHAaPKT6sPHrxiiqo7VpDqJrq1MJgOD1aRafsXz
B6equ5dKmax4ADCai6R6MF8k/fHh38J3HPtlNanSp1o4q0m18GIKBqdK52qT
FQ8ARpMznioaWU2q5Xdt5TMZGKwm1cIrnhy8u5g6n8/TE5useAAwDtkX6O1U
nNbfkdWkSp9q4awm1ZKLKRicqnFRTVY8ABiNhFU/pkqj+uPbe8knf5+cyd/3
uGDTYjWpFt611YrJwGA1qZZc8fzBqebzeeNhvsmKBwDjk4D67MHtmz/d3LqN
6mD+9s2KyNrIalKlT7VwVpNqscUk+TlzcCrHZMUDgJFJHJWMGsZUL68yPlWa
1aRactdWWyYDg9WkWmzFk2Vz7WJitH+fyYoHAGPKGqhqc9dVmfuOElhNqvSp
Fs5qUi22mPwO1eXzZU6TaLLiAcBo9Emp2psqfz58/EpaVGlaT89O5SVBxT2j
6sbRMTde1bGaVIvt2urAZGCwmlTLrHjB4FTSHpJUAWBorkN1/tv7uNWVd+Ql
Le3x0YHkWK4BqGM1qdKnWjirSbXMYsof7d9nsuIBwGg+/P6LxtT0ZNr12jjZ
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
    "], {{0, 879}, {910, 
    0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 360, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->360,
  ImageSizeRaw->{910, 879},
  PlotRange->{{0, 910}, {0, 879}}]], "Output",
 CellChangeTimes->{3.500550706921258*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Additional Exercises", "ExerciseGroupFont"]], \
"Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.454953575318022*^9, 3.45495357891613*^9}}],

Cell[TextData[{
 StyleBox["59-60. One-sided derivatives",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  The ",
 StyleBox["left-hand",
  FontWeight->"Bold"],
 " and ",
 StyleBox["right-hand derivatives",
  FontWeight->"Bold"],
 " of a function at a point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " are given by ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox[
      RowBox[{"f", "'"}], "+"], 
     RowBox[{"(", "a", ")"}]}], "=", 
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"h", "\[Rule]", 
       SuperscriptBox["0", "+"]}]], 
     FractionBox[
      RowBox[{
       RowBox[{"f", "(", 
        RowBox[{"a", "+", "h"}], ")"}], "-", 
       RowBox[{"f", "(", "a", ")"}]}], "h"]}]}], TraditionalForm]],
  FontSlant->"Plain"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox[
      RowBox[{"f", "'"}], "-"], 
     RowBox[{"(", "a", ")"}]}], "=", 
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"h", "\[Rule]", 
       SuperscriptBox["0", "-"]}]], 
     FractionBox[
      RowBox[{
       RowBox[{"f", "(", 
        RowBox[{"a", "+", "h"}], ")"}], "-", 
       RowBox[{"f", "(", "a", ")"}]}], "h"]}]}], TraditionalForm]],
  FontSlant->"Plain"],
 " provided these limits exist. The derivative ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " exists if and only if ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox[
      RowBox[{"f", "'"}], "+"], 
     RowBox[{"(", "a", ")"}]}], "=", 
    RowBox[{
     SubscriptBox[
      RowBox[{"f", "'"}], "-"], 
     RowBox[{"(", "a", ")"}]}]}], TraditionalForm]]],
 "."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.45496070425121*^9, 3.4549607678344517`*^9}, {
  3.4549773826813507`*^9, 3.454977497239029*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tSketch the following functions.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tCompute ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     RowBox[{"f", "'"}], "+"], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     RowBox[{"f", "'"}], "-"], 
    RowBox[{"(", "a", ")"}]}], TraditionalForm]]],
 " at the given point ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 ".\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\tIs ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "? Is ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " differentiable at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "?"
}], "SubExerciseDirectionsCell",
 CellChangeTimes->{{3.454977504068411*^9, 3.454977562740243*^9}}],

Cell[TextData[{
 StyleBox["59.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"\[LeftBracketingBar]", 
     RowBox[{"x", "-", "2"}], "\[RightBracketingBar]"}]}], 
   TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "2"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454977569341022*^9, 3.454977584904949*^9}, {
  3.487448673174221*^9, 3.4874486806031857`*^9}}],

Cell[TextData[{
 StyleBox["60.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{"\[Piecewise]", GridBox[{
       {
        RowBox[{"4", "-", 
         SuperscriptBox["x", "2"]}], "if", 
        RowBox[{"x", "\[LessEqual]", "1"}]},
       {
        RowBox[{
         RowBox[{"2", "x"}], "+", "1"}], "if", 
        RowBox[{"x", ">", "1"}]}
      }]}]}], TraditionalForm]]],
 ";  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.454977569341022*^9, 3.454977625352735*^9}}],

Cell[TextData[{
 StyleBox["61-64. Vertical tangent lines",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  If a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " is continuous at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", "a"}]], 
     RowBox[{"\[LeftBracketingBar]", 
      RowBox[{
       RowBox[{"f", "'"}], 
       RowBox[{"(", "x", ")"}]}], "\[RightBracketingBar]"}]}], "=", 
    "\[Infinity]"}], TraditionalForm]],
  FontSlant->"Plain"],
 ", then the curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " has a vertical tangent line at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " and the equation of the tangent line is ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "a"}], TraditionalForm]]],
 ". If ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " is an endpoint of a domain, then the appropriate one-sided derivative \
(Exercises 59-60) is used. Use this definition to answer the following \
questions."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.4549776406895533`*^9, 3.454977723889007*^9}, {
  3.487448684621714*^9, 3.487448691958477*^9}}],

Cell[TextData[{
 Cell[BoxData[
  PaneBox[
   StyleBox["\<\"T\"\>", "SR",
    FontSize->9,
    FontColor->GrayLevel[1]],
   Alignment->{Center, Center},
   BaseStyle->{Background -> RGBColor[0, 0.6, 0.8]},
   ImageSize->{12, 12}]]],
 Cell[BoxData[
  StyleBox[
   GraphicsBox[{},
    BaselinePosition->Baseline,
    ImageSize->{6, 0}],
   CacheGraphics->False]],
  CellChangeTimes->{3.449270400725144*^9}],
 StyleBox["61.\t",
  FontWeight->"Bold"],
 "Graph the following functions and determine the location of the vertical \
tangent lines."
}], "TProblem",
 CellChangeTimes->{{3.454977733704873*^9, 3.454977750189302*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"x", "-", "2"}], ")"}], 
     RowBox[{"1", "/", "3"}]]}], TraditionalForm]]],
 "\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"x", "+", "1"}], ")"}], 
     RowBox[{"2", "/", "3"}]]}], TraditionalForm]]],
 "\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SqrtBox[
     RowBox[{"\[LeftBracketingBar]", 
      RowBox[{"x", "-", "4"}], "\[RightBracketingBar]"}]]}], 
   TraditionalForm]]],
 "\n",
 StyleBox["d.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    RowBox[{
     SuperscriptBox["x", 
      RowBox[{"5", "/", "3"}]], "-", 
     RowBox[{"2", 
      SuperscriptBox["x", 
       RowBox[{"1", "/", "3"}]]}]}]}], TraditionalForm]]]
}], "SubProblem",
 CellChangeTimes->{{3.454977755507513*^9, 3.454977803974207*^9}, {
  3.4874486956778603`*^9, 3.487448700632032*^9}}],

Cell[TextData[{
 StyleBox["62.",
  FontWeight->"Bold"],
 "\tThe preceding definition of a vertical tangent line includes four cases: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", 
       SuperscriptBox["a", "+"]}]], 
     RowBox[{
      RowBox[{"f", "'"}], 
      RowBox[{"(", "x", ")"}]}]}], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 " combined with ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", 
       SuperscriptBox["a", "-"]}]], 
     RowBox[{
      RowBox[{"f", "'"}], 
      RowBox[{"(", "x", ")"}]}]}], "=", 
    RowBox[{"\[PlusMinus]", "\[Infinity]"}]}], TraditionalForm]]],
 " (for example, one case is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", 
       SuperscriptBox["a", "+"]}]], 
     RowBox[{
      RowBox[{"f", "'"}], 
      RowBox[{"(", "x", ")"}]}]}], "=", 
    RowBox[{"-", "\[Infinity]"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"x", "\[Rule]", 
       SuperscriptBox["a", "-"]}]], 
     RowBox[{
      RowBox[{"f", "'"}], 
      RowBox[{"(", "x", ")"}]}]}], "=", "\[Infinity]"}], TraditionalForm]]],
 "). Make a rough sketch of a (continuous) function that has a vertical \
tangent line at ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " in each of the four cases."
}], "Problem",
 CellChangeTimes->{{3.454977813693001*^9, 3.454977914053377*^9}, {
  3.471118780878923*^9, 3.471118784713379*^9}, {3.478189782676003*^9, 
  3.478189782919406*^9}, {3.4874492870947943`*^9, 3.487449287335423*^9}}],

Cell[TextData[{
 StyleBox["63.",
  FontWeight->"Bold"],
 "\tVerify that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", 
     RowBox[{"1", "/", "3"}]]}], TraditionalForm]]],
 " has a vertical tangent line at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]]],
 "."
}], "Problem",
 CellChangeTimes->{{3.4549779271677227`*^9, 3.454977941918152*^9}}],

Cell[TextData[{
 Cell[BoxData[
  PaneBox[
   StyleBox["\<\"T\"\>", "SR",
    FontSize->9,
    FontColor->GrayLevel[1]],
   Alignment->{Center, Center},
   BaseStyle->{Background -> RGBColor[0, 0.6, 0.8]},
   ImageSize->{12, 12}]]],
 Cell[BoxData[
  StyleBox[
   GraphicsBox[{},
    BaselinePosition->Baseline,
    ImageSize->{6, 0}],
   CacheGraphics->False]],
  CellChangeTimes->{3.449270400725144*^9}],
 StyleBox["64.\t",
  FontWeight->"Bold"],
 "Graph the following curves and determine the location of any vertical \
tangent lines."
}], "TProblem",
 CellChangeTimes->{{3.45497794781673*^9, 3.454977966565535*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["x", "2"], "+", 
     SuperscriptBox["y", "2"]}], "=", "9"}], TraditionalForm]]],
 "\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["x", "2"], "+", 
     SuperscriptBox["y", "2"], "+", 
     RowBox[{"2", "x"}]}], "=", "0"}], TraditionalForm]]]
}], "SubProblem",
 CellChangeTimes->{{3.454977971441246*^9, 3.454977993795031*^9}}],

Cell[TextData[{
 StyleBox["65-68. Find the function",
  FontWeight->"Bold",
  FontSlant->"Plain"],
 "  The following limits represent the slope of a curve ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"f", "(", "x", ")"}]}], TraditionalForm]]],
 " at the point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"a", ",", 
     RowBox[{"f", "(", "a", ")"}]}], ")"}], TraditionalForm]]],
 ". Determine a function ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]]],
 " and a number ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 "; then, calculate the limit."
}], "ExerciseDirectionsCell",
 CellChangeTimes->{{3.4549780126839333`*^9, 3.454978070666656*^9}}],

Cell[TextData[{
 StyleBox["65.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"x", "\[Rule]", "2"}]], 
    FractionBox[
     RowBox[{
      FractionBox["1", 
       RowBox[{"x", "+", "1"}]], "-", 
      FractionBox["1", "3"]}], 
     RowBox[{"x", "-", "2"}]]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.4549781572787046`*^9, 3.454978172132141*^9}}],

Cell[TextData[{
 StyleBox["66.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"h", "\[Rule]", "0"}]], 
    FractionBox[
     RowBox[{
      SqrtBox[
       RowBox[{"2", "+", "h"}]], "-", 
      SqrtBox["2"]}], "h"]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.4549781572787046`*^9, 3.4549782019948483`*^9}}],

Cell[TextData[{
 StyleBox["67.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"h", "\[Rule]", "0"}]], 
    FractionBox[
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"2", "+", "h"}], ")"}], "4"], "-", "16"}], "h"]}], 
   TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.4549781572787046`*^9, 3.454978219381734*^9}}],

Cell[TextData[{
 StyleBox["68.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"x", "\[Rule]", "1"}]], 
    FractionBox[
     RowBox[{
      RowBox[{"3", 
       SuperscriptBox["x", "2"]}], "+", 
      RowBox[{"4", "x"}], "-", "7"}], 
     RowBox[{"x", "-", "1"}]]}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.4549781572787046`*^9, 3.454978184693029*^9}, {
  3.4549782236888437`*^9, 3.454978233456665*^9}}],

Cell[TextData[{
 StyleBox["69.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Is it differentiable?",
  FontWeight->"Bold"],
 " Is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    FractionBox[
     RowBox[{
      SuperscriptBox["x", "2"], "-", 
      RowBox[{"5", "x"}], "+", "6"}], 
     RowBox[{"x", "-", "2"}]]}], TraditionalForm]]],
 " differentiable at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "2"}], TraditionalForm]]],
 "? Justify your answer."
}], "Problem",
 CellChangeTimes->{{3.454978240607664*^9, 3.4549782695172157`*^9}}],

Cell[TextData[{
 Cell[BoxData[
  PaneBox[
   StyleBox["\<\"T\"\>", "SR",
    FontSize->9,
    FontColor->GrayLevel[1]],
   Alignment->{Center, Center},
   BaseStyle->{Background -> RGBColor[0, 0.6, 0.8]},
   ImageSize->{12, 12}]]],
 Cell[BoxData[
  StyleBox[
   GraphicsBox[{},
    BaselinePosition->Baseline,
    ImageSize->{6, 0}],
   CacheGraphics->False]],
  CellChangeTimes->{3.449270400725144*^9}],
 StyleBox["70.\t",
  FontWeight->"Bold"],
 StyleBox["Looking ahead: ",
  FontWeight->"Bold"],
 StyleBox["Derivative of ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   SuperscriptBox["x", "n"], TraditionalForm]],
  FontWeight->"Bold"],
 "  Use the symbolic capabilities of a calculator to calculate ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " using the definition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"h", "\[Rule]", "0"}]], 
    FractionBox[
     RowBox[{
      RowBox[{"f", "(", 
       RowBox[{"x", "+", "h"}], ")"}], "-", 
      RowBox[{"f", "(", "x", ")"}]}], "h"]}], TraditionalForm]]],
 " for the following functions."
}], "TProblem",
 CellChangeTimes->{{3.454978277286042*^9, 3.454978336905949*^9}, 
   3.4874494330643806`*^9}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "2"]}], TraditionalForm]]],
 "\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "3"]}], TraditionalForm]]],
 "\n",
 StyleBox["c.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "4"]}], TraditionalForm]]],
 "\n",
 StyleBox["d.",
  FontWeight->"Bold"],
 "\tBased upon your answers to parts (a)-(c), propose a formula for ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "x", ")"}]}], TraditionalForm]]],
 " if ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "x", ")"}], "=", 
    SuperscriptBox["x", "n"]}], TraditionalForm]]],
 " where ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " is a positive integer."
}], "SubProblem",
 CellChangeTimes->{{3.454978342289193*^9, 3.454978411906664*^9}, {
  3.487449440062162*^9, 3.487449446011674*^9}}],

Cell[TextData[{
 StyleBox["71.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["D",
  FontWeight->"Bold"],
 StyleBox["etermining the unknown constant",
  FontWeight->"Bold"],
 "  Let \n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{"f", "(", "x", ")"}], "=", 
          RowBox[{"\[Piecewise]", GridBox[{
             {
              RowBox[{"2", 
               SuperscriptBox["x", "2"]}], "if", 
              RowBox[{"x", "\[LessEqual]", "1"}]},
             {
              RowBox[{
               RowBox[{"a", " ", "x"}], "-", "2"}], "if", 
              RowBox[{"x", ">", "1"}]}
            }]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"="}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]],
 "\n\tDetermine a value of ",
 Cell[BoxData[
  FormBox["a", TraditionalForm]]],
 " (if possible) for which ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "'"}], 
    RowBox[{"(", "1", ")"}]}], TraditionalForm]]],
 " exists."
}], "Problem",
 CellChangeTimes->{{3.454978416808816*^9, 3.454978429343486*^9}, {
  3.454978470424163*^9, 3.454978472069538*^9}, {3.454978779558536*^9, 
  3.454978779663912*^9}, {3.478189803609779*^9, 3.478189807769025*^9}, {
  3.4874494268764277`*^9, 3.4874494281110573`*^9}}],

Cell[TextData[{
 StyleBox["72.",
  FontWeight->"Bold"],
 "\t",
 StyleBox["Graph of the derivative of the sine curve",
  FontWeight->"Bold"]
}], "Problem",
 CellChangeTimes->{{3.454978483093914*^9, 3.454978491244027*^9}}],

Cell[TextData[{
 StyleBox["a.",
  FontWeight->"Bold"],
 "\tUse the graph of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", 
    RowBox[{"sin", " ", "x"}]}], TraditionalForm]]],
 " (see figure) to sketch the graph of the derivative of the sine function.\n",
 StyleBox["b.",
  FontWeight->"Bold"],
 "\tBased upon your graph in part (a), what function equals ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["d", 
     RowBox[{"d", "\[VeryThinSpace]", "x"}]], 
    RowBox[{"(", 
     RowBox[{"sin", " ", "x"}], ")"}]}], TraditionalForm]]],
 "?"
}], "SubProblem",
 CellChangeTimes->{{3.4549784949063177`*^9, 3.454978539570797*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
GBg=
    "], {{0, 419}, {621, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "RGB", ImageSize -> 288, Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->288,
  ImageSizeRaw->{621, 419},
  PlotRange->{{0, 621}, {0, 419}}]], "Output",
 CellChangeTimes->{3.500550707159842*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   StyleBox[
    RowBox[{"QUICK", " ", "CHECK", " "}], "QuickCheckFont"],
   Alignment->Center,
   Background->RGBColor[0.976, 0.855, 0.514],
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]],
 Cell[BoxData[
  FrameBox[
   StyleBox["ANSWERS", "QuickCheckFont"],
   Alignment->Center,
   FrameMargins->{{5, 5}, {2, 4}},
   FrameStyle->GrayLevel[0.5]]]]
}], "Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellTags->"QUICK CHECK ANSWERS"],

Cell[TextData[{
 StyleBox["2.",
  FontWeight->"Bold"],
 "\tLess\n",
 StyleBox["3.",
  FontWeight->"Bold"],
 "\tDefinition (1) requires factoring the numerator or long division in order \
to cancel ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{"x", "-", "1"}], ")"}], TraditionalForm]]],
 ".\n",
 StyleBox["4.",
  FontWeight->"Bold"],
 "\t32\n",
 StyleBox["5.\t",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    RowBox[{
     FractionBox[
      RowBox[{"d", "\[VeryThinSpace]", "f"}], 
      RowBox[{"d", "\[VeryThinSpace]", "x"}]], "\[RightBracketingBar]"}], 
    RowBox[{"x", "=", "3"}]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    RowBox[{
     FractionBox[
      RowBox[{"d", "\[VeryThinSpace]", "y"}], 
      RowBox[{"d", "\[VeryThinSpace]", "x"}]], "\[RightBracketingBar]"}], 
    RowBox[{"x", "=", "3"}]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "'"}], 
    RowBox[{"(", "3", ")"}]}], TraditionalForm]]],
 "\n",
 StyleBox["6.",
  FontWeight->"Bold"],
 "\tThe slopes of tangent lines decrease as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " increases. The values of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "'"}], 
     RowBox[{"(", "x", ")"}]}], "=", 
    FractionBox["1", 
     RowBox[{"2", 
      SqrtBox["x"]}]]}], TraditionalForm]]],
 " also decrease as ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]]],
 " increases.\n",
 StyleBox["7.",
  FontWeight->"Bold"],
 "\t",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "q"}], 
    RowBox[{"d", "\[VeryThinSpace]", "r"}]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"d", "\[VeryThinSpace]", "p"}], 
    RowBox[{"d", "\[VeryThinSpace]", "r"}]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["D", "r"], "(", 
    RowBox[{"q", "(", "r", ")"}], ")"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"q", "'"}], 
    RowBox[{"(", "r", ")"}]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"p", "'"}], 
    RowBox[{"(", "r", ")"}]}], TraditionalForm]]],
 "\n",
 StyleBox["8.",
  FontWeight->"Bold"],
 "\tThe slopes of the tangent lines change abruptly at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", 
    RowBox[{"-", "2"}]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["0", TraditionalForm]]],
 ".",
 Cell[BoxData[
  FormBox[
   GraphicsBox[
    {RGBColor[0.976, 0.855, 0.514], EdgeForm[RGBColor[0.68, 0.57, 0.34]], 
     PolygonBox[{{0, 0}, {0.9, -0.3}, {0.7, 0}, {0.9, 0.3}, {0, 0}}]},
    ImageSize->15,
    PlotRange->{-0.5, 0.3}], TraditionalForm]]]
}], "Problem",
 CellChangeTimes->{{3.45497856699708*^9, 3.4549787414473677`*^9}, {
  3.471118810091056*^9, 3.4711188133132267`*^9}, {3.478189826086875*^9, 
  3.4781898263357887`*^9}, {3.487448789822275*^9, 3.4874488034126596`*^9}, {
  3.4874494700527782`*^9, 3.487449471861272*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
PageWidth->800,
WindowSize->{830, Automatic},
WindowMargins->Automatic,
WindowTitle->"CDF InfoKit - Briggs & Cochrane Calculus",
Visible->True,
DockedCells->Cell[
  RawBoxes[
   TagBox[
    GridBox[{{
       PaneBox[
        GraphicsBox[
         TagBox[
          RasterBox[CompressedData["
1:eJzVnIl7lNX1x11qq1br3mptrdraWrVqba2t9ueCsiogKgoKsiuyuSAqokIS
kpCFJZAFwpIEwhIMJCwBBELYIZDJTvZMJpNJZpKZSUL+gt/n3jPz5mVmCODj
8/ye3/ukeSbv3Pfec8/5nu/5nvtiH5j48RsTr73qqqsG8L93+Z/63NPT4+3s
qmlqq7O1udzenv/n1/nz560trlpbW1Wjw9nxY7aTsv3kVS8u4Oealxb8+vXY
6Ut2lte1/OR2mi/8j9mdXd0/yWwNzc6NP1jeXpD1h3eWXPNS2NV6L/Lz2zfj
P1mRV1F/BdsBEmx/Ze7J4V9vvO/tJXcNj7nl1egZS3f+ON+GvGqb2tJ2nxk6
N/PuN+LM1l73SvjQrzJzjpT/uGnd3s71e4vGRW27e0TcvW/G3zQ4ctSCrPwz
NWW19uXfHx82NxNv/GZEHNv5LHEPg69o8vpmZ/SGgg/icq/tF/avqavufSu+
rM7+4+zs6uo+1+gorGg6UdaQvP3kexFbbxy4EJuvHxAxbcnOvBPndh2rnLho
+z8+WPnLQZH3vBn/zNRVx0sbrmgJPLww49CosKzrXg7/83sJf5+cEmAtA2I3
Hpkck4Pb2c7fJiRd6XYAcNK2k+Hp+df0C3vjm023vbao0e66zGfb3d4dRyvG
Rmb/7q14DDBj4OqXFtwwYCHBcrjcxvju7vP45NMVeX8es/zpD1f97OXwpO0n
L3MtdvrdmgP48w8KzLFT43dgefAwlsBjX6/6ARve+m4Lv22t7SEnJHkvtta6
3WeYBPNen7eRGY6W1F/SvAJL3SfLd/9lzPJfDY7Ck2Mivs/cZ5mVsOulj9fd
+mo0k9zyatT1AxauzD0V8GBlg+PbNQceHL1M/EY0L7kWrhj4ecakmO2Mv+eN
uC9S9vY9fnbSnpTcU4QDKvhF/4jTFdaAAWD1aElfyNy43/LR4tybB0feOGDh
VaYo3//O0qgNBa0ujzES/+87VTUlNufnr4Sz9wdHLT17rok0efHjdawuT4GK
t+dv+eWghSQytnVdyJ+wFoN/P3Lxn95L+NWQqC9T9vVhWLW1FVTg7QnR28lo
1pX7lurmmMzD//pw1Q0Dew1mtje/3by/sAaajd14GCCNWfj9PW/EVzW2ylOQ
CbkA8+QeqbjYijw+NT6XqUh2AP+38Um/fTNuadaxwV+sv+3V6N+8HstXRpQ3
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
+PkJwfB/dRl78ap/KHHF2/lfCdhYOg==
           "], {{0, 70}, {90, 0}}, {0, 255}, ColorFunction -> RGBColor], 
          BoxForm`ImageTag[
          "Byte", ColorSpace -> "RGB", ImageSize -> {70, Automatic}, 
           Interleaving -> True, Magnification -> Automatic], Selectable -> 
          False], BaseStyle -> "ImageGraphics", ImageSize -> {70, Automatic}, 
         ImageSizeRaw -> {90, 70}, PlotRange -> {{0, 90}, {0, 70}}], 
        ImageMargins -> 0, ImageSize -> {70, Automatic}], 
       TagBox[
        GridBox[{{
           PaneBox[
            TemplateBox[{
              PaneBox[
               TemplateBox[{
                 StyleBox["\"CALCULUS: \"", "SR", 18, StripOnInput -> False], 
                 StyleBox[
                 "\"EARLY TRANSCENDENTALS\"", "SR", 12, StripOnInput -> 
                  False]}, "Row", 
                DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                InterpretationFunction -> (RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], 
               Alignment -> {Left, Center}, ImageSize -> {364, 22}], 
              PaneBox[
               StyleBox[
               "\"Briggs, Cochran, Gillett, Schulz\"", "SR", 12, Bold, 
                StripOnInput -> False], Alignment -> {Right, Center}, 
               ImageSize -> {244, 22}], 
              PaneBox[
               GraphicsBox[
                TagBox[
                 RasterBox[CompressedData["
1:eJztWT1rVUEQDZif4A9QLAUbsbPSzsJCG8EuhVgpSP5ArEURu4CFFoLYCBZi
ZRqxSSFiwA+EYCAoghIRVBDWdwiTdzJvZva+m3e9eckUh9y3d3d2Zs587N4c
nrt6bu7AzMzM0QGuDDA7QCklkUgkEolEIpHoDCfPLpZDJ26MAOO3Fl+UjR+/
i7XuwuWHxcP1m8/NNYKVd1+25t59sBzOBSDP2+fl8qfqeuyh162tb4TrYPej
J2/KpfnHW+vwjDHPJ9o2PNdsgrw2vGEt8wR5zOWZi/dNPS2uBZBZ8yPHR1Md
PXi2Q2/o7617tvTBXIfxY6fuuOugsxcvGOd5UdxjDny+E960r+cXnm7tb+WE
5gj6QWcgijNA+7I2n3mTMXDFvrXyh+NDbIB+2N+LF8jlmBVuJf84pi3emTcA
fvyfvAGio/WuaW5pwL/iE5FRq6t4b+Um/BbFltiGvXhcYszSTWLBqzMYE79g
ro4XzZtXD7rkLXrXljfJAfyVnK7VSthW08Oyn/O0ltMA15iobzI3Vj4JpzIH
z3p/0W2n/S3KN0+3NrxJniFOOV8iP3m81dZzzYPvvH4m4Fyr2cE5Z/kGuore
lkzxe5Nz1Ti8cexZvUNsxF99zvN04Rqp5Xh9wOMNsiQGIj+zHQDOhFb9Qz40
rdtars4l1pVznuVOkjfIgD7ce708js5p3tle+hTXNLHfilvNm/iI98Zz7UzP
6726xbWvSc9hmdr3+rzGNVNyfpK8sS6Iy6gnePkPPTw/SjyI7pjHe3oxonlr
U6M13/pMwXKb8CYxaNUjrRvHhOzbVZ2sYRwbtV88IFZqvJWyvUaN09cR+9jD
q4fjxIPEgK4TwpGWwTxj7bTwJr4WnRlcl61c1bzxfdqqeTXuPH6Y06j2Sp+2
+rLHG3PN2O28SY23fFy7h2neAM5f767lnS883rieebmv+dV+j3iDzvo7zG7m
Tc7j0dlD7LHuctb3Es2nd1fR51teY8UI12BLJr+34iLiDeBvONEZrgbJ3ba8
wc86hrQs8Xt01o/uvB5vrL/V61gn6Mh6et8OMcb7YR500+dszxbOWc9Wzted
fC/B2qguRLxZ0PesJmcIviNrn0S86fMO12G51+i4wlj0TV/0sf5XgrHo/s75
5M3hu0Fb3vYLwGebXoK4k+/ltXtiIpFIJBIj+LNays+lTWwMzkifF0axNlfK
x9MxrHVfbw9lA33bOi0QTuA/9v/746W8nu0PKwdH+d6P3P56NcyV1fPd8gLZ
4nP4v0te168Nc/bv9+nmFBx9u7dpE2wb19/glWsZ17FJxzvXYAB6W7W3Kf9v
jwz13+1cQj/oWbOPOeG+0rf+bXiW2iHcgq8oHhHDiAms70t35BP8buXSXqwf
44A59foBOAbfmNelbyAbe2AvzifohLFpqAl9Q/cO9iN+I8YnkYvgAPsgZjhG
JIf69sNeAHjS5wD4Gb/bcAh+pA91ncuJ7ZAeBP8DffbDRCKRSCQSiUQikUgk
9iH+ASk4xGQ=
                  "], {{0, 43}, {110, 0}}, {0, 255}, ColorFunction -> 
                  RGBColor], 
                 BoxForm`ImageTag[
                 "Byte", ColorSpace -> "RGB", Interleaving -> True], 
                 Selectable -> False], BaseStyle -> "ImageGraphics", 
                ImageSize -> Automatic, ImageSizeRaw -> {110, 43}, 
                PlotRange -> {{0, 110}, {0, 43}}], ImageMargins -> 0, 
               Alignment -> {Right, Center}, ImageSize -> {71, 22}]}, "Row", 
             DisplayFunction -> (
              RowBox[{#, "\[InvisibleSpace]", #2, 
                "\[InvisibleSpace]", #3}]& ), 
             InterpretationFunction -> (RowBox[{"Row", "[", 
                RowBox[{"{", 
                  RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
            ImageSize -> {682, 22}]}, {
           TagBox[
            GridBox[{{
               ActionMenuBox[
                StyleBox[
                 
                 TemplateBox[{"\"Section \"", "\"3.1\""}, "Row", 
                  DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ),
                   InterpretationFunction -> (RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], StripOnInput -> 
                 False], {
                StyleBox[
                  "\"3.1 Introducing the Derivative\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["3.1 Introducing the Derivative"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"Tangent Lines\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["Tangent Lines"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.1  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.1  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.2  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.2  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"Tangent Lines and Rates of Change\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["Tangent Lines and Rates of Change"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.3  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.3  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"DEFINITION Rates of Change and the Tangent Line\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate[
                   "DEFINITION Rates of Change and the Tangent Line"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 1\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 1"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 1 Equation of a tangent line\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 1 Equation of a tangent line"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.4\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.4"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 2\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 2"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.5  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.5  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"DEFINITION (ALTERNATIVE) Rates of Change and the Tangent \
Line\"", {"MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
                   False] :> {
                   NotebookLocate[
                   "DEFINITION (ALTERNATIVE) Rates of Change and the Tangent \
Line"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 2 Equation of a tangent line\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 2 Equation of a tangent line"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.6\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.6"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 3\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 3"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"The Derivative Function\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["The Derivative Function"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.7  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.7  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"DEFINITION The Derivative\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["DEFINITION The Derivative"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 3 The slope of a curve\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 3 The slope of a curve"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.8  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.8  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 4\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 4"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"Derivative Notation\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["Derivative Notation"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.9  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.9  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 5\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 5"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 4 A derivative calculation\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 4 A derivative calculation"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.10\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.10"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 6\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 6"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 7\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 7"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 5 Another derivative calculation\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 5 Another derivative calculation"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"Graphs of Derivatives\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["Graphs of Derivatives"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 6 Graph of the derivative\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 6 Graph of the derivative"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.11  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.11  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.12  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.12  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 8\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 8"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 7 Graph of the derivative\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 7 Graph of the derivative"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.13  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.13  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.14  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.14  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"Continuity\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["Continuity"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"THEOREM 3.1 Differentiable Implies Continuous\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate[
                   "THEOREM 3.1 Differentiable Implies Continuous"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK 9\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK 9"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.15\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.15"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not \
Differentiable\"", {"MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate[
                   "THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not \
Differentiable"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.16  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.16  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.17  \[LightBulb]\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.17  \[LightBulb]"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"NOTE When Is a Function Not Differentiable at a \
Point?\"", {"MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
                   False] :> {
                   NotebookLocate[
                   "NOTE When Is a Function Not Differentiable at a Point?"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"EXAMPLE 8 Continuous and differentiable\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["EXAMPLE 8 Continuous and differentiable"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"FIGURE 3.18\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["FIGURE 3.18"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"SECTION 3.1 EXERCISES\"", {
                   "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
                   False] :> {
                   NotebookLocate["SECTION 3.1 EXERCISES"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}, 
                 StyleBox[
                  "\"QUICK CHECK ANSWERS\"", {
                   "MSG", FontWeight -> "Plain", FontSize -> 12}, 
                   StripOnInput -> False] :> {
                   NotebookLocate["QUICK CHECK ANSWERS"], 
                   FrontEndExecute[{
                    FrontEndToken["SelectionOpenAllGroups"]}]}}, 
                ImageSize -> {126, 24}, ImageMargins -> 0, FrameMargins -> 0, 
                BaseStyle -> {"MSG", 12}], 
               PaneBox[
                TemplateBox[{
                  InterpretationBox[
                   StyleBox[
                    
                    GraphicsBox[{}, ImageSize -> {10, 0}, BaselinePosition -> 
                    Baseline], "CacheGraphics" -> False], 
                   Spacer[10]], 
                  StyleBox[
                  "\"Introducing the Derivative\"", "SR", Bold, FontSize -> 
                   13, StripOnInput -> False]}, "Row", 
                 DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                 InterpretationFunction -> (RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], ImageMargins -> 0,
                 Alignment -> {Left, Center}, 
                BaseStyle -> {
                 LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}}, 
                ImageSize -> {472, 24}], 
               TagBox[
                TooltipBox[
                 ButtonBox[
                  GraphicsBox[{
                    AbsoluteThickness[1.5], 
                    GrayLevel[0.5], 
                    PolygonBox[{{0.01, 0.85}, {0.25, 0.85}, {0.105, 0.6}}], 
                    LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
                    
                    PolygonBox[{{0.3, 0.7}, {0.9, 0.7}, {0.9, 0.55}, {0.3, 
                    0.55}, {0.3, 0.7}}], 
                    PolygonBox[{{0.01, 0.45}, {0.25, 0.45}, {0.125, 0.2}}], 
                    LineBox[{{0.3, 0.4}, {0.9, 0.4}}], 
                    
                    PolygonBox[{{0.3, 0.3}, {0.9, 0.3}, {0.9, 0.15}, {0.3, 
                    0.15}, {0.3, 0.3}}]}, ImageSize -> 20, AspectRatio -> 1, 
                   PlotRange -> {{0, 1}, {0, 1}}], BaseStyle -> "Paste", 
                  ButtonFunction :> {
                    SelectionMove[
                    ButtonNotebook[], All, Notebook], 
                    FrontEndExecute[
                    FrontEndToken[
                    ButtonNotebook[], "SelectionOpenAllGroups"]], 
                    SelectionMove[
                    ButtonNotebook[], Before, Notebook]}, 
                  ImageSize -> {42, 24}, ImageMargins -> 0, FrameMargins -> 0,
                   Alignment -> Center], "\"Expanded View\"", TooltipDelay -> 
                 0.5, LabelStyle -> "TextStyling"], 
                Annotation[#, "Expanded View", "Tooltip"]& ], 
               TagBox[
                TooltipBox[
                 ButtonBox[
                  GraphicsBox[{
                    AbsoluteThickness[1.5], 
                    GrayLevel[0.5], 
                    PolygonBox[{{0.01, 0.65}, {0.2, 0.8}, {0.01, 0.95}}], 
                    LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
                    PolygonBox[{{0.01, 0.25}, {0.2, 0.4}, {0.01, 0.55}}], 
                    LineBox[{{0.3, 0.4}, {0.9, 0.4}}]}, ImageSize -> 20, 
                   AspectRatio -> 1, PlotRange -> {{0, 1}, {0, 1}}], 
                  BaseStyle -> "Paste", ButtonFunction :> {
                    NotebookFind[
                    ButtonNotebook[], "CalloutIcon", All, CellStyle, 
                    AutoScroll -> False], 
                    FrontEndExecute[
                    FrontEndToken[
                    ButtonNotebook[], "SelectionCloseAllGroups"]], 
                    NotebookFind[
                    ButtonNotebook[], "Subsubsubsubsection", All, CellStyle, 
                    AutoScroll -> False], 
                    FrontEndExecute[
                    FrontEndToken[
                    ButtonNotebook[], "SelectionCloseAllGroups"]], 
                    NotebookFind[
                    ButtonNotebook[], "Subsection", All, CellStyle, 
                    AutoScroll -> False], 
                    FrontEndExecute[
                    FrontEndToken[
                    ButtonNotebook[], "SelectionCloseAllGroups"]], 
                    SelectionMove[
                    ButtonNotebook[], Before, Notebook]}, 
                  ImageSize -> {42, 24}, ImageMargins -> 0, FrameMargins -> 0,
                   Alignment -> Center], "\"Outline View\"", TooltipDelay -> 
                 0.5, LabelStyle -> "TextStyling"], 
                Annotation[#, "Outline View", "Tooltip"]& ]}}, 
             GridBoxAlignment -> {
              "Columns" -> {{Left}}, "Rows" -> {{Center}}}, AutoDelete -> 
             False, GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{0.05}}, "Rows" -> {{0.05}}}], 
            "Grid"]}}, 
         GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
         AutoDelete -> False, 
         GridBoxItemSize -> {
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
         GridBoxSpacings -> {"Columns" -> {{0.05}}, "Rows" -> {{0.05}}}], 
        "Grid"]}}, 
     GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
     AutoDelete -> False, 
     GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
      GridBoxSpacings -> {"Columns" -> {{0.5}}, "Rows" -> {{0.5}}}], "Grid"]],
   "DockedCell", Background -> GrayLevel[0.95]],
PrintingCopies->1,
PrintingPageRange->{1, Automatic},
PageHeaders->{{
   Cell[
    TextData[{
      StyleBox["Chapter  3\nDerivatives", "SR", FontSize -> 11]}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}], 
   Cell[
    TextData[{
      StyleBox[
      "Section 3.1 Introducing the Derivative\n", "SR", FontSize -> 11]}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}], 
   Cell[
    TextData[{
      StyleBox["Page ", "TR", 11], 
      StyleBox[
       CounterBox["Page"], "TR", 11], "  \n"}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}]}, {
   Cell[
    TextData[{
      StyleBox["Chapter  3\nDerivatives", "SR", FontSize -> 11]}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}], 
   Cell[
    TextData[{
      StyleBox[
      "Section 3.1 Introducing the Derivative\n", "SR", FontSize -> 11]}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}], 
   Cell[
    TextData[{
      StyleBox["Page ", "TR", 11], 
      StyleBox[
       CounterBox["Page"], "TR", 11], "  \n"}], 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}]}},
PageFooters->{{
   Cell[
    TextData[{
      StyleBox["CALCULUS: ", "SR", FontSize -> 12], 
      StyleBox["EARLY TRANSCENDENTALS", "SR", FontSize -> 10], "\n", 
      StyleBox["Briggs, Cochran, Gillett, Schulz", "SR", 11]}], 
    CellMargins -> {{0, Inherited}, {Inherited, Inherited}}], 
   Cell[
    TextData[{"Printed: ", 
      ValueBox["Date"], "\n"}]], 
   Cell[
    TextData[{
      StyleBox[
      "Copyright \[Copyright] 2011, Pearson Education, Inc.", "TR", FontSize -> 
       10], "\n"}], 
    CellMargins -> {{0, Inherited}, {Inherited, Inherited}}]}, {
   Cell[
    TextData[{
      StyleBox["CALCULUS: ", "SR", FontSize -> 12], 
      StyleBox["EARLY TRANSCENDENTALS", "SR", FontSize -> 10], "\n", 
      StyleBox["Briggs, Cochran, Gillett, Schulz", "SR", 11]}], 
    CellMargins -> {{0, Inherited}, {Inherited, Inherited}}], 
   Cell[
    TextData[{"Printed: ", 
      ValueBox["Date"], "\n"}]], 
   Cell[
    TextData[{
      StyleBox[
      "Copyright \[Copyright] 2011, Pearson Education, Inc.", "TR", FontSize -> 
       10], "\n"}], CellMargins -> {{0, Inherited}, {Inherited, Inherited}}]}},
PrintingOptions->{"FacingPages"->False,
"FirstPageHeader"->True},
PrivateNotebookOptions->{"PluginToolbarEnabled"->False},
ShowCellBracket->False,
ShowCellTags->False,
Magnification->1,
GridBoxOptions->{AllowScriptLevelChange->False},
FrontEndVersion->"8.0 for Microsoft Windows (64-bit) (February 23, 2011)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "Default.nb"]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Section"], CellFrame -> {{0, 0}, {2, 0}}, ShowGroupOpener -> 
       False, CellMargins -> {{10, 0}, {3, 10}}, CellFrameColor -> 
       GrayLevel[0.5], FontFamily -> "Times", FontSize -> 20, FontWeight -> 
       "Bold", FontSlant -> "Plain", FontTracking -> "Wide"], 
      Cell[
       StyleData["Section", "Presentation"], CellFrame -> {{0, 0}, {2, 0}}, 
       ShowGroupOpener -> True, CellMargins -> {{10, 0}, {3, 10}}, 
       CellFrameColor -> GrayLevel[0.5], FontFamily -> "Times", FontSize -> 
       28, FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Wide"], 
      Cell[
       StyleData["Section", "SlideShow"], CellFrame -> {{0, 0}, {2, 0}}, 
       ShowGroupOpener -> True, CellMargins -> {{10, 0}, {3, 10}}, 
       CellFrameColor -> GrayLevel[0.5], FontFamily -> "Times", FontSize -> 
       28, FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Wide"], 
      Cell[
       StyleData["Section", "Printout"], CellFrame -> {{0, 0}, {2, 0}}, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       CellFrameColor -> GrayLevel[0.5], FontFamily -> "Times", FontSize -> 
       20, FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Wide"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsection"], CellFrame -> {{3, 0}, {0, 0.5}}, CellDingbat -> 
       None, ShowGroupOpener -> True, CellMargins -> {{15, 0}, {2, 5}}, 
       CellFrameColor -> GrayLevel[0.85], FontFamily -> "Times", FontSize -> 
       18, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["Subsection", "Presentation"], 
       CellFrame -> {{3, 0}, {0, 0.5}}, CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{15, 0}, {2, 5}}, CellFrameColor -> 
       GrayLevel[0.85], FontFamily -> "Times", FontSize -> 26, FontWeight -> 
       "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["Subsection", "SlideShow"], CellFrame -> {{3, 0}, {0, 0.5}}, 
       CellDingbat -> None, ShowGroupOpener -> True, 
       CellMargins -> {{15, 0}, {2, 5}}, CellFrameColor -> GrayLevel[0.85], 
       FontFamily -> "Times", FontSize -> 26, FontWeight -> "Bold", FontSlant -> 
       "Plain"], 
      Cell[
       StyleData["Subsection", "Printout"], CellFrame -> {{3, 0}, {0, 0.5}}, 
       CellDingbat -> None, ShowGroupOpener -> True, 
       CellMargins -> {{0, Inherited}, {2, 10}}, CellFrameColor -> 
       GrayLevel[0.85], FontFamily -> "Times", FontSize -> 18, FontWeight -> 
       "Bold", FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontFamily -> 
       "Helvetica", FontSize -> 14, FontWeight -> "Bold"], 
      Cell[
       StyleData["Subsubsection", "Presentation"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontSize -> 24], 
      Cell[
       StyleData["Subsubsection", "SlideShow"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontSize -> 24], 
      Cell[
       StyleData["Subsubsection", "Printout"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       FontSize -> 14]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontFamily -> "Times",
        FontSize -> 14, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["Subsubsubsection", "Presentation"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontFamily -> "Times", FontSize -> 22, FontSlant -> "Plain"], 
      Cell[
       StyleData["Subsubsubsection", "SlideShow"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontFamily -> "Times", FontSize -> 22, FontSlant -> "Plain"], 
      Cell[
       StyleData["Subsubsubsection", "Printout"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       FontFamily -> "Times", FontSize -> 14, FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsubsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontSize -> 14], 
      Cell[
       StyleData["Subsubsubsubsection", "Presentation"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontSize -> 20], 
      Cell[
       StyleData["Subsubsubsubsection", "SlideShow"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{30, Inherited}, {2, 10}}, 
       FontSize -> 20], 
      Cell[
       StyleData["Subsubsubsubsection", "Printout"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       FontSize -> 14]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Text"], CellMargins -> {{30, 10}, {7, 7}}, TabSpacings -> 3,
        FontSize -> 14], 
      Cell[
       StyleData["Text", "Presentation"], CellMargins -> {{30, 10}, {7, 7}}, 
       FontSize -> 20], 
      Cell[
       StyleData["Text", "SlideShow"], CellMargins -> {{30, 10}, {7, 7}}, 
       FontSize -> 20], 
      Cell[
       StyleData["Text", "Printout"], FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Item"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{50, 10}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15000}, 
       CellFrameLabelMargins -> 4, TabSpacings -> 3, CounterIncrements -> 
       "Item", CounterAssignments -> {{"Subitem", 0}, {"Subsubitem", 0}}, 
       FontSize -> 14, Notebook$$262`MenuPosition -> 1600, 
       Notebook$$27`ReturnCreatesNewCell -> True], 
      Cell[
       StyleData["Item", "Presentation"], CellMargins -> {{100, 10}, {7, 7}}, 
       CellFrameLabelMargins -> 6, FontSize -> 20], 
      Cell[
       StyleData["Item", "Presentation"], CellMargins -> {{100, 10}, {7, 7}}, 
       CellFrameLabelMargins -> 6, FontSize -> 20], 
      Cell[
       StyleData["Item", "Printout"], CellMargins -> {{50, 0}, {2, 2}}, 
       FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subitem"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{70, 12}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15100}, 
       CellFrameLabelMargins -> 4, DefaultNewCellStyle -> "Item", TabSpacings -> 
       3, CounterIncrements -> "Subitem", 
       CounterAssignments -> {{"Subsubitem", 0}}, FontSize -> 14, 
       Notebook$$262`MenuPosition -> 1610, Notebook$$27`ReturnCreatesNewCell -> 
       True], 
      Cell[
       StyleData["Subitem", "Presentation"], 
       CellMargins -> {{136, 12}, {7, 7}}, CellFrameLabelMargins -> 6, 
       FontSize -> 24], 
      Cell[
       StyleData["Subitem", "Printout"], CellMargins -> {{82, 2}, {1, 1}}, 
       FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubitem"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{90, 12}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15200}, 
       CellFrameLabelMargins -> 4, DefaultNewCellStyle -> "Subsubitem", 
       TabSpacings -> 3, CounterIncrements -> "Subsubitem", FontSize -> 14, 
       Notebook$$27`ReturnCreatesNewCell -> True], 
      Cell[
       StyleData["Subsubitem", "Presentation"], 
       CellMargins -> {{172, 12}, {7, 7}}, CellFrameLabelMargins -> 6, 
       FontSize -> 24], 
      Cell[
       StyleData["Subsubitem", "Printout"], CellMargins -> {{106, 2}, {1, 1}},
        FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["QuickCheckFont"], CellFrame -> {{0, 0}, {0, 0}}, FontFamily -> 
       "Helvetica", FontSize -> 11, FontWeight -> "Bold", FontSlant -> 
       "Plain"], 
      Cell[
       StyleData["QuickCheckFont", "Presentation"], FontFamily -> "Helvetica",
        FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["QuickCheckFont", "SlideShow"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["QuickCheckFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 11, FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       GrayLevel[0]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["QuickCheck"], CellMargins -> {{30, 10}, {7, 7}}, 
       CellGroupingRules -> {"GroupTogetherGrouping", 51}, 
       LineSpacing -> {1, 3}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["QuickCheck", "Presentation"], 
       CellMargins -> {{50, 50}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["QuickCheck", "SlideShow"], 
       CellMargins -> {{50, 50}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["QuickCheck", "Printout"], CellMargins -> {{0, 30}, {7, 7}}, 
       LineSpacing -> {1, 3}, FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["DefinitionFont"], FontFamily -> "Helvetica", FontSize -> 14,
        FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0.6, 0.408, 0.122]], 
      Cell[
       StyleData["DefinitionFont", "Presentation"], FontFamily -> "Helvetica",
        FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["DefinitionFont", "SlideShow"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["DefinitionFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Definition"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0.6, 0.408, 0.122], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["Definition", "Presentation"], 
       CellFrame -> {{0.5, 3}, {3, 0.5}}, CellMargins -> {{30, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, FontSize -> 20], 
      Cell[
       StyleData["Definition", "SlideShow"], 
       CellFrame -> {{0.5, 3}, {3, 0.5}}, CellMargins -> {{30, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, FontSize -> 20], 
      Cell[
       StyleData["Definition", "Printout"], CellFrame -> {{0.5, 3}, {3, 0.5}},
        CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TheoremFont"], FontFamily -> "Helvetica", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0, 0.451, 0.592]], 
      Cell[
       StyleData["TheoremFont", "Presentation"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["TheoremFont", "SlideShow"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["TheoremFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Theorem"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0, 0.451, 0.592], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["Theorem", "Presentation"], 
       CellFrame -> {{0.5, 3}, {3, 0.5}}, CellMargins -> {{30, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, FontSize -> 20], 
      Cell[
       StyleData["Theorem", "SlideShow"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Theorem", "Printout"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProofFont"], FontSize -> 14, FontWeight -> "Bold", 
       FontColor -> RGBColor[0., 0.576, 0.816]], 
      Cell[
       StyleData["ProofFont", "Presentation"], FontSize -> 20], 
      Cell[
       StyleData["ProofFont", "SlideShow"], FontSize -> 20], 
      Cell[
       StyleData["ProofFont", "Printout"], FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SummaryFont"], FontFamily -> "Helvetica", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0.204, 0.114, 0.396]], 
      Cell[
       StyleData["SummaryFont", "Presentation"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["SummaryFont", "SlideShow"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["SummaryFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Summary"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0.204, 0.114, 0.396], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["Summary", "Presentation"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Summary", "SlideShow"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Summary", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProcedureFont"], FontFamily -> "Helvetica", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Condensed", FontColor -> RGBColor[0.204, 0.114, 0.396]], 
      Cell[
       StyleData["ProcedureFont", "Presentation"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["ProcedureFont", "SlideShow"], FontFamily -> "Helvetica", 
       FontSize -> 20, FontWeight -> "Bold", FontSlant -> "Plain"], 
      Cell[
       StyleData["ProcedureFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Procedure"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0.204, 0.114, 0.396], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["Procedure", "Presentation"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Procedure", "SlideShow"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Procedure", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Important"], CellFrame -> {{0.5, 3}, {3, 0.5}}, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0.204, 0.114, 0.396], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontSize -> 14], 
      Cell[
       StyleData["Important", "Presentation"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Important", "SlideShow"], CellFrame -> 1, 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["Important", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExampleFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0, 0.576, 0.816]], 
      Cell[
       StyleData["ExampleFont", "Presentation"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["ExampleFont", "SlideShow"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["ExampleFont", "Printout"], FontFamily -> "Helvetica"]}, 
     Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SolutionFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0.796, 0, 0.42]], 
      Cell[
       StyleData["SolutionFont", "Presentation"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["SolutionFont", "SlideShow"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["SolutionFont", "Printout"], FontFamily -> "Helvetica"]}, 
     Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["RelatedExercises"], TextAlignment -> Right, FontSize -> 14, 
       FontSlant -> "Italic", FontColor -> RGBColor[0.796, 0, 0.42]], 
      Cell[
       StyleData["RelatedExercises", "Presentation"], TextAlignment -> Right, 
       FontSize -> 20, FontSlant -> "Italic"], 
      Cell[
       StyleData["RelatedExercises", "SlideShow"], TextAlignment -> Right, 
       FontSize -> 20, FontSlant -> "Italic"], 
      Cell[
       StyleData["RelatedExercises", "Printout"], TextAlignment -> Right, 
       FontSize -> 13, FontSlant -> "Italic"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FigureFont"], FontFamily -> "Helvetica", FontSize -> 13, 
       FontWeight -> "Bold", FontColor -> RGBColor[0., 0.576, 0.816]], 
      Cell[
       StyleData["FigureFont", "Presentation"]], 
      Cell[
       StyleData["FigureFont", "SlideShow"]], 
      Cell[
       StyleData["FigureFont", "Printout"]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FigureCaption"], CellMargins -> {{30, 30}, {7, 7}}, 
       LineSpacing -> {1, 3}, FontSize -> 14], 
      Cell[
       StyleData["FigureCaption", "Presentation"], 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["FigureCaption", "SlideShow"], 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       20], 
      Cell[
       StyleData["FigureCaption", "Printout"], 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13, $CellContext`PageBreakBefore -> False]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FigureFontText"], FontColor -> RGBColor[0., 0.576, 0.816]], 
      Cell[
       StyleData["FigureFontText", "Presentation"]], 
      Cell[
       StyleData["FigureFontText", "SlideShow"]], 
      Cell[
       StyleData["FigureFontText", "Printout"]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TableFont"], FontFamily -> "Helvetica", FontSize -> 13, 
       FontWeight -> "Bold", FontColor -> RGBColor[0, 0.576, 0.816]], 
      Cell[
       StyleData["TableFont", "Presentation"]], 
      Cell[
       StyleData["TableFont", "SlideShow"]], 
      Cell[
       StyleData["TableFont", "Printout"]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TableCell"], CellMargins -> {{30, 10}, {5, 5}}], 
      Cell[
       StyleData["TableCell", "Presentation"], 
       CellMargins -> {{30, 10}, {5, 5}}], 
      Cell[
       StyleData["TableCell", "SlideShow"], 
       CellMargins -> {{30, 10}, {5, 5}}], 
      Cell[
       StyleData["TableCell", "Printout"], CellMargins -> {{0, 0}, {5, 5}}]}, 
     Open]], 
   Cell[
    StyleData["Note"], FontFamily -> "Verdana", FontSize -> 10, FontColor -> 
    RGBColor[0.6, 0.4, 0.4]], 
   Cell[
    StyleData["SectionTitleFont"], FontWeight -> "Bold", FontTracking -> 
    "Wide", FontColor -> RGBColor[0.8, 0, 0.4]], 
   Cell[
    StyleData["TypesetAnnotationFont"], FontColor -> 
    RGBColor[0, 0.576, 0.816]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExerciseFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0.8, 0, 0.4]], 
      Cell[
       StyleData["ExerciseFont", "Presentation"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["ExerciseFont", "SlideShow"], FontFamily -> "Helvetica"], 
      Cell[
       StyleData["ExerciseFont", "Printout"], FontFamily -> "Helvetica"]}, 
     Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExerciseGroupFont"], FontFamily -> "Times", FontColor -> 
       RGBColor[0, 0.576, 0.816]], 
      Cell[
       StyleData["ExerciseGroupFont", "Presentation"], FontFamily -> "Times"], 
      Cell[
       StyleData["ExerciseGroupFont", "SlideShow"], FontFamily -> "Times"], 
      Cell[
       StyleData["ExerciseGroupFont", "Printout"], FontFamily -> "Times"]}, 
     Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExerciseDirectionsCell"], CellMargins -> {{30, 10}, {7, 7}},
        LineSpacing -> {1, 3}, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 14, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["ExerciseDirectionsCell", "Presentation"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["ExerciseDirectionsCell", "SlideShow"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["ExerciseDirectionsCell", "Printout"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 13, FontWeight -> "Plain", FontSlant -> 
       "Italic"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TExerciseDirectionsCell"], 
       CellMargins -> {{10, 10}, {7, 7}}, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -15, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 14, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["TExerciseDirectionsCell", "Presentation"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["TExerciseDirectionsCell", "SlideShow"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["TExerciseDirectionsCell", "Printout"], 
       CellMargins -> {{10, 10}, {7, 7}}, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -15, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 13, FontWeight -> "Plain", FontSlant -> "Italic"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SubExerciseDirectionsCell"], 
       CellMargins -> {{58, 10}, {2, 2}}, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -22, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 14, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["SubExerciseDirectionsCell", "Presentation"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["SubExerciseDirectionsCell", "SlideShow"], 
       CellMargins -> {{30, 10}, {7, 7}}, LineSpacing -> {1, 3}, FontFamily -> 
       "Times", FontSize -> 20, FontWeight -> "Plain", FontSlant -> "Italic"], 
      Cell[
       StyleData["SubExerciseDirectionsCell", "Printout"], 
       CellMargins -> {{58, 10}, {2, 2}}, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -16, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 13, FontWeight -> "Plain", FontSlant -> "Italic"]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Problem"], CellMargins -> {{30, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, ParagraphIndent -> -30, TabSpacings -> 2.5, 
       FontSize -> 14], 
      Cell[
       StyleData["Problem", "Presentation"], 
       CellMargins -> {{30, 10}, {7, 7}}, TabSpacings -> 2, LineIndent -> 1, 
       FontSize -> 20], 
      Cell[
       StyleData["Problem", "SlideShow"], CellMargins -> {{30, 10}, {7, 7}}, 
       TabSpacings -> 2, LineIndent -> 1, FontSize -> 20], 
      Cell[
       StyleData["Problem", "Printout"], CellMargins -> {{30, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, ParagraphIndent -> -21, TabSpacings -> 2.5, 
       FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TProblem"], CellMargins -> {{10, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, ParagraphIndent -> -47, TabSpacings -> 2, 
       FontSize -> 14], 
      Cell[
       StyleData["TProblem", "Presentation"], 
       CellMargins -> {{30, 10}, {7, 7}}, TabSpacings -> 2, LineIndent -> 1, 
       FontSize -> 20], 
      Cell[
       StyleData["TProblem", "SlideShow"], CellMargins -> {{30, 10}, {7, 7}}, 
       TabSpacings -> 2, LineIndent -> 1, FontSize -> 20], 
      Cell[
       StyleData["TProblem", "Printout"], CellMargins -> {{10, 10}, {7, 7}}, 
       LineSpacing -> {1, 3}, ParagraphIndent -> -36, TabSpacings -> 2, 
       FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SubProblem"], CellMargins -> {{58, 10}, {2, 2}}, 
       LineSpacing -> {1, 3}, ParagraphIndent -> -22, TabSpacings -> 2, 
       FontSize -> 14], 
      Cell[
       StyleData["SubProblem", "Presentation"], 
       CellMargins -> {{40, 10}, {7, 7}}, TabSpacings -> 2, LineIndent -> 1, 
       FontSize -> 20], 
      Cell[
       StyleData["SubProblem", "SlideShow"], 
       CellMargins -> {{40, 10}, {7, 7}}, TabSpacings -> 2, LineIndent -> 1, 
       FontSize -> 20], 
      Cell[
       StyleData["SubProblem", "Printout"], CellMargins -> {{58, 10}, {2, 2}},
        LineSpacing -> {1, 3}, ParagraphIndent -> -16, TabSpacings -> 2, 
       FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Comment"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 10}, {7, 7}}, CellFrameColor -> RGBColor[0, 0, 1],
        LineSpacing -> {1, 3}, FontSize -> 14, Background -> 
       RGBColor[0.87, 0.94, 1]], 
      Cell[
       StyleData["Comment", "Presentation"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 10}, {7, 7}}, CellFrameColor -> RGBColor[0, 0, 1],
        LineSpacing -> {1, 3}, FontSize -> 20, Background -> 
       RGBColor[0.87, 0.94, 1]], 
      Cell[
       StyleData["Comment", "SlideShow"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 10}, {7, 7}}, CellFrameColor -> RGBColor[0, 0, 1],
        LineSpacing -> {1, 3}, FontSize -> 20, Background -> 
       RGBColor[0.87, 0.94, 1]], 
      Cell[
       StyleData["Comment", "Printout"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 30}, {7, 7}}, LineSpacing -> {1, 3}, FontSize -> 
       13, Background -> RGBColor[0.87, 0.94, 1]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["CalloutIcon"], CellMargins -> {{30, 108}, {0, 0}}, 
       CellGroupingRules -> {"GroupTogetherGrouping", 100000}, CellFrameColor -> 
       RGBColor[0.976, 0.855, 0.514], TextAlignment -> Left, 
       LineSpacing -> {1, 2}, FontSize -> 13], 
      Cell[
       StyleData["CalloutIcon", "Printout"], 
       CellMargins -> {{30, 288}, {0, 2}}, PageBreakBelow -> False, 
       CellFrameColor -> RGBColor[0.976, 0.855, 0.514], LineSpacing -> {1, 2},
        FontSize -> 13]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["CalloutIconFont"], FontFamily -> "Verdana", FontSize -> 12, 
       FontColor -> RGBColor[0.68, 0.57, 0.34]], 
      Cell[
       StyleData["CalloutIconFont", "Printout"], FontFamily -> "Verdana", 
       FontSize -> 12, FontColor -> RGBColor[0.68, 0.57, 0.34]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Callout"], CellFrame -> 1, 
       CellMargins -> {{30, 108}, {2, 0}}, 
       CellGroupingRules -> {"GroupTogetherGrouping", 100000}, CellFrameColor -> 
       RGBColor[0.976, 0.855, 0.514], LineSpacing -> {1, 2}, 
       ParagraphSpacing -> {0, 6}, FontSize -> 13], 
      Cell[
       StyleData["Callout", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 180}, {2, 0}}, CellFrameColor -> 
       RGBColor[0.976, 0.855, 0.514], LineSpacing -> {1, 2}, 
       ParagraphSpacing -> {0, 6}, FontSize -> 13]}, Open]], 
   Cell[
    StyleData["InlineCell"], ScriptLevel -> 0, NumberSeparator -> ","], 
   Cell[
    StyleData["Output"], NumberSeparator -> ","]}, Visible -> False, 
  FrontEndVersion -> "8.0 for Microsoft Windows (64-bit) (February 23, 2011)",
   StyleDefinitions -> "PrivateStylesheetFormatting.nb"],
FrontEndPrivateOptions -> {"PluginToolbarEnabled" -> False}
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "3.1 Introducing the Derivative"->{
  Cell[2195, 65, 264, 6, 42, "Section",
   CellTags->"3.1 Introducing the Derivative"]},
 "Tangent Lines"->{
  Cell[2760, 82, 160, 3, 35, "Subsection",
   CellTags->"Tangent Lines"]},
 "FIGURE 3.1  \[LightBulb]"->{
  Cell[3211, 97, 4563, 89, 396, "Output",
   CellTags->"FIGURE 3.1  \[LightBulb]"]},
 "FIGURE 3.2  \[LightBulb]"->{
  Cell[8512, 210, 4482, 89, 414, "Output",
   CellTags->"FIGURE 3.2  \[LightBulb]"]},
 "Tangent Lines and Rates of Change"->{
  Cell[13272, 310, 226, 4, 32, "Subsection",
   CellTags->"Tangent Lines and Rates of Change"]},
 "FIGURE 3.3  \[LightBulb]"->{
  Cell[17346, 453, 8584, 171, 70, "Output",
   CellTags->"FIGURE 3.3  \[LightBulb]"]},
 "DEFINITION Rates of Change and the Tangent Line"->{
  Cell[28415, 710, 3117, 109, 70, "Definition",
   CellTags->"DEFINITION Rates of Change and the Tangent Line"]},
 "QUICK CHECK 1"->{
  Cell[31535, 821, 1511, 49, 70, "QuickCheck",
   CellTags->"QUICK CHECK 1"]},
 "EXAMPLE 1 Equation of a tangent line"->{
  Cell[33071, 874, 256, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 1 Equation of a tangent line"]},
 "FIGURE 3.4"->{
  Cell[41482, 1161, 34109, 566, 70, "Output",
   CellTags->"FIGURE 3.4"]},
 "QUICK CHECK 2"->{
  Cell[76175, 1746, 1009, 30, 70, "QuickCheck",
   CellTags->"QUICK CHECK 2"]},
 "FIGURE 3.5  \[LightBulb]"->{
  Cell[78713, 1841, 12052, 239, 70, "Output",
   CellTags->"FIGURE 3.5  \[LightBulb]"]},
 "DEFINITION (ALTERNATIVE) Rates of Change and the Tangent Line"->{
  Cell[92694, 2148, 2345, 79, 70, "Definition",
   CellTags->"DEFINITION (ALTERNATIVE) Rates of Change and the Tangent Line"]},
 "EXAMPLE 2 Equation of a tangent line"->{
  Cell[95064, 2231, 256, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 2 Equation of a tangent line"]},
 "FIGURE 3.6"->{
  Cell[102909, 2493, 27915, 464, 70, "Output",
   CellTags->"FIGURE 3.6"]},
 "QUICK CHECK 3"->{
  Cell[131406, 2976, 848, 22, 70, "QuickCheck",
   CellTags->"QUICK CHECK 3"]},
 "The Derivative Function"->{
  Cell[132291, 3003, 177, 3, 32, "Subsection",
   CellTags->"The Derivative Function"]},
 "FIGURE 3.7  \[LightBulb]"->{
  Cell[133171, 3030, 5204, 105, 70, "Output",
   CellTags->"FIGURE 3.7  \[LightBulb]"]},
 "DEFINITION The Derivative"->{
  Cell[142425, 3285, 1964, 68, 70, "Definition",
   CellTags->"DEFINITION The Derivative"]},
 "EXAMPLE 3 The slope of a curve"->{
  Cell[146518, 3426, 246, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 3 The slope of a curve"]},
 "FIGURE 3.8  \[LightBulb]"->{
  Cell[155076, 3696, 5037, 98, 70, "Output",
   CellTags->"FIGURE 3.8  \[LightBulb]"]},
 "QUICK CHECK 4"->{
  Cell[160557, 3810, 844, 24, 70, "QuickCheck",
   CellTags->"QUICK CHECK 4"]},
 "Derivative Notation"->{
  Cell[161438, 3839, 169, 3, 32, "Subsection",
   CellTags->"Derivative Notation"]},
 "FIGURE 3.9  \[LightBulb]"->{
  Cell[164845, 3958, 12906, 252, 70, "Output",
   CellTags->"FIGURE 3.9  \[LightBulb]"]},
 "QUICK CHECK 5"->{
  Cell[187039, 4516, 934, 31, 70, "QuickCheck",
   CellTags->"QUICK CHECK 5"]},
 "EXAMPLE 4 A derivative calculation"->{
  Cell[187998, 4551, 256, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 4 A derivative calculation"]},
 "FIGURE 3.10"->{
  Cell[196683, 4842, 17766, 298, 70, "Output",
   CellTags->"FIGURE 3.10"]},
 "QUICK CHECK 6"->{
  Cell[215030, 5159, 809, 23, 70, "QuickCheck",
   CellTags->"QUICK CHECK 6"]},
 "QUICK CHECK 7"->{
  Cell[218344, 5278, 809, 25, 70, "QuickCheck",
   CellTags->"QUICK CHECK 7"]},
 "EXAMPLE 5 Another derivative calculation"->{
  Cell[219178, 5307, 266, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 5 Another derivative calculation"]},
 "Graphs of Derivatives"->{
  Cell[224386, 5468, 176, 3, 32, "Subsection",
   CellTags->"Graphs of Derivatives"]},
 "EXAMPLE 6 Graph of the derivative"->{
  Cell[225311, 5504, 250, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 6 Graph of the derivative"]},
 "FIGURE 3.11  \[LightBulb]"->{
  Cell[225887, 5526, 4731, 96, 70, "Output",
   CellTags->"FIGURE 3.11  \[LightBulb]"]},
 "FIGURE 3.12  \[LightBulb]"->{
  Cell[235199, 5789, 8401, 163, 70, "Output",
   CellTags->"FIGURE 3.12  \[LightBulb]"]},
 "QUICK CHECK 8"->{
  Cell[244779, 5997, 946, 32, 70, "QuickCheck",
   CellTags->"QUICK CHECK 8"]},
 "EXAMPLE 7 Graph of the derivative"->{
  Cell[245750, 6033, 250, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 7 Graph of the derivative"]},
 "FIGURE 3.13  \[LightBulb]"->{
  Cell[246382, 6057, 4229, 86, 70, "Output",
   CellTags->"FIGURE 3.13  \[LightBulb]"]},
 "FIGURE 3.14  \[LightBulb]"->{
  Cell[255399, 6333, 12275, 246, 70, "Output",
   CellTags->"FIGURE 3.14  \[LightBulb]"]},
 "Continuity"->{
  Cell[268154, 6598, 154, 3, 32, "Subsection",
   CellTags->"Continuity"]},
 "THEOREM 3.1 Differentiable Implies Continuous"->{
  Cell[268687, 6612, 600, 21, 70, "Theorem",
   CellTags->"THEOREM 3.1 Differentiable Implies Continuous"]},
 "QUICK CHECK 9"->{
  Cell[277571, 6902, 907, 28, 70, "QuickCheck",
   CellTags->"QUICK CHECK 9"]},
 "FIGURE 3.15"->{
  Cell[279190, 6956, 18581, 311, 70, "Output",
   CellTags->"FIGURE 3.15"]},
 "THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not Differentiable"->{
  Cell[297913, 7272, 763, 23, 70, "Theorem",
   CellTags->
    "THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not Differentiable"]},
 "FIGURE 3.16  \[LightBulb]"->{
  Cell[304781, 7491, 7142, 142, 70, "Output",
   CellTags->"FIGURE 3.16  \[LightBulb]"]},
 "FIGURE 3.17  \[LightBulb]"->{
  Cell[314448, 7716, 23605, 444, 70, "Output",
   CellTags->"FIGURE 3.17  \[LightBulb]"]},
 "NOTE When Is a Function Not Differentiable at a Point?"->{
  Cell[338056, 8162, 1142, 44, 70, "Important",
   CellTags->"NOTE When Is a Function Not Differentiable at a Point?"]},
 "EXAMPLE 8 Continuous and differentiable"->{
  Cell[339223, 8210, 264, 6, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 8 Continuous and differentiable"]},
 "FIGURE 3.18"->{
  Cell[340708, 8269, 13044, 220, 70, "Output",
   CellTags->"FIGURE 3.18"]},
 "SECTION 3.1 EXERCISES"->{
  Cell[353942, 8498, 210, 3, 32, "Subsection",
   CellTags->"SECTION 3.1 EXERCISES"]},
 "QUICK CHECK ANSWERS"->{
  Cell[658289, 14993, 502, 17, 34, "Subsubsubsubsection",
   CellTags->"QUICK CHECK ANSWERS"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"3.1 Introducing the Derivative", 733682, 16630},
 {"Tangent Lines", 733791, 16633},
 {"FIGURE 3.1  \[LightBulb]", 733897, 16636},
 {"FIGURE 3.2  \[LightBulb]", 734013, 16639},
 {"Tangent Lines and Rates of Change", 734139, 16642},
 {"FIGURE 3.3  \[LightBulb]", 734267, 16645},
 {"DEFINITION Rates of Change and the Tangent Line", 734408, 16648},
 {"QUICK CHECK 1", 734542, 16651},
 {"EXAMPLE 1 Equation of a tangent line", 734664, 16654},
 {"FIGURE 3.4", 734787, 16657},
 {"QUICK CHECK 2", 734882, 16660},
 {"FIGURE 3.5  \[LightBulb]", 734993, 16663},
 {"DEFINITION (ALTERNATIVE) Rates of Change and the Tangent Line", 735150, \
16666},
 {"EXAMPLE 2 Equation of a tangent line", 735321, 16669},
 {"FIGURE 3.6", 735445, 16672},
 {"QUICK CHECK 3", 735541, 16675},
 {"The Derivative Function", 735651, 16678},
 {"FIGURE 3.7  \[LightBulb]", 735771, 16681},
 {"DEFINITION The Derivative", 735892, 16684},
 {"EXAMPLE 3 The slope of a curve", 736022, 16687},
 {"FIGURE 3.8  \[LightBulb]", 736155, 16690},
 {"QUICK CHECK 4", 736263, 16693},
 {"Derivative Notation", 736369, 16696},
 {"FIGURE 3.9  \[LightBulb]", 736485, 16699},
 {"QUICK CHECK 5", 736595, 16702},
 {"EXAMPLE 4 A derivative calculation", 736716, 16705},
 {"FIGURE 3.10", 736840, 16708},
 {"QUICK CHECK 6", 736937, 16711},
 {"QUICK CHECK 7", 737037, 16714},
 {"EXAMPLE 5 Another derivative calculation", 737164, 16717},
 {"Graphs of Derivatives", 737304, 16720},
 {"EXAMPLE 6 Graph of the derivative", 737431, 16723},
 {"FIGURE 3.11  \[LightBulb]", 737568, 16726},
 {"FIGURE 3.12  \[LightBulb]", 737689, 16729},
 {"QUICK CHECK 8", 737799, 16732},
 {"EXAMPLE 7 Graph of the derivative", 737919, 16735},
 {"FIGURE 3.13  \[LightBulb]", 738056, 16738},
 {"FIGURE 3.14  \[LightBulb]", 738177, 16741},
 {"Continuity", 738285, 16744},
 {"THEOREM 3.1 Differentiable Implies Continuous", 738413, 16747},
 {"QUICK CHECK 9", 738542, 16750},
 {"FIGURE 3.15", 738640, 16753},
 {"THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not Differentiable", \
738791, 16756},
 {"FIGURE 3.16  \[LightBulb]", 738959, 16760},
 {"FIGURE 3.17  \[LightBulb]", 739081, 16763},
 {"NOTE When Is a Function Not Differentiable at a Point?", 739233, 16766},
 {"EXAMPLE 8 Continuous and differentiable", 739400, 16769},
 {"FIGURE 3.18", 739529, 16772},
 {"SECTION 3.1 EXERCISES", 739634, 16775},
 {"QUICK CHECK ANSWERS", 739747, 16778}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[604, 21, 1564, 40, 155, "Text"],
Cell[CellGroupData[{
Cell[2193, 65, 264, 6, 42, "Section",
 CellTags->"3.1 Introducing the Derivative"],
Cell[2460, 73, 273, 5, 49, "Text"],
Cell[CellGroupData[{
Cell[2758, 82, 160, 3, 35, "Subsection",
 CellTags->"Tangent Lines"],
Cell[2921, 87, 285, 8, 24, "Item"],
Cell[3209, 97, 4563, 89, 396, "Output",
 CellTags->"FIGURE 3.1  \[LightBulb]"],
Cell[CellGroupData[{
Cell[7797, 190, 260, 7, 24, "Item"],
Cell[8060, 199, 435, 8, 41, "Item"]
}, Open  ]],
Cell[8510, 210, 4482, 89, 414, "Output",
 CellTags->"FIGURE 3.2  \[LightBulb]"],
Cell[12995, 301, 238, 4, 70, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13270, 310, 226, 4, 32, "Subsection",
 CellTags->"Tangent Lines and Rates of Change"],
Cell[13499, 316, 1345, 49, 70, "Text"],
Cell[14847, 367, 677, 19, 70, "Text"],
Cell[15527, 388, 434, 15, 70, "Text"],
Cell[CellGroupData[{
Cell[15986, 407, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[16851, 436, 478, 14, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[17344, 453, 8584, 171, 70, "Output",
 CellTags->"FIGURE 3.3  \[LightBulb]"],
Cell[25931, 626, 794, 25, 70, "Text"],
Cell[26728, 653, 728, 21, 70, "Text"],
Cell[27459, 676, 951, 32, 70, "Text"],
Cell[28413, 710, 3117, 109, 70, "Definition",
 CellTags->"DEFINITION Rates of Change and the Tangent Line"],
Cell[31533, 821, 1511, 49, 70, "QuickCheck",
 CellTags->"QUICK CHECK 1"],
Cell[CellGroupData[{
Cell[33069, 874, 256, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 1 Equation of a tangent line"],
Cell[33328, 882, 604, 20, 70, "Text"],
Cell[33935, 904, 432, 16, 70, "Text"],
Cell[CellGroupData[{
Cell[34392, 924, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[35257, 953, 1173, 38, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[CellGroupData[{
Cell[36467, 996, 104, 1, 70, "Subsubsubsubsection"],
Cell[36574, 999, 279, 9, 70, "Text"],
Cell[36856, 1010, 3091, 87, 70, "Text"],
Cell[39950, 1099, 548, 19, 70, "Text"],
Cell[40501, 1120, 976, 39, 70, "Text"],
Cell[41480, 1161, 34109, 566, 70, "Output",
 CellTags->"FIGURE 3.4"],
Cell[75592, 1729, 137, 1, 70, "FigureCaption"],
Cell[75732, 1732, 414, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]],
Cell[76173, 1746, 1009, 30, 70, "QuickCheck",
 CellTags->"QUICK CHECK 2"],
Cell[77185, 1778, 1523, 61, 70, "Text"],
Cell[78711, 1841, 12052, 239, 70, "Output",
 CellTags->"FIGURE 3.5  \[LightBulb]"],
Cell[90766, 2082, 1262, 42, 70, "Text"],
Cell[92031, 2126, 658, 20, 70, "Text"],
Cell[92692, 2148, 2345, 79, 70, "Definition",
 CellTags->"DEFINITION (ALTERNATIVE) Rates of Change and the Tangent Line"],
Cell[CellGroupData[{
Cell[95062, 2231, 256, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 2 Equation of a tangent line"],
Cell[95321, 2239, 418, 15, 70, "Text"],
Cell[CellGroupData[{
Cell[95764, 2258, 104, 1, 70, "Subsubsubsubsection"],
Cell[95871, 2261, 373, 12, 70, "Text"],
Cell[96247, 2275, 860, 26, 70, "Text"],
Cell[97110, 2303, 370, 13, 70, "Text"],
Cell[97483, 2318, 2752, 76, 70, "Text"],
Cell[CellGroupData[{
Cell[100260, 2398, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[101125, 2427, 819, 25, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[101959, 2455, 945, 36, 70, "Text"],
Cell[102907, 2493, 27915, 464, 70, "Output",
 CellTags->"FIGURE 3.6"],
Cell[130825, 2959, 135, 1, 70, "FigureCaption"],
Cell[130963, 2962, 414, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]],
Cell[131404, 2976, 848, 22, 70, "QuickCheck",
 CellTags->"QUICK CHECK 3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[132289, 3003, 177, 3, 32, "Subsection",
 CellTags->"The Derivative Function"],
Cell[132469, 3008, 697, 20, 70, "Text"],
Cell[133169, 3030, 5204, 105, 70, "Output",
 CellTags->"FIGURE 3.7  \[LightBulb]"],
Cell[138376, 3137, 920, 32, 70, "Text"],
Cell[139299, 3171, 759, 23, 70, "Text"],
Cell[140061, 3196, 858, 31, 70, "Text"],
Cell[CellGroupData[{
Cell[140944, 3231, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[141809, 3260, 599, 22, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[142423, 3285, 1964, 68, 70, "Definition",
 CellTags->"DEFINITION The Derivative"],
Cell[CellGroupData[{
Cell[144412, 3357, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[145277, 3386, 1202, 35, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[CellGroupData[{
Cell[146516, 3426, 246, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 3 The slope of a curve"],
Cell[146765, 3434, 423, 14, 70, "Text"],
Cell[CellGroupData[{
Cell[147213, 3452, 104, 1, 70, "Subsubsubsubsection"],
Cell[147320, 3455, 4506, 122, 70, "Text"],
Cell[CellGroupData[{
Cell[151851, 3581, 863, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[152717, 3610, 702, 23, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[153434, 3636, 1637, 58, 70, "Text"],
Cell[155074, 3696, 5037, 98, 70, "Output",
 CellTags->"FIGURE 3.8  \[LightBulb]"],
Cell[160114, 3796, 414, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]],
Cell[160555, 3810, 844, 24, 70, "QuickCheck",
 CellTags->"QUICK CHECK 4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[161436, 3839, 169, 3, 32, "Subsection",
 CellTags->"Derivative Notation"],
Cell[161608, 3844, 2415, 88, 70, "Text"],
Cell[164026, 3934, 814, 22, 70, "Text"],
Cell[164843, 3958, 12906, 252, 70, "Output",
 CellTags->"FIGURE 3.9  \[LightBulb]"],
Cell[177752, 4212, 454, 16, 70, "Text"],
Cell[178209, 4230, 1483, 40, 70, "Text"],
Cell[179695, 4272, 888, 30, 70, "Text"],
Cell[CellGroupData[{
Cell[180608, 4306, 863, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[181474, 4335, 974, 33, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[182463, 4371, 511, 16, 70, "Text"],
Cell[182977, 4389, 1002, 29, 70, "Text"],
Cell[CellGroupData[{
Cell[184004, 4422, 861, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[184868, 4451, 693, 15, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[185576, 4469, 359, 10, 70, "Text"],
Cell[185938, 4481, 1096, 33, 70, "Text"],
Cell[187037, 4516, 934, 31, 70, "QuickCheck",
 CellTags->"QUICK CHECK 5"],
Cell[CellGroupData[{
Cell[187996, 4551, 256, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 4 A derivative calculation"],
Cell[188255, 4559, 256, 10, 70, "Text"],
Cell[188514, 4571, 304, 11, 70, "Text"],
Cell[188821, 4584, 355, 13, 70, "Text"],
Cell[CellGroupData[{
Cell[189201, 4601, 104, 1, 70, "Subsubsubsubsection"],
Cell[189308, 4604, 140, 5, 70, "Text"],
Cell[189451, 4611, 3611, 98, 70, "Text"],
Cell[CellGroupData[{
Cell[193087, 4713, 864, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[193954, 4742, 890, 27, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[194859, 4772, 255, 9, 70, "Text"],
Cell[195117, 4783, 794, 24, 70, "Text"],
Cell[195914, 4809, 764, 31, 70, "Text"],
Cell[196681, 4842, 17766, 298, 70, "Output",
 CellTags->"FIGURE 3.10"],
Cell[214450, 5142, 136, 1, 70, "FigureCaption"],
Cell[214589, 5145, 412, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]],
Cell[215028, 5159, 809, 23, 70, "QuickCheck",
 CellTags->"QUICK CHECK 6"],
Cell[215840, 5184, 916, 31, 70, "Text"],
Cell[216759, 5217, 677, 21, 70, "Text"],
Cell[217439, 5240, 900, 36, 70, "Text"],
Cell[218342, 5278, 809, 25, 70, "QuickCheck",
 CellTags->"QUICK CHECK 7"],
Cell[CellGroupData[{
Cell[219176, 5307, 266, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 5 Another derivative calculation"],
Cell[219445, 5315, 393, 16, 70, "Text"],
Cell[CellGroupData[{
Cell[219863, 5335, 104, 1, 70, "Subsubsubsubsection"],
Cell[219970, 5338, 3934, 111, 70, "Text"],
Cell[223907, 5451, 416, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[224384, 5468, 176, 3, 32, "Subsection",
 CellTags->"Graphs of Derivatives"],
Cell[224563, 5473, 721, 27, 70, "Text"],
Cell[CellGroupData[{
Cell[225309, 5504, 250, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 6 Graph of the derivative"],
Cell[225562, 5512, 320, 12, 70, "Text"],
Cell[225885, 5526, 4731, 96, 70, "Output",
 CellTags->"FIGURE 3.11  \[LightBulb]"],
Cell[CellGroupData[{
Cell[230641, 5626, 104, 1, 70, "Subsubsubsubsection"],
Cell[230748, 5629, 1541, 63, 70, "Text"],
Cell[CellGroupData[{
Cell[232314, 5696, 862, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[233179, 5725, 2003, 61, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[235197, 5789, 8401, 163, 70, "Output",
 CellTags->"FIGURE 3.12  \[LightBulb]"],
Cell[243601, 5954, 732, 27, 70, "Text"],
Cell[244336, 5983, 414, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]],
Cell[244777, 5997, 946, 32, 70, "QuickCheck",
 CellTags->"QUICK CHECK 8"],
Cell[CellGroupData[{
Cell[245748, 6033, 250, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 7 Graph of the derivative"],
Cell[246001, 6041, 376, 14, 70, "Text"],
Cell[246380, 6057, 4229, 86, 70, "Output",
 CellTags->"FIGURE 3.13  \[LightBulb]"],
Cell[CellGroupData[{
Cell[250634, 6147, 104, 1, 70, "Subsubsubsubsection"],
Cell[250741, 6150, 347, 10, 70, "Text"],
Cell[251091, 6162, 565, 21, 70, "Text"],
Cell[251659, 6185, 738, 24, 70, "Text"],
Cell[252400, 6211, 336, 12, 70, "Text"],
Cell[252739, 6225, 926, 36, 70, "Text"],
Cell[253668, 6263, 1071, 43, 70, "Text"],
Cell[254742, 6308, 652, 23, 70, "Text"],
Cell[255397, 6333, 12275, 246, 70, "Output",
 CellTags->"FIGURE 3.14  \[LightBulb]"],
Cell[267675, 6581, 416, 10, 70, "RelatedExercises"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[268152, 6598, 154, 3, 32, "Subsection",
 CellTags->"Continuity"],
Cell[268309, 6603, 373, 7, 70, "Text"],
Cell[268685, 6612, 600, 21, 70, "Theorem",
 CellTags->"THEOREM 3.1 Differentiable Implies Continuous"],
Cell[269288, 6635, 304, 10, 70, "Text"],
Cell[269595, 6647, 673, 21, 70, "Text"],
Cell[270271, 6670, 514, 18, 70, "Text"],
Cell[270788, 6690, 942, 29, 70, "Text"],
Cell[CellGroupData[{
Cell[271755, 6723, 864, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[272622, 6752, 508, 13, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[273145, 6768, 286, 9, 70, "Text"],
Cell[273434, 6779, 3347, 93, 70, "Text"],
Cell[276784, 6874, 782, 26, 70, "Text"],
Cell[277569, 6902, 907, 28, 70, "QuickCheck",
 CellTags->"QUICK CHECK 9"],
Cell[278479, 6932, 706, 22, 70, "Text"],
Cell[279188, 6956, 18581, 311, 70, "Output",
 CellTags->"FIGURE 3.15"],
Cell[297772, 7269, 136, 1, 70, "FigureCaption"],
Cell[297911, 7272, 763, 23, 70, "Theorem",
 CellTags->
  "THEOREM 3.1 (ALTERNATIVE) Not Continuous Implies Not Differentiable"],
Cell[CellGroupData[{
Cell[298699, 7299, 861, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[299563, 7328, 791, 14, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[300369, 7345, 2169, 72, 70, "Text"],
Cell[CellGroupData[{
Cell[302563, 7421, 861, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[303427, 7450, 1337, 38, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[304779, 7491, 7142, 142, 70, "Output",
 CellTags->"FIGURE 3.16  \[LightBulb]"],
Cell[311924, 7635, 1330, 40, 70, "Text"],
Cell[CellGroupData[{
Cell[313279, 7679, 861, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[314143, 7708, 288, 5, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[314446, 7716, 23605, 444, 70, "Output",
 CellTags->"FIGURE 3.17  \[LightBulb]"],
Cell[338054, 8162, 1142, 44, 70, "Important",
 CellTags->"NOTE When Is a Function Not Differentiable at a Point?"],
Cell[CellGroupData[{
Cell[339221, 8210, 264, 6, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 8 Continuous and differentiable"],
Cell[339488, 8218, 232, 8, 70, "Text"],
Cell[339723, 8228, 980, 39, 70, "Text"],
Cell[340706, 8269, 13044, 220, 70, "Output",
 CellTags->"FIGURE 3.18"],
Cell[353753, 8491, 138, 1, 70, "FigureCaption"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[353940, 8498, 210, 3, 32, "Subsection",
 CellTags->"SECTION 3.1 EXERCISES"],
Cell[CellGroupData[{
Cell[354175, 8505, 185, 3, 70, "Subsubsubsubsection"],
Cell[354363, 8510, 284, 6, 70, "Problem"],
Cell[354650, 8518, 230, 6, 70, "Problem"],
Cell[354883, 8526, 239, 6, 70, "Problem"],
Cell[355125, 8534, 312, 12, 70, "Problem"],
Cell[355440, 8548, 439, 17, 70, "Problem"],
Cell[355882, 8567, 518, 10, 70, "Problem",
 CellGroupingRules->"NormalGrouping"],
Cell[356403, 8579, 354, 11, 70, "Problem"],
Cell[356760, 8592, 460, 19, 70, "Problem"],
Cell[357223, 8613, 464, 19, 70, "Problem"],
Cell[357690, 8634, 325, 11, 70, "Problem"]
}, Open  ]],
Cell[CellGroupData[{
Cell[358052, 8650, 182, 3, 70, "Subsubsubsubsection"],
Cell[358237, 8655, 389, 6, 70, "ExerciseDirectionsCell"],
Cell[358629, 8663, 1098, 33, 70, "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping"],
Cell[CellGroupData[{
Cell[359752, 8700, 899, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[360654, 8729, 831, 25, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[361500, 8757, 457, 17, 70, "Problem"],
Cell[361960, 8776, 555, 21, 70, "Problem"],
Cell[362518, 8799, 498, 19, 70, "Problem"],
Cell[363019, 8820, 458, 16, 70, "Problem"],
Cell[363480, 8838, 523, 19, 70, "Problem"],
Cell[364006, 8859, 528, 19, 70, "Problem"],
Cell[364537, 8880, 411, 6, 70, "ExerciseDirectionsCell"],
Cell[364951, 8888, 809, 24, 70, "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping"],
Cell[CellGroupData[{
Cell[365785, 8916, 899, 27, 70, "CalloutIcon",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[366687, 8945, 858, 26, 70, "Callout",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Open  ]],
Cell[367560, 8974, 550, 18, 70, "Problem"],
Cell[368113, 8994, 624, 21, 70, "Problem"],
Cell[368740, 9017, 555, 18, 70, "Problem"],
Cell[369298, 9037, 579, 19, 70, "Problem"],
Cell[369880, 9058, 624, 21, 70, "Problem"],
Cell[370507, 9081, 544, 18, 70, "Problem"],
Cell[371054, 9101, 240, 7, 70, "ExerciseDirectionsCell"],
Cell[371297, 9110, 770, 28, 70, "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping"],
Cell[372070, 9140, 417, 16, 70, "Problem"],
Cell[372490, 9158, 407, 15, 70, "Problem"],
Cell[372900, 9175, 494, 19, 70, "Problem"],
Cell[373397, 9196, 478, 17, 70, "Problem"],
Cell[373878, 9215, 493, 18, 70, "Problem"],
Cell[374374, 9235, 477, 17, 70, "Problem"],
Cell[374854, 9254, 234, 7, 70, "ExerciseDirectionsCell"],
Cell[375091, 9263, 916, 35, 70, "SubExerciseDirectionsCell",
 CellGroupingRules->"NormalGrouping"],
Cell[376010, 9300, 485, 18, 70, "Problem"],
Cell[376498, 9320, 426, 16, 70, "Problem"],
Cell[376927, 9338, 484, 18, 70, "Problem"],
Cell[377414, 9358, 500, 18, 70, "Problem"],
Cell[377917, 9378, 201, 7, 70, "Problem"],
Cell[378121, 9387, 673, 25, 70, "SubProblem"],
Cell[378797, 9414, 455, 16, 70, "SubProblem"],
Cell[379255, 9432, 250, 8, 70, "Problem"],
Cell[379508, 9442, 665, 23, 70, "SubProblem"],
Cell[380176, 9467, 412, 15, 70, "SubProblem"],
Cell[380591, 9484, 329, 7, 70, "ExerciseDirectionsCell"],
Cell[380923, 9493, 427, 16, 70, "Problem"],
Cell[381353, 9511, 401, 15, 70, "Problem"],
Cell[381757, 9528, 408, 16, 70, "Problem"],
Cell[382168, 9546, 452, 16, 70, "Problem"],
Cell[382623, 9564, 375, 13, 70, "ExerciseDirectionsCell"],
Cell[383001, 9579, 142, 5, 70, "Problem"],
Cell[383146, 9586, 13266, 223, 70, "Output"],
Cell[396415, 9811, 142, 5, 70, "Problem"],
Cell[396560, 9818, 11276, 191, 70, "Output"],
Cell[407839, 10011, 397, 10, 70, "Problem"],
Cell[408239, 10023, 29409, 488, 70, "Output"],
Cell[437651, 10513, 25578, 425, 70, "Output"],
Cell[463232, 10940, 404, 13, 70, "ExerciseDirectionsCell"],
Cell[463639, 10955, 142, 5, 70, "Problem"],
Cell[463784, 10962, 8663, 148, 70, "Output"],
Cell[472450, 11112, 142, 5, 70, "Problem"],
Cell[472595, 11119, 7203, 124, 70, "Output"],
Cell[479801, 11245, 142, 5, 70, "Problem"],
Cell[479946, 11252, 6924, 119, 70, "Output"],
Cell[486873, 11373, 345, 11, 70, "Problem"],
Cell[487221, 11386, 869, 37, 70, "SubProblem"],
Cell[488093, 11425, 10796, 183, 70, "Output"],
Cell[498892, 11610, 393, 12, 70, "Problem"],
Cell[499288, 11624, 920, 38, 70, "SubProblem"],
Cell[500211, 11664, 11040, 187, 70, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[511288, 11856, 191, 3, 70, "Subsubsubsubsection"],
Cell[511482, 11861, 308, 9, 70, "Problem"],
Cell[511793, 11872, 1855, 70, 70, "SubProblem"],
Cell[513651, 11944, 761, 31, 70, "Problem"],
Cell[514415, 11977, 194, 3, 70, "ExerciseDirectionsCell"],
Cell[514612, 11982, 718, 25, 70, "SubExerciseDirectionsCell"],
Cell[515333, 12009, 490, 18, 70, "Problem"],
Cell[515826, 12029, 419, 16, 70, "Problem"],
Cell[516248, 12047, 418, 17, 70, "Problem"],
Cell[516669, 12066, 373, 15, 70, "Problem"],
Cell[517045, 12083, 552, 21, 70, "ExerciseDirectionsCell"],
Cell[517600, 12106, 520, 17, 70, "SubExerciseDirectionsCell"],
Cell[518123, 12125, 143, 5, 70, "Problem"],
Cell[518269, 12132, 13288, 224, 70, "Output"],
Cell[531560, 12358, 144, 5, 70, "Problem"],
Cell[531707, 12365, 11764, 199, 70, "Output"],
Cell[543474, 12566, 745, 28, 70, "Problem"],
Cell[544222, 12596, 605, 20, 70, "Problem",
 CellGroupingRules->"NormalGrouping"],
Cell[544830, 12618, 836, 25, 70, "Problem",
 CellGroupingRules->"NormalGrouping"],
Cell[545669, 12645, 265, 4, 70, "Problem",
 CellGroupingRules->"NormalGrouping"]
}, Open  ]],
Cell[CellGroupData[{
Cell[545971, 12654, 183, 3, 70, "Subsubsubsubsection"],
Cell[546157, 12659, 1271, 37, 70, "TProblem"],
Cell[547431, 12698, 789, 29, 70, "SubProblem"],
Cell[548223, 12729, 24509, 408, 70, "Output"],
Cell[572735, 13139, 813, 27, 70, "TProblem"],
Cell[573551, 13168, 674, 14, 70, "SubProblem"],
Cell[574228, 13184, 53663, 886, 70, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[627928, 14075, 188, 3, 70, "Subsubsubsubsection"],
Cell[628119, 14080, 1835, 70, 70, "ExerciseDirectionsCell"],
Cell[629957, 14152, 926, 40, 70, "SubExerciseDirectionsCell"],
Cell[630886, 14194, 473, 17, 70, "Problem"],
Cell[631362, 14213, 606, 23, 70, "Problem"],
Cell[631971, 14238, 1288, 43, 70, "ExerciseDirectionsCell"],
Cell[633262, 14283, 621, 21, 70, "TProblem"],
Cell[633886, 14306, 1246, 52, 70, "SubProblem"],
Cell[635135, 14360, 1740, 58, 70, "Problem"],
Cell[636878, 14420, 429, 16, 70, "Problem"],
Cell[637310, 14438, 617, 21, 70, "TProblem"],
Cell[637930, 14461, 534, 22, 70, "SubProblem"],
Cell[638467, 14485, 687, 23, 70, "ExerciseDirectionsCell"],
Cell[639157, 14510, 426, 16, 70, "Problem"],
Cell[639586, 14528, 384, 15, 70, "Problem"],
Cell[639973, 14545, 412, 16, 70, "Problem"],
Cell[640388, 14563, 482, 17, 70, "Problem"],
Cell[640873, 14582, 575, 22, 70, "Problem"],
Cell[641451, 14606, 1266, 46, 66, "TProblem"],
Cell[642720, 14654, 1149, 48, 78, "SubProblem"],
Cell[643872, 14704, 1316, 44, 87, "Problem"],
Cell[645191, 14750, 220, 7, 28, "Problem"],
Cell[645414, 14759, 638, 21, 56, "SubProblem"],
Cell[646055, 14782, 12195, 206, 209, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[658287, 14993, 502, 17, 34, "Subsubsubsubsection",
 CellTags->"QUICK CHECK ANSWERS"],
Cell[658792, 15012, 3024, 116, 199, "Problem"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature zKNPDFtXFX55MIONong5gGGt *)
