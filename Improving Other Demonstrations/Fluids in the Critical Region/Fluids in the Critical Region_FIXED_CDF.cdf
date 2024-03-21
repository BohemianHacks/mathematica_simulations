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
NotebookDataLength[     76057,       1789]
NotebookOptionsPosition[     69046,       1593]
NotebookOutlinePosition[     71273,       1663]
CellTagsIndexPosition[     70945,       1651]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Fluids in the Critical Region", "DemoTitle",ExpressionUUID->"7d1f5fc7-0461-4754-85b3-e241c32438ab"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"4ba4df6d-f21e-446a-9b0c-d96950bc5dfa"],

Cell[BoxData[
 RowBox[{
  RowBox[{"s", "[", "V_", "]"}], ":=", 
  RowBox[{"1", "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"4", "-", 
      RowBox[{"3.6", "*", 
       RowBox[{"UnitStep", "[", 
        RowBox[{"V", "-", "1"}], "]"}]}]}], ")"}], "*", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"V", "-", "1"}], ")"}], "2"]}]}]}]], "Input",
 InitializationCell->True,
 CellID->85450191,ExpressionUUID->"b2f04202-5606-432b-8527-b2f4c60e13a0"],

Cell[BoxData[
 RowBox[{
  RowBox[{"c", "[", "V_", "]"}], ":=", 
  RowBox[{
   FractionBox["8", 
    RowBox[{
     RowBox[{"3", "*", "V"}], "-", "1"}]], "-", 
   FractionBox["3", 
    SuperscriptBox["V", "2"]]}]}]], "Input",
 InitializationCell->True,
 CellID->531239859,ExpressionUUID->"76e654d6-aada-4479-b678-5251c5723cbc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"plot", "=", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"s", "[", "V", "]"}], ",", 
       RowBox[{"c", "[", "V", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"V", ",", "0.5", ",", "2.5"}], "}"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Thick", ",", "Black"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"Thick", ",", 
          RowBox[{"RGBColor", "[", 
           RowBox[{"1", ",", "0.6", ",", "0"}], "]"}]}], "}"}]}], "}"}]}], 
     ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0.35", ",", "2.5"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0.5", ",", "1.15"}], "}"}]}], "}"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"AxesOrigin", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0.5"}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"FrameTicks", "\[Rule]", "None"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<volume\>\"", ",", "\"\<pressure\>\""}], "}"}]}], ",", 
     RowBox[{"LabelStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"17", ",", "Black"}], "}"}]}], ",", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"300", ",", "425"}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Epilog", "\[Rule]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Subscript", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"\"\<T\>\"", ",", "Italic"}], "]"}], ",", 
              "\"\<c\>\""}], "]"}], ",", "19", ",", 
            RowBox[{"RGBColor", "[", 
             RowBox[{"1", ",", "0.6", ",", "0"}], "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", 
            RowBox[{"-", "1.4"}]}], "}"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"#1", ",", "17", ",", 
              RowBox[{"GrayLevel", "@", "0.5"}]}], "]"}], ",", "#2"}], "]"}], 
          "&"}], "@@@", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<liquid\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"0.55", ",", "0.7"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\"\<vapor\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"2.2", ",", "0.7"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\"\<supercritical\>\"", ",", 
             RowBox[{"{", 
              RowBox[{"1.25", ",", "1.08"}], "}"}]}], "}"}]}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"RGBColor", "[", 
         RowBox[{"1", ",", "0.6", ",", "0"}], "]"}], ",", 
        RowBox[{"PointSize", "@", "0.033"}], ",", 
        RowBox[{"Point", "@", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}]}]}], "\[IndentingNewLine]", 
       "}"}]}]}], "]"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->391064840,ExpressionUUID->"f4491d68-df8d-45fd-af5f-a7aa81a67029"],

Cell[BoxData[
 RowBox[{
  RowBox[{"VL0", "[", "p_", "]"}], ":=", 
  RowBox[{
   RowBox[{"UnitStep", "[", 
    RowBox[{"1", "-", "p"}], "]"}], "*", 
   RowBox[{"(", 
    RowBox[{"1", "-", 
     SqrtBox[
      FractionBox[
       RowBox[{"1", "-", "p"}], "4"]]}], ")"}]}]}]], "Input",
 InitializationCell->True,
 CellID->12957575,ExpressionUUID->"b35e2e70-1105-49a5-a6e5-41be3970ddbc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"VG0", "[", "p_", "]"}], ":=", 
  RowBox[{
   RowBox[{"UnitStep", "[", 
    RowBox[{"1", "-", "p"}], "]"}], "*", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     SqrtBox[
      FractionBox[
       RowBox[{"1", "-", "p"}], "0.4"]]}], ")"}]}]}]], "Input",
 InitializationCell->True,
 CellID->669367315,ExpressionUUID->"a1ee6162-dd9d-48f4-a0cc-6d2283c10592"],

