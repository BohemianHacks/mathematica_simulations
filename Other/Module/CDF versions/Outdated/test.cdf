(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

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
NotebookDataLength[    174555,       4314]
NotebookOptionsPosition[    139833,       3654]
NotebookOutlinePosition[    171457,       4201]
CellTagsIndexPosition[    171382,       4196]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[StyleBox["Pressure-Composition Diagrams (P-x-y)",
 FontSlant->"Italic"]], "Title"],

Cell[CellGroupData[{

Cell["Raoult\[CloseCurlyQuote]s Law", "Section",
 CellFrameColor->RGBColor[0.811765, 0.721569, 0.486275]],

Cell[TextData[{
 "For a more detailed explanation of Raoult\[CloseCurlyQuote]s law, please \
view ",
 ButtonBox["Raoult\[CloseCurlyQuote]s Law Explanation",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=Adr9_2LnQdw"], None},
  ButtonNote->"https://www.youtube.com/watch?v=Adr9_2LnQdw"],
 ". "
}], "Text"],

Cell["\<\
Raoult\[CloseCurlyQuote]s law is used to calculate the bubble point (BP) and \
dew point (DP) cures of a mixture in vapor liquid equilibrium. The equations \
for these curves are shown below:\
\>", "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["P", "BP"], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], TraditionalForm]], "Equation"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["P", "DP"], "=", 
   FractionBox["1", 
    RowBox[{
     FractionBox[
      SubscriptBox["y", "1"], 
      SubsuperscriptBox["P", "1", "sat"]], "+", 
     FractionBox[
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], 
      SubsuperscriptBox["P", "2", "sat"]]}]]}], TraditionalForm]], "Equation"],

Cell[CellGroupData[{

Cell["Derivation of Raoult\[CloseCurlyQuote]s Law:", "Subsection",
 CellDingbat->"\[LightBulb]"],

Cell["Raoult\[CloseCurlyQuote]s law states that for a binary mixture:", "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     SubscriptBox["x", "2"], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], 
  TraditionalForm]], "EquationNumbered"],

Cell[TextData[{
 "Equation (1) can be rewritten to eliminate the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "2"], TraditionalForm]]],
 " term."
}], "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["x", "1"], " ", 
     SubsuperscriptBox["P", "1", "sat"]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}], " ", 
     SubsuperscriptBox["P", "2", "sat"]}]}]}], 
  TraditionalForm]], "EquationNumbered"],

Cell[TextData[{
 "The Antoine equation is used to get the saturation pressures of each \
component (",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "1", "sat"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["P", "2", "sat"], TraditionalForm]]],
 ")."
}], "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubscriptBox["log", "10"], "(", 
    SubsuperscriptBox["P", "i", "sat"], ")"}], "=", 
   RowBox[{"A", "-", 
    FractionBox["B", 
     RowBox[{"T", "+", "C"}]]}]}], TraditionalForm]], "EquationNumbered"],

Cell["\<\
In equation (3) A, B, and C are constants specific to each component. Thir \
values can be found in tabulated data.\
\>", "Text"],

Cell[TextData[{
 "For the bubble point (BP) calculation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["K", "i"], " ", 
      SubscriptBox["x", "i"]}]}], "=", "1"}], TraditionalForm]]],
 " is used to find the BP pressure. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["K", "i"], TraditionalForm]]],
 " is caled the ",
 StyleBox["K-ratio",
  FontSlant->"Italic"],
 " of component ",
 StyleBox["i",
  FontSlant->"Italic"],
 "; according to Raoult\[CloseCurlyQuote]s law, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["K", "i"], TraditionalForm]]],
 " is the ratio of the component partial pressure to the total pressure ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["K", "i"], "=", 
    FractionBox[
     SubsuperscriptBox["P", "i", "sat"], "P"]}], TraditionalForm]]],
 "."
}], "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{"1", "=", 
   RowBox[{
    RowBox[{
     FractionBox[
      SubsuperscriptBox["P", "1", "sat"], "P"], " ", 
     SubscriptBox["x", "1"]}], "+", 
    RowBox[{
     FractionBox[
      SubsuperscriptBox["P", "2", "sat"], "P"], " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["x", "1"]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered"],

Cell["\<\
Multiplying equation (4) through by P will return equation (1).\
\>", "Text"],

Cell[TextData[{
 "For the dew point (DP) calculation, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Sum]", 
     RowBox[{
      SubscriptBox["y", "i"], "/", 
      SubscriptBox["K", "i"]}]}], "=", "1"}], TraditionalForm]]],
 " is used to calculate the DP pressure."
}], "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["y", "1"], 
     FractionBox["P", 
      SubsuperscriptBox["P", "1", "sat"]]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], ")"}], " ", 
     FractionBox["P", 
      SubsuperscriptBox["P", "2", "sat"]]}]}], "=", "1"}], 
  TraditionalForm]], "EquationNumbered"],

Cell["\<\
Rearraanging equation (5) to solve for pressure as a function of the molar \
composition in the vapor phase (of the more volatile component, 1) is the DP \
pressure.\
\>", "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{"P", "=", 
   FractionBox["1", 
    RowBox[{
     FractionBox[
      SubscriptBox["y", "1"], 
      SubsuperscriptBox["P", "1", "sat"]], "+", 
     FractionBox[
      RowBox[{"1", "-", 
       SubscriptBox["y", "1"]}], 
      SubsuperscriptBox["P", "2", "sat"]]}]]}], 
  TraditionalForm]], "EquationNumbered"]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Mapping a P-x-y Diagram", "Section"],

Cell[TextData[{
 "The blue line represents the bubble-point, above this line at higher \
pressures both components are in the liquid phase. Likewise, the green line \
represents the dew-point, below this line both components are in the vapor \
phase. Inside the shaded region between the two curves is the 2-phase region. \
The amount of each phase that is present at a certain composition in the \
2-phase region is determined from the ",
 ButtonBox["lever rule",
  BaseStyle->"Hyperlink",
  ButtonData->"Lever Rule"],
 ".  "
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "[", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"Psat1", ",", "Psat2", ",", "Px", ",", "Py"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Psat1", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.90565", "-", 
         FractionBox["1211.033", 
          RowBox[{"95", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"Psat2", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.65464", "-", 
         FractionBox["1344.8", 
          RowBox[{"95", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Px", "[", "x_", "]"}], "=", 
      RowBox[{
       RowBox[{"x", "*", "Psat1"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Py", "[", "x_", "]"}], "=", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["x", "Psat1"], "+", 
         FractionBox[
          RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
       RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Px", "[", "x", "]"}], ",", 
         RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"Frame", "\[Rule]", "True"}], ",", 
       RowBox[{"Background", "\[Rule]", "White"}], ",", 
       RowBox[{"FrameLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], "]"}],
           ",", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], "}"}]}], 
       ",", 
       RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
       RowBox[{"AxesOrigin", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"0", ",", "100"}], "}"}]}], ",", 
       RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
       RowBox[{"Filling", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", "2", "}"}], ",", 
            RowBox[{"Opacity", "[", 
             RowBox[{"0.1", ",", 
              RowBox[{"Blend", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Blue", ",", "Green"}], "}"}], ",", "0.5"}], "]"}]}],
              "]"}]}], "}"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"Epilog", "\[Rule]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<liquid\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.25", ",", "0.7"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<vapor\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.8", ",", "0.2"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<2-phase\>\"", ",", "18", ",", 
               RowBox[{"Darker", "[", 
                RowBox[{"Gray", ",", "0.4"}], "]"}]}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "0.35"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                   "\"\<\[FilledCircle]\>\"", ",", "20", ",", "Blue"}], "]"}],
                   ",", "\"\< bubble-point\>\""}], "}"}], "]"}], ",", "16"}], 
              "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.35", ",", "0.9"}], "}"}], "]"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Text", "@", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                   "\"\<\[FilledCircle]\>\"", ",", "20", ",", "Green"}], 
                   "]"}], ",", "\"\< dew-point\>\""}], "}"}], "]"}], ",", 
               "16"}], "]"}]}], ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{"0.65", ",", "0.9"}], "}"}], "]"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}]}]}], "]"}]}]}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 FrameBox[
  GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
Z8xFTxDwN5mYvFE=
    "], {{{}, {}, {}, {}, {}, {}, {}, 
      {RGBColor[0., 0.5, 0.5], Opacity[0.1], EdgeForm[None], 
       GraphicsGroupBox[
        PolygonBox[{{78, 148, 142, 137, 133, 130, 128, 79, 80, 81, 82, 83, 84,
          85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 
         101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
          115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 149, 
         143, 138, 134, 131, 129, 150, 144, 139, 135, 132, 151, 145, 140, 136,
          152, 146, 141, 153, 147, 154, 127, 50, 77, 70, 76, 64, 69, 75, 59, 
         63, 68, 74, 55, 58, 62, 67, 73, 52, 54, 57, 61, 66, 72, 49, 48, 47, 
         46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 
         29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
         12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 53, 56, 60, 65, 71, 
         1}}]]}, {}, {}}, {{}, {}, {}, 
      {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
       LineBox[{1, 71, 65, 60, 56, 53, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
         13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
        30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 
        47, 48, 49, 72, 66, 61, 57, 54, 52, 73, 67, 62, 58, 55, 74, 68, 63, 
        59, 75, 69, 64, 76, 70, 77, 50}]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
       LineBox[{78, 148, 142, 137, 133, 130, 128, 79, 80, 81, 82, 83, 84, 85, 
        86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102,
         103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
         117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 149, 143, 138, 134,
         131, 129, 150, 144, 139, 135, 132, 151, 145, 140, 136, 152, 146, 141,
         153, 147, 154, 127}]}}}],
   AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
   Axes->{True, True},
   AxesLabel->{None, None},
   AxesOrigin->{0., 100.},
   Background->GrayLevel[1],
   DisplayFunction->Identity,
   Epilog->{
     InsetBox[
      BoxData[
       FormBox[
        InterpretationBox[
         Cell[
          BoxData[
           FormBox[
            StyleBox["\"liquid\"", 18, 
             RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
          "InlineText"], 
         Text[
          Style["liquid", 18, 
           RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
      Scaled[{0.25, 0.7}]], 
     InsetBox[
      BoxData[
       FormBox[
        InterpretationBox[
         Cell[
          BoxData[
           FormBox[
            StyleBox["\"vapor\"", 18, 
             RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
          "InlineText"], 
         Text[
          Style["vapor", 18, 
           RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
      Scaled[{0.8, 0.2}]], 
     InsetBox[
      BoxData[
       FormBox[
        InterpretationBox[
         Cell[
          BoxData[
           FormBox[
            StyleBox["\"2-phase\"", 18, 
             RGBColor[0.3, 0.3, 0.3], StripOnInput -> False], TextForm]], 
          "InlineText"], 
         Text[
          Style["2-phase", 18, 
           RGBColor[0.3, 0.3, 0.3]]]], TraditionalForm]], 
      Scaled[{0.5, 0.35}]], 
     InsetBox[
      BoxData[
       FormBox[
        InterpretationBox[
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TemplateBox[{
               StyleBox["\"\[FilledCircle]\"", 20, 
                RGBColor[0, 0, 1], StripOnInput -> False], 
               "\" bubble-point\""}, "RowDefault"], 16, StripOnInput -> 
             False], TextForm]], "InlineText"], 
         Text[
          Style[
           Row[{
             Style["\[FilledCircle]", 20, 
              RGBColor[0, 0, 1]], " bubble-point"}], 16]]], TraditionalForm]], 
      Scaled[{0.35, 0.9}]], 
     InsetBox[
      BoxData[
       FormBox[
        InterpretationBox[
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TemplateBox[{
               StyleBox["\"\[FilledCircle]\"", 20, 
                RGBColor[0, 1, 0], StripOnInput -> False], "\" dew-point\""}, 
              "RowDefault"], 16, StripOnInput -> False], TextForm]], 
          "InlineText"], 
         Text[
          Style[
           Row[{
             Style["\[FilledCircle]", 20, 
              RGBColor[0, 1, 0]], " dew-point"}], 16]]], TraditionalForm]], 
      Scaled[{0.65, 0.9}]]},
   Frame->{{True, True}, {True, True}},
   FrameLabel->{{
      FormBox[
       StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
       TraditionalForm], None}, {
      FormBox[
       StyleBox[
       "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
       TraditionalForm], None}},
   FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
   GridLines->{None, None},
   GridLinesStyle->Directive[
     GrayLevel[0.5, 0.4]],
   ImageSize->500,
   LabelStyle->GrayLevel[0],
   Method->{
    "DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None, 
     "AxesInFront" -> True},
   PlotRange->{{0, 1}, {100, 1400}},
   PlotRangeClipping->True,
   PlotRangePadding->{{0, 0}, {0, 0}},
   Ticks->{Automatic, Automatic}],
  StripOnInput->False]], "Output"]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Lever Rule", "Section",
 CellTags->"Lever Rule"],

Cell[TextData[{
 "The lever rule is used to determine the relative amounts of liquid and \
vapor in the system. An explanation of the lever rule is shown in this",
 ButtonBox[" Screencast",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=celOhlEoQ9c"], None},
  ButtonNote->"https://www.youtube.com/watch?v=celOhlEoQ9c"],
 ".\n \nMouseover the plot below to see the points used in the lever rule \
calculations."
}], "Text"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"liquid", " ", "amount", " ", "present", " ", "at", " ", 
    RowBox[{
     SubscriptBox["z", "1"], ":", "     ", 
     SuperscriptBox["f", "L"]}]}], "=", 
   FractionBox[
    RowBox[{
     SubscriptBox["y", "1"], "-", 
     SubscriptBox["z", "1"]}], 
    RowBox[{
     SubscriptBox["y", "1"], "-", 
     SubscriptBox["x", "1"]}]]}], TraditionalForm]], "Equation"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"vapor", " ", "amont", " ", "present", " ", "ar", " ", 
    RowBox[{
     SubscriptBox["z", "1"], ":", "      ", 
     SuperscriptBox["f", "V"]}]}], "=", 
   FractionBox[
    RowBox[{
     SubscriptBox["x", "1"], "-", 
     SubscriptBox["z", "1"]}], 
    RowBox[{
     SubscriptBox["x", "1"], "-", 
     SubscriptBox["y", "1"]}]]}], TraditionalForm]], "Equation"],

