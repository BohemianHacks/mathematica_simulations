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
NotebookDataLength[    136796,       3183]
NotebookOptionsPosition[    132734,       3040]
NotebookOutlinePosition[    134445,       3094]
CellTagsIndexPosition[    134109,       3082]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Henry's Law for Gases Dissolved in Water", "DemoTitle"],

Cell[CellGroupData[{

Cell["", "InitializationSection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"AH", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "156.51"}], ",", 
     RowBox[{"-", "159.854"}], ",", 
     RowBox[{"-", "171.764"}], ",", 
     RowBox[{"-", "250.812"}], ",", 
     RowBox[{"-", "153.027"}], ",", 
     RowBox[{"-", "105.9768"}], ",", 
     RowBox[{"-", "125.939"}], ",", 
     RowBox[{"-", "338.217"}], ",", 
     RowBox[{"-", "181.587"}], ",", 
     RowBox[{"-", "171.2542"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->25818266],

Cell[BoxData[
 RowBox[{
  RowBox[{"BH", "=", 
   RowBox[{"{", 
    RowBox[{
    "8160.2", ",", "8741.68", ",", "8296.9", ",", "12695.6", ",", "7965.2", 
     ",", "4259.62", ",", "5528.45", ",", "13282.1", ",", "8632.12", ",", 
     "8319.24"}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->735554291],

Cell[BoxData[
 RowBox[{
  RowBox[{"CH", "=", 
   RowBox[{"{", 
    RowBox[{
    "21.403", ",", "21.6694", ",", "23.3376", ",", "34.7413", ",", "20.5248", 
     ",", "14.0094", ",", "16.8893", ",", "51.9144", ",", "24.7981", ",", 
     "23.24323"}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellID->560418990],

Cell[BoxData[
 RowBox[{
  RowBox[{"DH", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     RowBox[{"-", "1.10261*^-3"}], ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", 
     RowBox[{"-", "0.0425831"}], ",", "0", ",", "0"}], "}"}]}], 
  ";"}]], "Input",
 InitializationCell->True,
 CellID->31231349]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateSection"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"newdata", ",", "species", ",", "col", ",", "H", ",", "x"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"newdata", "[", "data_", "]"}], ":=", 
       RowBox[{"Delete", "[", 
        RowBox[{"data", ",", 
         RowBox[{"Position", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
            "acetylene", ",", "carbondioxide", ",", "carbonmonoxide", ",", 
             "ethane", ",", "ethylene", ",", "helium", ",", "hydrogen", ",", 
             "methane", ",", "nitrogen", ",", "oxygen"}], "}"}], ",", 
           "False"}], "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"species", "=", 
       RowBox[{"newdata", "@", 
        RowBox[{"{", 
         RowBox[{
         "\"\<acetylene\>\"", ",", "\"\<carbon dioxide\>\"", ",", 
          "\"\<carbon monoxide\>\"", ",", "\"\<ethane\>\"", ",", 
          "\"\<ethylene\>\"", ",", "\"\<helium\>\"", ",", "\"\<hydrogen\>\"", 
          ",", "\"\<methane\>\"", ",", " ", "\"\<nitrogen\>\"", ",", 
          "\"\<oxygen\>\""}], " ", "}"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"col", "=", 
       RowBox[{"newdata", "@", 
        RowBox[{"{", 
         RowBox[{
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0.5, 0., 0.], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->RGBColor[0.33333333333333337`, 0., 0.],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0.5, 0., 0.]"],
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
                RGBColor[0.5, 0., 0.]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0.5, 0., 0.],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[1., 0., 0.], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->RGBColor[0.6666666666666667, 0., 0.],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[1., 0., 0.]"],
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
                RGBColor[1., 0., 0.]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[1., 0., 0.],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[1., 0.4974129911626398, 0.], 
                RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->RGBColor[0.6666666666666667, 0.3316086607750932, 0.],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[1., 0.4974129911626398, 0.]"],
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
                RGBColor[1., 0.4974129911626398, 0.]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[1., 0.4974129911626398, 0.],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[
                 Rational[218, 255], 
                 Rational[11, 17], 
                 Rational[32, 255]], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              
              FrameStyle->RGBColor[
               0.5699346405228758, 0.43137254901960786`, 0.08366013071895424],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[218/255, 11/17, 32/255]"],
            Appearance->None,
            BaseStyle->{},
            BaselinePosition->Baseline,
            ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
              If[
               Not[
                AbsoluteCurrentValue["Deployed"]], 
               SelectionMove[Typeset`box$, All, Expression]; 
               FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
               FrontEnd`Private`$ColorSelectorInitialColor = RGBColor[
                  Rational[218, 255], 
                  Rational[11, 17], 
                  Rational[32, 255]]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
                RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              
              FrameStyle->RGBColor[
               0., 0.5264091146424517, 0.22473767969298986`],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0., 0.7896136719636774, 0.3371065195394848]"],
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
                RGBColor[0., 0.7896136719636774, 0.3371065195394848]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0., 0.7896136719636774, 0.3371065195394848],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
                RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->RGBColor[0., 0.2943246588286172, 0.5288269173761451],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0., 0.44148698824292576, 0.7932403760642176]"],
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
                RGBColor[0., 0.44148698824292576`, 0.7932403760642176]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0, 0, 1], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->RGBColor[0., 0., 0.6666666666666666],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0, 0, 1]"],
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
                RGBColor[0, 0, 1]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0, 0, 1],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0.5, 0, 0.5], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              
              FrameStyle->RGBColor[
               0.33333333333333337`, 0., 0.33333333333333337`],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0.5, 0, 0.5]"],
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
                RGBColor[0.5, 0, 0.5]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0.5, 0, 0.5],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {Hue[0.9], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              FrameStyle->Hue[0.9, 1., 0.6666666666666667],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "Hue[0.9]"],
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
                Hue[0.9, 0.5, 0.5]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["HueColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           Hue[0.9],
           Editable->False,
           Selectable->False], ",", 
          InterpretationBox[
           ButtonBox[
            TooltipBox[
             GraphicsBox[{
               {GrayLevel[0], RectangleBox[{0, 0}]}, 
               {GrayLevel[0], RectangleBox[{1, -1}]}, 
               {RGBColor[0.5, 0.5, 0.5], RectangleBox[{0, -1}, {2, 1}]}},
              AspectRatio->1,
              Frame->True,
              
              FrameStyle->RGBColor[
               0.33333333333333337`, 0.33333333333333337`, 
                0.33333333333333337`],
              FrameTicks->None,
              
              ImageSize->
               Dynamic[{
                Automatic, 
                 1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                  Magnification])}],
              PlotRangePadding->None],
             "RGBColor[0.5, 0.5, 0.5]"],
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
                RGBColor[0.5, 0.5, 0.5]; 
               FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
               MathLink`CallFrontEnd[
                 FrontEnd`AttachCell[Typeset`box$, 
                  FrontEndResource["RGBColorValueSelector"], {
                  0, {Left, Bottom}}, {Left, Top}, 
                  "ClosingActions" -> {
                   "SelectionDeparture", "ParentChanged", "EvaluatorQuit"}]]]],
            DefaultBaseStyle->{},
            Evaluator->Automatic,
            Method->"Preemptive"],
           RGBColor[0.5, 0.5, 0.5],
           Editable->False,
           Selectable->False]}], "}"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"H", "=", 
       RowBox[{"1", "/", 
        RowBox[{"Exp", "[", 
         RowBox[{"AH", "+", 
          FractionBox["BH", 
           RowBox[{"temp", "+", "273"}]], "+", 
          RowBox[{"CH", "*", 
           RowBox[{"Log", "[", 
            RowBox[{"temp", "+", "273"}], "]"}]}], "+", 
          RowBox[{"DH", "*", 
           RowBox[{"(", 
            RowBox[{"temp", "+", "273"}], ")"}]}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"x", "=", 
       RowBox[{"newdata", "[", 
        RowBox[{"P", "/", "H"}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"Switch", "[", 
         RowBox[{
         "npr", ",", "\[IndentingNewLine]", "True", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"BarChart", "[", 
           RowBox[{
            RowBox[{"x", "/.", 
             RowBox[{"temp", "\[Rule]", "T"}]}], ",", 
            RowBox[{"ChartStyle", "\[Rule]", "col"}], ",", 
            RowBox[{"ChartLabels", "\[Rule]", 
             RowBox[{"Placed", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"Rotate", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"#", ",", "17"}], "]"}], ",", 
                   RowBox[{"30", " ", "\[Degree]"}]}], "]"}], "&"}], "/@", 
                "species"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0.5", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0.9", ",", "1"}], "}"}]}], "}"}]}], "]"}]}], ",", 
            RowBox[{"FrameTicks", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"True", ",", "True"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"None", ",", "None"}], "}"}]}], "}"}]}], ",", 
            RowBox[{"FrameLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"None", ",", 
               RowBox[{"Style", "[", 
                RowBox[{
                "\"\<mole  fraction  gas  in  water \>\"", ",", "17"}], 
                "]"}]}], "}"}]}], ",", 
            RowBox[{"PlotRangePadding", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"None", ",", 
               RowBox[{"{", 
                RowBox[{"None", ",", 
                 RowBox[{"Scaled", "[", "0.02", "]"}]}], "}"}]}], "}"}]}]}], 
           "]"}], ",", "\[IndentingNewLine]", "False", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Plot", "[", 
           RowBox[{"x", ",", 
            RowBox[{"{", 
             RowBox[{"temp", ",", "0", ",", "250"}], "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", "col"}], ",", 
            RowBox[{"FrameLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"\"\<temperature (\[Degree]C)\>\"", ",", "17"}], 
                "]"}], ",", 
               RowBox[{"Style", "[", 
                RowBox[{
                "\"\<mole  fraction  gas  in  water \>\"", ",", "17"}], 
                "]"}]}], "}"}]}], ",", 
            RowBox[{"PlotRangePadding", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"None", ",", 
               RowBox[{"Scaled", "[", "0.02", "]"}]}], "}"}]}], ",", 
            RowBox[{"PlotRangeClipping", "\[Rule]", "False"}], ",", 
            RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
            RowBox[{"Epilog", "\[Rule]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"Mouseover", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"Transparent", ",", 
                   RowBox[{"Line", "[", 
                    RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"temp", ",", 
                    RowBox[{"x", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"temp", ",", "0", ",", "250"}], "}"}]}], "]"}], 
                    "]"}]}], "}"}], ",", 
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"species", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", "17", ",", 
                    RowBox[{"col", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", 
                    RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
                   RowBox[{"Dynamic", "@", 
                    RowBox[{"MousePosition", "[", "\"\<Graphics\>\"", "]"}]}],
                    ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "1.5"}]}], "}"}]}], "]"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", "1", ",", 
                 RowBox[{"Length", "@", "x"}]}], "}"}]}], "]"}]}]}], "]"}]}], 
         "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Axes", "\[Rule]", "False"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"14", ",", "Black"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "370"}], "}"}]}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
        RowBox[{"ImagePadding", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"70", ",", "60"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"75", ",", "20"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Length", "@", "x"}], ">", "0"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"Max", "@", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"newdata", "@", 
                 RowBox[{"(", 
                  RowBox[{"5", "/", "H"}], ")"}]}], ",", 
                RowBox[{"{", 
                 RowBox[{"temp", ",", "0", ",", "250"}], "}"}]}], "]"}]}]}], 
            "}"}], ",", "All"}], "]"}]}]}], "]"}]}]}], "\[IndentingNewLine]", 
    "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<select species to plot: \>\"", ",", "Bold"}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"acetylene", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<acetylene\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0.5, 0., 0.], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    FrameStyle->RGBColor[0.33333333333333337`, 0., 0.],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0.5, 0., 0.]"],
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
                    RGBColor[0.5, 0., 0.]; 
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
                 RGBColor[0.5, 0., 0.],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"carbondioxide", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<carbon dioxide\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[1., 0., 0.], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    FrameStyle->RGBColor[0.6666666666666667, 0., 0.],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[1., 0., 0.]"],
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
                    RGBColor[1., 0., 0.]; 
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
                 RGBColor[1., 0., 0.],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"carbonmonoxide", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<carbon monoxide\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[1., 0.4974129911626398, 0.], 
                    RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.6666666666666667, 0.3316086607750932, 0.],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[1., 0.4974129911626398, 0.]"],
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
                    RGBColor[1., 0.4974129911626398, 0.]; 
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
                 RGBColor[1., 0.4974129911626398, 0.],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"ethane", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<ethane\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[
                    Rational[218, 255], 
                    Rational[11, 17], 
                    Rational[32, 255]], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.5699346405228758, 0.43137254901960786`, 
                    0.08366013071895424],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[218/255, 11/17, 32/255]"],
                  Appearance->None,
                  BaseStyle->{},
                  BaselinePosition->Baseline,
                  ButtonFunction:>With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = RGBColor[
                    Rational[218, 255], 
                    Rational[11, 17], 
                    Rational[32, 255]]; 
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
                 RGBColor[
                  Rational[218, 255], 
                  Rational[11, 17], 
                  Rational[32, 255]],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"ethylene", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<ethylene\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
                    RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0., 0.5264091146424517, 0.22473767969298986`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0., 0.7896136719636774, 0.3371065195394848]"],
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
                    RGBColor[0., 0.7896136719636774, 0.3371065195394848]; 
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
                 RGBColor[0., 0.7896136719636774, 0.3371065195394848],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Spacer", "[", "1", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"helium", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<helium\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
                    RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0., 0.2943246588286172, 0.5288269173761451],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0., 0.44148698824292576, 0.7932403760642176]"],
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
                    RGBColor[0., 0.44148698824292576`, 0.7932403760642176]; 
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
                 RGBColor[0., 0.44148698824292576`, 0.7932403760642176],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"hydrogen", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<hydrogen\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0, 0, 1], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    FrameStyle->RGBColor[0., 0., 0.6666666666666666],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0, 0, 1]"],
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
                    RGBColor[0, 0, 1]; 
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
                 RGBColor[0, 0, 1],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"methane", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<methane\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0.5, 0, 0.5], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.33333333333333337`, 0., 0.33333333333333337`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0.5, 0, 0.5]"],
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
                    RGBColor[0.5, 0, 0.5]; 
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
                 RGBColor[0.5, 0, 0.5],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"nitrogen", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<nitrogen\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {Hue[0.9], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    FrameStyle->Hue[0.9, 1., 0.6666666666666667],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "Hue[0.9]"],
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
                    Hue[0.9, 0.5, 0.5]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["HueColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]],
                  DefaultBaseStyle->{},
                  Evaluator->Automatic,
                  Method->"Preemptive"],
                 Hue[0.9],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"oxygen", ",", "True", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<oxygen\>\"", ",", 
                InterpretationBox[
                 ButtonBox[
                  TooltipBox[
                   GraphicsBox[{
                    {GrayLevel[0], RectangleBox[{0, 0}]}, 
                    {GrayLevel[0], RectangleBox[{1, -1}]}, 
                    {RGBColor[0.5, 0.5, 0.5], RectangleBox[{0, -1}, {2, 1}]}},
                    AspectRatio->1,
                    Frame->True,
                    
                    FrameStyle->RGBColor[
                    0.33333333333333337`, 0.33333333333333337`, 
                    0.33333333333333337`],
                    FrameTicks->None,
                    
                    ImageSize->
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}],
                    PlotRangePadding->None],
                   "RGBColor[0.5, 0.5, 0.5]"],
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
                    RGBColor[0.5, 0.5, 0.5]; 
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
                 RGBColor[0.5, 0.5, 0.5],
                 Editable->False,
                 Selectable->False]}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
       "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Spacer", "[", "1", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{"{", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"npr", ",", "True", ",", "\"\<set temperature\>\""}], 
           "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Spacer", "[", "5", "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Control", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"P", ",", "5", ",", "\"\<partial pressure (bars)\>\""}], 
           "}"}], ",", "1", ",", "5", ",", "0.1", ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"PaneSelector", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"True", "\[Rule]", 
           RowBox[{"Control", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
               "T", ",", "0", ",", "\"\<temperature (\[Degree]C)\>\""}], 
               "}"}], ",", "0", ",", "250", ",", "1", ",", 
              RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
              RowBox[{"ImageSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
          "}"}], ",", 
         RowBox[{"Dynamic", "@", "npr"}]}], "]"}]}], "\[IndentingNewLine]", 
      "}"}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`acetylene$$ = 
    True, $CellContext`carbondioxide$$ = True, $CellContext`carbonmonoxide$$ =
     True, $CellContext`ethane$$ = True, $CellContext`ethylene$$ = 
    True, $CellContext`helium$$ = True, $CellContext`hydrogen$$ = 
    True, $CellContext`methane$$ = True, $CellContext`nitrogen$$ = 
    True, $CellContext`npr$$ = True, $CellContext`oxygen$$ = 
    True, $CellContext`P$$ = 5, $CellContext`T$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`acetylene$$], True, 
       Style["acetylene", 
        RGBColor[0.5, 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbondioxide$$], True, 
       Style["carbon dioxide", 
        RGBColor[1., 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbonmonoxide$$], True, 
       Style["carbon monoxide", 
        RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}}, {{
       Hold[$CellContext`ethane$$], True, 
       Style["ethane", 
        RGBColor[
         Rational[218, 255], 
         Rational[11, 17], 
         Rational[32, 255]]]}, {True, False}}, {{
       Hold[$CellContext`ethylene$$], True, 
       Style["ethylene", 
        RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
      True, False}}, {{
       Hold[$CellContext`helium$$], True, 
       Style["helium", 
        RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
      True, False}}, {{
       Hold[$CellContext`hydrogen$$], True, 
       Style["hydrogen", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`methane$$], True, 
       Style["methane", 
        RGBColor[0.5, 0, 0.5]]}, {True, False}}, {{
       Hold[$CellContext`nitrogen$$], True, 
       Style["nitrogen", 
        Hue[0.9]]}, {True, False}}, {{
       Hold[$CellContext`oxygen$$], True, 
       Style["oxygen", 
        RGBColor[0.5, 0.5, 0.5]]}, {True, False}}, {
      Hold[
       Grid[{{
          Style["select species to plot: ", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5]}, {
          Spacer[1], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Spacer[1]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`npr$$], True, "set temperature"}, {True, False}}, {{
       Hold[$CellContext`P$$], 5, "partial pressure (bars)"}, 1, 5, 0.1}, {{
       Hold[$CellContext`T$$], 0, "temperature (\[Degree]C)"}, 0, 250, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[11], 
          Spacer[5], 
          Manipulate`Place[12], 
          PaneSelector[{True -> Manipulate`Place[13]}, 
           Dynamic[$CellContext`npr$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {183., 187.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`acetylene$1179929$$ = 
    False, $CellContext`carbondioxide$1179930$$ = 
    False, $CellContext`carbonmonoxide$1179931$$ = 
    False, $CellContext`ethane$1179932$$ = 
    False, $CellContext`ethylene$1179933$$ = 
    False, $CellContext`helium$1179934$$ = 
    False, $CellContext`hydrogen$1179935$$ = 
    False, $CellContext`methane$1179936$$ = 
    False, $CellContext`nitrogen$1179937$$ = 
    False, $CellContext`oxygen$1179938$$ = False, $CellContext`npr$1179939$$ =
     False, $CellContext`P$1179940$$ = 0, $CellContext`T$1179941$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`acetylene$$ = 
        True, $CellContext`carbondioxide$$ = 
        True, $CellContext`carbonmonoxide$$ = True, $CellContext`ethane$$ = 
        True, $CellContext`ethylene$$ = True, $CellContext`helium$$ = 
        True, $CellContext`hydrogen$$ = True, $CellContext`methane$$ = 
        True, $CellContext`nitrogen$$ = True, $CellContext`npr$$ = 
        True, $CellContext`oxygen$$ = True, $CellContext`P$$ = 
        5, $CellContext`T$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`acetylene$$, $CellContext`acetylene$1179929$$, 
         False], 
        Hold[$CellContext`carbondioxide$$, \
$CellContext`carbondioxide$1179930$$, False], 
        Hold[$CellContext`carbonmonoxide$$, \
$CellContext`carbonmonoxide$1179931$$, False], 
        Hold[$CellContext`ethane$$, $CellContext`ethane$1179932$$, False], 
        Hold[$CellContext`ethylene$$, $CellContext`ethylene$1179933$$, False], 
        Hold[$CellContext`helium$$, $CellContext`helium$1179934$$, False], 
        Hold[$CellContext`hydrogen$$, $CellContext`hydrogen$1179935$$, False], 
        Hold[$CellContext`methane$$, $CellContext`methane$1179936$$, False], 
        Hold[$CellContext`nitrogen$$, $CellContext`nitrogen$1179937$$, False], 
        Hold[$CellContext`oxygen$$, $CellContext`oxygen$1179938$$, False], 
        Hold[$CellContext`npr$$, $CellContext`npr$1179939$$, False], 
        Hold[$CellContext`P$$, $CellContext`P$1179940$$, 0], 
        Hold[$CellContext`T$$, $CellContext`T$1179941$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`newdata$, $CellContext`species$, \
$CellContext`col$, $CellContext`H$, $CellContext`x$}, $CellContext`newdata$[
           Pattern[$CellContext`data$, 
            Blank[]]] := Delete[$CellContext`data$, 
           
           Position[{$CellContext`acetylene$$, $CellContext`carbondioxide$$, \
$CellContext`carbonmonoxide$$, $CellContext`ethane$$, \
$CellContext`ethylene$$, $CellContext`helium$$, $CellContext`hydrogen$$, \
$CellContext`methane$$, $CellContext`nitrogen$$, $CellContext`oxygen$$}, 
            False]]; $CellContext`species$ = $CellContext`newdata$[{
           "acetylene", "carbon dioxide", "carbon monoxide", "ethane", 
            "ethylene", "helium", "hydrogen", "methane", "nitrogen", 
            "oxygen"}]; $CellContext`col$ = $CellContext`newdata$[{
            RGBColor[0.5, 0., 0.], 
            RGBColor[1., 0., 0.], 
            RGBColor[1., 0.4974129911626398, 0.], 
            RGBColor[
             Rational[218, 255], 
             Rational[11, 17], 
             Rational[32, 255]], 
            RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
            RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
            RGBColor[0, 0, 1], 
            RGBColor[0.5, 0, 0.5], 
            Hue[0.9], 
            RGBColor[0.5, 0.5, 0.5]}]; $CellContext`H$ = 
         1/Exp[$CellContext`AH + $CellContext`BH/($CellContext`temp + 
            273) + $CellContext`CH 
            Log[$CellContext`temp + 273] + $CellContext`DH ($CellContext`temp + 
             273)]; $CellContext`x$ = \
$CellContext`newdata$[$CellContext`P$$/$CellContext`H$]; Show[
          Switch[$CellContext`npr$$, True, 
           BarChart[
            
            ReplaceAll[$CellContext`x$, $CellContext`temp -> \
$CellContext`T$$], ChartStyle -> $CellContext`col$, ChartLabels -> Placed[
              Map[Rotate[
                Style[#, 17], 30 Degree]& , $CellContext`species$], {{
               0.5, 0}, {0.9, 1}}], 
            FrameTicks -> {{True, True}, {None, None}}, FrameLabel -> {None, 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, {None, 
               Scaled[0.02]}}], False, 
           
           Plot[$CellContext`x$, {$CellContext`temp, 0, 250}, 
            PlotStyle -> $CellContext`col$, FrameLabel -> {
              Style["temperature (\[Degree]C)", 17], 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, 
              Scaled[0.02]}, PlotRangeClipping -> False, PlotRange -> All, 
            Epilog -> Table[
              Mouseover[{Transparent, 
                Line[
                 Table[{$CellContext`temp, 
                   Part[$CellContext`x$, $CellContext`i]}, {$CellContext`temp,
                    0, 250}]]}, 
               Text[
                Style[
                 Part[$CellContext`species$, $CellContext`i], 17, 
                 Part[$CellContext`col$, $CellContext`i], Background -> 
                 White], 
                Dynamic[
                 MousePosition["Graphics"]], {0, -1.5}]], {$CellContext`i, 1, 
               Length[$CellContext`x$]}]]], Axes -> False, Frame -> True, 
          LabelStyle -> {14, Black}, ImageSize -> {600, 370}, AspectRatio -> 
          Full, ImagePadding -> {{70, 60}, {75, 20}}, PlotRange -> 
          If[Length[$CellContext`x$] > 0, {0, 
             Max[
              Table[
               $CellContext`newdata$[
               5/$CellContext`H$], {$CellContext`temp, 0, 250}]]}, All]]], 
      "Specifications" :> {{{$CellContext`acetylene$$, True, 
          Style["acetylene", 
           RGBColor[0.5, 0., 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`carbondioxide$$, True, 
          Style["carbon dioxide", 
           RGBColor[1., 0., 0.]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`carbonmonoxide$$, True, 
          Style["carbon monoxide", 
           RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}, 
         ControlPlacement -> 3}, {{$CellContext`ethane$$, True, 
          Style["ethane", 
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`ethylene$$, True, 
          Style["ethylene", 
           RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
         True, False}, ControlPlacement -> 5}, {{$CellContext`helium$$, True, 
          Style["helium", 
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
         True, False}, ControlPlacement -> 
         6}, {{$CellContext`hydrogen$$, True, 
          Style["hydrogen", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         7}, {{$CellContext`methane$$, True, 
          Style["methane", 
           RGBColor[0.5, 0, 0.5]]}, {True, False}, ControlPlacement -> 
         8}, {{$CellContext`nitrogen$$, True, 
          Style["nitrogen", 
           Hue[0.9]]}, {True, False}, ControlPlacement -> 
         9}, {{$CellContext`oxygen$$, True, 
          Style["oxygen", 
           RGBColor[0.5, 0.5, 0.5]]}, {True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Style["select species to plot: ", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5]}, {
           Spacer[1], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}}, Alignment -> Right], 
        Spacer[
        1], {{$CellContext`npr$$, True, "set temperature"}, {True, False}, 
         ControlPlacement -> 
         11}, {{$CellContext`P$$, 5, "partial pressure (bars)"}, 1, 5, 0.1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 
         12}, {{$CellContext`T$$, 0, "temperature (\[Degree]C)"}, 0, 250, 1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 13}, 
        Grid[{{
           Manipulate`Place[11], 
           Spacer[5], 
           Manipulate`Place[12], 
           PaneSelector[{True -> Manipulate`Place[13]}, 
            Dynamic[$CellContext`npr$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{649., {247., 254.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`AH = {-156.51, -159.854, -171.764, \
-250.812, -153.027, -105.9768, -125.939, -338.217, -181.587, -171.2542}, \
$CellContext`BH = {8160.2, 8741.68, 8296.9, 12695.6, 7965.2, 4259.62, 5528.45,
         13282.1, 8632.12, 8319.24}, $CellContext`CH = {21.403, 21.6694, 
        23.3376, 34.7413, 20.5248, 14.0094, 16.8893, 51.9144, 24.7981, 
        23.24323}, $CellContext`DH = {
        0, -0.00110261, 0, 0, 0, 0, 0, -0.0425831, 0, 0}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->89718289]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection"],

Cell["\<\
This Demonstration runs calculations of the mole fraction for 10 different \
gases dissolved in water. For the gases whose boxes are checked, a bar graph \
for mole fraction versus temperature is shown. When the \"set temperature\" \
box is checked, you can use the temperature slider to compare the mole \
fractions of each gas dissolved in water, as shown on the bar graph. When \
\"set temperature\" is not selected, the mole fractions are plotted versus \
temperature; hover the cursor over a curve to see which gas it corresponds \
to. The partial pressure can also be varied by a slider.\
\>", "ManipulateCaption"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`acetylene$$ = 
    True, $CellContext`carbondioxide$$ = True, $CellContext`carbonmonoxide$$ =
     True, $CellContext`ethane$$ = True, $CellContext`ethylene$$ = 
    True, $CellContext`helium$$ = True, $CellContext`hydrogen$$ = 
    True, $CellContext`methane$$ = True, $CellContext`nitrogen$$ = 
    True, $CellContext`npr$$ = True, $CellContext`oxygen$$ = 
    True, $CellContext`P$$ = 5, $CellContext`T$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`acetylene$$], True, 
       Style["acetylene", 
        RGBColor[0.5, 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbondioxide$$], True, 
       Style["carbon dioxide", 
        RGBColor[1., 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbonmonoxide$$], True, 
       Style["carbon monoxide", 
        RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}}, {{
       Hold[$CellContext`ethane$$], True, 
       Style["ethane", 
        RGBColor[
         Rational[218, 255], 
         Rational[11, 17], 
         Rational[32, 255]]]}, {True, False}}, {{
       Hold[$CellContext`ethylene$$], True, 
       Style["ethylene", 
        RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
      True, False}}, {{
       Hold[$CellContext`helium$$], True, 
       Style["helium", 
        RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
      True, False}}, {{
       Hold[$CellContext`hydrogen$$], True, 
       Style["hydrogen", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`methane$$], True, 
       Style["methane", 
        RGBColor[0.5, 0, 0.5]]}, {True, False}}, {{
       Hold[$CellContext`nitrogen$$], True, 
       Style["nitrogen", 
        Hue[0.9]]}, {True, False}}, {{
       Hold[$CellContext`oxygen$$], True, 
       Style["oxygen", 
        RGBColor[0.5, 0.5, 0.5]]}, {True, False}}, {
      Hold[
       Grid[{{
          Style["select species to plot: ", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5]}, {
          Spacer[1], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Spacer[1]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`npr$$], True, "set temperature"}, {True, False}}, {{
       Hold[$CellContext`P$$], 5, "partial pressure (bars)"}, 1, 5, 0.1}, {{
       Hold[$CellContext`T$$], 0, "temperature (\[Degree]C)"}, 0, 250, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[11], 
          Spacer[5], 
          Manipulate`Place[12], 
          PaneSelector[{True -> Manipulate`Place[13]}, 
           Dynamic[$CellContext`npr$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    750., {228., 235.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`acetylene$2069$$ = 
    False, $CellContext`carbondioxide$2070$$ = 
    False, $CellContext`carbonmonoxide$2071$$ = 
    False, $CellContext`ethane$2072$$ = False, $CellContext`ethylene$2073$$ = 
    False, $CellContext`helium$2074$$ = False, $CellContext`hydrogen$2075$$ = 
    False, $CellContext`methane$2076$$ = False, $CellContext`nitrogen$2077$$ =
     False, $CellContext`oxygen$2078$$ = False, $CellContext`npr$2079$$ = 
    False, $CellContext`P$2080$$ = 0, $CellContext`T$2081$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`acetylene$$ = 
        True, $CellContext`carbondioxide$$ = 
        True, $CellContext`carbonmonoxide$$ = True, $CellContext`ethane$$ = 
        True, $CellContext`ethylene$$ = True, $CellContext`helium$$ = 
        True, $CellContext`hydrogen$$ = True, $CellContext`methane$$ = 
        True, $CellContext`nitrogen$$ = True, $CellContext`npr$$ = 
        True, $CellContext`oxygen$$ = True, $CellContext`P$$ = 
        5, $CellContext`T$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`acetylene$$, $CellContext`acetylene$2069$$, False], 
        Hold[$CellContext`carbondioxide$$, $CellContext`carbondioxide$2070$$, 
         False], 
        Hold[$CellContext`carbonmonoxide$$, \
$CellContext`carbonmonoxide$2071$$, False], 
        Hold[$CellContext`ethane$$, $CellContext`ethane$2072$$, False], 
        Hold[$CellContext`ethylene$$, $CellContext`ethylene$2073$$, False], 
        Hold[$CellContext`helium$$, $CellContext`helium$2074$$, False], 
        Hold[$CellContext`hydrogen$$, $CellContext`hydrogen$2075$$, False], 
        Hold[$CellContext`methane$$, $CellContext`methane$2076$$, False], 
        Hold[$CellContext`nitrogen$$, $CellContext`nitrogen$2077$$, False], 
        Hold[$CellContext`oxygen$$, $CellContext`oxygen$2078$$, False], 
        Hold[$CellContext`npr$$, $CellContext`npr$2079$$, False], 
        Hold[$CellContext`P$$, $CellContext`P$2080$$, 0], 
        Hold[$CellContext`T$$, $CellContext`T$2081$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`newdata$, $CellContext`species$, \
$CellContext`col$, $CellContext`H$, $CellContext`x$}, $CellContext`newdata$[
           Pattern[$CellContext`data$, 
            Blank[]]] := Delete[$CellContext`data$, 
           
           Position[{$CellContext`acetylene$$, $CellContext`carbondioxide$$, \
$CellContext`carbonmonoxide$$, $CellContext`ethane$$, \
$CellContext`ethylene$$, $CellContext`helium$$, $CellContext`hydrogen$$, \
$CellContext`methane$$, $CellContext`nitrogen$$, $CellContext`oxygen$$}, 
            False]]; $CellContext`species$ = $CellContext`newdata$[{
           "acetylene", "carbon dioxide", "carbon monoxide", "ethane", 
            "ethylene", "helium", "hydrogen", "methane", "nitrogen", 
            "oxygen"}]; $CellContext`col$ = $CellContext`newdata$[{
            RGBColor[0.5, 0., 0.], 
            RGBColor[1., 0., 0.], 
            RGBColor[1., 0.4974129911626398, 0.], 
            RGBColor[
             Rational[218, 255], 
             Rational[11, 17], 
             Rational[32, 255]], 
            RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
            RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
            RGBColor[0, 0, 1], 
            RGBColor[0.5, 0, 0.5], 
            Hue[0.9], 
            RGBColor[0.5, 0.5, 0.5]}]; $CellContext`H$ = 
         1/Exp[$CellContext`AH + $CellContext`BH/($CellContext`temp + 
            273) + $CellContext`CH 
            Log[$CellContext`temp + 273] + $CellContext`DH ($CellContext`temp + 
             273)]; $CellContext`x$ = \
$CellContext`newdata$[$CellContext`P$$/$CellContext`H$]; Show[
          Switch[$CellContext`npr$$, True, 
           BarChart[
            
            ReplaceAll[$CellContext`x$, $CellContext`temp -> \
$CellContext`T$$], ChartStyle -> $CellContext`col$, ChartLabels -> Placed[
              Map[Rotate[
                Style[#, 17], 30 Degree]& , $CellContext`species$], {{
               0.5, 0}, {0.9, 1}}], 
            FrameTicks -> {{True, True}, {None, None}}, FrameLabel -> {None, 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, {None, 
               Scaled[0.02]}}], False, 
           Plot[$CellContext`x$, {$CellContext`temp, 0, 250}, 
            PlotStyle -> $CellContext`col$, FrameLabel -> {
              Style["temperature (\[Degree]C)", 17], 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, 
              Scaled[0.02]}, PlotRangeClipping -> False, PlotRange -> All, 
            Epilog -> Table[
              Mouseover[{Transparent, 
                Line[
                 Table[{$CellContext`temp, 
                   Part[$CellContext`x$, $CellContext`i]}, {$CellContext`temp,
                    0, 250}]]}, 
               Text[
                Style[
                 Part[$CellContext`species$, $CellContext`i], 17, 
                 Part[$CellContext`col$, $CellContext`i], Background -> 
                 White], 
                Dynamic[
                 MousePosition["Graphics"]], {0, -1.5}]], {$CellContext`i, 1, 
               Length[$CellContext`x$]}]]], Axes -> False, Frame -> True, 
          LabelStyle -> {14, Black}, ImageSize -> {600, 370}, AspectRatio -> 
          Full, ImagePadding -> {{70, 60}, {75, 20}}, PlotRange -> 
          If[Length[$CellContext`x$] > 0, {0, 
             Max[
              Table[
               $CellContext`newdata$[
               5/$CellContext`H$], {$CellContext`temp, 0, 250}]]}, All]]], 
      "Specifications" :> {{{$CellContext`acetylene$$, True, 
          Style["acetylene", 
           RGBColor[0.5, 0., 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`carbondioxide$$, True, 
          Style["carbon dioxide", 
           RGBColor[1., 0., 0.]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`carbonmonoxide$$, True, 
          Style["carbon monoxide", 
           RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}, 
         ControlPlacement -> 3}, {{$CellContext`ethane$$, True, 
          Style["ethane", 
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`ethylene$$, True, 
          Style["ethylene", 
           RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
         True, False}, ControlPlacement -> 5}, {{$CellContext`helium$$, True, 
          Style["helium", 
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
         True, False}, ControlPlacement -> 
         6}, {{$CellContext`hydrogen$$, True, 
          Style["hydrogen", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         7}, {{$CellContext`methane$$, True, 
          Style["methane", 
           RGBColor[0.5, 0, 0.5]]}, {True, False}, ControlPlacement -> 
         8}, {{$CellContext`nitrogen$$, True, 
          Style["nitrogen", 
           Hue[0.9]]}, {True, False}, ControlPlacement -> 
         9}, {{$CellContext`oxygen$$, True, 
          Style["oxygen", 
           RGBColor[0.5, 0.5, 0.5]]}, {True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Style["select species to plot: ", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5]}, {
           Spacer[1], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}}, Alignment -> Right], 
        Spacer[
        1], {{$CellContext`npr$$, True, "set temperature"}, {True, False}, 
         ControlPlacement -> 
         11}, {{$CellContext`P$$, 5, "partial pressure (bars)"}, 1, 5, 0.1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 
         12}, {{$CellContext`T$$, 0, "temperature (\[Degree]C)"}, 0, 250, 1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 13}, 
        Grid[{{
           Manipulate`Place[11], 
           Spacer[5], 
           Manipulate`Place[12], 
           PaneSelector[{True -> Manipulate`Place[13]}, 
            Dynamic[$CellContext`npr$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{799., {293., 300.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`AH = {-156.51, -159.854, -171.764, \
-250.812, -153.027, -105.9768, -125.939, -338.217, -181.587, -171.2542}, \
$CellContext`BH = {8160.2, 8741.68, 8296.9, 12695.6, 7965.2, 4259.62, 5528.45,
         13282.1, 8632.12, 8319.24}, $CellContext`CH = {21.403, 21.6694, 
        23.3376, 34.7413, 20.5248, 14.0094, 16.8893, 51.9144, 24.7981, 
        23.24323}, $CellContext`DH = {
        0, -0.00110261, 0, 0, 0, 0, 0, -0.0425831, 0, 0}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->462453015]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`acetylene$$ = 
    True, $CellContext`carbondioxide$$ = True, $CellContext`carbonmonoxide$$ =
     True, $CellContext`ethane$$ = True, $CellContext`ethylene$$ = 
    True, $CellContext`helium$$ = True, $CellContext`hydrogen$$ = 
    True, $CellContext`methane$$ = True, $CellContext`nitrogen$$ = 
    True, $CellContext`npr$$ = False, $CellContext`oxygen$$ = 
    True, $CellContext`P$$ = 5, $CellContext`T$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`acetylene$$], True, 
       Style["acetylene", 
        RGBColor[0.5, 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbondioxide$$], True, 
       Style["carbon dioxide", 
        RGBColor[1., 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbonmonoxide$$], True, 
       Style["carbon monoxide", 
        RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}}, {{
       Hold[$CellContext`ethane$$], True, 
       Style["ethane", 
        RGBColor[
         Rational[218, 255], 
         Rational[11, 17], 
         Rational[32, 255]]]}, {True, False}}, {{
       Hold[$CellContext`ethylene$$], True, 
       Style["ethylene", 
        RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
      True, False}}, {{
       Hold[$CellContext`helium$$], True, 
       Style["helium", 
        RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
      True, False}}, {{
       Hold[$CellContext`hydrogen$$], True, 
       Style["hydrogen", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`methane$$], True, 
       Style["methane", 
        RGBColor[0.5, 0, 0.5]]}, {True, False}}, {{
       Hold[$CellContext`nitrogen$$], True, 
       Style["nitrogen", 
        Hue[0.9]]}, {True, False}}, {{
       Hold[$CellContext`oxygen$$], True, 
       Style["oxygen", 
        RGBColor[0.5, 0.5, 0.5]]}, {True, False}}, {
      Hold[
       Grid[{{
          Style["select species to plot: ", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5]}, {
          Spacer[1], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Spacer[1]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`npr$$], False, "set temperature"}, {True, False}}, {{
       Hold[$CellContext`P$$], 5, "partial pressure (bars)"}, 1, 5, 0.1}, {{
       Hold[$CellContext`T$$], 0, "temperature (\[Degree]C)"}, 0, 250, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[11], 
          Spacer[5], 
          Manipulate`Place[12], 
          PaneSelector[{True -> Manipulate`Place[13]}, 
           Dynamic[$CellContext`npr$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    750., {228., 235.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`acetylene$2202$$ = 
    False, $CellContext`carbondioxide$2203$$ = 
    False, $CellContext`carbonmonoxide$2204$$ = 
    False, $CellContext`ethane$2205$$ = False, $CellContext`ethylene$2206$$ = 
    False, $CellContext`helium$2207$$ = False, $CellContext`hydrogen$2208$$ = 
    False, $CellContext`methane$2209$$ = False, $CellContext`nitrogen$2210$$ =
     False, $CellContext`oxygen$2211$$ = False, $CellContext`npr$2212$$ = 
    False, $CellContext`P$2213$$ = 0, $CellContext`T$2214$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`acetylene$$ = 
        True, $CellContext`carbondioxide$$ = 
        True, $CellContext`carbonmonoxide$$ = True, $CellContext`ethane$$ = 
        True, $CellContext`ethylene$$ = True, $CellContext`helium$$ = 
        True, $CellContext`hydrogen$$ = True, $CellContext`methane$$ = 
        True, $CellContext`nitrogen$$ = True, $CellContext`npr$$ = 
        False, $CellContext`oxygen$$ = True, $CellContext`P$$ = 
        5, $CellContext`T$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`acetylene$$, $CellContext`acetylene$2202$$, False], 
        Hold[$CellContext`carbondioxide$$, $CellContext`carbondioxide$2203$$, 
         False], 
        Hold[$CellContext`carbonmonoxide$$, \
$CellContext`carbonmonoxide$2204$$, False], 
        Hold[$CellContext`ethane$$, $CellContext`ethane$2205$$, False], 
        Hold[$CellContext`ethylene$$, $CellContext`ethylene$2206$$, False], 
        Hold[$CellContext`helium$$, $CellContext`helium$2207$$, False], 
        Hold[$CellContext`hydrogen$$, $CellContext`hydrogen$2208$$, False], 
        Hold[$CellContext`methane$$, $CellContext`methane$2209$$, False], 
        Hold[$CellContext`nitrogen$$, $CellContext`nitrogen$2210$$, False], 
        Hold[$CellContext`oxygen$$, $CellContext`oxygen$2211$$, False], 
        Hold[$CellContext`npr$$, $CellContext`npr$2212$$, False], 
        Hold[$CellContext`P$$, $CellContext`P$2213$$, 0], 
        Hold[$CellContext`T$$, $CellContext`T$2214$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`newdata$, $CellContext`species$, \
$CellContext`col$, $CellContext`H$, $CellContext`x$}, $CellContext`newdata$[
           Pattern[$CellContext`data$, 
            Blank[]]] := Delete[$CellContext`data$, 
           
           Position[{$CellContext`acetylene$$, $CellContext`carbondioxide$$, \
$CellContext`carbonmonoxide$$, $CellContext`ethane$$, \
$CellContext`ethylene$$, $CellContext`helium$$, $CellContext`hydrogen$$, \
$CellContext`methane$$, $CellContext`nitrogen$$, $CellContext`oxygen$$}, 
            False]]; $CellContext`species$ = $CellContext`newdata$[{
           "acetylene", "carbon dioxide", "carbon monoxide", "ethane", 
            "ethylene", "helium", "hydrogen", "methane", "nitrogen", 
            "oxygen"}]; $CellContext`col$ = $CellContext`newdata$[{
            RGBColor[0.5, 0., 0.], 
            RGBColor[1., 0., 0.], 
            RGBColor[1., 0.4974129911626398, 0.], 
            RGBColor[
             Rational[218, 255], 
             Rational[11, 17], 
             Rational[32, 255]], 
            RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
            RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
            RGBColor[0, 0, 1], 
            RGBColor[0.5, 0, 0.5], 
            Hue[0.9], 
            RGBColor[0.5, 0.5, 0.5]}]; $CellContext`H$ = 
         1/Exp[$CellContext`AH + $CellContext`BH/($CellContext`temp + 
            273) + $CellContext`CH 
            Log[$CellContext`temp + 273] + $CellContext`DH ($CellContext`temp + 
             273)]; $CellContext`x$ = \
$CellContext`newdata$[$CellContext`P$$/$CellContext`H$]; Show[
          Switch[$CellContext`npr$$, True, 
           BarChart[
            
            ReplaceAll[$CellContext`x$, $CellContext`temp -> \
$CellContext`T$$], ChartStyle -> $CellContext`col$, ChartLabels -> Placed[
              Map[Rotate[
                Style[#, 17], 30 Degree]& , $CellContext`species$], {{
               0.5, 0}, {0.9, 1}}], 
            FrameTicks -> {{True, True}, {None, None}}, FrameLabel -> {None, 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, {None, 
               Scaled[0.02]}}], False, 
           Plot[$CellContext`x$, {$CellContext`temp, 0, 250}, 
            PlotStyle -> $CellContext`col$, FrameLabel -> {
              Style["temperature (\[Degree]C)", 17], 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, 
              Scaled[0.02]}, PlotRangeClipping -> False, PlotRange -> All, 
            Epilog -> Table[
              Mouseover[{Transparent, 
                Line[
                 Table[{$CellContext`temp, 
                   Part[$CellContext`x$, $CellContext`i]}, {$CellContext`temp,
                    0, 250}]]}, 
               Text[
                Style[
                 Part[$CellContext`species$, $CellContext`i], 17, 
                 Part[$CellContext`col$, $CellContext`i], Background -> 
                 White], 
                Dynamic[
                 MousePosition["Graphics"]], {0, -1.5}]], {$CellContext`i, 1, 
               Length[$CellContext`x$]}]]], Axes -> False, Frame -> True, 
          LabelStyle -> {14, Black}, ImageSize -> {600, 370}, AspectRatio -> 
          Full, ImagePadding -> {{70, 60}, {75, 20}}, PlotRange -> 
          If[Length[$CellContext`x$] > 0, {0, 
             Max[
              Table[
               $CellContext`newdata$[
               5/$CellContext`H$], {$CellContext`temp, 0, 250}]]}, All]]], 
      "Specifications" :> {{{$CellContext`acetylene$$, True, 
          Style["acetylene", 
           RGBColor[0.5, 0., 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`carbondioxide$$, True, 
          Style["carbon dioxide", 
           RGBColor[1., 0., 0.]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`carbonmonoxide$$, True, 
          Style["carbon monoxide", 
           RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}, 
         ControlPlacement -> 3}, {{$CellContext`ethane$$, True, 
          Style["ethane", 
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`ethylene$$, True, 
          Style["ethylene", 
           RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
         True, False}, ControlPlacement -> 5}, {{$CellContext`helium$$, True, 
          Style["helium", 
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
         True, False}, ControlPlacement -> 
         6}, {{$CellContext`hydrogen$$, True, 
          Style["hydrogen", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         7}, {{$CellContext`methane$$, True, 
          Style["methane", 
           RGBColor[0.5, 0, 0.5]]}, {True, False}, ControlPlacement -> 
         8}, {{$CellContext`nitrogen$$, True, 
          Style["nitrogen", 
           Hue[0.9]]}, {True, False}, ControlPlacement -> 
         9}, {{$CellContext`oxygen$$, True, 
          Style["oxygen", 
           RGBColor[0.5, 0.5, 0.5]]}, {True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Style["select species to plot: ", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5]}, {
           Spacer[1], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}}, Alignment -> Right], 
        Spacer[
        1], {{$CellContext`npr$$, False, "set temperature"}, {True, False}, 
         ControlPlacement -> 
         11}, {{$CellContext`P$$, 5, "partial pressure (bars)"}, 1, 5, 0.1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 
         12}, {{$CellContext`T$$, 0, "temperature (\[Degree]C)"}, 0, 250, 1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 13}, 
        Grid[{{
           Manipulate`Place[11], 
           Spacer[5], 
           Manipulate`Place[12], 
           PaneSelector[{True -> Manipulate`Place[13]}, 
            Dynamic[$CellContext`npr$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{799., {293., 300.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`AH = {-156.51, -159.854, -171.764, \
-250.812, -153.027, -105.9768, -125.939, -338.217, -181.587, -171.2542}, \
$CellContext`BH = {8160.2, 8741.68, 8296.9, 12695.6, 7965.2, 4259.62, 5528.45,
         13282.1, 8632.12, 8319.24}, $CellContext`CH = {21.403, 21.6694, 
        23.3376, 34.7413, 20.5248, 14.0094, 16.8893, 51.9144, 24.7981, 
        23.24323}, $CellContext`DH = {
        0, -0.00110261, 0, 0, 0, 0, 0, -0.0425831, 0, 0}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->704504612],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`acetylene$$ = 
    False, $CellContext`carbondioxide$$ = 
    False, $CellContext`carbonmonoxide$$ = True, $CellContext`ethane$$ = 
    True, $CellContext`ethylene$$ = True, $CellContext`helium$$ = 
    True, $CellContext`hydrogen$$ = True, $CellContext`methane$$ = 
    True, $CellContext`nitrogen$$ = True, $CellContext`npr$$ = 
    True, $CellContext`oxygen$$ = True, $CellContext`P$$ = 
    5, $CellContext`T$$ = 131, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`acetylene$$], False, 
       Style["acetylene", 
        RGBColor[0.5, 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbondioxide$$], False, 
       Style["carbon dioxide", 
        RGBColor[1., 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbonmonoxide$$], True, 
       Style["carbon monoxide", 
        RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}}, {{
       Hold[$CellContext`ethane$$], True, 
       Style["ethane", 
        RGBColor[
         Rational[218, 255], 
         Rational[11, 17], 
         Rational[32, 255]]]}, {True, False}}, {{
       Hold[$CellContext`ethylene$$], True, 
       Style["ethylene", 
        RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
      True, False}}, {{
       Hold[$CellContext`helium$$], True, 
       Style["helium", 
        RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
      True, False}}, {{
       Hold[$CellContext`hydrogen$$], True, 
       Style["hydrogen", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`methane$$], True, 
       Style["methane", 
        RGBColor[0.5, 0, 0.5]]}, {True, False}}, {{
       Hold[$CellContext`nitrogen$$], True, 
       Style["nitrogen", 
        Hue[0.9]]}, {True, False}}, {{
       Hold[$CellContext`oxygen$$], True, 
       Style["oxygen", 
        RGBColor[0.5, 0.5, 0.5]]}, {True, False}}, {
      Hold[
       Grid[{{
          Style["select species to plot: ", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5]}, {
          Spacer[1], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Spacer[1]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`npr$$], True, "set temperature"}, {True, False}}, {{
       Hold[$CellContext`P$$], 5, "partial pressure (bars)"}, 1, 5, 0.1}, {{
       Hold[$CellContext`T$$], 131, "temperature (\[Degree]C)"}, 0, 250, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[11], 
          Spacer[5], 
          Manipulate`Place[12], 
          PaneSelector[{True -> Manipulate`Place[13]}, 
           Dynamic[$CellContext`npr$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    750., {228., 235.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`acetylene$2335$$ = 
    False, $CellContext`carbondioxide$2336$$ = 
    False, $CellContext`carbonmonoxide$2337$$ = 
    False, $CellContext`ethane$2338$$ = False, $CellContext`ethylene$2339$$ = 
    False, $CellContext`helium$2340$$ = False, $CellContext`hydrogen$2341$$ = 
    False, $CellContext`methane$2342$$ = False, $CellContext`nitrogen$2343$$ =
     False, $CellContext`oxygen$2344$$ = False, $CellContext`npr$2345$$ = 
    False, $CellContext`P$2346$$ = 0, $CellContext`T$2347$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`acetylene$$ = 
        False, $CellContext`carbondioxide$$ = 
        False, $CellContext`carbonmonoxide$$ = True, $CellContext`ethane$$ = 
        True, $CellContext`ethylene$$ = True, $CellContext`helium$$ = 
        True, $CellContext`hydrogen$$ = True, $CellContext`methane$$ = 
        True, $CellContext`nitrogen$$ = True, $CellContext`npr$$ = 
        True, $CellContext`oxygen$$ = True, $CellContext`P$$ = 
        5, $CellContext`T$$ = 131}, "ControllerVariables" :> {
        Hold[$CellContext`acetylene$$, $CellContext`acetylene$2335$$, False], 
        Hold[$CellContext`carbondioxide$$, $CellContext`carbondioxide$2336$$, 
         False], 
        Hold[$CellContext`carbonmonoxide$$, \
$CellContext`carbonmonoxide$2337$$, False], 
        Hold[$CellContext`ethane$$, $CellContext`ethane$2338$$, False], 
        Hold[$CellContext`ethylene$$, $CellContext`ethylene$2339$$, False], 
        Hold[$CellContext`helium$$, $CellContext`helium$2340$$, False], 
        Hold[$CellContext`hydrogen$$, $CellContext`hydrogen$2341$$, False], 
        Hold[$CellContext`methane$$, $CellContext`methane$2342$$, False], 
        Hold[$CellContext`nitrogen$$, $CellContext`nitrogen$2343$$, False], 
        Hold[$CellContext`oxygen$$, $CellContext`oxygen$2344$$, False], 
        Hold[$CellContext`npr$$, $CellContext`npr$2345$$, False], 
        Hold[$CellContext`P$$, $CellContext`P$2346$$, 0], 
        Hold[$CellContext`T$$, $CellContext`T$2347$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`newdata$, $CellContext`species$, \
$CellContext`col$, $CellContext`H$, $CellContext`x$}, $CellContext`newdata$[
           Pattern[$CellContext`data$, 
            Blank[]]] := Delete[$CellContext`data$, 
           
           Position[{$CellContext`acetylene$$, $CellContext`carbondioxide$$, \
$CellContext`carbonmonoxide$$, $CellContext`ethane$$, \
$CellContext`ethylene$$, $CellContext`helium$$, $CellContext`hydrogen$$, \
$CellContext`methane$$, $CellContext`nitrogen$$, $CellContext`oxygen$$}, 
            False]]; $CellContext`species$ = $CellContext`newdata$[{
           "acetylene", "carbon dioxide", "carbon monoxide", "ethane", 
            "ethylene", "helium", "hydrogen", "methane", "nitrogen", 
            "oxygen"}]; $CellContext`col$ = $CellContext`newdata$[{
            RGBColor[0.5, 0., 0.], 
            RGBColor[1., 0., 0.], 
            RGBColor[1., 0.4974129911626398, 0.], 
            RGBColor[
             Rational[218, 255], 
             Rational[11, 17], 
             Rational[32, 255]], 
            RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
            RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
            RGBColor[0, 0, 1], 
            RGBColor[0.5, 0, 0.5], 
            Hue[0.9], 
            RGBColor[0.5, 0.5, 0.5]}]; $CellContext`H$ = 
         1/Exp[$CellContext`AH + $CellContext`BH/($CellContext`temp + 
            273) + $CellContext`CH 
            Log[$CellContext`temp + 273] + $CellContext`DH ($CellContext`temp + 
             273)]; $CellContext`x$ = \
$CellContext`newdata$[$CellContext`P$$/$CellContext`H$]; Show[
          Switch[$CellContext`npr$$, True, 
           BarChart[
            
            ReplaceAll[$CellContext`x$, $CellContext`temp -> \
$CellContext`T$$], ChartStyle -> $CellContext`col$, ChartLabels -> Placed[
              Map[Rotate[
                Style[#, 17], 30 Degree]& , $CellContext`species$], {{
               0.5, 0}, {0.9, 1}}], 
            FrameTicks -> {{True, True}, {None, None}}, FrameLabel -> {None, 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, {None, 
               Scaled[0.02]}}], False, 
           Plot[$CellContext`x$, {$CellContext`temp, 0, 250}, 
            PlotStyle -> $CellContext`col$, FrameLabel -> {
              Style["temperature (\[Degree]C)", 17], 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, 
              Scaled[0.02]}, PlotRangeClipping -> False, PlotRange -> All, 
            Epilog -> Table[
              Mouseover[{Transparent, 
                Line[
                 Table[{$CellContext`temp, 
                   Part[$CellContext`x$, $CellContext`i]}, {$CellContext`temp,
                    0, 250}]]}, 
               Text[
                Style[
                 Part[$CellContext`species$, $CellContext`i], 17, 
                 Part[$CellContext`col$, $CellContext`i], Background -> 
                 White], 
                Dynamic[
                 MousePosition["Graphics"]], {0, -1.5}]], {$CellContext`i, 1, 
               Length[$CellContext`x$]}]]], Axes -> False, Frame -> True, 
          LabelStyle -> {14, Black}, ImageSize -> {600, 370}, AspectRatio -> 
          Full, ImagePadding -> {{70, 60}, {75, 20}}, PlotRange -> 
          If[Length[$CellContext`x$] > 0, {0, 
             Max[
              Table[
               $CellContext`newdata$[
               5/$CellContext`H$], {$CellContext`temp, 0, 250}]]}, All]]], 
      "Specifications" :> {{{$CellContext`acetylene$$, False, 
          Style["acetylene", 
           RGBColor[0.5, 0., 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`carbondioxide$$, False, 
          Style["carbon dioxide", 
           RGBColor[1., 0., 0.]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`carbonmonoxide$$, True, 
          Style["carbon monoxide", 
           RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}, 
         ControlPlacement -> 3}, {{$CellContext`ethane$$, True, 
          Style["ethane", 
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`ethylene$$, True, 
          Style["ethylene", 
           RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
         True, False}, ControlPlacement -> 5}, {{$CellContext`helium$$, True, 
          Style["helium", 
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
         True, False}, ControlPlacement -> 
         6}, {{$CellContext`hydrogen$$, True, 
          Style["hydrogen", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         7}, {{$CellContext`methane$$, True, 
          Style["methane", 
           RGBColor[0.5, 0, 0.5]]}, {True, False}, ControlPlacement -> 
         8}, {{$CellContext`nitrogen$$, True, 
          Style["nitrogen", 
           Hue[0.9]]}, {True, False}, ControlPlacement -> 
         9}, {{$CellContext`oxygen$$, True, 
          Style["oxygen", 
           RGBColor[0.5, 0.5, 0.5]]}, {True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Style["select species to plot: ", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5]}, {
           Spacer[1], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}}, Alignment -> Right], 
        Spacer[
        1], {{$CellContext`npr$$, True, "set temperature"}, {True, False}, 
         ControlPlacement -> 
         11}, {{$CellContext`P$$, 5, "partial pressure (bars)"}, 1, 5, 0.1, 
         Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 
         12}, {{$CellContext`T$$, 131, "temperature (\[Degree]C)"}, 0, 250, 1,
          Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 13}, 
        Grid[{{
           Manipulate`Place[11], 
           Spacer[5], 
           Manipulate`Place[12], 
           PaneSelector[{True -> Manipulate`Place[13]}, 
            Dynamic[$CellContext`npr$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{799., {293., 300.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`AH = {-156.51, -159.854, -171.764, \
-250.812, -153.027, -105.9768, -125.939, -338.217, -181.587, -171.2542}, \
$CellContext`BH = {8160.2, 8741.68, 8296.9, 12695.6, 7965.2, 4259.62, 5528.45,
         13282.1, 8632.12, 8319.24}, $CellContext`CH = {21.403, 21.6694, 
        23.3376, 34.7413, 20.5248, 14.0094, 16.8893, 51.9144, 24.7981, 
        23.24323}, $CellContext`DH = {
        0, -0.00110261, 0, 0, 0, 0, 0, -0.0425831, 0, 0}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->1531667973],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`acetylene$$ = 
    False, $CellContext`carbondioxide$$ = 
    False, $CellContext`carbonmonoxide$$ = False, $CellContext`ethane$$ = 
    True, $CellContext`ethylene$$ = False, $CellContext`helium$$ = 
    False, $CellContext`hydrogen$$ = False, $CellContext`methane$$ = 
    True, $CellContext`nitrogen$$ = False, $CellContext`npr$$ = 
    False, $CellContext`oxygen$$ = False, $CellContext`P$$ = 
    3.8000000000000003`, $CellContext`T$$ = 131, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`acetylene$$], False, 
       Style["acetylene", 
        RGBColor[0.5, 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbondioxide$$], False, 
       Style["carbon dioxide", 
        RGBColor[1., 0., 0.]]}, {True, False}}, {{
       Hold[$CellContext`carbonmonoxide$$], False, 
       Style["carbon monoxide", 
        RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}}, {{
       Hold[$CellContext`ethane$$], True, 
       Style["ethane", 
        RGBColor[
         Rational[218, 255], 
         Rational[11, 17], 
         Rational[32, 255]]]}, {True, False}}, {{
       Hold[$CellContext`ethylene$$], False, 
       Style["ethylene", 
        RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
      True, False}}, {{
       Hold[$CellContext`helium$$], False, 
       Style["helium", 
        RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
      True, False}}, {{
       Hold[$CellContext`hydrogen$$], False, 
       Style["hydrogen", 
        RGBColor[0, 0, 1]]}, {True, False}}, {{
       Hold[$CellContext`methane$$], True, 
       Style["methane", 
        RGBColor[0.5, 0, 0.5]]}, {True, False}}, {{
       Hold[$CellContext`nitrogen$$], False, 
       Style["nitrogen", 
        Hue[0.9]]}, {True, False}}, {{
       Hold[$CellContext`oxygen$$], False, 
       Style["oxygen", 
        RGBColor[0.5, 0.5, 0.5]]}, {True, False}}, {
      Hold[
       Grid[{{
          Style["select species to plot: ", Bold], 
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4], 
          Manipulate`Place[5]}, {
          Spacer[1], 
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8], 
          Manipulate`Place[9], 
          Manipulate`Place[10]}}, Alignment -> Right]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Spacer[1]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`npr$$], False, "set temperature"}, {True, False}}, {{
       Hold[$CellContext`P$$], 3.8000000000000003`, 
       "partial pressure (bars)"}, 1, 5, 0.1}, {{
       Hold[$CellContext`T$$], 131, "temperature (\[Degree]C)"}, 0, 250, 1}, {
      Hold[
       Grid[{{
          Manipulate`Place[11], 
          Spacer[5], 
          Manipulate`Place[12], 
          PaneSelector[{True -> Manipulate`Place[13]}, 
           Dynamic[$CellContext`npr$$]]}}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    750., {228., 235.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`acetylene$2468$$ = 
    False, $CellContext`carbondioxide$2469$$ = 
    False, $CellContext`carbonmonoxide$2470$$ = 
    False, $CellContext`ethane$2471$$ = False, $CellContext`ethylene$2472$$ = 
    False, $CellContext`helium$2473$$ = False, $CellContext`hydrogen$2474$$ = 
    False, $CellContext`methane$2475$$ = False, $CellContext`nitrogen$2476$$ =
     False, $CellContext`oxygen$2477$$ = False, $CellContext`npr$2478$$ = 
    False, $CellContext`P$2479$$ = 0, $CellContext`T$2480$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`acetylene$$ = 
        False, $CellContext`carbondioxide$$ = 
        False, $CellContext`carbonmonoxide$$ = False, $CellContext`ethane$$ = 
        True, $CellContext`ethylene$$ = False, $CellContext`helium$$ = 
        False, $CellContext`hydrogen$$ = False, $CellContext`methane$$ = 
        True, $CellContext`nitrogen$$ = False, $CellContext`npr$$ = 
        False, $CellContext`oxygen$$ = False, $CellContext`P$$ = 
        3.8000000000000003`, $CellContext`T$$ = 131}, "ControllerVariables" :> {
        Hold[$CellContext`acetylene$$, $CellContext`acetylene$2468$$, False], 
        Hold[$CellContext`carbondioxide$$, $CellContext`carbondioxide$2469$$, 
         False], 
        Hold[$CellContext`carbonmonoxide$$, \
$CellContext`carbonmonoxide$2470$$, False], 
        Hold[$CellContext`ethane$$, $CellContext`ethane$2471$$, False], 
        Hold[$CellContext`ethylene$$, $CellContext`ethylene$2472$$, False], 
        Hold[$CellContext`helium$$, $CellContext`helium$2473$$, False], 
        Hold[$CellContext`hydrogen$$, $CellContext`hydrogen$2474$$, False], 
        Hold[$CellContext`methane$$, $CellContext`methane$2475$$, False], 
        Hold[$CellContext`nitrogen$$, $CellContext`nitrogen$2476$$, False], 
        Hold[$CellContext`oxygen$$, $CellContext`oxygen$2477$$, False], 
        Hold[$CellContext`npr$$, $CellContext`npr$2478$$, False], 
        Hold[$CellContext`P$$, $CellContext`P$2479$$, 0], 
        Hold[$CellContext`T$$, $CellContext`T$2480$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`newdata$, $CellContext`species$, \
$CellContext`col$, $CellContext`H$, $CellContext`x$}, $CellContext`newdata$[
           Pattern[$CellContext`data$, 
            Blank[]]] := Delete[$CellContext`data$, 
           
           Position[{$CellContext`acetylene$$, $CellContext`carbondioxide$$, \
$CellContext`carbonmonoxide$$, $CellContext`ethane$$, \
$CellContext`ethylene$$, $CellContext`helium$$, $CellContext`hydrogen$$, \
$CellContext`methane$$, $CellContext`nitrogen$$, $CellContext`oxygen$$}, 
            False]]; $CellContext`species$ = $CellContext`newdata$[{
           "acetylene", "carbon dioxide", "carbon monoxide", "ethane", 
            "ethylene", "helium", "hydrogen", "methane", "nitrogen", 
            "oxygen"}]; $CellContext`col$ = $CellContext`newdata$[{
            RGBColor[0.5, 0., 0.], 
            RGBColor[1., 0., 0.], 
            RGBColor[1., 0.4974129911626398, 0.], 
            RGBColor[
             Rational[218, 255], 
             Rational[11, 17], 
             Rational[32, 255]], 
            RGBColor[0., 0.7896136719636774, 0.3371065195394848], 
            RGBColor[0., 0.44148698824292576`, 0.7932403760642176], 
            RGBColor[0, 0, 1], 
            RGBColor[0.5, 0, 0.5], 
            Hue[0.9], 
            RGBColor[0.5, 0.5, 0.5]}]; $CellContext`H$ = 
         1/Exp[$CellContext`AH + $CellContext`BH/($CellContext`temp + 
            273) + $CellContext`CH 
            Log[$CellContext`temp + 273] + $CellContext`DH ($CellContext`temp + 
             273)]; $CellContext`x$ = \
$CellContext`newdata$[$CellContext`P$$/$CellContext`H$]; Show[
          Switch[$CellContext`npr$$, True, 
           BarChart[
            
            ReplaceAll[$CellContext`x$, $CellContext`temp -> \
$CellContext`T$$], ChartStyle -> $CellContext`col$, ChartLabels -> Placed[
              Map[Rotate[
                Style[#, 17], 30 Degree]& , $CellContext`species$], {{
               0.5, 0}, {0.9, 1}}], 
            FrameTicks -> {{True, True}, {None, None}}, FrameLabel -> {None, 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, {None, 
               Scaled[0.02]}}], False, 
           
           Plot[$CellContext`x$, {$CellContext`temp, 0, 250}, 
            PlotStyle -> $CellContext`col$, FrameLabel -> {
              Style["temperature (\[Degree]C)", 17], 
              Style["mole  fraction  gas  in  water ", 17]}, 
            PlotRangePadding -> {None, 
              Scaled[0.02]}, PlotRangeClipping -> False, PlotRange -> All, 
            Epilog -> Table[
              Mouseover[{Transparent, 
                Line[
                 Table[{$CellContext`temp, 
                   Part[$CellContext`x$, $CellContext`i]}, {$CellContext`temp,
                    0, 250}]]}, 
               Text[
                Style[
                 Part[$CellContext`species$, $CellContext`i], 17, 
                 Part[$CellContext`col$, $CellContext`i], Background -> 
                 White], 
                Dynamic[
                 MousePosition["Graphics"]], {0, -1.5}]], {$CellContext`i, 1, 
               Length[$CellContext`x$]}]]], Axes -> False, Frame -> True, 
          LabelStyle -> {14, Black}, ImageSize -> {600, 370}, AspectRatio -> 
          Full, ImagePadding -> {{70, 60}, {75, 20}}, PlotRange -> 
          If[Length[$CellContext`x$] > 0, {0, 
             Max[
              Table[
               $CellContext`newdata$[
               5/$CellContext`H$], {$CellContext`temp, 0, 250}]]}, All]]], 
      "Specifications" :> {{{$CellContext`acetylene$$, False, 
          Style["acetylene", 
           RGBColor[0.5, 0., 0.]]}, {True, False}, ControlPlacement -> 
         1}, {{$CellContext`carbondioxide$$, False, 
          Style["carbon dioxide", 
           RGBColor[1., 0., 0.]]}, {True, False}, ControlPlacement -> 
         2}, {{$CellContext`carbonmonoxide$$, False, 
          Style["carbon monoxide", 
           RGBColor[1., 0.4974129911626398, 0.]]}, {True, False}, 
         ControlPlacement -> 3}, {{$CellContext`ethane$$, True, 
          Style["ethane", 
           RGBColor[
            Rational[218, 255], 
            Rational[11, 17], 
            Rational[32, 255]]]}, {True, False}, ControlPlacement -> 
         4}, {{$CellContext`ethylene$$, False, 
          Style["ethylene", 
           RGBColor[0., 0.7896136719636774, 0.3371065195394848]]}, {
         True, False}, ControlPlacement -> 5}, {{$CellContext`helium$$, False, 
          Style["helium", 
           RGBColor[0., 0.44148698824292576`, 0.7932403760642176]]}, {
         True, False}, ControlPlacement -> 
         6}, {{$CellContext`hydrogen$$, False, 
          Style["hydrogen", 
           RGBColor[0, 0, 1]]}, {True, False}, ControlPlacement -> 
         7}, {{$CellContext`methane$$, True, 
          Style["methane", 
           RGBColor[0.5, 0, 0.5]]}, {True, False}, ControlPlacement -> 
         8}, {{$CellContext`nitrogen$$, False, 
          Style["nitrogen", 
           Hue[0.9]]}, {True, False}, ControlPlacement -> 
         9}, {{$CellContext`oxygen$$, False, 
          Style["oxygen", 
           RGBColor[0.5, 0.5, 0.5]]}, {True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Style["select species to plot: ", Bold], 
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4], 
           Manipulate`Place[5]}, {
           Spacer[1], 
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8], 
           Manipulate`Place[9], 
           Manipulate`Place[10]}}, Alignment -> Right], 
        Spacer[
        1], {{$CellContext`npr$$, False, "set temperature"}, {True, False}, 
         ControlPlacement -> 
         11}, {{$CellContext`P$$, 3.8000000000000003`, 
          "partial pressure (bars)"}, 1, 5, 0.1, Appearance -> "Labeled", 
         ImageSize -> Tiny, ControlPlacement -> 
         12}, {{$CellContext`T$$, 131, "temperature (\[Degree]C)"}, 0, 250, 1,
          Appearance -> "Labeled", ImageSize -> Tiny, ControlPlacement -> 13}, 
        Grid[{{
           Manipulate`Place[11], 
           Spacer[5], 
           Manipulate`Place[12], 
           PaneSelector[{True -> Manipulate`Place[13]}, 
            Dynamic[$CellContext`npr$$]]}}]}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{799., {293., 300.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`AH = {-156.51, -159.854, -171.764, \
-250.812, -153.027, -105.9768, -125.939, -338.217, -181.587, -171.2542}, \
$CellContext`BH = {8160.2, 8741.68, 8296.9, 12695.6, 7965.2, 4259.62, 5528.45,
         13282.1, 8632.12, 8319.24}, $CellContext`CH = {21.403, 21.6694, 
        23.3376, 34.7413, 20.5248, 14.0094, 16.8893, 51.9144, 24.7981, 
        23.24323}, $CellContext`DH = {
        0, -0.00110261, 0, 0, 0, 0, 0, -0.0425831, 0, 0}, 
       Attributes[PlotRange] = {ReadProtected}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellID->857145622]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "DetailsSection"],

Cell[TextData[{
 "Henry's constant ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]], "InlineMath"],
 " varies with temperature, as given by:"
}], "DetailNotes",
 CellID->66032182],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "=", 
    RowBox[{"1", "/", 
     RowBox[{"exp", "(", 
      RowBox[{"A", "+", 
       FractionBox["B", "T"], "+", 
       RowBox[{"C", " ", "ln", " ", "T"}], "+", 
       RowBox[{"D", " ", "T"}]}], ")"}]}]}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->2878623],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]], "InlineMath"],
 " is in bars; ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]], "InlineMath"],
 ", ",
 Cell[BoxData[
  FormBox["B", TraditionalForm]], "InlineMath"],
 ", ",
 Cell[BoxData[
  FormBox["C", TraditionalForm]], "InlineMath"],
 ", and ",
 Cell[BoxData[
  FormBox["D", TraditionalForm]], "InlineMath"],
 " are constants specific to each species; and ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]], "InlineMath"],
 " is temperature (K)."
}], "DetailNotes",
 CellID->160356554],

Cell[TextData[{
 "Henry's law is used to calculate the mole fraction ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "InlineMath"],
 " of a species dissolved in water:"
}], "DetailNotes",
 CellID->99917254],

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"x", " ", "H"}], "=", "P"}], TraditionalForm]], "InlineMath"],
 ","
}], "DetailNotes",
 CellID->37884586],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]], "InlineMath"],
 " is the partial pressure (bar)."
}], "DetailNotes",
 CellID->230231888],

Cell["Reference", "DetailNotes",
 CellID->1018205243],

Cell[TextData[{
 "[1] B. E. Poling, G. H. Thomson, D. G. Friend, R. L. Rowley, and W. V. \
Wilding, \"Physical and Chemical Data,\" ",
 StyleBox["Perry's Chemical Engineers' Handbook ",
  FontSlant->"Italic"],
 "(D. W. Green and R. H. Perry, eds.), 8th ed., New York: McGraw-Hill, 2008."
}], "DetailNotes",
 CellID->573058668]
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
   CheckboxBox[True], Cell[" Gamepad Controls"]}],
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

Cell["Henry's law", "SearchTerms",
 CellID->489178663],

Cell["solubility", "SearchTerms",
 CellID->86061660],

Cell["chemical engineering", "SearchTerms",
 CellID->431067296]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "RelatedLinksSection"],

Cell[TextData[ButtonBox["Temperature Dependence of Henry's Law Constant",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["http://demonstrations.wolfram.com/\
TemperatureDependenceOfHenrysLawConstant/"], None},
 ButtonNote->
  "http://demonstrations.wolfram.com/TemperatureDependenceOfHenrysLawConstant/\
"]], "RelatedLinks",
 CellID->104162433]
}, Open  ]],

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
 CellID->9119879],

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
 CellID->142231542],

Cell["\<\
(University of Colorado Boulder, Department of Chemical and Biological \
Engineering)\
\>", "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1366, 686},
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
  Cell[125667, 2826, 311, 8, 22, "ControlSuggestions",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[125981, 2836, 678, 16, 22, "ControlSuggestions",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[126662, 2854, 340, 11, 22, "ControlSuggestions",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[127005, 2867, 637, 15, 22, "ControlSuggestions",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[127645, 2884, 843, 21, 22, "ControlSuggestions",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[128491, 2907, 303, 8, 22, "ControlSuggestions",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[128797, 2917, 1463, 31, 22, "ControlSuggestions",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[130263, 2950, 908, 21, 22, "ControlSuggestions",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 133202, 3055},
 {"RotateAndZoomIn3D", 133312, 3058},
 {"DragLocators", 133423, 3061},
 {"CreateAndDeleteLocators", 133540, 3064},
 {"SliderZoom", 133655, 3067},
 {"GamepadControls", 133762, 3070},
 {"AutomaticAnimation", 133876, 3073},
 {"BookmarkAnimation", 133994, 3076}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 61, 0, 74, "DemoTitle"],
Cell[CellGroupData[{
Cell[1572, 39, 33, 0, 287, "InitializationSection"],
Cell[1608, 41, 514, 16, 27, "Input",
 InitializationCell->True,
 CellID->25818266],
Cell[2125, 59, 318, 9, 27, "Input",
 InitializationCell->True,
 CellID->735554291],
Cell[2446, 70, 321, 9, 27, "Input",
 InitializationCell->True,
 CellID->560418990],
Cell[2770, 81, 312, 10, 27, "Input",
 InitializationCell->True,
 CellID->31231349]
}, Open  ]],
Cell[CellGroupData[{
Cell[3119, 96, 29, 0, 234, "ManipulateSection"],
Cell[CellGroupData[{
Cell[3173, 100, 54354, 1260, 917, "Input"],
Cell[57530, 1362, 13069, 270, 513, "Output",
 CellID->89718289]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[70648, 1638, 36, 0, 169, "ManipulateCaptionSection"],
Cell[70687, 1640, 630, 9, 67, "ManipulateCaption"]
}, Open  ]],
Cell[CellGroupData[{
Cell[71354, 1654, 28, 0, 173, "ThumbnailSection"],
Cell[71385, 1656, 12963, 265, 605, "Output",
 CellID->462453015]
}, Open  ]],
Cell[CellGroupData[{
Cell[84385, 1926, 28, 0, 143, "SnapshotsSection"],
Cell[84416, 1928, 12967, 265, 605, "Output",
 CellID->704504612],
Cell[97386, 2195, 12985, 266, 605, "Output",
 CellID->1531667973],
Cell[110374, 2463, 13115, 269, 605, "Output",
 CellID->857145622]
}, Open  ]],
Cell[CellGroupData[{
Cell[123526, 2737, 26, 0, 336, "DetailsSection"],
Cell[123555, 2739, 181, 6, 23, "DetailNotes",
 CellID->66032182],
Cell[123739, 2747, 343, 12, 33, "DetailNotes",
 CellID->2878623],
Cell[124085, 2761, 566, 21, 23, "DetailNotes",
 CellID->160356554],
Cell[124654, 2784, 210, 6, 23, "DetailNotes",
 CellID->99917254],
Cell[124867, 2792, 171, 7, 23, "DetailNotes",
 CellID->37884586],
Cell[125041, 2801, 164, 6, 23, "DetailNotes",
 CellID->230231888],
Cell[125208, 2809, 53, 1, 22, "DetailNotes",
 CellID->1018205243],
Cell[125264, 2812, 326, 7, 37, "DetailNotes",
 CellID->573058668]
}, Open  ]],
Cell[CellGroupData[{
Cell[125627, 2824, 37, 0, 126, "ControlSuggestionsSection"],
Cell[125667, 2826, 311, 8, 22, "ControlSuggestions",
 CellTags->"ResizeImages"],
Cell[125981, 2836, 678, 16, 22, "ControlSuggestions",
 CellTags->"RotateAndZoomIn3D"],
Cell[126662, 2854, 340, 11, 22, "ControlSuggestions",
 CellTags->"DragLocators"],
Cell[127005, 2867, 637, 15, 22, "ControlSuggestions",
 CellTags->"CreateAndDeleteLocators"],
Cell[127645, 2884, 843, 21, 22, "ControlSuggestions",
 CellTags->"SliderZoom"],
Cell[128491, 2907, 303, 8, 22, "ControlSuggestions",
 CellTags->"GamepadControls"],
Cell[128797, 2917, 1463, 31, 22, "ControlSuggestions",
 CellTags->"AutomaticAnimation"],
Cell[130263, 2950, 908, 21, 22, "ControlSuggestions",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[CellGroupData[{
Cell[131208, 2976, 30, 0, 155, "SearchTermsSection"],
Cell[131241, 2978, 54, 1, 22, "SearchTerms",
 CellID->489178663],
Cell[131298, 2981, 52, 1, 22, "SearchTerms",
 CellID->86061660],
Cell[131353, 2984, 63, 1, 22, "SearchTerms",
 CellID->431067296]
}, Open  ]],
Cell[CellGroupData[{
Cell[131453, 2990, 31, 0, 141, "RelatedLinksSection"],
Cell[131487, 2992, 344, 8, 22, "RelatedLinks",
 CellID->104162433]
}, Open  ]],
Cell[CellGroupData[{
Cell[131868, 3005, 25, 0, 141, "AuthorSection"],
Cell[131896, 3007, 329, 10, 22, "Author",
 CellID->9119879],
Cell[132228, 3019, 344, 11, 22, "Author",
 CellID->142231542],
Cell[132575, 3032, 131, 4, 22, "Author",
 CellID->122665613]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ZxT@co#7OnewcB1qKnlww7UO *)
