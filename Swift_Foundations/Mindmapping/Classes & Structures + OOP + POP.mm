<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1570115488617" ID="ID_499666182" MODIFIED="1570117973330" TEXT="Classes and Structures">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      as .md files in iOS git (check if it is still private)
    </p>
  </body>
</html></richcontent>
<node CREATED="1570115498314" ID="ID_819735893" MODIFIED="1570115499836" POSITION="right" TEXT="Init">
<node CREATED="1570115570247" ID="ID_421948381" MODIFIED="1570115573266" TEXT="Types of init">
<node CREATED="1570115500374" ID="ID_49395851" MODIFIED="1570115503842" TEXT="Convenience"/>
<node CREATED="1570115504124" ID="ID_514684749" MODIFIED="1570115508102" TEXT="Lazy"/>
<node CREATED="1570115508980" ID="ID_93326495" MODIFIED="1570115517478" TEXT="Failable"/>
</node>
<node CREATED="1570115574943" ID="ID_1636865153" MODIFIED="1570115577510" TEXT=".self"/>
</node>
<node CREATED="1570115535731" ID="ID_462222633" MODIFIED="1570115538419" POSITION="left" TEXT="Properties">
<node CREATED="1570295298478" ID="ID_1534922665" MODIFIED="1570295395013" TEXT="Type Properties">
<node CREATED="1570115806224" ID="ID_788474451" MODIFIED="1570115810826" TEXT="Static properties"/>
</node>
<node CREATED="1570295309417" ID="ID_819024360" MODIFIED="1570295310499" TEXT="??">
<node CREATED="1570115811356" ID="ID_130588491" MODIFIED="1570115816490" TEXT="Value properties"/>
</node>
<node CREATED="1570296267116" ID="ID_1306174932" MODIFIED="1570296271139" TEXT="Property observers"/>
<node CREATED="1570296273492" ID="ID_1942676784" MODIFIED="1570459518450" TEXT="Subclass &amp;&amp; superclass">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; text-decoration: none; font-weight: normal; text-indent: 0px; word-spacing: 0px; text-align: start; font-style: normal; font-size: 16.80000114440918px; color: rgb(37, 37, 37); white-space: normal; text-transform: none; display: inline !important; letter-spacing: normal; background-color: rgb(255, 255, 255); font-family: sans-serif"><font size="16.80000114440918px" color="rgb(37, 37, 37)" face="sans-serif">The class at the top of the hierarchy is known as the base class or root class and the derived classes as subclasses or child classes. Any number of subclasses may be derived from a class. The class from which a subclass is derived is called the parent class or super class. </font></span>
    </p>
    <p>
      
    </p>
    <p>
      <span style="float: none; text-decoration: none; font-weight: normal; word-spacing: 0px; text-indent: 0px; text-align: start; font-style: normal; font-size: 16.80000114440918px; color: rgb(37, 37, 37); white-space: normal; text-transform: none; display: inline !important; letter-spacing: normal; background-color: rgb(255, 255, 255); font-family: sans-serif"><font color="rgb(37, 37, 37)" size="16.80000114440918px" face="sans-serif">https://www.techotopia.com/index.php/An_Introduction_to_Swift_Subclassing_and_Extension</font></span>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1570295318057" ID="ID_1314883575" MODIFIED="1570459283743" TEXT="Stored">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">Stored prop: store some value </font>
    </p>
    <p>
      <font size="2">SP ex.: var a = 1</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1570295321972" ID="ID_441737988" MODIFIED="1570479827684" TEXT="Computed">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Computed prop: calculate a value
    </p>
    <p>
      CP ex: var rangeOfThreeItems = FixedLengthRange*(firstValue**: 0, length***: 3)
    </p>
    <p>
      
    </p>
    <p>
      struct FixedLengthRange* {
    </p>
    <p>
      &#160;&#160;&#160;&#160;var firstValue**: Int
    </p>
    <p>
      &#160;&#160;&#160;&#160;let length***: Int
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <div title="Page 6" class="page">
      <div style="background-color: rgb(100.000000%, 100.000000%, 100.000000%)" class="section">
        <div class="layoutArea">
          <div class="column">
            <p>
              &#1042;&#1099;&#1095;&#1080;&#1089;&#1083;&#1103;&#1077;&#1084;&#1099;&#1077; &#1089;&#1074;&#1086;&#1080;&#774;&#1089;&#1090;&#1074;&#1072; &#1088;&#1077;&#1072;&#1083;&#1080;&#1079;&#1091;&#1102;&#1090;&#1089;&#1103; &#1087;&#1091;&#1090;&#1077;&#1084; &#1089;&#1086;&#1079;&#1076;&#1072;&#1085;&#1080;&#1103; &#1084;&#1077;&#1090;&#1086;&#1076;&#1086;&#1074; &#1087;&#1086;&#1083;&#1091;&#1095;&#1077;&#1085;&#1080;&#1103; &#1080; &#1085;&#1077;&#1086;&#1073;&#1103;&#1079;&#1072;&#1090;&#1077;&#1083;&#1100;&#1085;&#1099;&#1093; &#1089;&#1086;&#1086;&#1090;&#1074;&#1077;&#1090;&#1089;&#1090;&#1074;&#1091;&#1102;&#1097;&#1080;&#1093; &#1084;&#1077;&#1090;&#1086;&#1076;&#1086;&#1074; &#1091;&#1089;&#1090;&#1072;&#1085;&#1086;&#1074;&#1082;&#1080;, &#1089;&#1086;&#1076;&#1077;&#1088;&#1078;&#1072;&#1097;&#1080;&#1093; &#1082;&#1086;&#1076; &#1076;&#1083;&#1103; &#1074;&#1099;&#1087;&#1086;&#1083;&#1085;&#1077;&#1085;&#1080;&#1103; &#1074;&#1099;&#1095;&#1080;&#1089;&#1083;&#1077;&#1085;&#1080;&#1080;&#774;.
            </p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1570115543769" ID="ID_1388704860" MODIFIED="1570459283695" TEXT="Getter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">All clarified here - https://repl.it/@DmitryAksyonov/get-set</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1570115545556" ID="ID_1618241234" MODIFIED="1570459283647" TEXT="Setter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">All clarified here - https://repl.it/@DmitryAksyonov/get-set</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1570397363602" ID="ID_122198072" MODIFIED="1570459508801" TEXT="private(set)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">All clarified here - https://repl.it/@DmitryAksyonov/get-set -&gt; private_getters_and_setters.swift</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1570459318941" ID="ID_224260503" MODIFIED="1570463689214" TEXT="Property override in subclass">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This is simple - when the property is assigned to a new value in time in which the child class was created.
    </p>
    <p>
      Overriding, in&#160;OOP, is a language feature that allows a&#160;subclass&#160;or child class to provide a specific implementation of a&#160;(variable?) and method&#160;that is already provided by one of its&#160;superclasses&#160;or parent classes.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1570115983762" ID="ID_225595637" MODIFIED="1570115991414" POSITION="right" TEXT="Static Methods"/>
<node CREATED="1570116829990" ID="ID_1005248249" MODIFIED="1570345372641" POSITION="left" TEXT="Types">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">all as per SG</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1570116834111" ID="ID_1766734973" MODIFIED="1570345346618" TEXT="Reference">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">Reference type's values are referenced whenever a new variable or constant is assigned to the type. Consider a&#160;&#160;instance of a class with a var a = 1. Assigning this&#160;&#160;instance to a new variable and trying to modify the value in this very variable will affect the value of the class instance, the var is referencing to. N/A for Classes themselves, ofc, they're just blueprints.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1570116836651" ID="ID_5015990" MODIFIED="1570345340061" TEXT="Value">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">Value type's values are copied when it's assigned to each new variable or constant, or passed to a function.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1570115597264" ID="ID_1077559474" MODIFIED="1570345365325" POSITION="left" TEXT="Ternary operators">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">[o1&#160;? o2&#160;: o3] OR [o1 -&gt; o2, o3] OR [if o1 then o2 else o3] &#8212; &#1074;&#1086; &#1084;&#1085;&#1086;&#1075;&#1080;&#1093;&#160;&#160;&#1103;&#1079;&#1099;&#1082;&#1072;&#1093; &#1087;&#1088;&#1086;&#1075;&#1088;&#1072;&#1084;&#1084;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1080;&#1103;&#160;&#1086;&#1087;&#1077;&#1088;&#1072;&#1094;&#1080;&#1103;, &#1074;&#1086;&#1079;&#1074;&#1088;&#1072;&#1097;&#1072;&#1102;&#1097;&#1072;&#1103; &#1089;&#1074;&#1086;&#1081; &#1074;&#1090;&#1086;&#1088;&#1086;&#1081; &#1080;&#1083;&#1080; &#1090;&#1088;&#1077;&#1090;&#1080;&#1081;&#160;&#160;&#1086;&#1087;&#1077;&#1088;&#1072;&#1085;&#1076;&#160;&#1074; &#1079;&#1072;&#1074;&#1080;&#1089;&#1080;&#1084;&#1086;&#1089;&#1090;&#1080; &#1086;&#1090; &#1079;&#1085;&#1072;&#1095;&#1077;&#1085;&#1080;&#1103;&#160;&#1083;&#1086;&#1075;&#1080;&#1095;&#1077;&#1089;&#1082;&#1086;&#1075;&#1086; &#1074;&#1099;&#1088;&#1072;&#1078;&#1077;&#1085;&#1080;&#1103;, &#1079;&#1072;&#1076;&#1072;&#1085;&#1085;&#1086;&#1075;&#1086; &#1087;&#1077;&#1088;&#1074;&#1099;&#1084; &#1086;&#1087;&#1077;&#1088;&#1072;&#1085;&#1076;&#1086;&#1084;. </font>
    </p>
    <p>
      
    </p>
    <pre style="white-space: pre-wrap; text-transform: none; background-color: rgb(248, 249, 250); font-style: normal; font-weight: normal; font-family: monospace, monospace; color: rgb(0, 0, 0); font-size: 14px; letter-spacing: normal; line-height: 1.3; text-decoration: none; padding-left: 0; padding-top: 0; padding-right: 0; text-indent: 0px; text-align: start; word-spacing: 0px; padding-bottom: 0"><font size="3">(cond ? a : b) = 1; - if cond is true then a = 1 else b = 1</font></pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="3">https://ru.wikipedia.org/wiki/&#1058;&#1077;&#1088;&#1085;&#1072;&#1088;&#1085;&#1072;&#1103;_&#1091;&#1089;&#1083;&#1086;&#1074;&#1085;&#1072;&#1103;_&#1086;&#1087;&#1077;&#1088;&#1072;&#1094;&#1080;&#1103;</font>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="messagebox_warning"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1570223366989" ID="ID_1714590419" MODIFIED="1570345353488" TEXT="Method signature">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">In programming, especially in OOP, method is introduced by its unique&#160; <b>method signature </b>that contains its name, number, types and order of&#160;&#160;the parameters the method gets.</font>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1570234754117" ID="ID_1651977735" MODIFIED="1570345350404" TEXT="Regular expressions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">- &#1089;&#1091;&#1097;&#1077;&#1089;&#1090;&#1074;&#1091;&#1102;&#1090; &#1076;&#1083;&#1103; &#1084;&#1072;&#1085;&#1080;&#1087;&#1091;&#1083;&#1103;&#1094;&#1080;&#1081; &#1089; &#1087;&#1086;&#1076;&#1089;&#1090;&#1088;&#1086;&#1082;&#1072;&#1084;&#1080; &#1074;&#1085;&#1091;&#1090;&#1088;&#1080; &#1090;&#1077;&#1082;&#1089;&#1090;&#1072;: &#1087;&#1086;&#1080;&#1089;&#1082; &#1080; &#1079;&#1072;&#1084;&#1077;&#1085;&#1072;, &#1082; &#1087;&#1088;&#1080;&#1084;&#1077;&#1088;&#1091;. </font>
    </p>
    <p>
      <font size="3">- &#1089;&#1086;&#1089;&#1090;&#1072;&#1074;&#1085;&#1099;&#1077; &#1095;&#1072;&#1089;&#1090;&#1080;: 1) &#1089;&#1090;&#1088;&#1086;&#1082;&#1072;-&#1086;&#1073;&#1088;&#1072;&#1079;&#1077;&#1094; (&#171;&#1096;&#1072;&#1073;&#1083;&#1086;&#1085;&#187;; &#171;&#1084;&#1072;&#1089;&#1082;&#1072;&#187; - &#1079;&#1072;&#1076;&#1072;&#1105;&#1090; &#1087;&#1088;&#1072;&#1074;&#1080;&#1083;&#1072; &#1087;&#1086;&#1080;&#1089;&#1082;&#1072;); 2) wildcard characters - &#1089;&#1080;&#1084;&#1074;&#1086;&#1083;&#1099; &#1079;&#1072;&#1084;&#1077;&#1085;&#1099;; 3) &#1089;&#1090;&#1088;&#1086;&#1082;&#1072; &#1079;&#1072;&#1084;&#1077;&#1085;&#1099; (&#1087;&#1088;&#1080; &#1088;&#1072;&#1073;&#1086;&#1090;&#1077; &#1089; &#1090;&#1077;&#1082;&#1089;&#1090;&#1086;&#1084;) - &#1090;&#1086;, &#1095;&#1090;&#1086; &#1073;&#1091;&#1076;&#1077;&#1090; &#1084;&#1077;&#1085;&#1103;&#1090;&#1100;&#1089;&#1103;. </font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="3">https://ru.m.wikipedia.org/wiki/&#1056;&#1077;&#1075;&#1091;&#1083;&#1103;&#1088;&#1085;&#1099;&#1077;_&#1074;&#1099;&#1088;&#1072;&#1078;&#1077;&#1085;&#1080;&#1103;#&#1056;&#1072;&#1079;&#1085;&#1086;&#1074;&#1080;&#1076;&#1085;&#1086;&#1089;&#1090;&#1080;_&#1088;&#1077;&#1075;&#1091;&#1083;&#1103;&#1088;&#1085;&#1099;&#1093;_&#1074;&#1099;&#1088;&#1072;&#1078;&#1077;&#1085;&#1080;&#1081;</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1570263460462" ID="ID_425352737" MODIFIED="1570345359488" TEXT="Substring">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-right: 0px; white-space: normal; margin-left: 0px; text-transform: none; font-style: normal; margin-bottom: 0; font-weight: normal; font-family: sans-serif; color: rgb(34, 34, 34); font-size: 14px; letter-spacing: normal; text-decoration: none; text-align: start; text-indent: 0px; margin-top: 0; word-spacing: 0px">
      <font size="3">Example: The string&#160;ana&#160;is equal to substrings (and subsequences) of&#160;banana&#160;at two different offsets (&#1089;&#1084;&#1077;&#1097;&#1077;&#1085;&#1080;&#1077;): </font>
    </p>
    <pre style="white-space: pre-wrap; text-transform: none; background-color: rgb(248, 249, 250); font-style: normal; font-weight: normal; font-family: monospace, monospace; color: rgb(0, 0, 0); font-size: 14px; letter-spacing: normal; line-height: 1.3; text-decoration: none; padding-top: 0; padding-left: 0; text-align: start; padding-right: 0; text-indent: 0px; word-spacing: 0px; padding-bottom: 0"><font size="3">banana
 |||||
 ana||
   |||
   ana</font></pre>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1570118075195" ID="ID_185311084" MODIFIED="1570118077882" POSITION="right" TEXT="Enums">
<node CREATED="1570118078479" ID="ID_1197119700" MODIFIED="1570118123133" TEXT="&quot;.&quot; before case name in functions inside enums">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      enum A {
    </p>
    <p>
      &#160;&#160;&#160;&#160;case a, b
    </p>
    <p>
      &#160;&#160;&#160;&#160;func test() -&gt; String {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return self == .a ? &quot;This is a.&quot; : &quot;This is b.&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1570172441191" ID="ID_153760441" LINK="https://habr.com/ru/post/358804/" MODIFIED="1570213908649" POSITION="right" TEXT="Protocol-oriented programming">
<node CREATED="1570172450138" ID="ID_407141570" MODIFIED="1570172452303" TEXT="Protocol">
<node CREATED="1570181084245" ID="ID_1320204007" MODIFIED="1570181089284" TEXT="Trait"/>
<node CREATED="1570181090082" ID="ID_853641538" MODIFIED="1570181102567" TEXT="Interface"/>
<node CREATED="1570181102752" ID="ID_1380622326" MODIFIED="1570181107408" TEXT="Concept">
<node CREATED="1570181297549" ID="ID_1810367969" MODIFIED="1570181433692" TEXT="Generic programming"/>
</node>
<node CREATED="1570181107612" ID="ID_1942564159" MODIFIED="1570181279044" TEXT="Contract">
<node CREATED="1570181457188" ID="ID_1542605752" MODIFIED="1570181469489" TEXT="Contract programming"/>
</node>
<node CREATED="1570181279272" ID="ID_754130239" MODIFIED="1570181294267" TEXT="Type Erasure"/>
</node>
<node CREATED="1570180782264" ID="ID_1698607346" MODIFIED="1570180908035" TEXT="Constraint"/>
<node CREATED="1570180908930" ID="ID_387844649" MODIFIED="1570180927755" TEXT="Extension"/>
</node>
</node>
</map>