Cell["\<\
Mouseover the figure to see what points are used in the lever rule calculation\
\>", "FigureCaption"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "@", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "T", ",", "p", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", 
      "x1", ",", "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", 
      ",", "p3"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
     RowBox[{"p", "=", "550"}], ";", "\[IndentingNewLine]", 
     RowBox[{"Psat1", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.90565", "-", 
         FractionBox["1211.033", 
          RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"Psat2", "=", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"6.65464", "-", 
         FractionBox["1344.8", 
          RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Px", "[", "x_", "]"}], "=", 
      RowBox[{
       RowBox[{"x", "*", "Psat1"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Py", "[", "x_", "]"}], "=", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["x", "Psat1"], "+", 
         FractionBox[
          RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
       RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
     RowBox[{"x1", "=", 
      RowBox[{"X", "/.", 
       RowBox[{"FindRoot", "[", 
        RowBox[{
         RowBox[{"p", "\[Equal]", 
          RowBox[{
           RowBox[{"X", "*", "Psat1"}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"y1", "=", 
      RowBox[{"Y", "/.", 
       RowBox[{"FindRoot", "[", 
        RowBox[{
         RowBox[{"p", "\[Equal]", 
          FractionBox["1", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["Y", "Psat1"], "+", 
             FractionBox[
              RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
         RowBox[{"{", 
          RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"leverx", "=", 
      RowBox[{"Which", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"x1", "<", "0.4", "<", "y1"}], ",", 
        FractionBox[
         RowBox[{"y1", "-", "0.4"}], 
         RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Px", "[", "0.4", "]"}], "\[LessEqual]", "p"}], ",", "1", 
        ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Py", "[", "0.4", "]"}], "\[GreaterEqual]", "p"}], ",", 
        "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"levery", "=", 
      RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"p1", "=", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Px", "[", "x", "]"}], ",", 
          RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
            "]"}], ",", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], "}"}]}],
         ",", 
        RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "0.05", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.4", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"p2", "=", 
      RowBox[{"Graphics", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.41", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.41", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Column", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"leverx", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<liquid\>\""}], 
                "}"}], ",", 
               RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
             "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"y1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Column", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Row", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"levery", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<vapor\>\""}], 
                "}"}], ",", 
               RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
             "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"p3", "=", 
      RowBox[{"Graphics", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.4", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.39", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0.41", ",", "p"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0.41", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Thickness", "[", "0.005", "]"}], ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "40"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"0.4", "+", "y1"}], ")"}], "/", "2"}], ",", 
                RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<L\>\"", ",", "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"y1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "450"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<V\>\"", ",", "16"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"x1", "+", "0.4"}], ")"}], "/", "2"}], ",", 
             RowBox[{"p", "+", "450"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(x\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x1", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"0.4", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(z\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.415", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.015", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"y1", ",", "p"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(y\), \(1\)]\)\>\"", ",", "17"}],
             "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"y1", ",", "p"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Mouseover", "[", 
      RowBox[{
       RowBox[{"Show", "[", 
        RowBox[{"p1", ",", "p2", ",", 
         RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
       RowBox[{"Show", "[", 
        RowBox[{"p1", ",", "p3", ",", 
         RowBox[{"Background", "\[Rule]", "White"}]}], "]"}]}], "]"}]}]}], 
   "]"}]}]], "Input"],

Cell[BoxData[
 FrameBox[
  PaneSelectorBox[{False->
   GraphicsBox[{{{}, {}, 
      {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVxXk4lAkcAGChNKSVZTSpEeF5sI5ET0n9foUiEYYolpZuxlFYWpt1TGSM
zJeEppCjTRbJRlsZoaiMcxxpMrTjVl+UimXs7h/v82r7h7gdl5WRkXH6z//v
Pz7WUTfusWvebuWBTDETR8sO+YtpFmDzQJj3coyJVKXutPs0W2Dr589Kp5lo
sl2t6AbNHegKVrkn5YPRqn1LBUE7BnuaA2e2GQRj3fUGSw4tHFL2t2W9ORuM
CXHsqBRaIqw/mDm8cUUIHgsnaZdoGaD1A8H3oIbiygyH/I/ThZCUm9la7BGG
1e3m+/bRy8HLhlHfGnsWvRJE/Q3sKhAZVkZsKDyHIffOGWd9fgjFMUk3zYfC
cSa9p3nZMj70S9VK6ZRIbH76nN9mXQ+MybWmHQ4/4+loB+XDU40Qq8kPK0mM
wqcU86VSZhOoxWzIPlISjcUFjdJ1ei/h494Zy46x84jUJ7cYZS1gsSe2mq4a
g8ZNoprnhm1gHFf2jbD8FYXI+HDnQzucMXQvF4RdwCDFwM5us05YI1+5X5wV
i6/6PJ+sTuuCpU0Nf3gH/YaMvV5DEokQ2k5K1b0pcbg1j+2Zp9sDwoarH59d
j8NB6RXhqdhe+Md9bHmGVTwOO7QVUBv6wEuayRG0xmNFtji6Q7sfekUyLmdC
ErAoWe6Swfk3YPZ2x9l1yok4G3Bk4sQjETyZ7VyxNS8RlWwvut3TGACmjV5P
FbAwRmV41ZCPGNzudGnkClm4qtZIptdpEFQ3Mx7yTlzEnZEHFxvmB+Hze87V
Rfkk5BWmFmziDYFig67kRVYS+npYCCiO78BWEMmc25aMf3Yfv1L75R14zWUf
su5Jxu0tFbIjmX9D7k5a5cSpS7jR7sTsFVsJUKoZ9gsKKWhpYcmtGpHAHfsJ
l2heCopnOC8KWMOgs+D6kGLCxqktriya+QjUSsJ9Fl+xUX/SeGJZ1wikDX8K
8/FLxUbdiM7QuFGI1zSppy+l4mVhd4Cb7hiUnG5MPJDBQZJRx5VtHIO7r41u
c/TTsNJD3WZ72Di0X3CWN3+WhgWChBvvVCfA0FrQtfvwZfza5POLav0EFJso
DFTNXcZBLn9WJXgSLmhTCm84puOXjh20+NVT0FhtTVCvpmNohk5d9OMpyBkT
bHgqSUcNgY6KxPc9sPU4/tqmXGR0ly6sl76HM58sPJWiuDjjlx8kKvkAr72t
xvWbuMg/Ws5afYAE/3amxTcVAv9qC3IccCaBZvqyfbcqgQ92Ga4pcyWhnaPP
ZH9PYOn6Ip6TJwnWjuIiOpXAnL6c+6n+JFCfu2jYaRIY4XJxSDGahBePtsxz
9Qg0wh93KhSTYHZ7jm9kRaB++Tq53t9JGF1+yCdiB4E69L7m4rsk3DxW+a3W
msC1C27ue++RoKgTuNkNCFxRYx/IekyChCe6FWVL4JCpRbZcFwnXCD7rmTOB
opvTvl3dJDhPa+p850Jgn3K5bkEfCctdomq9XAlsnTSo2DNAQpjy5q+TDAIf
39ZqihsnwTH51inVwwTWUN+muk6RIDsqlfc5QuB9Vo6bNklCjZ13fpE3gSUB
6gN1n0nQk1Pr3+ZLYFFnZ0H6VxLe/BQaGe9HYN7u9NNH50ng1rWothwlkFfh
ZGq2SIK9lkG5uj+B17SUZpeWSJD+ynL0CyDwX9GTXW4=
        "]]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVznk4lAkcwHHMKiGPVBidhLZDJrRWNX6/UpGQW9lU66wnw8hQcq1jrHLN
+9ajHBVNbFmPI9qlNIgnKrMyZmIljPuaeVGqbYtt//g+n3+/+r6hrgFKCgoK
jt/6X/uA8Y6GCQ/rjx5q27P7WThW5unbT7eA7KGhNo6Uhdpqkswq+gGI2H//
vtsQC3dYrSq6SXeH2tjNOlpjLNz9yryCpPvDPqFJEyFnYUNe064MOgdoFvZn
87+yMCkh7eIVejIwzPOY/WtC0J9D0S/Tr8HxtsnMdcdDUOXa4cKZ2btQsyc4
zkkagn++MrO1XV8Oa9ZuGezxD8VjSb09TWnVUDiPAsPJUAytDDe58b4WvCo4
s+PAxjne61ZFxXqQLElhHkxlY2vjs/r2vU/BUjVtefbfbDwbdXj58elmmNC1
9k7eHoaNy8wWS1ktMJJvpSeMCcNifvOCntEL2BxZqsXsCkPUfnLHrawNptxT
Ny81PY8mLb01z7a2Q7j+mz5W6nkUo5v8vvwVnM6LzQuQncdg1XMiCUME3h/k
yryj4fiy2+uJRmYnFFszzvEE4eh26Jh0eFgMG5cWxcUxOPhDQZpXgeFroMW8
8466zcGBhaviM/FdsEOQrXdiXQSOHG7nazd1Q2XZT4qBNyKwIqc/qkO/BwSP
YcrcMBKLUmmXt1x6AxkZdirJ1ZE47+c9Gfi4F2bjrKrk+y6g2oEU10qdPhgz
5u+0HrqAMZoj6tIT/VA3Y1M0l3AR1QXbFLocB0B8ofrlE6MoZEYe/dr0eQCK
ry9+8ZVGYf7ddP6mfCnYtxyr5edewpMeFsJlRwYh+OfWpujQaHwoCbgq+DAI
JTH2My8cY9CqrUJpNHsIuA+6XCy3xuLGg4HzVw8MQ5Zn4CfZ93G4y2IXUT06
DAO33+WMGsdj/1zGcz53BDati+E46/6C0+YuXLrZKPQY7yAGHvyCxlMmk4qd
o/DQ08Bp2jEBmw0jROyEMVAoXDNoRUvELLHEz9VwHOjNosXwR4lIuTUQSs3j
kN64Sr0tJgkfeKy2sQqbAP/vFuh7fZORL0y6Oag1CXtNbO/YOHDxY8uJaK2n
k5C3Wqmy1TcFB4j6ec2QKaBKjDROEb/ih4499ESNaTB1tVhGPU9F9jWDhqi6
aYjOWuF/y+YK6ggNNIdPyqCx4G0Qoz0N3SSlX9YuyCB3v5+mPDED504VBveW
yOG5YC7IKT8L60+XczUcKCCUzlxqk/HwUXvwkT4nCkQNBcMm73j4h/XWFWUu
FNxTTnxMfuJh6dqifEcvCjim3nWBNAJzu3Or0n0pGHukGfQjncAI5xSpahQF
7FRjd+5BArehD3NpMQUQe2NlXwGBxuV6tK57FDBVzOqrigk0WN/dWvw7BZnx
nXYZpQTqfnF1P1RJgUpZjrJDDYFLauzOceso0OmwIT+1Eyg1tcihdX77G3od
tkKBxN5bsyc7JRSE7/bpMl5CYvfyckN+NwU1WgveqE7iX1NbKvb3UTDv4yaM
1yWx7rcNLQkTFDjDhJixk8Qa7bfpLtMU2NnWFgZZkljFzXXVpyiQSRrL7jBJ
LPFb3dfwngI95X9zjexJLBKJ+LyPFFyc+CeR5UxiwT7e2dOfKXgzI6yr9SQx
v8LRlPGVgjq2zEHVh8TrG9TmFxcpWDkqtjzlR+J/T8hgkQ==
        "]]}}, {
      {RGBColor[0, 0, 1], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.3316211884776062, 550}, {0.4, 550}}]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.4, 550}, {0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.3316211884776062, 550}, {0.3316211884776062, 590}, {
         0.39, 590}, {0.39, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.36581059423880313`, 590}, {0.36581059423880313`, 950}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.41, 550}, {0.41, 590}, {0.7095747292055791, 590}, {
         0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.5547873646027895, 590}, {0.5547873646027895, 950}}]}, 
      InsetBox[
       StyleBox[
        TagBox[GridBox[{
           {
            TemplateBox[{TagBox[
               InterpretationBox[
               "\"82.\"", 81.90814368594351, AutoDelete -> True], 
               NumberForm[#, 2]& ],"\"%\""},
             "RowDefault"]},
           {"\<\"liquid\"\>"}
          },
          DefaultBaseStyle->"Column",
          GridBoxAlignment->{"Columns" -> {{Center}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
         "Column"],
        StripOnInput->False,
        FontSize->16], {0.5547873646027895, 1050}], InsetBox[
       StyleBox[
        TagBox[GridBox[{
           {
            TemplateBox[{TagBox[
               InterpretationBox[
               "\"18.\"", 18.091856314056486`, AutoDelete -> True], 
               NumberForm[#, 2]& ],"\"%\""},
             "RowDefault"]},
           {"\<\"vapor\"\>"}
          },
          DefaultBaseStyle->"Column",
          GridBoxAlignment->{"Columns" -> {{Center}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
         "Column"],
        StripOnInput->False,
        FontSize->16], {0.36581059423880313`, 1050}]}},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0., 100.},
    Background->GrayLevel[1],
    DisplayFunction->Identity,
    Epilog->InsetBox[
      GraphicsBox[{
        PointSize[0.05], 
        PointBox[{0, 0}]}], {0.4, 550}],
    Frame->{{True, True}, {True, True}},
    FrameLabel->{{
       FormBox[
        StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
        TraditionalForm], None}, {
       FormBox[
        StyleBox[
        "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
        TraditionalForm], None}},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLines->{None, None},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    ImageSize->500,
    LabelStyle->GrayLevel[0],
    Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
    PlotRange->{{0, 1}, {100, 1400}},
    PlotRangeClipping->True,
    PlotRangePadding->{{0, 0}, {0, 0}},
    Ticks->{Automatic, Automatic}], True->
   GraphicsBox[{{{}, {}, 
      {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVxXk4lAkcAGChNKSVZTSpEeF5sI5ET0n9foUiEYYolpZuxlFYWpt1TGSM
zJeEppCjTRbJRlsZoaiMcxxpMrTjVl+UimXs7h/v82r7h7gdl5WRkXH6z//v
Pz7WUTfusWvebuWBTDETR8sO+YtpFmDzQJj3coyJVKXutPs0W2Dr589Kp5lo
sl2t6AbNHegKVrkn5YPRqn1LBUE7BnuaA2e2GQRj3fUGSw4tHFL2t2W9ORuM
CXHsqBRaIqw/mDm8cUUIHgsnaZdoGaD1A8H3oIbiygyH/I/ThZCUm9la7BGG
1e3m+/bRy8HLhlHfGnsWvRJE/Q3sKhAZVkZsKDyHIffOGWd9fgjFMUk3zYfC
cSa9p3nZMj70S9VK6ZRIbH76nN9mXQ+MybWmHQ4/4+loB+XDU40Qq8kPK0mM
wqcU86VSZhOoxWzIPlISjcUFjdJ1ei/h494Zy46x84jUJ7cYZS1gsSe2mq4a
g8ZNoprnhm1gHFf2jbD8FYXI+HDnQzucMXQvF4RdwCDFwM5us05YI1+5X5wV
i6/6PJ+sTuuCpU0Nf3gH/YaMvV5DEokQ2k5K1b0pcbg1j+2Zp9sDwoarH59d
j8NB6RXhqdhe+Md9bHmGVTwOO7QVUBv6wEuayRG0xmNFtji6Q7sfekUyLmdC
ErAoWe6Swfk3YPZ2x9l1yok4G3Bk4sQjETyZ7VyxNS8RlWwvut3TGACmjV5P
FbAwRmV41ZCPGNzudGnkClm4qtZIptdpEFQ3Mx7yTlzEnZEHFxvmB+Hze87V
Rfkk5BWmFmziDYFig67kRVYS+npYCCiO78BWEMmc25aMf3Yfv1L75R14zWUf
su5Jxu0tFbIjmX9D7k5a5cSpS7jR7sTsFVsJUKoZ9gsKKWhpYcmtGpHAHfsJ
l2heCopnOC8KWMOgs+D6kGLCxqktriya+QjUSsJ9Fl+xUX/SeGJZ1wikDX8K
8/FLxUbdiM7QuFGI1zSppy+l4mVhd4Cb7hiUnG5MPJDBQZJRx5VtHIO7r41u
c/TTsNJD3WZ72Di0X3CWN3+WhgWChBvvVCfA0FrQtfvwZfza5POLav0EFJso
DFTNXcZBLn9WJXgSLmhTCm84puOXjh20+NVT0FhtTVCvpmNohk5d9OMpyBkT
bHgqSUcNgY6KxPc9sPU4/tqmXGR0ly6sl76HM58sPJWiuDjjlx8kKvkAr72t
xvWbuMg/Ws5afYAE/3amxTcVAv9qC3IccCaBZvqyfbcqgQ92Ga4pcyWhnaPP
ZH9PYOn6Ip6TJwnWjuIiOpXAnL6c+6n+JFCfu2jYaRIY4XJxSDGahBePtsxz
9Qg0wh93KhSTYHZ7jm9kRaB++Tq53t9JGF1+yCdiB4E69L7m4rsk3DxW+a3W
msC1C27ue++RoKgTuNkNCFxRYx/IekyChCe6FWVL4JCpRbZcFwnXCD7rmTOB
opvTvl3dJDhPa+p850Jgn3K5bkEfCctdomq9XAlsnTSo2DNAQpjy5q+TDAIf
39ZqihsnwTH51inVwwTWUN+muk6RIDsqlfc5QuB9Vo6bNklCjZ13fpE3gSUB
6gN1n0nQk1Pr3+ZLYFFnZ0H6VxLe/BQaGe9HYN7u9NNH50ng1rWothwlkFfh
ZGq2SIK9lkG5uj+B17SUZpeWSJD+ynL0CyDwX9GTXW4=
        "]]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVznk4lAkcwHHMKiGPVBidhLZDJrRWNX6/UpGQW9lU66wnw8hQcq1jrHLN
+9ajHBVNbFmPI9qlNIgnKrMyZmIljPuaeVGqbYtt//g+n3+/+r6hrgFKCgoK
jt/6X/uA8Y6GCQ/rjx5q27P7WThW5unbT7eA7KGhNo6Uhdpqkswq+gGI2H//
vtsQC3dYrSq6SXeH2tjNOlpjLNz9yryCpPvDPqFJEyFnYUNe064MOgdoFvZn
87+yMCkh7eIVejIwzPOY/WtC0J9D0S/Tr8HxtsnMdcdDUOXa4cKZ2btQsyc4
zkkagn++MrO1XV8Oa9ZuGezxD8VjSb09TWnVUDiPAsPJUAytDDe58b4WvCo4
s+PAxjne61ZFxXqQLElhHkxlY2vjs/r2vU/BUjVtefbfbDwbdXj58elmmNC1
9k7eHoaNy8wWS1ktMJJvpSeMCcNifvOCntEL2BxZqsXsCkPUfnLHrawNptxT
Ny81PY8mLb01z7a2Q7j+mz5W6nkUo5v8vvwVnM6LzQuQncdg1XMiCUME3h/k
yryj4fiy2+uJRmYnFFszzvEE4eh26Jh0eFgMG5cWxcUxOPhDQZpXgeFroMW8
8466zcGBhaviM/FdsEOQrXdiXQSOHG7nazd1Q2XZT4qBNyKwIqc/qkO/BwSP
YcrcMBKLUmmXt1x6AxkZdirJ1ZE47+c9Gfi4F2bjrKrk+y6g2oEU10qdPhgz
5u+0HrqAMZoj6tIT/VA3Y1M0l3AR1QXbFLocB0B8ofrlE6MoZEYe/dr0eQCK
ry9+8ZVGYf7ddP6mfCnYtxyr5edewpMeFsJlRwYh+OfWpujQaHwoCbgq+DAI
JTH2My8cY9CqrUJpNHsIuA+6XCy3xuLGg4HzVw8MQ5Zn4CfZ93G4y2IXUT06
DAO33+WMGsdj/1zGcz53BDati+E46/6C0+YuXLrZKPQY7yAGHvyCxlMmk4qd
o/DQ08Bp2jEBmw0jROyEMVAoXDNoRUvELLHEz9VwHOjNosXwR4lIuTUQSs3j
kN64Sr0tJgkfeKy2sQqbAP/vFuh7fZORL0y6Oag1CXtNbO/YOHDxY8uJaK2n
k5C3Wqmy1TcFB4j6ec2QKaBKjDROEb/ih4499ESNaTB1tVhGPU9F9jWDhqi6
aYjOWuF/y+YK6ggNNIdPyqCx4G0Qoz0N3SSlX9YuyCB3v5+mPDED504VBveW
yOG5YC7IKT8L60+XczUcKCCUzlxqk/HwUXvwkT4nCkQNBcMm73j4h/XWFWUu
FNxTTnxMfuJh6dqifEcvCjim3nWBNAJzu3Or0n0pGHukGfQjncAI5xSpahQF
7FRjd+5BArehD3NpMQUQe2NlXwGBxuV6tK57FDBVzOqrigk0WN/dWvw7BZnx
nXYZpQTqfnF1P1RJgUpZjrJDDYFLauzOceso0OmwIT+1Eyg1tcihdX77G3od
tkKBxN5bsyc7JRSE7/bpMl5CYvfyckN+NwU1WgveqE7iX1NbKvb3UTDv4yaM
1yWx7rcNLQkTFDjDhJixk8Qa7bfpLtMU2NnWFgZZkljFzXXVpyiQSRrL7jBJ
LPFb3dfwngI95X9zjexJLBKJ+LyPFFyc+CeR5UxiwT7e2dOfKXgzI6yr9SQx
v8LRlPGVgjq2zEHVh8TrG9TmFxcpWDkqtjzlR+J/T8hgkQ==
        "]]}}, {
      {RGBColor[0, 0, 1], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.3316211884776062, 550}, {0.4, 550}}]}, 
      {RGBColor[0, 1, 0], Thickness[Large], Dashing[{Small, Small}], 
       LineBox[{{0.4, 550}, {0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.3316211884776062, 550}, {0.3316211884776062, 590}, {
         0.39, 590}, {0.39, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.36581059423880313`, 590}, {0.36581059423880313`, 950}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.41, 550}, {0.41, 590}, {0.7095747292055791, 590}, {
         0.7095747292055791, 550}}]}, 
      {Thickness[0.005], 
       LineBox[{{0.5547873646027895, 590}, {0.5547873646027895, 950}}]}, 
      InsetBox[
       StyleBox["\<\"L\"\>",
        StripOnInput->False,
        FontSize->16], {0.5547873646027895, 1000}], InsetBox[
       StyleBox["\<\"V\"\>",
        StripOnInput->False,
        FontSize->16], {0.36581059423880313`, 1000}], 
      {PointSize[0.015], PointBox[{0.3316211884776062, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(x\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.3316211884776062, 550}, {-1, 1}], 
      {PointSize[0.015], PointBox[{0.4, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(z\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.415, 550}, {-1, 1}], 
      {PointSize[0.015], PointBox[{0.7095747292055791, 550}]}, InsetBox[
       StyleBox["\<\"\\!\\(\\*SubscriptBox[\\(y\\), \\(1\\)]\\)\"\>",
        StripOnInput->False,
        FontSize->17], {0.7095747292055791, 550}, {-1, 1}]}},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0., 100.},
    Background->GrayLevel[1],
    DisplayFunction->Identity,
    Epilog->InsetBox[
      GraphicsBox[{
        PointSize[0.05], 
        PointBox[{0, 0}]}], {0.4, 550}],
    Frame->{{True, True}, {True, True}},
    FrameLabel->{{
       FormBox[
        StyleBox["\"pressure (mm Hg)\"", 16, StripOnInput -> False], 
        TraditionalForm], None}, {
       FormBox[
        StyleBox[
        "\"mole fraction of component 1\"", 16, StripOnInput -> False], 
        TraditionalForm], None}},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLines->{None, None},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    ImageSize->500,
    LabelStyle->GrayLevel[0],
    Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
    PlotRange->{{0, 1}, {100, 1400}},
    PlotRangeClipping->True,
    PlotRangePadding->{{0, 0}, {0, 0}},
    Ticks->{Automatic, Automatic}]}, Dynamic[
    CurrentValue["MouseOver"]],
   FrameMargins->0,
   ImageSize->Automatic],
  StripOnInput->False]], "Output"]
}, {2}]],

Cell[CellGroupData[{

Cell["Concept Test", "Item1Exercise"],

Cell[TextData[{
 "Based on the ideal mixture in the above P-x-y diagram, use the lever rule \
to calculate the amount of liquid and vapor present for an overal molar \
composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["z", "1"], "=", "0.6"}], TraditionalForm]]],
 ". Note that the composition of component 1 in the liquid phase at constant \
pressure is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "1"], "=", "0.33"}], TraditionalForm]]],
 " and in the vapor phase, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", "1"], "=", "0.71"}], TraditionalForm]]],
 ". "
}], "Item2Exercise",
 TextAlignment->Left]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Solution",
 FontWeight->"Bold"]], "Subsubsection",
 CellDingbat->"\[LightBulb]"],

Cell[CellGroupData[{

Cell[TextData[{
 "The fraction of liquid present ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SuperscriptBox["f", "L"], ")"}], TraditionalForm]]],
 " is,\n\n\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["f", "L"], "=", 
    RowBox[{
     FractionBox["L", 
      RowBox[{"L", "+", "V"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{
        SubscriptBox["z", "1"], "-", 
        SubscriptBox["y", "1"]}], 
       RowBox[{
        SubscriptBox["x", "1"], "-", 
        SubscriptBox["y", "1"]}]], "=", 
      RowBox[{
       FractionBox[
        RowBox[{"0.6", "-", "0.71"}], 
        RowBox[{"0.33", "-", "0.71"}]], "=", 
       RowBox[{
       "0.29", "   ", "or", "  ", "29", "%", "   ", "liquid"}]}]}]}]}], 
   TraditionalForm]]],
 "\n\t\nThe fraction of vapor present ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    SuperscriptBox["f", "V"], ")"}], TraditionalForm]]],
 " is,\n\n\t",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["f", "V"], "=", 
    RowBox[{
     FractionBox["V", 
      RowBox[{"L", "+", "V"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{
        SubscriptBox["z", "1"], "-", 
        SubscriptBox["x", "1"]}], 
       RowBox[{
        SubscriptBox["y", "1"], "-", 
        SubscriptBox["x", "1"]}]], "=", 
      RowBox[{
       FractionBox[
        RowBox[{"0.6", "-", "0.33"}], 
        RowBox[{"0.71", "-", "0.33"}]], "=", 
       RowBox[{"0.71", "   ", "or", "  ", "71", "%", "  ", "vapor"}]}]}]}]}], 
   TraditionalForm]]]
}], "Item2Exercise",
 TextAlignment->Left],

Cell["", "Item2Exercise",
 TextAlignment->Left]
}, Open  ]],

Cell["\<\
Use the Demonstration below to see how the amount of liquid and vapos present \
changes with overall compositon.\
\>", "FigureCaption"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "p", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", 
       "x1", ",", "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", 
       ",", "p3"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"p", "=", "550"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "comp", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "comp"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "comp", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "comp", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.05", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"comp", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"comp", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"comp", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"comp", ">", "0.33"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"x1", ",", "p"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x1", ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "-", "0.01"}], ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "-", "0.01"}], ",", "p"}], "}"}]}], "}"}], 
               "]"}]}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "40"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"comp", "<", "0.71"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "+", "0.01"}], ",", "p"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"comp", "+", "0.01"}], ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"y1", ",", 
                   RowBox[{"p", "+", "40"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}]}], 
           "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.0045", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"comp", "+", "y1"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "40"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"comp", "+", "y1"}], ")"}], "/", "2"}], ",", 
                 RowBox[{"p", "+", "400"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"leverx", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<liquid\>\""}], 
                 "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
              "16"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", 
              RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Column", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"levery", "*", "100"}], ",", "2"}], "]"}], ",", 
                    "\"\<%\>\""}], "}"}], "]"}], ",", "\"\<vapor\>\""}], 
                 "}"}], ",", 
                RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", 
              "16"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", 
              RowBox[{"p", "+", "500"}]}], "}"}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.003425", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"0.05", "+", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}]}], ",", 
                 "400"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", "p"}],
                 "}"}]}], "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
               "\"\<\!\(\*SuperscriptBox[\(f\), \
\(L\)]\)=\!\(\*FractionBox[\(L\), \(L + V\)]\)\>\"", ",", "16"}], "]"}], ",", 
              RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"y1", "+", "comp"}], ")"}], "/", "2"}], ",", "300"}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.003425", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "0.05"}], "+", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}]}], ",", 
                 "400"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", "p"}],
                 "}"}]}], "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Framed", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
               "\"\<\!\(\*SuperscriptBox[\(f\), \
\(V\)]\)=\!\(\*FractionBox[\(V\), \(L + V\)]\)\>\"", ",", "16"}], "]"}], ",", 
              RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"x1", "+", "comp"}], ")"}], "/", "2"}], ",", "300"}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", "0"}], "}"}]}], "]"}]}], "\[IndentingNewLine]",
          "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"p1", ",", "p2", ",", "p3"}], "]"}]}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "comp", ",", "0.6", ",", 
       "\"\<overall molar composition (\!\(\*SubscriptBox[\(z\), \
\(1\)]\))\>\""}], "}"}], ",", "0.33", ",", "0.71", ",", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`comp$$ = 0.6000000000000001, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`comp$$], 0.6, 
       "overall molar composition (\!\(\*SubscriptBox[\(z\), \(1\)]\))"}, 
      0.33, 0.71, 0.01}}, Typeset`size$$ = {500., {159., 163.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`comp$4751$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`comp$$ = 0.6}, 
      "ControllerVariables" :> {
        Hold[$CellContext`comp$$, $CellContext`comp$4751$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`p$, $CellContext`Psat1$, \
$CellContext`Psat2$, $CellContext`Px$, $CellContext`Py$, $CellContext`x1$, \
$CellContext`y1$, $CellContext`leverx$, $CellContext`levery$, \
$CellContext`p1$, $CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`p$ = 550; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           
           FindRoot[$CellContext`p$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < $CellContext`comp$$ < $CellContext`y1$, \
($CellContext`y1$ - $CellContext`comp$$)/($CellContext`y1$ - \
$CellContext`x1$), $CellContext`Px$[$CellContext`comp$$] <= $CellContext`p$, 
           1, $CellContext`Py$[$CellContext`comp$$] >= $CellContext`p$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 500, Epilog -> Inset[
             Graphics[{
               PointSize[0.05], 
               
               Point[{0, 
                0}]}], {$CellContext`comp$$, $CellContext`p$}]]; \
$CellContext`p2$ = Graphics[{{Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$}, {$CellContext`comp$$, \
$CellContext`p$}}]}, {Thick, Dashed, Green, 
             
             Line[{{$CellContext`comp$$, $CellContext`p$}, {$CellContext`y1$, \
$CellContext`p$}}]}, 
            If[$CellContext`comp$$ > 0.33, {
              Thickness[0.0045], 
              
              Line[{{$CellContext`x1$, $CellContext`p$}, {$CellContext`x1$, \
$CellContext`p$ + 40}, {$CellContext`comp$$ - 0.01, $CellContext`p$ + 
                 40}, {$CellContext`comp$$ - 0.01, $CellContext`p$}}]}], {
             Thickness[0.0045], 
             
             Line[{{($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$ + 
                40}, {($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$ + 400}}]}, 
            If[$CellContext`comp$$ < 0.71, {
              Thickness[0.0045], 
              
              Line[{{$CellContext`comp$$ + 
                 0.01, $CellContext`p$}, {$CellContext`comp$$ + 
                 0.01, $CellContext`p$ + 
                 40}, {$CellContext`y1$, $CellContext`p$ + 
                 40}, {$CellContext`y1$, $CellContext`p$}}]}], {
             Thickness[0.0045], 
             
             Line[{{($CellContext`comp$$ + $CellContext`y1$)/
                2, $CellContext`p$ + 
                40}, {($CellContext`comp$$ + $CellContext`y1$)/
                2, $CellContext`p$ + 400}}]}, 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[$CellContext`leverx$ 100, 2], "%"}], "liquid"}, 
               Alignment -> Center], 
              16], {($CellContext`y1$ + $CellContext`comp$$)/
              2, $CellContext`p$ + 500}], 
            Text[
             Style[
              Column[{
                Row[{
                  NumberForm[$CellContext`levery$ 100, 2], "%"}], "vapor"}, 
               Alignment -> Center], 
              16], {($CellContext`x1$ + $CellContext`comp$$)/
              2, $CellContext`p$ + 500}]}]; $CellContext`p3$ = Graphics[{{
             Thickness[0.003425], 
             
             Line[{{0.05 + ($CellContext`y1$ + $CellContext`comp$$)/2, 
                400}, {($CellContext`y1$ + $CellContext`comp$$)/
                2, $CellContext`p$}}]}, 
            Text[
             Framed[
              Style[
              "\!\(\*SuperscriptBox[\(f\), \(L\)]\)=\!\(\*FractionBox[\(L\), \
\(L + V\)]\)", 16], Background -> 
              White], {($CellContext`y1$ + $CellContext`comp$$)/2, 300}, {-1, 
             0}], {
             Thickness[0.003425], 
             
             Line[{{-0.05 + ($CellContext`x1$ + $CellContext`comp$$)/2, 
                400}, {($CellContext`x1$ + $CellContext`comp$$)/
                2, $CellContext`p$}}]}, 
            Text[
             Framed[
              Style[
              "\!\(\*SuperscriptBox[\(f\), \(V\)]\)=\!\(\*FractionBox[\(V\), \
\(L + V\)]\)", 16], Background -> 
              White], {($CellContext`x1$ + $CellContext`comp$$)/2, 300}, {1, 
             0}]}]; Show[$CellContext`p1$, $CellContext`p2$, \
$CellContext`p3$]], 
      "Specifications" :> {{{$CellContext`comp$$, 0.6, 
          "overall molar composition (\!\(\*SubscriptBox[\(z\), \(1\)]\))"}, 
         0.33, 0.71, 0.01, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{549., {204., 211.}},
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
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Changes in Pressure", "Section"],

Cell[TextData[{
 "For an ideal mixture at a constant overall composition ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["z", "1"], "=", "0.5"}], ")"}], TraditionalForm]]],
 ", see how varying the pressure affects the amount of liquid and vapor \
present, and the composiaions in each phase."
}], "Text"],

Cell[CellGroupData[{

Cell["Effect on Liquid and Vapor Amounts (Lever Rule)", "Subsection"],

Cell["\<\
As pressure increases at constant composition, the binary mixture is \
compressed and thus goes from the vapor phase to liquid phase. \
\>", "Text"],

Cell["", "Text"],

Cell["Use the demonsration below to adjust pressure", "FigureCaption"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", "x1", ",", 
       "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", ",", "p3"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "0.5", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "0.5"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "0.5", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "0.5", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "450"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.09", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"BarChart", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"leverx", ",", "levery"}], "}"}], ",", 
         RowBox[{"ChartStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", "Green"}], "}"}]}], ",", 
         RowBox[{"ChartLayout", "\[Rule]", "\"\<Stacked\>\""}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"100", ",", "290"}], "}"}]}], ",", 
         RowBox[{"ChartLabels", "\[Rule]", 
          RowBox[{"Placed", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "leverx"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % L\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "levery"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % V\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}]}], "}"}], 
            ",", "Center"}], "]"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"leverx", "\[Equal]", "1"}], "\[Or]", 
            RowBox[{"levery", "\[Equal]", "1"}]}], ",", 
           RowBox[{"Text", "[", "\"\<\>\"", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"x1", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
             "}"}]}], "]"}], "\[IndentingNewLine]", "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Row", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{"p1", ",", "p3"}], "]"}], ",", 
         RowBox[{"Show", "[", "p2", "]"}]}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "530", ",", "\"\<pressure (mm Hg)\>\""}], "}"}], ",", 
     "200", ",", "1000", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = 505, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], 530, "pressure (mm Hg)"}, 200, 1000, 5}}, 
    Typeset`size$$ = {550., {143., 148.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`p$2286$$ =
     0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`p$$ = 530}, 
      "ControllerVariables" :> {
        Hold[$CellContext`p$$, $CellContext`p$2286$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat1$, $CellContext`Psat2$, \