Cell[BoxData[
 RowBox[{
  RowBox[{"VL", "[", 
   RowBox[{"p_", ",", "V_"}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"p", "\[LessEqual]", 
     RowBox[{"s", "[", "V", "]"}]}], ",", 
    RowBox[{
     RowBox[{"(", 
      FractionBox[
       RowBox[{
        RowBox[{"VG0", "[", "p", "]"}], "-", "V"}], 
       RowBox[{
        RowBox[{"VG0", "[", "p", "]"}], "-", 
        RowBox[{"VL0", "[", "p", "]"}]}]], ")"}], "*", 
     RowBox[{"VL0", "[", "p", "]"}]}], ",", "0"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellID->468545515,ExpressionUUID->"bc8f3527-ee30-49fa-9f0b-e638eca5cfac"],

Cell[BoxData[
 RowBox[{
  RowBox[{"VG", "[", 
   RowBox[{"p_", ",", "V_"}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"p", "\[LessEqual]", 
     RowBox[{"s", "[", "V", "]"}]}], ",", 
    RowBox[{
     RowBox[{"(", 
      FractionBox[
       RowBox[{"V", "-", 
        RowBox[{"VL0", "[", "p", "]"}]}], 
       RowBox[{
        RowBox[{"VG0", "[", "p", "]"}], "-", 
        RowBox[{"VL0", "[", "p", "]"}]}]], ")"}], "*", 
     RowBox[{"VG0", "[", "p", "]"}]}], ",", "0"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellID->23703490,ExpressionUUID->"c8608839-56de-4237-886d-4ea474343052"],

Cell[BoxData[
 RowBox[{
  RowBox[{"cyl", "[", 
   RowBox[{"p_", ",", "V_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"r", ",", "step"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"r", "=", "1.25"}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"step", "[", "vol_", "]"}], ":=", 
      RowBox[{"Rescale", "[", 
       RowBox[{"vol", ",", 
        RowBox[{"{", 
         RowBox[{"0.4", ",", "2.5"}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"Column", "[", 
      RowBox[{
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Text", "@", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Row", "@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"\"\<\[FilledCircle]\>\"", ",", "22", ",", 
                 InterpretationBox[
                  ButtonBox[
                   TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.05, 0.34952673298193526`, 1.], 
                    RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.03333333333333334, 0.23301782198795684`, 
                    0.6666666666666667],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.05, 0.34952673298193526, 1.]"],
                   Appearance->None,
                   BaseStyle->{},
                   BaselinePosition->Baseline,
                   ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.05, 0.34952673298193526`, 1.]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                   DefaultBaseStyle->{},
                   Evaluator->Automatic,
                   Method->"Preemptive"],
                  RGBColor[0.05, 0.34952673298193526`, 1.],
                  Editable->False,
                  Selectable->False]}], "]"}], ",", 
               "\"\< = higer density\>\"", ",", 
               RowBox[{"Spacer", "@", "10"}], ",", 
               RowBox[{"Style", "[", 
                RowBox[{"\"\<\[FilledCircle]\>\"", ",", "22", ",", 
                 InterpretationBox[
                  ButtonBox[
                   TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                     RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.18309776693550278`, 0.6666666666666667, 
                    0.18592644769796446`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.27464665040325414, 1., 0.27888967154694666]"],
                   Appearance->None,
                   BaseStyle->{},
                   BaselinePosition->Baseline,
                   ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                   DefaultBaseStyle->{},
                   Evaluator->Automatic,
                   Method->"Preemptive"],
                  RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                  Editable->False,
                  Selectable->False]}], "]"}], ",", 
               "\"\< = lower density\>\""}], "}"}]}], ",", "17"}], "]"}]}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "@", "0.5"}], ",", 
               RowBox[{"Cylinder", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"V", "+", "0.25"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "3"}], "}"}]}], "}"}], ",", 
                 "r"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"GrayLevel", "@", "0.4"}], ",", 
               RowBox[{"Cylinder", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"V", "+", "0.25"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "3.5"}], "}"}]}], "}"}], ",", 
                 RowBox[{"0.15", "*", "r"}]}], "]"}], ",", 
               RowBox[{"Cylinder", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "V"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"V", "+", "0.25"}]}], "}"}]}], "}"}], ",", "r"}], 
                "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"p", ">", 
                RowBox[{"s", "[", "V", "]"}]}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Blend", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.05, 0.34952673298193526`, 1.], 
                    RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.03333333333333334, 0.23301782198795684`, 
                    0.6666666666666667],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.05, 0.34952673298193526, 1.]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.05, 0.34952673298193526`, 1.]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.05, 0.34952673298193526`, 1.],
                    Editable->False,
                    Selectable->False], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                     RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.18309776693550278`, 0.6666666666666667, 
                    0.18592644769796446`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.27464665040325414, 1., 0.27888967154694666]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                    Editable->False,
                    Selectable->False]}], "}"}], ",", 
                   RowBox[{"step", "[", "V", "]"}]}], "]"}], ",", 
                 RowBox[{"Cylinder", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "V"}], "}"}]}], "}"}], ",", 
                   "r"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Blend", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.05, 0.34952673298193526`, 1.], 
                    RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.03333333333333334, 0.23301782198795684`, 
                    0.6666666666666667],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.05, 0.34952673298193526, 1.]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.05, 0.34952673298193526`, 1.]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.05, 0.34952673298193526`, 1.],
                    Editable->False,
                    Selectable->False], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                     RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.18309776693550278`, 0.6666666666666667, 
                    0.18592644769796446`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.27464665040325414, 1., 0.27888967154694666]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                    Editable->False,
                    Selectable->False]}], "}"}], ",", 
                   RowBox[{"step", "[", 
                    RowBox[{"VL0", "[", "p", "]"}], "]"}]}], "]"}], ",", 
                 RowBox[{"Cylinder", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"VL", "[", 
                    RowBox[{"p", ",", "V"}], "]"}]}], "}"}]}], "}"}], ",", 
                   "r"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Blend", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.05, 0.34952673298193526`, 1.], 
                    RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.03333333333333334, 0.23301782198795684`, 
                    0.6666666666666667],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.05, 0.34952673298193526, 1.]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.05, 0.34952673298193526`, 1.]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.05, 0.34952673298193526`, 1.],
                    Editable->False,
                    Selectable->False], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    {GrayLevel[0], RectangleBox[{0, 0}]}}, {
                    {GrayLevel[0], RectangleBox[{1, -1}]}}, {
                    {RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                     RectangleBox[{0, -1}, {2, 1}]}}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.18309776693550278`, 0.6666666666666667, 
                    0.18592644769796446`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                    "RGBColor[0.27464665040325414, 1., 0.27888967154694666]"],
                    Appearance->None,
                    BaseStyle->{},
                    BaselinePosition->Baseline,
                    ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                    DefaultBaseStyle->{},
                    Evaluator->Automatic,
                    Method->"Preemptive"],
                    RGBColor[0.27464665040325414`, 1., 0.27888967154694666`],
                    Editable->False,
                    Selectable->False]}], "}"}], ",", 
                   RowBox[{"step", "[", 
                    RowBox[{"VG0", "[", "p", "]"}], "]"}]}], "]"}], ",", 
                 RowBox[{"Cylinder", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{"VL", "[", 
                    RowBox[{"p", ",", "V"}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", 
                    RowBox[{
                    RowBox[{"VL", "[", 
                    RowBox[{"p", ",", "V"}], "]"}], "+", 
                    RowBox[{"VG", "[", 
                    RowBox[{"p", ",", "V"}], "]"}]}]}], "}"}]}], "}"}], ",", 
                   "r"}], "]"}]}], "}"}]}], "]"}], ","}], 
            "\[IndentingNewLine]", "}"}], ",", 
           RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
           RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
           RowBox[{"ImageSize", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"300", ",", "400"}], "}"}]}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], ",", "Center"}], "]"}]}]}], 
   "\[IndentingNewLine]", "]"}]}]], "Input",
 InitializationCell->True,
 CellID->11417234,ExpressionUUID->"3f9a77f9-381d-4204-8b57-8211cd87021a"]
}, Closed]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"f79235aa-735b-4f7e-a99f-ca9ee312a7b6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Grid", "@", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{"plot", ",", 
       RowBox[{"Dynamic", "@", 
        RowBox[{"cyl", "[", 
         RowBox[{
          RowBox[{"pv", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", 
          RowBox[{"pv", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}]}], "}"}], "}"}]}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Style", "[", 
    RowBox[{
    "\"\<move the black dot around the pressure-volume diagram\>\"", ",", 
     "13"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Control", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"pv", ",", 
        RowBox[{"{", 
         RowBox[{"0.5", ",", "0.65"}], "}"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0.4", ",", "0.51"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"2.425", ",", "1.135"}], "}"}], ",", "Locator", ",", 
      RowBox[{"Appearance", "\[Rule]", 
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Disk", "[", "]"}], "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "13"}]}], "]"}]}]}], "}"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",Expressio\
nUUID->"c25261c9-676f-491d-8786-5b4b1c2663c2"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pv$$ = {0.5, 0.65}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["move the black dot around the pressure-volume diagram", 13]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`pv$$], {0.5, 0.65}}, {0.4, 0.51}, {2.425, 1.135}}}, 
    Typeset`size$$ = {608., {209., 216.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`pv$20680$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`pv$$ = {0.5, 0.65}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pv$$, $CellContext`pv$20680$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Grid[{{$CellContext`plot, 
          Dynamic[
           $CellContext`cyl[
            Part[$CellContext`pv$$, 2], 
            Part[$CellContext`pv$$, 1]]]}}], "Specifications" :> {
        Style[
        "move the black dot around the pressure-volume diagram", 
         13], {{$CellContext`pv$$, {0.5, 0.65}}, {0.4, 0.51}, {2.425, 1.135}, 
         ControlType -> Locator, Appearance -> Graphics[{
            Disk[{0, 0}]}, ImageSize -> 13]}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{663., {252., 259.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`plot = Graphics[{{{{}, {}, 
            Annotation[{
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              Line[CompressedData["
1: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
               "]], 
              Line[CompressedData["
1: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
               "]]}, "Charting`Private`Tag$20346#1"], 
            Annotation[{
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               RGBColor[1, 0.6, 0]], 
              Line[CompressedData["
1:eJwd13k4lN8XAHCMJHtKUZIoW4uytJEzSZFKkj1rEZW1tH7JEqVCkpItRIUU
skQSSpZCtFEKIWZ/3xmSrL8zv/lnns8z73Pm3nvue8+5Kw77W3kKCQgI+AkK
CPC/vRSNDRO9h+Do/z88yDzVJq0WMgQvt9VZndjHg8t7fM/rRAxBYmFczWtT
HpxQlRgwujIErP1jLWrGPNj4aXe53c0hMHGecFq4iQetOm+drj4YAuWTzKMR
K3gwwa3KY7Xi88FuMbfGudDX7Ljg38chKHqe/yZ3hAtvs/4Fz+kaAsvzxZRm
DhfiD2yyVOofgtryJND6zQX14mdj+8eGQMYuY5nvRy5YB+TtKFEahkQJgQ99
T7mw1czsSY3qMMg/DGal5nNhufLwohaNYdA7K1jk9pALjA8rGYM6w3C3ceqr
yD0uhGtnxi8yHQYyP8D/TSwXnnLu/DzvPwwShc5PWX5cEPWNPEutHYauPw3M
i5u4oDBgJFf5dhicpm0r5+hxQcvh37MN74fBpCRM5/Z6Luzb6cdR+ToMMQGS
Xa2aXEhYZu85hzUMogLCrdmKXFjWtvrgu8U0GPfI6OygcGGdyRBpvIwGd8Mn
vb4LcIH6IjOuSoUGaVpp5xnTJBx+KPeuYC0NpqzaupXHSci9OEu9sYMGNKX/
Xg+ySNDR/rTO2p8GLQuSm190kmDyILalJYgGQbZhj3W/kGCz1Oz4zgsYP91S
ouQjCefmVj/YGEUDw+hJqbetJFT3PlRUSKVBzo6pEL16EsziL4j1NNBAIOFC
st4zEpy5K4a8lOgQnMdpckogwS+ndrxBlQ53cyS9bsWTcNHOVVxNkw5um+JK
2+JIuFedtn5Qlw4Cr2R0D14noefq4v/cdtNhpVTR3YRIElxUJGUcguhAHb65
sv8sxvvyWKXiPB1Gv3rSXM5gvGhz/cWhdKhYo1nVG4TxOFccv1ylg/C53d7s
QBJ6Xwg9OJBBh3HL3r5NPiS4HRzfYv6ODvbRMdfC3UkIEEnam/eBDvKiefMM
3EgIq9R3Ff1ChyCDbPFxFxIyl5+KbOilg9l00dlgJxJ+Mdltxn/oMEiGyDy1
w/WOHDhioMyAnLWRF59YkHByU8SZlFUMCLuVFZq6j4QIhvLVf1oMUCzUvxqz
l4T7li5Pn+szoGXMLvmsOQkDit/GdfcwYP1BOj1gFwkeZW2xa84wcP/5uTKM
SPgxWqav/R8D0swvTi5E2+il/9wQxoC9oq4927eRsKvkxNpN1xjgZufmcd+A
xP0u2rr9HgPkTbSGQjaTwCgwlrBrYID3l/7LKTo4XpZmqcN7Bohqbto1vIGE
7tXznZzaGZDZy5nVR7fk9z52/86AANsiy2/aJDzNDd7jw2FAvUIwa+NaEgJz
yq+FL2JC0GvdA+YaGH8gXSdyKRMMeauLS9UxvmrU98vKTIiUnm1URlvdP6gV
o8WElQkBYjOrSNDLJJvvGDEhOqj5dIsqCeOpWvMKjjKBqrktuWw55qN7fvHT
E0zQkPVI34KmL/lnXxzAhPWiJYo1SiR8T27MLb/AhII9nRfblpFQleRhVhfH
BIlB+cCZpbgfbt278rWcCfKvDFQy5UlQCcw6svMlExQDT1RtQDdY5EBpHRPa
bSU/1y8mQUos/+/NFnyexjtFLCIhI6zMa18/E8wYKkK2ciTU+raY1kuyQOLk
mfmespifPR9UdRewwErDo1sCLar5cTZLngUxErfoZfNJsBzsfB6qyoL6m6P1
4uhfjgPqBltYkBO5TKFBmgQhs4m5zzxY0PLfgP1JSRIerpoeUD7OAtFkxW9r
0OYUgdob/iyQ73l7jCZBQsKrOed8L7CAlu9adBitqj+fphGP8VZ+Cj0iTkKT
7ML6pNssePk1Yr0a2odclCmSiuN9qvudLkZC6WNF+8EHLGiXt5UMQpuoaDRl
VLFgb9biB7fmkUCb1cqRqmOBz8Pl7c7omJ9rw0IaWECeMOzRQH++q7v5UAcL
fnitTq4TxflLQ+6iYRbozXHYPj2XhKgpm+hYWTbU372ukSqC4z2a9S9jMRt4
Dh3Cp9H32lnHnymyIfPG1cj96PKcS/s61dggVPbhqAiatrdYdoUBGy5f/Rvx
3xwSRsunLulS2RA/NrHLES24wuzPzp1sMHZozdiCXvKnp/P4fjbkfu0QnRAm
YW+6RHrpETbsPVV3JRxtP9deqtGbDZ93Xa/zQHsGZod+82WD0fCRCDP0xZ1b
D8+cZQNL/H7CfHQh20vdLIYNtKonNXkUEmSN3hR3l7Ih0sKPTgqRoJQrpcqp
ZINl5arP3ejVso6JAjVsENH/taYRjcfxmVXNbCg4GKuSgT4dp2To/5MNJr7B
YwfREePHnoT3s8G7QlDTGB13uEwpcRjnY6bxaj364ca9gpVcNtRW/xSTRnf1
nG8QEuFA3ztV0XZBEgbN3m6SE+eAlu03zTo095lMnroMWjUs+xla7Mqj63uX
cOC7RXDyHbSh9hfLO+s40F9Y5XMYbZas/DpXlwPGoae1bNE2FB/dqs0cGJ2S
32iO9usUWtRnzIGt8rt1dNEZoeu7Ne04oKwlni6Kzldzq1Nx4oBIs/73GQHM
X+uNR0vdOeATbeDwB92ylDgleYIDAj235AfQ48+fSHAv4u+bpEPr0BTXnzz6
JQ7I/E15UomWEpH81h/NgXUphXLP0KusfR58TuDAyxeBcdloK1LLqOIhBxSX
VotcRTsnOa4sfozjsfr9OwLtbXRNLL+IA4mxDWPB6NAY+tfUFxxYuZWbF4i+
pqtQnVjDgXEBF3Mf9J3vZtmx9Rx4FfBO3gtdoJHrH9rGAbe70wbO6OcfOm3O
feLAx9tjcfbo12fmGgZ2cSCy9qCENbqr/qjokX4OWOuVROxBz3FflbVrjAOH
P5XvNETLiNpcgUkOCBUFfdqMViyM9N0sQICfYHmkPlpnemCLlhgB48WnLLTR
23IWKKtKExD5YK/nGrTZnh0iigsJOLf+cJom2iX5/kdJJQLik6S8V6KPUT9W
iKgSoGYnPbkCHTQsmDGrToCEv/Lj5ejr+u4nuBsIWLnHwXUpf74/4g8wNhKg
8euvuwL6/qXaTQMGaN/Ei4vRFR3Lhb/sJKDCs0FoIfrNuf2MVnMcj16vtyy6
bXloe8N+ApQqpn7LoL83PC2vsSaAd9bjvDT6t29PWoUDASahzipSaHKh1KVi
FwIcHdf3SaCnqrYdyz9CQNcC9WfiaFmxdP00XwJqSwpvzEMvK25Zevsk/p/U
z2RRtIb9lGDcWQJGtTzL5qJ1Z1fTLgcTUHA4+ZcI2ujhobbQcAICQlqW8b17
3/XSc5cJuPvU6tgctPXoi5TA6wREJ4S/EUa7pTLCjscTMLG6aDXfJ4yXeB25
TUDcr41ZFP56XPEMb0rB/2NbKPDd1VKUujaTgESvyxlCaGnZqbKEBwRcLpHQ
5XuXnWn733wCUuQWfBJEh6QlMJyKCAgqaLnId+mvn8KvywhY6OenzzdTTXO5
ehUBAiu1xwTQKj5BW2JqCXjmZVrLt0NxzUHuW8xHBjeB7/gxMT/b9wRI/Tvm
y3eDgW10VTsB3sc4FnxPh2XdV/5KwNSDVxv51mtgvYzqJoCloriS7+PimzsZ
fQQoS5sv4jvL8hJ3/xDOzzJWgu+u223iZUwCGiLWiPAt3a2gtoRLwB3CX4jv
Xcqe1NAx3A83sgT4DvEschycxPWeI/l/O34JeZGD38G6s/ghYOxstqkdnpMS
J+P/75tLmj/Pw3O8tNdvmu811Rz3l1gnIj8YjfPd5LqQ8MO6JNz0iMO3h9DW
4BVSWDdDrHv5ns1xnfdZhoTNzbwmvlNMo+5cXkBC3yPdfL43MvJVt2BdHlz3
Ppzvjpj2IibW8YDoAAu+fbTHtt3Duj/K+inFt+jHpe8tsU+QSW+vm0FnB223
p6wgIa1b9CjfRou9fpdh35E7vHtiGv29MuaktxoJ9WMOIXyfdno2u0QT6+o6
Ic4UWma2M6Z1Nb53mVJ7+C7ImlYIW4fn7HaLW5NoUxPVRzrYN43+Tng7ge4f
MtP7rYvxDIv7/qEvXvWrS9qI428MGxhHL1mTaGG+Bders7vlL7qsrbJ7Cvs2
p6iM1DG0ZWCvdyH2eWZPHlv8QbMWzBlz347jp/cPjqCjy7UuLTTBvMZoOfPQ
qg6WMo3YN55LO15Ooh3vpWqtwT6z4HT4XDY/X9S65z3Yl25O1p9m8PM1MGRy
8wDO/2PaBxo/Pxo6rmO2+DtxSGSQn5/3dqxcBxKUeQ+8f/Hz4xty/hD2vW7U
K9k9/HyUNN2qxb55qkM6owv90YajfMqDhLv21c5f0L7jC56u8sL8PpLidqBz
trk2XcO+m1xaf/MdGvoibbb5Y58hbpzewF//iPx+Avv03D1J51+j5zf9mbLG
Pr/vjFxWJbqvqMb623ncf2urDcvQRclXC5yDMf+n9AuK+Ot1YpnT0XBc79Wl
lEdoZevhEsYlEqir9zGy0IRhsbj/ZRJYrd1Zaeg4qZ1VZ/GekfhmfvhNtMtf
qQVTsTg/DYdH19Fr+7qOh+E95ce+r6lR6JZinyVXb2P+VepZ59BiNonnUzJw
fGGiis788W9z6VC6j30ALSbLBp2npqGZnYP73U6O3Ic2G6/qepxHgrz189/b
0FdSBzZVl+B7H7tZZSnaNvLJje3lJKwRed8zH63me3b4bQXW1bEEV1F0g5F4
Uls1rqf2ucejMwQI9+uM9Tbi/t7Q7fQO/fnd1D6Pd7i+B6xW16CzSxoe0FpI
WMiJrSxBG0c52nA7MF6F3oI0dLhGRKnQD7znpFYVHENbzt8rcaUH5/+r8bgT
WnlCzkP8F+afDB20QNe+z1uwcAjP6bUC83TRM34dJ1eRJLTb9YuOTxPQZpf6
Lo+H68McvENDp1M9Vdb9wfz0t/7oQhvK/uvYOIH79d+VuAr0hTLlDWbCXBiP
PhgShP476U8cl+dC0M8ezZ4pAn6UmLqvWsoFszP6Fk3o1yeWf+pdxoWpgzNy
z9Ax3W3l1qpccJqdio1Eq1StvWi0jgt6kmmyq9AWF5gSsiZcII/fELPGc0xP
583Fll1cqD38QHszWoGRQl7ezQWBxWu5S9GDDuafJy240PRN0Kx/Ase3JS/1
twMX+mhLth5HPxg/qlXpz4W9NvN6j/4j4FqRUdqpk2h9kQwTdID3Iql1p7ng
Ztv0ZwV6a9db7v0LXJCoOHS0e5yA9ucrK2OiuBDZtnXPbvTUmX5Tt1QuGKp7
Dsj8JeDgH2fPuY1cKM0uCN83iufw+0fzy5rxXi9DOa2EVrzPrT7cwgWZeUaT
nBEChiyiFr3q4EI9/UlNHPpCbkFj0A9cn0uVqs08AjIPTWr2c7mwpsBYXxPP
eU7dXc5LRR6MM6gxt9n4f3f7U44v54FPZP8te3SF3xpTeRUemJymai1Fhy+t
zTilzoPPjt1CGSysa6eHLbV0eNB039Y9C+uIgcbGkiRTHtjLlb2Jp+N5FPfp
7MmTPNhbdqJG4TcBKx7XcbhBPDCMkr3zaZCAF42FnoFnMV7cN9FYNEsg5mBA
MA9KS16+nhnA/XfKRNvvMg/vhylXfvYTIG9fNnQshQeDsZPW0VjXclck2bi/
5kFa5DGxW1j3thtFtfTV86DdXPooFf3d8dQOt0Ye/JBc7sL+jn1R4v4Nri08
0KhOUd2FDhARlXT+ygPLf7+FR7oI2Mw8V2/P4IEEvUVjK9bVxlJHXUvZEfD+
mb7jItbdM5m29XPkRiBx6uOGxeiVMVY2VYtHYM2cOwWFHwiIOGJ+Vm3ZCIQd
kTPrbcN6Iru1akp9BGj0jQpbWgko9VfYkbdtBF5mDGzsbCbgvlaXldCxEbh7
XW7Oq9cEBGfanCytGYGKQfc+gxICXD/+aTV4PQIzD+vP1T3D91X4juab+hG4
9i7x2S60qPfXvo7mEYgWZIlZFmOfom23n/g0Ah7GkQdcCrEevbJfo0UbgdLX
WvuPPcb358ehoQyZURDab9K1JRvzpXDY8br7KJg7N7a+v4nrYdf/libzBwYP
bCoP9ML6pM9oXVj9BzbPN3hnsRn7gkxKaInzGIwbiUmNzsX5d8SXdIn/BRPR
eGGXD9inx2nfDHj6F7pmup5oJXFgLctGvHPfOEjYxu50d+bAQmlStH5iHErT
d7WoK3JgTk1qoWraPzjXouBhifciH72qb/P2TMASuSnjM0l4b9p9OPPV2ATI
1vv8Cj7AhjHmEpmhO5NQ3id8eYc0G8oPmlISTaZAx4G99SneS8PMojJKh6ZA
YmyZv18EC1R+mndlR02DCNuiAYAFBpsiExV0ZqD51J2Lm8eY4Kz04Z/gpxm4
JiSQqPiMCWPvYvsDwmfBg3506pQ3E/YKaW/VlBWghnzZpDSqygQxwvGA4GEB
qhw15rz6LwZcekXNT6sQoMbbatG0kxkQbl1oFzhPkFqpr+4ba8uAra2du+a5
C1KFJQ9pzEgxoFfOJFL0uSCVuVbWPKiZDvNWbVm0fa4Qtem3p83Oq3TgLKLR
DV2EqC93tiScMaGD/YflsicLhajEz2TLGWE6FNqlRkvNClG99LS6LjXSoO51
O9XPhkLtfWv6MT+KBvajcfvmPqRQp9xnv83bTYOGNuP1/o8oVJc6TXLKlAZ6
eWOynbnoJFhE7qKBtItL18PHFCqzZn3CVxN8vnHtkV3FFOoTH6PdOVQa6Ke2
nIt6SaEq3X5aaryZBrLGYjmUTxSq9Y7eqOvqNAhTfHX5xGcK9SqlPyVMjQac
scBjn75QqCG1QzWnV9Gg+fG3ddldFKpZ6fgWN1V8Xi6v0riHQl3Ss5+jv5wG
BM30QzidQv163Mp+cBENnN5MFtMZaLlXvt/laPAuvTDxAItCtd+jf6t9IQ0e
Wi12XEFQqGMJZlLVsjRweTk0WDtKoYZRZN/ekaJBy52URo0xClXlPN0xVpIG
WwMt8uP/Uqjune0CkRI0kFMr93eboFAveHcEB4rRIELguFXTJIUq9JBp5T2P
BuT3ZfrrpynUxF+Lt7iKYvyyjsV3ZyjU/nRbbdu5GP9G1MTsLIWa5JSrv0+E
Bv8Dg0azVA==
               "]]}, 
             "Charting`Private`Tag$20346#2"], {}}, {{}, {}, {}, {}}}, {}, \
{}}, {DisplayFunction -> Identity, Ticks -> {Automatic, Automatic}, 
          AxesOrigin -> {0., 0.5}, FrameTicks -> {{None, None}, {None, None}},
           GridLines -> {None, None}, DisplayFunction -> Identity, 
          PlotRangePadding -> {{0, 0}, {0, 0}}, PlotRangeClipping -> True, 
          ImagePadding -> All, DisplayFunction -> Identity, AspectRatio -> 
          Full, Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0., 0.5}, DisplayFunction :> Identity, Epilog -> {{
             Text[
              Style["liquid", 17, 
               GrayLevel[0.5]], {0.55, 0.7}], 
             Text[
              Style["vapor", 17, 
               GrayLevel[0.5]], {2.2, 0.7}], 
             Text[
              Style["supercritical", 17, 
               GrayLevel[0.5]], {1.25, 1.04}]}, 
            Text[
             Style[
              Column[{
                Row[{
                  Style["\[FilledSquare]", 20, 
                   RGBColor[0.05, 0.34952673298193526`, 1.]], 
                  " = higer density"}], 
                Row[{
                  Style["\[FilledSquare]", 20, 
                   RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]], 
                  " = lower density"}]}], 16], 
             Scaled[{0.78, 0.92}]], 
            RGBColor[1, 0.6, 0], 
            PointSize[0.033], 
            Point[{1, 1}]}, Frame -> {{True, True}, {True, True}}, 
          FrameLabel -> {{"pressure", None}, {"volume", None}}, 
          FrameTicks -> {{None, None}, {None, None}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], ImageSize -> {300, 425}, LabelStyle -> {17, 
            GrayLevel[0]}, 
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
                (
                Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
                 Part[#, 1]], 
                (
                Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
                 Part[#, 2]]}& )}}, PlotRange -> {{0.35, 2.5}, {0.5, 1.15}}, 
          PlotRangeClipping -> True, 
          PlotRangePadding -> {{Automatic, Automatic}, {
            Automatic, Automatic}}, 
          Ticks -> {Automatic, Automatic}}], $CellContext`cyl[
         Pattern[$CellContext`p, 
          Blank[]], 
         Pattern[$CellContext`V, 
          Blank[]]] := 
       Module[{$CellContext`r, $CellContext`step}, $CellContext`r = 
          1.25; $CellContext`step[
            Pattern[$CellContext`vol, 
             Blank[]]] := Rescale[$CellContext`vol, {0.4, 2.5}]; Column[{
            Text[
             Style[
              Row[{
                Style["\[FilledSquare]", 20, 
                 RGBColor[0.05, 0.34952673298193526`, 1.]], 
                " = higer density", 
                Spacer[10], 
                Style["\[FilledSquare]", 20, 
                 RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]], 
                " = lower density"}], 17]], 
            Graphics3D[{{
               Opacity[0.5], 
               
               Cylinder[{{0, 0, $CellContext`V + 0.25}, {0, 0, 
                 3}}, $CellContext`r]}, {
               GrayLevel[0.4], 
               
               Cylinder[{{0, 0, $CellContext`V + 0.25}, {0, 0, 3.5}}, 
                0.15 $CellContext`r], 
               
               Cylinder[{{0, 0, $CellContext`V}, {
                 0, 0, $CellContext`V + 0.25}}, $CellContext`r]}, 
              If[$CellContext`p > $CellContext`s[$CellContext`V], {
                Blend[{
                  RGBColor[0.05, 0.34952673298193526`, 1.], 
                  RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]}, 
                 $CellContext`step[$CellContext`V]], 
                
                Cylinder[{{0, 0, 0}, {
                  0, 0, $CellContext`V}}, $CellContext`r]}, {
                Blend[{
                  RGBColor[0.05, 0.34952673298193526`, 1.], 
                  RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]}, 
                 $CellContext`step[
                  $CellContext`VL0[$CellContext`p]]], 
                Cylinder[{{0, 0, 0}, {0, 0, 
                   $CellContext`VL[$CellContext`p, $CellContext`V]}}, \
$CellContext`r], 
                Blend[{
                  RGBColor[0.05, 0.34952673298193526`, 1.], 
                  RGBColor[0.27464665040325414`, 1., 0.27888967154694666`]}, 
                 $CellContext`step[
                  $CellContext`VG0[$CellContext`p]]], 
                Cylinder[{{0, 0, 
                   $CellContext`VL[$CellContext`p, $CellContext`V]}, {
                  0, 0, $CellContext`VL[$CellContext`p, $CellContext`V] + \
$CellContext`VG[$CellContext`p, $CellContext`V]}}, $CellContext`r]}], Null}, 
             Boxed -> False, ViewPoint -> Front, ImageSize -> {300, 400}]}, 
           Center]], $CellContext`r = 1.25, $CellContext`s[
         Pattern[$CellContext`V, 
          Blank[]]] := 
       1 - (4 - 3.6 
         UnitStep[$CellContext`V - 1]) ($CellContext`V - 
          1)^2, $CellContext`VL0[
         Pattern[$CellContext`p, 
          Blank[]]] := 
       UnitStep[1 - $CellContext`p] (1 - 
         Sqrt[(1 - $CellContext`p)/4]), $CellContext`VL[
         Pattern[$CellContext`p, 
          Blank[]], 
         Pattern[$CellContext`V, 
          Blank[]]] := 
       If[$CellContext`p <= $CellContext`s[$CellContext`V], \
(($CellContext`VG0[$CellContext`p] - \
$CellContext`V)/($CellContext`VG0[$CellContext`p] - \
$CellContext`VL0[$CellContext`p])) $CellContext`VL0[$CellContext`p], 
         0], $CellContext`VG0[
         Pattern[$CellContext`p, 
          Blank[]]] := 
       UnitStep[1 - $CellContext`p] (1 + 
         Sqrt[(1 - $CellContext`p)/0.4]), $CellContext`VG[
         Pattern[$CellContext`p, 
          Blank[]], 
         Pattern[$CellContext`V, 
          Blank[]]] := 
       If[$CellContext`p <= $CellContext`s[$CellContext`V], (($CellContext`V - \
$CellContext`VL0[$CellContext`p])/($CellContext`VG0[$CellContext`p] - \
$CellContext`VL0[$CellContext`p])) $CellContext`VG0[$CellContext`p], 0]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->4107367,ExpressionUUID->"3dcd1198-bb09-40aa-8b6f-7eb5e17257cb"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"c3ccfa67-2ec0-4d95-accf-f8c68009f2a9"],

Cell[TextData[{
 "On the left is a phase diagram of the critical region of a representative \
fluid. Within the shaded area, the fluid separates into two phases: liquid \
and gas.",
 " ",
 "The critical isotherm is also shown, labeled by the critical temperature ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["T", "c"], TraditionalForm]], "InlineMath",ExpressionUUID->
  "3cc9d3f2-d85b-431f-9387-925dd5a49a9f"],
 ". At the critical point, this isotherm is tangent to the two-phase region. \
A gas can be liquefied only after it is cooled below its critical \
temperature. "
}], "ManipulateCaption",
 CellID->26719259,ExpressionUUID->"ccf5d761-aaa0-4d06-908f-41fd7bc262b5"],

Cell["\<\
Drag the locator to vary the pressure and volume of the fluid within the \
cylinder shown on the right. Within the shaded region, you will see \
separation into liquid and gaseous phases. The density of a fluid is \
indicated by its gray-level intensity. Within the two-phase region, the \
properties of the two phases merge as the critical point is approached. \
\>", "ManipulateCaption",
 CellID->1734633663,ExpressionUUID->"7341bb61-fac9-457c-a072-87fbf34a1bb9"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"fe7426e4-6fde-4b76-bb02-ae3f6bb0228b"],

Cell[BoxData[
 GraphicsBox[{
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
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"9f9721f5-8307-426b-b8fb-c36658b40d47"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"f961dd62-9200-4acb-9c27-61bbbcc3aa09"],

Cell[BoxData[
 GraphicsBox[{
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
      $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]}},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"3794a5b2-0b08-4dc4-89d7-7a433bcf6778"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection",ExpressionUUID->"36e5a2cb-3e97-494a-a058-b58a997a48f8"],

Cell["\<\
Snapshot 1: This state would be identified as a liquid at a given pressure.\
\>", "DetailNotes",
 CellID->1752358892,ExpressionUUID->"56f45621-24c5-4c7b-9e27-8d3fc860c015"],

Cell["\<\
Snapshot 2: At a much higher temperature, the system would be a gas at the \
same pressure.\
\>", "DetailNotes",
 CellID->1474654544,ExpressionUUID->"a642f0e0-c95a-46e5-9768-467e93301f79"],

Cell["\<\
Snapshot 3: Going from state 1 to state 2 at constant pressure, the system \
would go through the two-phase region.\
\>", "DetailNotes",
 CellID->410150981,ExpressionUUID->"f9ea45bc-84fe-45a6-913f-6e52a90e6b56"],

Cell[TextData[{
 "Snapshot 4: An alternative way to go from state 1 to state 2 would be to \
follow a path around the critical point. The same final state would then be \
attained continuously, ",
 StyleBox["without",
  FontSlant->"Italic"],
 " any phase separation. This is known as the principle of continuity of \
states."
}], "DetailNotes",
 CellID->2132514444,ExpressionUUID->"da65f691-5f08-40cd-aeb4-ddd2a8a65d71"],

Cell["\<\
Snapshot 5: As the critical point is approached, the densities of the two \
phases approach one another.\
\>", "DetailNotes",
 CellID->1815675525,ExpressionUUID->"1c93d31e-8296-4e2f-8196-3edf7fdae9d5"],

Cell["\<\
Snapshot 6: The densities become equal at the critical point.\
\>", "DetailNotes",
 CellID->315924805,ExpressionUUID->"4873d5c5-3225-4ad1-9ac3-d9cce638129e"],

Cell[TextData[{
 "Reference: S. M Blinder, ",
 StyleBox["Advanced Physical Chemistry; A Survey of Modern Theoretical \
Principles",
  FontSlant->"Italic"],
 ", New York: Macmillan, 1969 p. 134."
}], "DetailNotes",
 CellID->1358221255,ExpressionUUID->"fe31a388-4995-4e0a-a3f8-4e150e08bc42"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"1f6d04e0-c983-4329-9aa4-42aaa3e5a03b"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Resize Images",ExpressionUUID->"6d13f4b8-aea9-446a-baae-19b4f25c41cb"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"0b2dffd8-2c96-4ab0-924a-9f53288eadb1"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "6e2160db-7947-4cd4-a4f9-ff5cebfb370c"]}],
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
  "RotateAndZoomIn3D",ExpressionUUID->"a69dad03-5dc5-4578-a25f-b4535c1a48f9"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[True], Cell[
   " Drag Locators",ExpressionUUID->"576f089f-0fcb-4b95-ab08-3bdaff6a4adf"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"4d687854-a325-45fc-9f9d-535f24ccc14c"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "6f8cb0a1-b5c0-4a2d-ae44-4f6605c43a77"]}],
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
  "CreateAndDeleteLocators",ExpressionUUID->"9f3d67e6-1617-4354-934e-\
31be0ac6506e"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Slider Zoom",ExpressionUUID->"160b2358-912f-4a2c-ad57-45d6bc7f22e0"]}],
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
  "SliderZoom",ExpressionUUID->"b0b21231-1bf8-49bd-911c-2a35503c837d"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Gamepad Controls",ExpressionUUID->
    "281cd75a-23b3-41e9-a43c-9d1b0327da7d"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"b036cc69-5096-4917-abe6-a5ea1ac0efd3"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Automatic Animation",ExpressionUUID->
    "1b41ffda-7057-4ff3-9245-ed224eadcd03"]}],
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
  "AutomaticAnimation",ExpressionUUID->"c025afed-16a6-40ff-bb31-d28edf0d46c4"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "ec7227e0-91aa-4604-b7b5-ff274272589e"]}],
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
  "BookmarkAnimation",ExpressionUUID->"6c1d1bb3-33b3-4286-842d-22eb82d6f29c"]
}, Open  ]],

Cell["", "SearchTermsSection",ExpressionUUID->"afeaff44-43ee-4de2-97f2-95c8c0e56961"],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection",ExpressionUUID->"678f129f-5b0d-41f0-9ada-d35c09bd242f"],

Cell[TextData[ButtonBox["Fluid Mechanics",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://scienceworld.wolfram.com/physics/FluidMechanics.html"], 
   None}]], "RelatedLinks",
 CellID->21500346,ExpressionUUID->"5530ed23-c715-424d-a77a-6f35c9cac3e0"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"dc4babf4-e83c-4633-b289-fc7a85decf1b"],

Cell[TextData[{
 "Contributed by: ",
 ButtonBox["S. M. Blinder",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://demonstrations.wolfram.com/author.html?author=S.+M.+Blinder"],
     None},
  ButtonNote->
   "http://demonstrations.wolfram.com/author.html?author=S.+M.+Blinder"]
}], "Author",
 CellID->568191562,ExpressionUUID->"105ae5f2-8b53-4f56-9eed-a52bb777db79"]
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
  Cell[61584, 1391, 429, 10, 
  22, "ControlSuggestions", "ExpressionUUID" -> "
   0b2dffd8-2c96-4ab0-924a-9f53288eadb1",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[62016, 1403, 800, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "a69dad03-5dc5-4578-a25f-
   b4535c1a48f9",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[62819, 1424, 456, 13, 
  22, "ControlSuggestions", "ExpressionUUID" -> "4d687854-
   a325-45fc-9f9d-535f24ccc14c",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[63278, 1439, 761, 19, 
  22, "ControlSuggestions", "ExpressionUUID" -> "
   9f3d67e6-1617-4354-934e-31be0ac6506e",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[64042, 1460, 961, 23, 
  22, "ControlSuggestions", "ExpressionUUID" -> "
   b0b21231-1bf8-49bd-911c-2a35503c837d",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[65006, 1485, 426, 11, 
  22, "ControlSuggestions", "ExpressionUUID" -> "b036cc69-5096-4917-abe6-
   a5ea1ac0efd3",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[65435, 1498, 1586, 34, 
  22, "ControlSuggestions", "ExpressionUUID" -> "c025afed-16a6-40ff-bb31-
   d28edf0d46c4",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[67024, 1534, 1030, 24, 
  22, "ControlSuggestions", "ExpressionUUID" -> "
   6c1d1bb3-33b3-4286-842d-22eb82d6f29c",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 69507, 1608},
 {"RotateAndZoomIn3D", 69684, 1613},
 {"DragLocators", 69861, 1618},
 {"CreateAndDeleteLocators", 70044, 1623},
 {"SliderZoom", 70225, 1628},
 {"GamepadControls", 70398, 1633},
 {"AutomaticAnimation", 70579, 1638},
 {"BookmarkAnimation", 70763, 1643}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 105, 0, 74, "DemoTitle", "ExpressionUUID" -> \
"7d1f5fc7-0461-4754-85b3-e241c32438ab"],
Cell[CellGroupData[{
Cell[1616, 39, 88, 0, 275, "InitializationSection", "ExpressionUUID" -> \
"4ba4df6d-f21e-446a-9b0c-d96950bc5dfa"],
Cell[1707, 41, 455, 14, 31, "Input", "ExpressionUUID" -> \
"b2f04202-5606-432b-8527-b2f4c60e13a0",
 InitializationCell->True,
 CellID->85450191],
Cell[2165, 57, 325, 10, 51, "Input", "ExpressionUUID" -> \
"76e654d6-aada-4479-b678-5251c5723cbc",
 InitializationCell->True,
 CellID->531239859],
Cell[2493, 69, 3524, 95, 142, "Input", "ExpressionUUID" -> \
"f4491d68-df8d-45fd-af5f-a7aa81a67029",
 InitializationCell->True,
 CellID->391064840],
Cell[6020, 166, 383, 12, 65, "Input", "ExpressionUUID" -> \
"b35e2e70-1105-49a5-a6e5-41be3970ddbc",
 InitializationCell->True,
 CellID->12957575],
Cell[6406, 180, 386, 12, 65, "Input", "ExpressionUUID" -> \
"a1ee6162-dd9d-48f4-a0cc-6d2283c10592",
 InitializationCell->True,
 CellID->669367315],
Cell[6795, 194, 610, 18, 53, "Input", "ExpressionUUID" -> \
"bc8f3527-ee30-49fa-9f0b-e638eca5cfac",
 InitializationCell->True,
 CellID->468545515],
Cell[7408, 214, 609, 18, 53, "Input", "ExpressionUUID" -> \
"c8608839-56de-4237-886d-4ea474343052",
 InitializationCell->True,
 CellID->23703490],
Cell[8020, 234, 24423, 529, 304, "Input", "ExpressionUUID" -> \
"3f9a77f9-381d-4204-8b57-8211cd87021a",
 InitializationCell->True,
 CellID->11417234]
}, Closed]],
Cell[CellGroupData[{
Cell[32480, 768, 84, 0, 189, "ManipulateSection", "ExpressionUUID" -> \
"f79235aa-735b-4f7e-a99f-ca9ee312a7b6"],
Cell[CellGroupData[{
Cell[32589, 772, 1371, 38, 98, "Input", "ExpressionUUID" -> \
"c25261c9-676f-491d-8786-5b4b1c2663c2"],
Cell[33963, 812, 21464, 404, 523, "Output", "ExpressionUUID" -> \
"3dcd1198-bb09-40aa-8b6f-7eb5e17257cb",
 CellID->4107367]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[55473, 1222, 91, 0, 169, "ManipulateCaptionSection", "ExpressionUUID" -> \
"c3ccfa67-2ec0-4d95-accf-f8c68009f2a9"],
Cell[55567, 1224, 671, 14, 38, "ManipulateCaption", "ExpressionUUID" -> \
"ccf5d761-aaa0-4d06-908f-41fd7bc262b5",
 CellID->26719259],
Cell[56241, 1240, 475, 7, 37, "ManipulateCaption", "ExpressionUUID" -> \
"7341bb61-fac9-457c-a072-87fbf34a1bb9",
 CellID->1734633663]
}, Open  ]],
Cell[CellGroupData[{
Cell[56753, 1252, 83, 0, 172, "ThumbnailSection", "ExpressionUUID" -> \
"fe7426e4-6fde-4b76-bb02-ae3f6bb0228b"],
Cell[56839, 1254, 1332, 35, 230, "Output", "ExpressionUUID" -> \
"9f9721f5-8307-426b-b8fb-c36658b40d47"]
}, Open  ]],
Cell[CellGroupData[{
Cell[58208, 1294, 83, 0, 142, "SnapshotsSection", "ExpressionUUID" -> \
"f961dd62-9200-4acb-9c27-61bbbcc3aa09"],
Cell[58294, 1296, 1331, 35, 230, "Output", "ExpressionUUID" -> \
"3794a5b2-0b08-4dc4-89d7-7a433bcf6778"]
}, Open  ]],
Cell[CellGroupData[{
Cell[59662, 1336, 81, 0, 335, "DetailsSection", "ExpressionUUID" -> \
"36e5a2cb-3e97-494a-a058-b58a997a48f8"],
Cell[59746, 1338, 182, 3, 22, "DetailNotes", "ExpressionUUID" -> \
"56f45621-24c5-4c7b-9e27-8d3fc860c015",
 CellID->1752358892],
Cell[59931, 1343, 198, 4, 22, "DetailNotes", "ExpressionUUID" -> \
"a642f0e0-c95a-46e5-9768-467e93301f79",
 CellID->1474654544],
Cell[60132, 1349, 221, 4, 22, "DetailNotes", "ExpressionUUID" -> \
"f9ea45bc-84fe-45a6-913f-6e52a90e6b56",
 CellID->410150981],
Cell[60356, 1355, 420, 9, 37, "DetailNotes", "ExpressionUUID" -> \
"da65f691-5f08-40cd-aeb4-ddd2a8a65d71",
 CellID->2132514444],
Cell[60779, 1366, 211, 4, 22, "DetailNotes", "ExpressionUUID" -> \
"1c93d31e-8296-4e2f-8196-3edf7fdae9d5",
 CellID->1815675525],
Cell[60993, 1372, 167, 3, 22, "DetailNotes", "ExpressionUUID" -> \
"4873d5c5-3225-4ad1-9ac3-d9cce638129e",
 CellID->315924805],
Cell[61163, 1377, 289, 7, 22, "DetailNotes", "ExpressionUUID" -> \
"fe31a388-4995-4e0a-a3f8-4e150e08bc42",
 CellID->1358221255]
}, Open  ]],
Cell[CellGroupData[{
Cell[61489, 1389, 92, 0, 126, "ControlSuggestionsSection", "ExpressionUUID" \
-> "1f6d04e0-c983-4329-9aa4-42aaa3e5a03b"],
Cell[61584, 1391, 429, 10, 22, "ControlSuggestions", "ExpressionUUID" -> \
"0b2dffd8-2c96-4ab0-924a-9f53288eadb1",
 CellTags->"ResizeImages"],
Cell[62016, 1403, 800, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"a69dad03-5dc5-4578-a25f-b4535c1a48f9",
 CellTags->"RotateAndZoomIn3D"],
Cell[62819, 1424, 456, 13, 22, "ControlSuggestions", "ExpressionUUID" -> \
"4d687854-a325-45fc-9f9d-535f24ccc14c",
 CellTags->"DragLocators"],
Cell[63278, 1439, 761, 19, 22, "ControlSuggestions", "ExpressionUUID" -> \
"9f3d67e6-1617-4354-934e-31be0ac6506e",
 CellTags->"CreateAndDeleteLocators"],
Cell[64042, 1460, 961, 23, 22, "ControlSuggestions", "ExpressionUUID" -> \
"b0b21231-1bf8-49bd-911c-2a35503c837d",
 CellTags->"SliderZoom"],
Cell[65006, 1485, 426, 11, 22, "ControlSuggestions", "ExpressionUUID" -> \
"b036cc69-5096-4917-abe6-a5ea1ac0efd3",
 CellTags->"GamepadControls"],
Cell[65435, 1498, 1586, 34, 22, "ControlSuggestions", "ExpressionUUID" -> \
"c025afed-16a6-40ff-bb31-d28edf0d46c4",
 CellTags->"AutomaticAnimation"],
Cell[67024, 1534, 1030, 24, 22, "ControlSuggestions", "ExpressionUUID" -> \
"6c1d1bb3-33b3-4286-842d-22eb82d6f29c",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[68069, 1561, 85, 0, 155, "SearchTermsSection", "ExpressionUUID" -> \
"afeaff44-43ee-4de2-97f2-95c8c0e56961"],
Cell[CellGroupData[{
Cell[68179, 1565, 86, 0, 129, "RelatedLinksSection", "ExpressionUUID" -> \
"678f129f-5b0d-41f0-9ada-d35c09bd242f"],
Cell[68268, 1567, 256, 5, 22, "RelatedLinks", "ExpressionUUID" -> \
"5530ed23-c715-424d-a77a-6f35c9cac3e0",
 CellID->21500346]
}, Open  ]],
Cell[CellGroupData[{
Cell[68561, 1577, 80, 0, 141, "AuthorSection", "ExpressionUUID" -> \
"dc4babf4-e83c-4633-b289-fc7a85decf1b"],
Cell[68644, 1579, 374, 10, 22, "Author", "ExpressionUUID" -> \
"105ae5f2-8b53-4f56-9eed-a52bb777db79",
 CellID->568191562]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 6u0fCuqCtNE4jCgah6ilZ4u# *)