$CellContext`Px$, $CellContext`Py$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`leverx$, $CellContext`levery$, $CellContext`p1$, \
$CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           FindRoot[$CellContext`p$$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < 
           0.5 < $CellContext`y1$, ($CellContext`y1$ - 
            0.5)/($CellContext`y1$ - $CellContext`x1$), $CellContext`Px$[
            0.5] <= $CellContext`p$$, 
           1, $CellContext`Py$[0.5] >= $CellContext`p$$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 450, Epilog -> Inset[
             Graphics[{
               PointSize[0.09], 
               Point[{0, 0}]}], {0.5, $CellContext`p$$}]]; $CellContext`p2$ = 
         BarChart[{$CellContext`leverx$, $CellContext`levery$}, 
           ChartStyle -> {Blue, Green}, ChartLayout -> "Stacked", AspectRatio -> 
           Full, ImageSize -> {100, 290}, ChartLabels -> Placed[{
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`leverx$, {3, 0}], " % L"}], 15, 
                Bold], Background -> White], 
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`levery$, {3, 0}], " % V"}], 15, 
                Bold], Background -> White]}, Center]]; $CellContext`p3$ = 
         Graphics[{
            If[
             Or[$CellContext`leverx$ == 1, $CellContext`levery$ == 1], 
             Text[""], {{Thick, Dashed, Blue, 
               
               Line[{{$CellContext`x1$, $CellContext`p$$}, {
                 0.5, $CellContext`p$$}}]}, {Thick, Dashed, Green, 
               
               Line[{{0.5, $CellContext`p$$}, {$CellContext`y1$, \
$CellContext`p$$}}]}}]}]; Row[{
           Show[$CellContext`p1$, $CellContext`p3$], 
           Show[$CellContext`p2$]}]], 
      "Specifications" :> {{{$CellContext`p$$, 530, "pressure (mm Hg)"}, 200, 
         1000, 5, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{599., {188., 195.}},
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
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Effect on Molar Composition in the Liquid and Vapor Phases", \
"Subsection"],

Cell[CellGroupData[{

Cell["Concept Test", "Item1Exercise"],

Cell[CellGroupData[{

Cell[TextData[{
 "A piston-cylinder system contains components A and B in vapor-liquid \
equilibrium (VLE). Assume the solution and gas are ideal, with ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "A"], "=", "0.25"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["y", "A"], "=", "0.5"}], TraditionalForm]]],
 ". A small weight is added to the piston, while temperature is help \
constant. What happens to the system as pressure increases?"
}], "Item2Exercise",
 TextAlignment->Left],

Cell[TextData[{
 "A. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " increases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " decreases\nB. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " increases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increases\nC. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " decreases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " decreases\nD. ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " decreases, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increases"
}], "Item2Exercise",
 TextAlignment->Left]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "@", 
  RowBox[{"Graphics3D", "[", 
   RowBox[{
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Opacity", "[", "0.3", "]"}], ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "2"}], "}"}]}], "}"}], ",", "0.75"}],
          "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"Gray", ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "1.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "1.75"}], "}"}]}], "}"}], ",", 
          "0.75"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Lighter", "[", 
         RowBox[{"Blue", ",", "0.6"}], "]"}], ",", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0.55"}], "}"}]}], "}"}], ",", 
          "0.75"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"FaceForm", "[", "Black", "]"}], ",", 
        RowBox[{"Cuboid", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "0.25"}], ",", "0", ",", "2.25"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.25", ",", "0", ",", "2.65"}], "}"}]}], "]"}]}], "}"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Thickness", "[", "0.02", "]"}], ",", 
        RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
        RowBox[{"Arrow", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "2.25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "1.85"}], "}"}]}], "}"}], "]"}]}], 
       "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<vapor\>\"", ",", 
              "\"\<\!\(\*SubscriptBox[\(y\), \(A\)]\) = 0.5\>\""}], "}"}], 
            ",", 
            RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", "18"}], 
         "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "1."}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"Column", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<liquid\>\"", ",", 
              "\"\<\!\(\*SubscriptBox[\(x\), \(A\)]\) = 0.25\>\""}], "}"}], 
            ",", 
            RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}], ",", "18"}], 
         "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0.15"}], "}"}]}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], ",", 
    RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
    RowBox[{"ViewPoint", "\[Rule]", "Front"}], ",", 
    RowBox[{"Lighting", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"\"\<Ambient\>\"", ",", "LightGray"}], "}"}], "}"}]}], ",", 
    RowBox[{"Background", "\[Rule]", "White"}], ",", 
    RowBox[{"ImageSize", "\[Rule]", "150"}]}], "]"}]}]], "Input"],

Cell[BoxData[
 FrameBox[
  Graphics3DBox[{
    {Opacity[0.3], CylinderBox[{{0, 0, 0}, {0, 0, 2}}, 0.75]}, 
    {GrayLevel[0.5], CylinderBox[{{0, 0, 1.5}, {0, 0, 1.75}}, 0.75]}, 
    {RGBColor[0.6, 0.6, 1.], CylinderBox[{{0, 0, 0}, {0, 0, 0.55}}, 0.75]}, 
    {FaceForm[GrayLevel[0]], CuboidBox[{-0.25, 0, 2.25}, {0.25, 0, 2.65}]}, 
    {Thickness[0.02], Arrowheads[0.05], 
     Arrow3DBox[{{0, 0, 2.25}, {0, 0, 1.85}}]}, Text3DBox[
     FormBox[
      StyleBox[
       TagBox[GridBox[{
          {"\<\"vapor\"\>"},
          {"\<\"\\!\\(\\*SubscriptBox[\\(y\\), \\(A\\)]\\) = 0.5\"\>"}
         },
         DefaultBaseStyle->"Column",
         GridBoxAlignment->{"Columns" -> {{Center}}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Column"],
       StripOnInput->False,
       FontSize->18], StandardForm], {0, 0, 1.}], Text3DBox[
     FormBox[
      StyleBox[
       TagBox[GridBox[{
          {"\<\"liquid\"\>"},
          {"\<\"\\!\\(\\*SubscriptBox[\\(x\\), \\(A\\)]\\) = 0.25\"\>"}
         },
         DefaultBaseStyle->"Column",
         GridBoxAlignment->{"Columns" -> {{Center}}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Column"],
       StripOnInput->False,
       FontSize->18], StandardForm], {0, 0, 0.15}]},
   Background->GrayLevel[1],
   Boxed->False,
   ImageSize->150,
   Lighting->{{"Ambient", 
      GrayLevel[0.85]}},
   ViewPoint->Front],
  StripOnInput->False]], "Output"]
}, {2}]],

Cell[CellGroupData[{

Cell["Solution", "Subsubsection",
 CellDingbat->"\[LightBulb]"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["B.",
  FontWeight->"Bold"],
 " ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]]],
 " increase. For a complete solution, view these Screencasts: ",
 ButtonBox["Screencast1",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=AtwjIoO8ykk"], None},
  ButtonNote->"https://www.youtube.com/watch?v=AtwjIoO8ykk"],
 " and ",
 ButtonBox["Screencast2",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://www.youtube.com/watch?v=_jJNc_ROxAs"], None},
  ButtonNote->"https://www.youtube.com/watch?v=_jJNc_ROxAs"]
}], "Item2Exercise",
 TextAlignment->Left],

Cell[TextData[ButtonBox["",
 BaseStyle->"Hyperlink",
 ButtonData->{
   URL["https://www.youtube.com/watch?v=AtwjIoO8ykk"], None},
 ButtonNote->"https://www.youtube.com/watch?v=AtwjIoO8ykk"]], "Item2Exercise",
 TextAlignment->Left]
}, Open  ]],

Cell[TextData[{
 "Use the slider to increase and decrease the pressure to see how ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "A"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["y", "A"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " are affected"
}], "FigureCaption"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "T", ",", "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", "x1", ",", 
       "y1", ",", "leverx", ",", "levery", ",", "p1", ",", "p2", ",", "p3"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"T", "=", "95"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "0.5", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "0.5"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "0.5", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "0.5", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "1400"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<mole fraction of component 1\>\"", ",", "16"}], 
             "]"}], ",", 
            RowBox[{"Style", "[", 
             RowBox[{"\"\<pressure (mm Hg)\>\"", ",", "16"}], "]"}]}], 
           "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", "Black"}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "500"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.055", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "p"}], "}"}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Blue", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", "530"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Green", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.5", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "530"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Blue", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.310296", ",", "100"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", 
            RowBox[{"Blend", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Green", ",", "Gray"}], "}"}], ",", "0.65"}], "]"}], 
            ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "530"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.688999", ",", "100"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Gray", ",", 
            RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
            RowBox[{"Point", "[", 
             RowBox[{"{", 
              RowBox[{"0.5", ",", "530"}], "}"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"0.5", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0.5", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x1", ",", "100"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"y1", ",", "p"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"y1", ",", "100"}], "}"}]}], "}"}], "]"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"p", "\[Equal]", "530"}], ",", 
            RowBox[{"Text", "@", "\"\<\>\""}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Thick", ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0.310296", ",", "150"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"x1", ",", "150"}], "}"}]}], "}"}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Thick", ",", 
                RowBox[{"Arrow", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0.688999", ",", "150"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"y1", ",", "150"}], "}"}]}], "}"}], "]"}]}], 
               "}"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"p1", ",", "p3"}], "]"}]}]}], "\[IndentingNewLine]", "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "600", ",", "\"\<pressure (mm Hg)\>\""}], "}"}], ",", 
     "400", ",", "705", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = 530, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], 600, "pressure (mm Hg)"}, 400, 705, 5}}, 
    Typeset`size$$ = {500., {159., 163.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`p$9335$$ =
     0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`p$$ = 600}, 
      "ControllerVariables" :> {
        Hold[$CellContext`p$$, $CellContext`p$9335$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`T$, $CellContext`Psat1$, $CellContext`Psat2$, \
$CellContext`Px$, $CellContext`Py$, $CellContext`x1$, $CellContext`y1$, \
$CellContext`leverx$, $CellContext`levery$, $CellContext`p1$, \
$CellContext`p2$, $CellContext`p3$}, $CellContext`T$ = 
         95; $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           FindRoot[$CellContext`p$$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < 
           0.5 < $CellContext`y1$, ($CellContext`y1$ - 
            0.5)/($CellContext`y1$ - $CellContext`x1$), $CellContext`Px$[
            0.5] <= $CellContext`p$$, 
           1, $CellContext`Py$[0.5] >= $CellContext`p$$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 1400}}, Frame -> True, FrameLabel -> {
             Style["mole fraction of component 1", 16], 
             Style["pressure (mm Hg)", 16]}, LabelStyle -> Black, 
           AxesOrigin -> {0, 100}, ImageSize -> 500, Epilog -> Inset[
             Graphics[{
               PointSize[0.055], 
               Point[{0, 0}]}], {0.5, $CellContext`p$$}]]; $CellContext`p3$ = 
         Graphics[{{Thick, Dashed, 
             Blend[{Blue, Gray}, 0.65], 
             Line[{{0.310296, 530}, {0.5, 530}}]}, {Thick, Dashed, 
             Blend[{Green, Gray}, 0.65], 
             Line[{{0.5, 530}, {0.688999, 530}}]}, {Thick, Dashed, 
             Blend[{Blue, Gray}, 0.65], 
             Line[{{0.310296, 530}, {0.310296, 100}}]}, {Thick, Dashed, 
             Blend[{Green, Gray}, 0.65], 
             Line[{{0.688999, 530}, {0.688999, 100}}]}, {Gray, 
             PointSize[0.02], 
             Point[{0.5, 530}]}, {Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$$}, {
               0.5, $CellContext`p$$}}]}, {Thick, Dashed, Green, 
             
             Line[{{0.5, $CellContext`p$$}, {$CellContext`y1$, \
$CellContext`p$$}}]}, {Thick, Dashed, Blue, 
             
             Line[{{$CellContext`x1$, $CellContext`p$$}, {$CellContext`x1$, 
                100}}]}, {Thick, Dashed, Green, 
             
             Line[{{$CellContext`y1$, $CellContext`p$$}, {$CellContext`y1$, 
                100}}]}, 
            If[$CellContext`p$$ == 530, 
             Text[""], {{Thick, 
               Arrow[{{0.310296, 150}, {$CellContext`x1$, 150}}]}, {Thick, 
               Arrow[{{0.688999, 150}, {$CellContext`y1$, 150}}]}}]}]; 
        Show[$CellContext`p1$, $CellContext`p3$]], 
      "Specifications" :> {{{$CellContext`p$$, 600, "pressure (mm Hg)"}, 400, 
         705, 5, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{549., {204., 211.}},
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
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Changes in Temperature", "Section"],

Cell[TextData[StyleBox["Predict: How will increasing the temperature affect \
the location of the curves?",
 FontWeight->"Bold",
 Background->RGBColor[
  0.8117647058823529, 0.7215686274509804, 0.48627450980392156`]]], "Text"],

Cell[TextData[StyleBox["",
 FontWeight->"Bold",
 Background->RGBColor[
  0.8117647058823529, 0.7215686274509804, 0.48627450980392156`]]], "Text"],

Cell["Vary temperature to see how the curve changes.", "FigureCaption",
 CellDingbat->"\[FivePointedStar]"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"Psat1", ",", "Psat2", ",", "Px", ",", "Py"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Px", "[", "x", "]"}], ",", 
          RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"100", ",", "2500"}], "}"}]}], "}"}]}], ",", "\n", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<mole fraction of component 1\>\"", ",", 
           "\"\<pressure (mm Hg)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"FontSize", "\[Rule]", "16"}], ",", "Black"}], "}"}]}], 
        ",", "\n", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"FontSize", "\[Rule]", "16"}]}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}]}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"440", ",", "300"}], "}"}]}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"T", ",", "105", ",", "\"\<temperature (\[Degree]C)\>\""}], 
      "}"}], ",", "90", ",", "120", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 105, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 105, "temperature (\[Degree]C)"}, 90, 120, 5}},
     Typeset`size$$ = {440., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$36077$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`T$$ = 105}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$36077$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Px$, \
$CellContext`Py$}, $CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); Plot[{
           $CellContext`Px$[$CellContext`x], 
           $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
          PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
          PlotRange -> {{0, 1}, {100, 2500}}, Frame -> True, 
          FrameLabel -> {"mole fraction of component 1", "pressure (mm Hg)"}, 
          LabelStyle -> {FontSize -> 16, Black}, 
          LabelStyle -> (FontSize -> 16), AxesOrigin -> {0, 100}, 
          ImageSize -> {440, 300}]], 
      "Specifications" :> {{{$CellContext`T$$, 105, 
          "temperature (\[Degree]C)"}, 90, 120, 5, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{489., {193., 200.}},
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

Cell[CellGroupData[{

Cell["Concept Test", "Item1Exercise"],

Cell["\<\
For a 50-50 mixture of two ideal components in VLE at 750 MPa, will the \
amount of liquid in the system increase or decrease if the temperature is \
raised?\
\>", "Item2Exercise",
 TextAlignment->Left]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsubsection"],

Cell[CellGroupData[{

Cell["\<\
The amount of liquid present will decrease, subsequently the amount of vapor \
increases. \
\>", "Item2Exercise"],

Cell["", "Item2Exercise"]
}, Open  ]],

Cell["\<\
Move the temperature slider to see how the amount of liquid and vapor phases \
change. Select another pressure too. \
\>", "FigureCaption"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "Psat1", ",", "Psat2", ",", "Px", ",", "Py", ",", "x1", ",", "y1", ",", 
       "leverx", ",", "levery", ",", "p1", ",", "p2", ",", "p3"}], "}"}], ",",
      "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Psat1", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.90565", "-", 
          FractionBox["1211.033", 
           RowBox[{"T", "+", "220.79"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Psat2", "=", 
       RowBox[{"10", "^", 
        RowBox[{"(", 
         RowBox[{"6.65464", "-", 
          FractionBox["1344.8", 
           RowBox[{"T", "+", "219.48"}]]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Px", "[", "x_", "]"}], "=", 
       RowBox[{
        RowBox[{"x", "*", "Psat1"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", "x"}], ")"}], "*", "Psat2"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Py", "[", "x_", "]"}], "=", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["x", "Psat1"], "+", 
          FractionBox[
           RowBox[{"1", "-", "x"}], "Psat2"]}], ")"}], 
        RowBox[{"-", "1"}]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"x1", "=", 
       RowBox[{"X", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           RowBox[{
            RowBox[{"X", "*", "Psat1"}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "X"}], ")"}], "*", "Psat2"}]}]}], ",", 
          RowBox[{"{", 
           RowBox[{"X", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y1", "=", 
       RowBox[{"Y", "/.", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{"p", "\[Equal]", 
           FractionBox["1", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["Y", "Psat1"], "+", 
              FractionBox[
               RowBox[{"1", "-", "Y"}], "Psat2"]}], ")"}]]}], ",", 
          RowBox[{"{", 
           RowBox[{"Y", ",", "0"}], "}"}]}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"leverx", "=", 
       RowBox[{"Which", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"x1", "<", "0.5", "<", "y1"}], ",", 
         FractionBox[
          RowBox[{"y1", "-", "0.5"}], 
          RowBox[{"y1", "-", "x1"}]], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Px", "[", "0.5", "]"}], "\[LessEqual]", "p"}], ",", "1", 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Py", "[", "0.5", "]"}], "\[GreaterEqual]", "p"}], ",", 
         "0"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"levery", "=", 
       RowBox[{"1", "-", "leverx"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p1", "=", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Px", "[", "x", "]"}], ",", 
           RowBox[{"Py", "[", "x", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"100", ",", "2500"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Frame", "\[Rule]", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
           "\"\<mole fraction of component 1\>\"", ",", 
            "\"\<pressure (mm Hg)\>\""}], "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"FontSize", "\[Rule]", "16"}], ",", "Black"}], "}"}]}], 
         ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"FontSize", "\[Rule]", "16"}]}], ",", 
         RowBox[{"AxesOrigin", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"440", ",", "300"}], "}"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{"Epilog", "\[Rule]", 
          RowBox[{"Inset", "[", 
           RowBox[{
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", "0.08", "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "p"}], "}"}]}], "]"}]}]}], 
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p2", "=", 
       RowBox[{"BarChart", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"leverx", ",", "levery"}], "}"}], ",", 
         RowBox[{"ChartStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", "Green"}], "}"}]}], ",", 
         RowBox[{"ChartLayout", "\[Rule]", "\"\<Stacked\>\""}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", "Full"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"100", ",", "290"}], "}"}]}], ",", 
         RowBox[{"ChartLabels", "\[Rule]", 
          RowBox[{"Placed", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "leverx"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % L\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], ",", 
              RowBox[{"Framed", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Row", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"NumberForm", "[", 
                    RowBox[{
                    RowBox[{"100", "*", "levery"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"3", ",", "0"}], "}"}]}], "]"}], ",", 
                    "\"\< % V\>\""}], "}"}], "]"}], ",", "15", ",", "Bold"}], 
                 "]"}], ",", 
                RowBox[{"Background", "\[Rule]", "White"}]}], "]"}]}], "}"}], 
            ",", "Center"}], "]"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", "=", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"leverx", "\[Equal]", "1"}], "\[Or]", 
            RowBox[{"levery", "\[Equal]", "1"}]}], ",", 
           RowBox[{"Text", "[", "\"\<\>\"", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Blue", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"x1", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{"Thick", ",", "Dashed", ",", "Green", ",", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "p"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"y1", ",", "p"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
             "}"}]}], "]"}], "\[IndentingNewLine]", "}"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Row", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{"p1", ",", "p3"}], "]"}], ",", 
         RowBox[{"Show", "[", "p2", "]"}]}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"T", ",", "105", ",", "\"\<temperature (\[Degree]C)\>\""}], 
      "}"}], ",", "90", ",", "120", ",", "5", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "750", ",", "\"\<pressure (MPa)\>\""}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"550", ",", "750", ",", "950", ",", "1150"}], "}"}]}], "}"}]}], 
  "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = 750, $CellContext`T$$ = 110, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`T$$], 105, "temperature (\[Degree]C)"}, 90, 120, 
      5}, {{
       Hold[$CellContext`p$$], 750, "pressure (MPa)"}, {550, 750, 950, 
      1150}}}, Typeset`size$$ = {540., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`T$37833$$ = 0, $CellContext`p$37834$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = 750, $CellContext`T$$ = 105}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$37833$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$37834$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`Psat1$, $CellContext`Psat2$, $CellContext`Px$, \
$CellContext`Py$, $CellContext`x1$, $CellContext`y1$, $CellContext`leverx$, \
$CellContext`levery$, $CellContext`p1$, $CellContext`p2$, $CellContext`p3$}, \
$CellContext`Psat1$ = 
         10^(6.90565 - 1211.033/($CellContext`T$$ + 
           220.79)); $CellContext`Psat2$ = 
         10^(6.65464 - 1344.8/($CellContext`T$$ + 219.48)); $CellContext`Px$[
           Pattern[$CellContext`x$, 
            Blank[]]] = $CellContext`x$ $CellContext`Psat1$ + (
            1 - $CellContext`x$) $CellContext`Psat2$; $CellContext`Py$[
           Pattern[$CellContext`x$, 
            
            Blank[]]] = ($CellContext`x$/$CellContext`Psat1$ + (
             1 - $CellContext`x$)/$CellContext`Psat2$)^(-1); $CellContext`x1$ = 
         ReplaceAll[$CellContext`X, 
           
           FindRoot[$CellContext`p$$ == $CellContext`X $CellContext`Psat1$ + (
               1 - $CellContext`X) $CellContext`Psat2$, {$CellContext`X, 
             0}]]; $CellContext`y1$ = ReplaceAll[$CellContext`Y, 
           
           FindRoot[$CellContext`p$$ == 
            1/($CellContext`Y/$CellContext`Psat1$ + (
               1 - $CellContext`Y)/$CellContext`Psat2$), {$CellContext`Y, 
             0}]]; $CellContext`leverx$ = 
         Which[$CellContext`x1$ < 
           0.5 < $CellContext`y1$, ($CellContext`y1$ - 
            0.5)/($CellContext`y1$ - $CellContext`x1$), $CellContext`Px$[
            0.5] <= $CellContext`p$$, 
           1, $CellContext`Py$[0.5] >= $CellContext`p$$, 
           0]; $CellContext`levery$ = 
         1 - $CellContext`leverx$; $CellContext`p1$ = Plot[{
            $CellContext`Px$[$CellContext`x], 
            $CellContext`Py$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
           PlotStyle -> {{Thick, Blue}, {Thick, Green}}, 
           PlotRange -> {{0, 1}, {100, 2500}}, Frame -> True, 
           FrameLabel -> {"mole fraction of component 1", "pressure (mm Hg)"},
            LabelStyle -> {FontSize -> 16, Black}, 
           LabelStyle -> (FontSize -> 16), AxesOrigin -> {0, 100}, 
           ImageSize -> {440, 300}, Epilog -> Inset[
             Graphics[{
               PointSize[0.08], 
               Point[{0, 0}]}], {0.5, $CellContext`p$$}]]; $CellContext`p2$ = 
         BarChart[{$CellContext`leverx$, $CellContext`levery$}, 
           ChartStyle -> {Blue, Green}, ChartLayout -> "Stacked", AspectRatio -> 
           Full, ImageSize -> {100, 290}, ChartLabels -> Placed[{
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`leverx$, {3, 0}], " % L"}], 15, 
                Bold], Background -> White], 
              Framed[
               Style[
                Row[{
                  NumberForm[100 $CellContext`levery$, {3, 0}], " % V"}], 15, 
                Bold], Background -> White]}, Center]]; $CellContext`p3$ = 
         Graphics[{
            If[
             Or[$CellContext`leverx$ == 1, $CellContext`levery$ == 1], 
             Text[""], {{Thick, Dashed, Blue, 
               
               Line[{{$CellContext`x1$, $CellContext`p$$}, {
                 0.5, $CellContext`p$$}}]}, {Thick, Dashed, Green, 
               
               Line[{{0.5, $CellContext`p$$}, {$CellContext`y1$, \
$CellContext`p$$}}]}}]}]; Row[{
           Show[$CellContext`p1$, $CellContext`p3$], 
           Show[$CellContext`p2$]}]], 
      "Specifications" :> {{{$CellContext`T$$, 105, 
          "temperature (\[Degree]C)"}, 90, 120, 5, Appearance -> 
         "Labeled"}, {{$CellContext`p$$, 750, "pressure (MPa)"}, {550, 750, 
         950, 1150}}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{589., {205., 212.}},
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
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 683},
WindowMargins->{{0, Automatic}, {Automatic, 3}},
Visible->True,
DockedCells->Cell[
  BoxData[
   GraphicsBox[
    TagBox[
     RasterBox[CompressedData["
1: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
cpWu0ZWu4X7XML9riMf+35I1j25cn15TMLYmf7I7J8tnmx04VBE40njTFb21
sVxfS8zKt5+fNPaZKDknlwYZ+IThVxpaHREhMrAIESJ+tZDK+BMa+PW3A+/7
Q4FjmUnNmZTSo211B7cXeArnlNiHrct+vDJ/+Ib149Z/OKr00/Ge3CluG9y0
Hl49tqygm+TJnebNme7Lnu7PnubPnuJZPXZL2ezKnLS89//js4/eVJpVvPqZ
0pxxX+7xfrW/CUq4VStdtnj25PFP80eqdcHAEcGTJ0QGFiFCxK8X0IEjI+RS
sNwjD9yYl73UqomwqmMP7qxp3762IHt4bdmI6nVPr//k0fqiid7cSVt9S/e1
2Pa2OPe2ODrcZtuJe4Hbvdmxe4sNv+5vyeFdcDXagcaCA43rDjasO9zoPNaS
21y8yJOd2VCUVe0cXrb2iZqC4T7nuLqyZYdb66zKCFMit3LpszOy/hsV3B4i
O2kjHOnAdPwPWyBBtMyr9NwJk0XITCGuXhMhQsQvDlKiLOjB/7zrmqKcJalq
qVWVeGDnprbN2aXOCZWu0X77kCrb0GpHOrTfvc25x49sr3IXeEsd9dXr63x5
jbXr/OW2Kre91pMPV+MtrPHiml/lc1X5HDVw5fl1Fevw06aq9Z4Se427EH82
ePIDBzYeasn25I6vtA3zOwbVugZX2Yb7HBM3Vq7Yt7O6l1ZrSYxb/lrWnIn/
iiWeBalKQwdcSvkzLOT82rlIfg0zf2oxn5HYSL2E41evRQZ3c8ilER2WCv6k
teCLEcFtJ/KORcXS0BlAEokED3GV8cdkcrhKglN/wivH786Tk4duIPSAFykK
XCMiIigE+ikyMpLF/rOAMoVksCcs5eyGUsiK5RykJzoaVcnFxMRERUWd9hVK
HhVpl4VJoXGCGjxVICQA7E8mAMKQWd39LBBKZue0nRGE5cYJCrBzKZHcsiKi
a0+q5kzTQ4FTHqmldA/4lAbB/dz18oNByiQXLeEeuvOq4pzXe6s5q0pxYGdT
6+bcEmeW35FZZRtZkzscDOy2TdvT7Ghv3dwvta9GoUw2GQ3qpNgIiVmnSjZq
jRqlUa02qrUGDZxap1XqtApcrTprqi5Zr1QqE2KTrWajQadNUhqTEo7t3rS3
0eaxZfnsw8HA1Y7BlTnDPbZJ/oqle1prrQp9H7Vu2Uvj5kz4ZxzHxQUn4zrS
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
4XiB+elyHoE7WY/6ibvdM2bgw3u36tUanUJlVqlBj3UVhcf2bvIVvVvmXFju
eq7MNaPMMbXUPqXENrUkd0ZJ7iw8dOe9uKMhf8+2OnVinEGtt+itRo3JqNbz
JKzscLhHgMEwwcxqcK9RCS5NMmvi6yvdxw9tLbY9X2KfXZo7rzxnXlnujFL7
9FLbs2W2BcVrX6iwvw63v6nsUMsW/itIWm5dHhj4GrmkwwpBX18Kbm7uYhfz
2TGwcDaZtd+wfRbUFoQDWMaQnY3MQt2ms8CHGQTCmFC4dJaioMVv8ExpEC69
ECaYGaUZG4B/Pv/8c+jACIGaj9DYKCQK9lZSUhJ3coMiSgkTXaHuRNN/rLho
PoXIH6PLU4k9xYt3t27d2t7efv7557OfwjbCAP379z906NC+ffuEKSef1KIp
d1Q+BHoClkMyUAKUHTZTySBkezbHSuEwFVFYX7gP24/DnSw/wj9PtYz5hhtu
QKomTpzIdVqg0tkaTBkRzv+GraIkgScFsqysjBOQP4pOpVKh3Bi/TZ8+nTvF
8iGhjY6ed84IJ+gF2FJMJh4UL64QPMRFkYJdKVPwQ+ELTUkUArIA1Z38Q3K4
kwUbMQpblrANsuKiP1n9MkkQdpE/vf3tjBn44O7NYGB+V4VCmapXNfjXf9Za
WbB6fqljTplzots5tiIvPegyPc4JFa6J63MngITbml2Hd9fzjKo3mLRGTRK/
d4NfINExbWcxK038YjaV1qrWmJVJFm2CQRNj1MYbVbG1Feu+PLCh3DULoVXY
Znht0z3OiV5Xljdvmtc1q3jt5HLbTLDxvua8o9s399EokzWcM3fRwLt/L+/Y
hAHujZBwcRIuXsrFn/jKRghnrQOnpqbecccdNMvz4IMPvvbaa/n5+dnZ2fPm
zUtJSWF6An69/fbbMVC64IILcP/0009TRFxozZWwdQwOggsRKTz885//fOml
lyoqKqClPP/881ARqX2RZgiiIAUAf/br12/RokXQZy655BIK/7LLLhsxYgSa
GB6+8cYbCFmoEOJ1tGtIfp8+fShhkOTS0lKM7uEZiRw4cCAk+YknnsjIyEB6
mD4jbP4Ic8iQIdzJujTT3JiQI+8IvLCwEIl56623nnrqKXqd2teTTz6JX1G8
qIUXXnhh1qxZ+FNoHGD6MIKCSoY+4sUXX6ToEAu1tc7bDKHOQaECUZOyDZ/w
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
Tvc9UWdqEpp/T6vddY/uNb3O5mWhKea0Ke85ej6kFXrrxlDQ5U89NCywxPy8
o+wu6530B+EIq4eJlIY2s7MnwkpkdSoRfLeuSzBN+BdlguABfTEh+C1FGZeY
xE2dOmj1h69ee3lyipY7zxzR4i0JfNXucb62fs0k/gD2vJHVjtE1vBtZ7RwO
x6+RcI6sdI0uWzus0plelZcJEvbYR0Dp9bmGVtgH1eaNrnWlVbnGVDr4h/78
4VV5Qyudg8HMjcXjaguz3LYpbtcLgS8btzWV9DYl9NIpNNGxVlWqNsmqV/FH
WVaWFH73WeOpGHj5oiUWZVLW2DveXTEkUkJLOxgDSwUMLD8tCROo9xQqbCeV
Vqem/dNBONolE+JZ8AZNnbPtJ6dty0IPzH9cXByz2bK8d28S6dJGJ8QPHxsK
O0T2LbDuQw4zJZ3FYSzyEHo42GejJ6FSd1qdn6q7J6cjCpV5RlbnwBQs7M4o
j9RYTlvvrGp6MqY7FWcKH7I67ZKEmRLeZXP+JSA2ITLITFER8likPTGBmzll
sGPta3/8fbIxnuurMLbVNASOtzd53/YUpLvtg6ptGbU5WbU5Y3FTbUursqdV
2TIq7WMrbeOrnROr8yb5neMrnZl+Vzpo2WMbVWUbX5k93rs2w5c9xmcfCWW4
yjG02jF4Q94ov2100UejaosWBY7Wb/S5Us3apJgYU2JiqsZgUfbSK1INalOq
xewvXXekrbprBv5u3/KFb1oUqpMZOP7UDHzK8u9h7Zwz+uU6zTX8EAjT3JNg
hUeds5uw/a1ct0witOOxHo0LnQgRlrazK9JTjUo6t8Se3Pc80s4PeyI50pM3
GPY8ip4kMswYfs7Q2Zhzqnpni4p7mM4uDfhkaeneikXxsqi7ZO9flBUCnCSP
RJNMDJIw/3FhRSL3/HOj1nzwwoDf9e2jMvVO1G/zlwS+btjgnltmz/DlzqjM
fo53OXNwD+fNfc6bM9fnmO/OnV26dkpZTpbbke51pvE87Bzvt0/yZk+sWDul
0jbD75zltU2tyJ3gsU3w5mZV582qKXgx8FntrsbyFF2SKkHZy9K7r9GqiohP
0fQ2a3vptQaNMn5DZenXBzbSnrhqe6Y/lz8Xgv8GqG0Obwd+cXGyQpE19i80
EyfjMxQdpN+o4I44IQOfRg1m6krYGPln6T27nIk4C8YIW5p1Wv9CyRd+9jds
GTPXM+OtcGVCWBlSRD+8VIUqkNDKIfTTedroB1pNmdZ32iKVhBZFS042rXfj
n26E5NbDiuM6Gfx/OoRNhIUVRTf1zglsUKdNpzQ0M945XlKhWSzdFKwkZEOW
nnqe/RcAOsGxY4MGJOal+RM/WPrSgCsusSRFJStkTX574Jumbw5XHj+84fih
xm/2NX+5u+Hr/TXfH2r6vG3rN/vbvtjX8u2RxgOt6+p8L7vXpbnzh7lzMz05
E0DCHltW64aVn7dVfHOg5ZvPdnxxsPnwvtqvj9Qf3lsZ+Kpta125VaWwqnQm
hcGqNvMfy1DoTCqrVm3Q6ZVaXXStr+DrA3UVNrD9uBrbRH/uOJ99bHnehHWO
aYHA5mUvL0hWxmRl3rViWWYkRwxMzCs/wcAdGZRLemaIECFChIhzA4nAyUIM
DJcYxS1eNNvxybJbr7/IlMhZlRLHR0tyP3pjzQev2Va/6/z0Y/tHKx2fLs1b
s8L24Rrnx/aCnNzcT5cf/6JxU83S9XkjylyDfY6JVc4pZWtHVjiyDmx1Bo7t
+GjZ0k9WfZyz+lOb7ZMPVy0pW5/76cqlFpWit96siVGalUarxmhV6MHARjUx
cJKQgf05E2pyJ1XlTCAGLnRODQRalr3yXLIqclLGPSvemdDBwCE7fUeupCyn
xMAiCYsQIeKXhc4MHB1cWzspY4j902W3XHehRS01KrhepmiLXp5siE3RKc2q
uBS9PNUQkaxNNCQmmZQqgzJmW9P66orF650jfYUja/KnVton+V0ZvryJbQ2r
92/z9bcazHqDUavSahP02mh1kqy3Wa1NiDUmKVK1RrNKm6w1WHkd2GBUp2hV
Zp1OA5+13qKvD2yssM3yB3VgYuAK10TSgZe/LDKwCBEift3oUg2OkXIGZVRW
2qCcj96+9683gIf/dOMlt91y6c0DLrnpustvvObiPw0479Ybev/pxouvv/z8
ZLVeGxf73efbttZ/UOIcXeEa4ckd616TWWEfXWYfu6v+k8/31WviY7RKlV6t
UqsSeqfoNIqIVKM61aDTxSWZktSGJJVVo7Wo1EEdGAzMf6VIr1bUeUqPt2/y
5oKBM2tsE6pyMn2ODN4ObJ8VCGxd/vI8kYFFiBDxq4VUaC1lPBwXLSEevqC3
YWLG0JxPlq1e+eaq5S8ve3vee8sXZX+0DLS89sOFSxeP//j9mcuWzErRmMCc
h3bWbXC/XZA93OMcXu2asKFgqj9vnDdvyu7G3KN76q1atVlnMetMeq1OnRSv
VyX2NppUUXH9TL1TNBbowJq4eItKaVJqTCp+LYRRYzaoNHUV5cfbG722Gf7c
9Bp7elXumBMzcYGdIQa+S2RgESJE/Aoh7ZKEoyN4NouRh/ThCE6TIIuP5rRq
eVICp4iXxcq5+EjOqucyRv9p2RuT9PGq3tqUPU2VDb7llYUTfXkjQZjetWkV
tgy3Y2pbo23flmqouOp4jU5p0Kt0vcxWXUKiLk7Z39xHG6O2qkzJWlMvg9Gi
TjQrFSaV1aBIManNJqWq3l3+7f5NXttUn51fiuy3jeSXHHesB97VHQOzSbmO
fEnFmTgRIkT8wgCakp8gYaKv4OfVIuRclJz/iGekjGe2aPrkhIR3cZHSGCl/
9BgoeviQa5a/NTZVY+in79u+pWZj+dteV1ZZ9qAa5xhfziivY7zbPmNfS+HB
HfXJaj0Y2KS1GDWmhKi4XgZrb12qKUHfS51qiNdp45P0SfEWTYxZFWNVGUwK
sLHOrEza5C7+bn+d1z7R5xjK7wGxD/c5R4GBS3LmhhhY3hUDy8NO4xEZWIQI
Eb8s0EJZIQOHOCo6KkIS/IInOC1KHvqcnJz/4g+9ExE8+CZayo0afu37y8aa
k5TWBMPRtvpNFe/48iYXr35qY2E69NVK1/iS7Ml7m1xH2urNikR9ojLFaDao
VP2sZqtapYmO76ezpij0VqXaqklK0cdbtZxFLU1WKy0KVbI6KVkZ01iRF2j3
ex1j+YPiXcPAw94OBp4f+K5txUthDCwN9SLyjgVpIgOLECHil4kTDCw/sWvs
JNbq5CT8TJ2ci+RNExL+e0BDB1214p00U1LCeYaUvS2+6pI3a9bPWr/6mfri
jIrcQe6cEZX5U/c1r/nqQM32jeX+Mledt6C+qnCD11nvydtUsW6Tuwiu3lNQ
73XU+1Zv8K7a5F/d4Cuor1hXX+HYWp1/eIs7cKDc50r3OJ6qKhhWvPpJnyvN
lz+13LYo8O3ud1+c20cfNW7U/1u1YjIYWBGXFEy7tOOY9k55ESFChIhfEqQ9
Z+Dgo0iJJEbKxUZy8sjgxzXSR9363jvjUrTx2piYbz/butH9blH2pApnRk1h
GlTWqvyRIM8mz8v7WnJ2t+Ttai7YtaVgV7Oztdm+u8m5p6FgT0Ph7ka4vNZm
W2vL6tbNn+zdnLO3ed3uhqK2Tc62jbb9DfZDmz8pWTt4U9kY/hQgx2iPa1y5
bVr+J3MD3+1764XZvbQRE9PvXPbW2Hjedi2VSaTBbiLixKYMQV5EiBAh4pcE
aScXDiEDg34lkjgJFxcjj6UPUmSO+vs7b2Tqkrj+FvX2+pIjuyvKHHP9hTNL
1g7zOAZDca2wD3I70t15U0tds9c5ZhQ5p5W4cD+5zDHVbZ/lts0ps8PNKnVO
LXFNLs2bVuqYVW5/3u1Y6HHMq7DNca+dXbp6QnVhRuEnj9WWZBXn8EEVrp22
tXpt4Nv2pYue7W+OmZD2/1a9N5GsELzxJCJKZGARIkT8GnBGDEyj+1iOi4mU
REcFDRGDn/jLpx/MTzHK9Aru3wNv++ZQ44FtBetzZlcXzfQ6R/nzBtUVDa0p
zIDiWuoct96RWewa7SlKL3eNdDtHe+yZHtsEt31CuWNcuXNMqWtMqTOzxD6h
NGeqO3e63zG52jW1yjkDN2U5Q2tLxnryJlXkzSpzPruldlXgu7bCT97pr1eo
orgXnn307SVjwMDqRFW4FUJkYBEiRPw60ZUVgrcby2UxMt4azO+bu+X6S959
87kZk55MMXLKWO72AZcGvt/XvrVw3dqZHufEitxnKu1PVeQMK88d6c0b6y3M
KM8b4s77rzfvKZ9rcKVjRKU9zedI8zrHeF0jKuDy0sHVXnuW1zbObxsNV22f
wH9LzpVW+OnQktwZjg+mtzauDXy/ze1a1VeXYE2MShv0oGPN7IH3Xkg6sEwi
l3A0TxghMrAIESJ+veiCgWW8oVgmi5BBFZbLo4LHkP3ttmvtOS/OnfO0US0z
q+Ju/8OVgWM7Du1Y53XNrnFm1NlH1roya/MnVrrGVthHVDif8uQ94c9/str1
dI1jeLUjrdqR7nemVbpG+vKGg4or8zJq8sbWuvB8sN/2jD9ntM+WWbNufE3x
TG/+y3ubCwJfbna73k9VxfTVKh69+6+r3pr3xCNXJMZxCZFcRMe2C/kJBhZn
4kSIEPHrQRfrHwT0JY3qOO+R3zcXEREvAwnzz/56R/9ly7IWzp+aotOblaqb
r/7d8UON+1ty6l0z/Z+OqVwzvtYxrXxtZumaEZWu4TWFQ6sc/62yD6rJHV2T
k16VM86fm+mz8d/XqMgd6bGPqLKPAjnXOp+odTxZbR9VZRu77uNhXtesqnVL
A1/ueuKBP/XRx1kS45556J/Z774zY9zTihh+yVy0hIuW8V+ol8uiRQYWIULE
rxHdMzCd/xgZJYUuLOOtENKEyAT+80Ay7uabU95+Y8H8mdONSQpjYvTlfdXf
7q/8Yot9g2uh+9Nn/fYXvPb5vrznqgpmlmeP9dnH+2wTK3OnV+bM8uXM8ebO
qbDNqLBP9+ZN8zimeGxZnlz44Y9k9zsmVzpm1hTNr694K/B9259v+D9jAtdH
l/DovX/LeW/F4w/cy7OtlIuP5hVfGbqDiGhxNZoIESJ+G5DSLjR5BE/CN91w
mSvnvRdmjzUlcX203CUpEV/s3vDF3obWBveeFt+OTaXbNhYd2V2zrT5/d3Px
7ubS3U3lQVfR2uRubSprbSppbV7X2lII19ac39bs2tPsamvGfWH7jvLvjjb9
9eZLk7WR5yUnPXjnTbaPlj71r/vldJpQcKfeyRwrHgEhQoSI/zXQzjKJcO1E
SEWWyfjjI666zLps8cxX5o05z8idb4m88sLUOl/J5+27tzZUf314/76dzS11
/kN7th1s3XagbQuu7a2bD+zaStcDuzYLXDPvWpuCrmHPtrr7/vYHfSKXoosY
PfjBvOyl/xp4a3wk90v63IgIESJE/LQI0W0XDCyXc7HR/DkSt95wwZpVi5a9
Nvk8S7RJIe9lSDIlxSRr4y3KOENS5HkWXYouAfdmVQxdzYpYkzIaV7Mi3qJQ
WRSaoMONwqJMgh+LKiZFGwf6tailWWmPFtre/veDA2JlHH2WSIQIESJ+I6AD
IjozcESkJCKSNwVERfBL1EDCuR+/9u6S2eenJuiTOLOau7B3kkHBaeK5ftZY
bQKXrJMxZ9VKO5xGlqqJTNVEBx1uIpO1cHI4o4IzqbjXXpjgXLPkkfsHxMuD
X4OTi6ZdESJE/IYQYmACMbBUOF0HEo6J4teEXXmpZe1HL61zvupe91qhbYFr
7dz1zkVlBa8Uu150rH4W90JX5FjIO+f89a4Z6/OmrndNL8qbUeSaU+R6rsi5
oMjxYkXxsgLb4pXLnrv7L9fwx7JxnCKap3qRgUWIEPHbwSkYuIOEkxSxuJXJ
OLmUX5lwYT/lE4/c9O9/XPX0ozcMfvLmJx6+9l8PXsnuH3/4WuH1Pw9d85+H
f/efRy76z7/6P/HIBfzNw//32MO/e+zhqx976Pf/euD3D91/483XXxgX1LET
IvmrXGRgESJE/JZwKgaWRkYJNWGQMJRh2hehjpXFBm9iwJxB6wF/rGVXV+Zi
QzdRQRcZ3P4cGQwwuMisIxlREZEiA4sQIeK3A0mIgUPHL4RIWB6BqyxCLo+U
kVlYHtwPgUskv2VDFieNws3pXEQUb8OIIxfJxUTytl64KBkXFRsRj4BjouLp
JLfIiFhxvZkIESJ+Uzh5g4b0JBKWhNuEw/yf1rGPhMoFim5o8Zvwl4gO13G2
vAgRIkT8JnBKBj4VCZ8417JH1/D3OgclldLpQEEX+iCGCBEiRPxG0fl8y5OX
Ckt7fO28c5iFIA3pxDKBrizr5F+ECBEifls4NQOzrxX30HUw8EkbPcJDCLNT
iAwsQoSI3xDCz1voytLQxY65njru5E8mCeNgoTJNWLQBixAh4reFUzKwwAnP
jjgTO3BXH+w46ffOUYoQIULEbwjh3zNiyxg6uRM83MPrqRZISOjjF7yTB10E
OUnHeewiRIgQ8RtB1wx8Mlt2cKbkjF33DMy4NyrkIkQGFiFChAhCF3aFHy/M
Lkn7R4pEhAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgR
IkSIECFChAgRIkSIECFChAgRIkSIECFChIjfEP4/UbSWLg==
      "], {{0, 107}, {470, 0}}, {0, 255}, ColorFunction -> RGBColor], 
     BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True], 
     Selectable -> False], BaseStyle -> "ImageGraphics", 
    ImageSizeRaw -> {470, 107}, PlotRange -> {{0, 470}, {0, 107}}]], 
  "DockedCell", Background -> GrayLevel[0], ImageMargins -> 0, 
  CellMargins -> {{0, 0}, {0, 0}}, CellFrameMargins -> {{0, 0}, {0, 0}}],
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (September 9, 2014)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "NB.nb"]], 
   Cell[
    StyleData["EquationNumbered"], FontFamily -> "Arial", FontSize -> 16, 
    FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Subsection"], TextJustification -> 0.25, FontFamily -> "Arial",
     FontSize -> 17, FontWeight -> "Bold", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item1Exercise"], FontFamily -> "Arial", FontSize -> 16, 
    FontWeight -> "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Solution"], FontFamily -> "Arial", FontSize -> 14, FontWeight -> 
    "Plain", FontSlant -> "Plain", 
    FontVariations -> {"StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Subsubsubsection"], TextJustification -> 0.], 
   Cell[
    StyleData["Subsubsection"], CellDingbat -> "\[LightBulb]", TextAlignment -> 
    Left], 
   Cell[
    StyleData["Section"], CellFrameColor -> 
    RGBColor[0.811765, 0.721569, 0.486275]], 
   Cell[
    StyleData["FigureCaption"], CellDingbat -> "\[FivePointedStar]", 
    FontFamily -> "Arial", FontSize -> 12, FontWeight -> "Plain", FontSlant -> 
    "Plain", FontVariations -> {
     "StrikeThrough" -> False, "Underline" -> False}], 
   Cell[
    StyleData["Item2Exercise"], CellDingbat -> None, FontFamily -> 
    "Arial Narrow", FontSize -> 16, FontWeight -> "Plain", FontSlant -> 
    "Plain", FontVariations -> {
     "StrikeThrough" -> False, "Underline" -> False}]}, Visible -> False, 
  FrontEndVersion -> 
  "10.0 for Microsoft Windows (64-bit) (September 9, 2014)", StyleDefinitions -> 
  "Default.nb"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "Lever Rule"->{
  Cell[21928, 629, 54, 1, 59, "Section",
   CellTags->"Lever Rule"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"Lever Rule", 171289, 4190}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 96, 1, 81, "Title"],
Cell[CellGroupData[{
Cell[1607, 40, 105, 1, 59, "Section"],
Cell[1715, 43, 341, 9, 26, "Text"],
Cell[2059, 54, 215, 4, 26, "Text"],
Cell[2277, 60, 358, 12, 38, "Equation"],
Cell[2638, 74, 356, 12, 70, "Equation"],
Cell[CellGroupData[{
Cell[3019, 90, 96, 1, 37, "Subsection"],
Cell[3118, 93, 79, 0, 26, "Text"],
Cell[3200, 95, 290, 10, 38, "EquationNumbered"],
Cell[3493, 107, 162, 6, 26, "Text"],
Cell[3658, 115, 345, 12, 38, "EquationNumbered"],
Cell[4006, 129, 300, 11, 31, "Text"],
Cell[4309, 142, 254, 8, 54, "EquationNumbered"],
Cell[4566, 152, 139, 3, 26, "Text"],
Cell[4708, 157, 843, 31, 63, "Text"],
Cell[5554, 190, 395, 14, 58, "EquationNumbered"],
Cell[5952, 206, 87, 2, 26, "Text"],
Cell[6042, 210, 287, 10, 26, "Text"],
Cell[6332, 222, 390, 14, 61, "EquationNumbered"],
Cell[6725, 238, 189, 4, 26, "Text"],
Cell[6917, 244, 343, 12, 70, "EquationNumbered"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[7309, 262, 42, 0, 59, "Section"],
Cell[7354, 264, 538, 11, 68, "Text"],
Cell[CellGroupData[{
Cell[7917, 279, 5982, 159, 377, "Input"],
Cell[13902, 440, 7980, 183, 349, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[21928, 629, 54, 1, 59, "Section",
 CellTags->"Lever Rule"],
Cell[21985, 632, 459, 10, 68, "Text"],
Cell[22447, 644, 410, 13, 54, "Equation"],
Cell[22860, 659, 409, 13, 54, "Equation"],
Cell[23272, 674, 111, 2, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[23408, 680, 17127, 457, 878, "Input"],
Cell[40538, 1139, 13197, 276, 349, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[53769, 1420, 37, 0, 23, "Item1Exercise"],
Cell[53809, 1422, 657, 21, 44, "Item2Exercise"]
}, Open  ]],
Cell[CellGroupData[{
Cell[54503, 1448, 104, 2, 25, "Subsubsection"],
Cell[CellGroupData[{
Cell[54632, 1454, 1548, 57, 171, "Item2Exercise"],
Cell[56183, 1513, 47, 1, 23, "Item2Exercise"]
}, Open  ]],
Cell[56245, 1517, 145, 3, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[56415, 1524, 14767, 384, 922, "Input"],
Cell[71185, 1910, 7350, 152, 432, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[78593, 2069, 38, 0, 59, "Section"],
Cell[78634, 2071, 333, 9, 28, "Text"],
Cell[CellGroupData[{
Cell[78992, 2084, 69, 0, 37, "Subsection"],
Cell[79064, 2086, 158, 3, 26, "Text"],
Cell[79225, 2091, 16, 0, 26, "Text"],
Cell[79244, 2093, 70, 0, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[79339, 2097, 8980, 230, 714, "Input"],
Cell[88322, 2329, 5004, 99, 400, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[93372, 2434, 82, 1, 37, "Subsection"],
Cell[CellGroupData[{
Cell[93479, 2439, 37, 0, 23, "Item1Exercise"],
Cell[CellGroupData[{
Cell[93541, 2443, 540, 15, 44, "Item2Exercise"],
Cell[94084, 2460, 792, 35, 86, "Item2Exercise"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[94925, 2501, 3754, 104, 192, "Input"],
Cell[98682, 2607, 1515, 41, 291, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[100231, 2653, 63, 1, 25, "Subsubsection"],
Cell[CellGroupData[{
Cell[100319, 2658, 719, 24, 23, "Item2Exercise"],
Cell[101041, 2684, 230, 5, 23, "Item2Exercise"]
}, Open  ]],
Cell[101286, 2692, 344, 12, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[101655, 2708, 10948, 283, 874, "Input"],
Cell[112606, 2993, 5226, 102, 432, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[117902, 3103, 41, 0, 59, "Section"],
Cell[117946, 3105, 226, 4, 27, "Text"],
Cell[118175, 3111, 145, 3, 27, "Text"],
Cell[118323, 3116, 107, 1, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[118455, 3121, 3206, 89, 333, "Input"],
Cell[121664, 3212, 2730, 53, 410, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[124428, 3270, 37, 0, 23, "Item1Exercise"],
Cell[124468, 3272, 212, 5, 23, "Item2Exercise"]
}, Open  ]],
Cell[CellGroupData[{
Cell[124717, 3282, 33, 0, 25, "Subsubsection"],
Cell[CellGroupData[{
Cell[124775, 3286, 123, 3, 23, "Item2Exercise"],
Cell[124901, 3291, 25, 0, 23, "Item2Exercise"]
}, Open  ]],
Cell[124941, 3294, 149, 3, 23, "FigureCaption"],
Cell[CellGroupData[{
Cell[125115, 3301, 9324, 240, 754, "Input"],
Cell[134442, 3543, 5342, 105, 434, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature SuDoaVwv6yscVD1wHT0CX3TQ *)
