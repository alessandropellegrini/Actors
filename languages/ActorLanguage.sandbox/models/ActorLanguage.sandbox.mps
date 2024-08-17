<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6336567d-2a2a-4b69-82fa-51847baede59(ActorLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage" version="0" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  </imports>
  <registry>
    <language id="10eda999-5898-4cde-9416-196c5eca1268" name="ActorLanguage">
      <concept id="1411682935492097494" name="ActorLanguage.structure.ReceptionistPolicy" flags="ng" index="2iUZJK">
        <property id="1411682935492097495" name="policy" index="2iUZJL" />
      </concept>
      <concept id="1411682935490806610" name="ActorLanguage.structure.GetActorsFromReceptionist" flags="ng" index="2iZ$PO">
        <child id="1411682935492097502" name="policy" index="2iUZJS" />
        <child id="13109696840883591" name="actorReferences" index="BvGUO" />
      </concept>
      <concept id="3715044905897659561" name="ActorLanguage.structure.SendMessageToActors" flags="ng" index="2nav41">
        <property id="3715044905898602550" name="priority" index="2neSQu" />
        <reference id="3715044905897659564" name="referenceList" index="2nav44" />
        <child id="3715044905900233180" name="payload" index="2ngaLO" />
      </concept>
      <concept id="7694881003795431127" name="ActorLanguage.structure.MessageQueue" flags="ng" index="2uUgHn" />
      <concept id="4619656042768923827" name="ActorLanguage.structure.ActorReferenceList" flags="ng" index="2_DyK2" />
      <concept id="4619656042771117415" name="ActorLanguage.structure.ForEachActorReferenceStatement" flags="ng" index="2_LUnm">
        <reference id="4619656042771117416" name="actorReferenceList" index="2_LUnp" />
        <child id="4619656042772348181" name="actorReference" index="2_WIQ$" />
      </concept>
      <concept id="13109696843924945" name="ActorLanguage.structure.ActorReference" flags="ng" index="Bk5ry" />
      <concept id="7724742800286591751" name="ActorLanguage.structure.ActorBoxesList" flags="ng" index="Fpmux">
        <child id="7724742800286591752" name="actorBoxes" index="FpmuI" />
      </concept>
      <concept id="4447085707124854353" name="ActorLanguage.structure.StringBody" flags="ng" index="2JkZqM">
        <property id="4447085707124854354" name="body" index="2JkZqL" />
      </concept>
      <concept id="6739934483257929413" name="ActorLanguage.structure.Receptionist" flags="ng" index="2QtU1Q">
        <property id="1411682935489275238" name="address" index="2iLIH0" />
        <child id="6739934483257929416" name="messageQueue" index="2QtU1V" />
      </concept>
      <concept id="3865756215865929202" name="ActorLanguage.structure.SendMessage" flags="ng" index="37lS4T">
        <reference id="3865756215865929205" name="message" index="37lS4Y" />
      </concept>
      <concept id="3865756215865914212" name="ActorLanguage.structure.CreateActor" flags="ng" index="37lXYJ">
        <property id="1411682935489244212" name="address" index="2iLA8i" />
        <property id="4813801747212515788" name="fetchPolicy" index="1V3Vrz" />
        <reference id="1411682935489260658" name="behavior" index="2iLy9k" />
        <child id="6739934483258265337" name="messageQueue" index="2LyG1a" />
      </concept>
      <concept id="3865756215865914225" name="ActorLanguage.structure.CreateMessage" flags="ng" index="37lXYU">
        <child id="711157185105040753" name="payload" index="GupN0" />
        <child id="3269545992594456658" name="envelope" index="34eGaj" />
      </concept>
      <concept id="3865756215865914230" name="ActorLanguage.structure.ActorScript" flags="ng" index="37lXYX">
        <child id="6739934483257959573" name="receptionist" index="2QtyCA" />
        <child id="6739934483257929410" name="behaviors" index="2QtU1L" />
        <child id="3865756215865914231" name="actorCreation" index="37lXYW" />
        <child id="8453059353961860195" name="types" index="1fvW3h" />
        <child id="7051067309802828086" name="externalFunctions" index="1hWdPE" />
        <child id="2750811047725550749" name="topology" index="3DMxif" />
      </concept>
      <concept id="7051067309796483633" name="ActorLanguage.structure.ActorLanguageStatement" flags="ngI" index="1e4STH">
        <child id="7051067309796483634" name="statements" index="1e4STI" />
      </concept>
      <concept id="8453059353960860303" name="ActorLanguage.structure.CustomType" flags="ng" index="1frwoX" />
      <concept id="5068928393908140674" name="ActorLanguage.structure.SelectPayload" flags="ng" index="3g$k$6">
        <reference id="5068928393908140689" name="payload" index="3g$k$l" />
      </concept>
      <concept id="7051067309802826947" name="ActorLanguage.structure.ExternalFunction" flags="ng" index="1hWc2v" />
      <concept id="7051067309802828018" name="ActorLanguage.structure.ExecuteExternalFunction" flags="ng" index="1hWdMI">
        <property id="3715044905902635815" name="resultName" index="2nvgqf" />
        <reference id="8453059353961861886" name="resultType" index="1fvXTc" />
        <reference id="7051067309803752890" name="message" index="1hSE7A" />
        <reference id="7051067309802828019" name="function" index="1hWdMJ" />
        <child id="3715044905902635819" name="result" index="2nvgq3" />
      </concept>
      <concept id="2411303652489062023" name="ActorLanguage.structure.CreateEnvelope" flags="ng" index="1lgcPy">
        <property id="7694881003800154999" name="priority" index="2uCmrR" />
        <reference id="2411303652489062027" name="receiver" index="1lgcPI" />
      </concept>
      <concept id="2411303652489062024" name="ActorLanguage.structure.CreatePayload" flags="ng" index="1lgcPH" />
      <concept id="2411303652489357139" name="ActorLanguage.structure.CreateBehavior" flags="ng" index="1lj4MQ">
        <property id="6842115693881541009" name="receivedMessageName" index="2F6P9D" />
        <child id="6842115693882584148" name="receivedMessage" index="2F2NYG" />
        <child id="3865756215866352723" name="actions" index="37ngyo" />
      </concept>
      <concept id="2750811047725463862" name="ActorLanguage.structure.ActorsGraph" flags="ng" index="3DMq4$">
        <child id="7724742800286591798" name="actors" index="Fpmug" />
        <child id="2750811047725463932" name="links" index="3DMq5I" />
      </concept>
      <concept id="2750811047725463863" name="ActorLanguage.structure.ActorBox" flags="ng" index="3DMq4_">
        <reference id="2750811047725463865" name="actor" index="3DMq4F" />
      </concept>
      <concept id="2750811047725463864" name="ActorLanguage.structure.ActorLink" flags="ng" index="3DMq4E">
        <reference id="2750811047725463926" name="actorTo" index="3DMq5$" />
        <reference id="2750811047725463924" name="actorFrom" index="3DMq5A" />
        <child id="8619478032122084377" name="data" index="1qtvm3" />
      </concept>
      <concept id="3602543757318970826" name="ActorLanguage.structure.ActorLanguageStatementList" flags="ng" index="3ZcDeZ">
        <child id="3602543757318970831" name="statements" index="3ZcDeU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
  </registry>
  <node concept="37lXYX" id="1W0F6BLZp$E">
    <property role="TrG5h" value="Script" />
    <node concept="1lj4MQ" id="74ISy0gFlJw" role="2QtU1L">
      <property role="TrG5h" value="window" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="74ISy0gFlKF" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="74ISy0gFlKG" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="74ISy0gFlKJ" role="37ngyo">
        <node concept="1hWdMI" id="74ISy0gFlKL" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFl$F" resolve="window" />
          <ref role="1hSE7A" node="74ISy0gFlKF" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="74ISy0gFlKX" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="74ISy0gFlLh" role="3ZcDeU">
          <node concept="2iUZJK" id="74ISy0gFlLj" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="74ISy0gFlLl" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="74ISy0gFlL3" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="74ISy0gFlLl" resolve="refs" />
          <node concept="3g$k$6" id="74ISy0gFlL5" role="2ngaLO">
            <ref role="3g$k$l" node="74ISy0gFlKX" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1frwoX" id="7lfjb8UivT6" role="1fvW3h">
      <property role="TrG5h" value="GROUPS" />
    </node>
    <node concept="1frwoX" id="7lfjb8UlF0K" role="1fvW3h">
      <property role="TrG5h" value="ROWS" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlAf" role="1hWdPE">
      <property role="TrG5h" value="selection" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlBD" role="1hWdPE">
      <property role="TrG5h" value="projection" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlCV" role="1hWdPE">
      <property role="TrG5h" value="count" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlE5" role="1hWdPE">
      <property role="TrG5h" value="average" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlF7" role="1hWdPE">
      <property role="TrG5h" value="min" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlG1" role="1hWdPE">
      <property role="TrG5h" value="max" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlGN" role="1hWdPE">
      <property role="TrG5h" value="sum" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlHt" role="1hWdPE">
      <property role="TrG5h" value="join" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlHZ" role="1hWdPE">
      <property role="TrG5h" value="groupBy" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFlIp" role="1hWdPE">
      <property role="TrG5h" value="orderBy" />
    </node>
    <node concept="1hWc2v" id="74ISy0gFl$F" role="1hWdPE">
      <property role="TrG5h" value="window" />
    </node>
    <node concept="2QtU1Q" id="1W0F6BLZp$F" role="2QtyCA">
      <property role="2iLIH0" value="0" />
      <property role="TrG5h" value="receptionist" />
      <node concept="2uUgHn" id="1W0F6BLZp$G" role="2QtU1V" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgvO" role="37lXYW">
      <property role="2iLA8i" value="0" />
      <property role="TrG5h" value="dataSource" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl77" resolve="DataSource" />
      <node concept="2uUgHn" id="1W0F6BMcgvP" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="74ISy0gFlJ1" role="37lXYW">
      <property role="2iLA8i" value="15" />
      <property role="TrG5h" value="window0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="74ISy0gFlJw" resolve="window" />
      <node concept="2uUgHn" id="74ISy0gFlJ3" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="74ISy0gFlLW" role="37lXYW">
      <property role="2iLA8i" value="16" />
      <property role="TrG5h" value="window1" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="74ISy0gFlJw" resolve="window" />
      <node concept="2uUgHn" id="74ISy0gFlLY" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgvW" role="37lXYW">
      <property role="2iLA8i" value="1" />
      <property role="TrG5h" value="select0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl7l" resolve="selection" />
      <node concept="2uUgHn" id="1W0F6BMcgvY" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgw3" role="37lXYW">
      <property role="2iLA8i" value="2" />
      <property role="TrG5h" value="select1" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl7l" resolve="selection" />
      <node concept="2uUgHn" id="1W0F6BMcgw4" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgwb" role="37lXYW">
      <property role="2iLA8i" value="3" />
      <property role="TrG5h" value="select2" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl7l" resolve="selection" />
      <node concept="2uUgHn" id="1W0F6BMcgwc" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgwl" role="37lXYW">
      <property role="2iLA8i" value="4" />
      <property role="TrG5h" value="select3" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl7l" resolve="selection" />
      <node concept="2uUgHn" id="1W0F6BMcgwm" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgwx" role="37lXYW">
      <property role="2iLA8i" value="5" />
      <property role="TrG5h" value="select4" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl7l" resolve="selection" />
      <node concept="2uUgHn" id="1W0F6BMcgwy" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgCY" role="37lXYW">
      <property role="2iLA8i" value="7" />
      <property role="TrG5h" value="groupBy0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl9_" resolve="groupBy" />
      <node concept="2uUgHn" id="1W0F6BMcgD0" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgDz" role="37lXYW">
      <property role="2iLA8i" value="8" />
      <property role="TrG5h" value="proj1" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl8l" resolve="projection" />
      <node concept="2uUgHn" id="1W0F6BMcgD_" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgEc" role="37lXYW">
      <property role="2iLA8i" value="9" />
      <property role="TrG5h" value="count0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8UvlbV" resolve="Count" />
      <node concept="2uUgHn" id="1W0F6BMcgEe" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgFE" role="37lXYW">
      <property role="2iLA8i" value="11" />
      <property role="TrG5h" value="proj2" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl8l" resolve="projection" />
      <node concept="2uUgHn" id="1W0F6BMcgFG" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="1W0F6BMcgGv" role="37lXYW">
      <property role="2iLA8i" value="12" />
      <property role="TrG5h" value="join1" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvlak" resolve="joinColumns" />
      <node concept="2uUgHn" id="1W0F6BMcgGx" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="6nnLc8PMg3p" role="37lXYW">
      <property role="2iLA8i" value="13" />
      <property role="TrG5h" value="join0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvlak" resolve="joinColumns" />
      <node concept="2uUgHn" id="6nnLc8PMg3r" role="2LyG1a" />
    </node>
    <node concept="37lXYJ" id="6nnLc8PMgb_" role="37lXYW">
      <property role="2iLA8i" value="24" />
      <property role="TrG5h" value="proj0" />
      <property role="1V3Vrz" value="66sUT0$7o_R/FIFO" />
      <ref role="2iLy9k" node="7lfjb8Uvl8l" resolve="projection" />
      <node concept="2uUgHn" id="6nnLc8PMgbB" role="2LyG1a" />
    </node>
    <node concept="3DMq4$" id="1W0F6BMcgGW" role="3DMxif">
      <node concept="3DMq4E" id="1W0F6BMcgKg" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgH0" />
        <ref role="3DMq5$" node="1W0F6BMcgH6" />
        <node concept="2JkZqM" id="1W0F6BMcgKj" role="1qtvm3">
          <property role="2JkZqL" value="age &lt;= 30" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgKp" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgH0" />
        <ref role="3DMq5$" node="74ISy0gFlMt" />
        <node concept="2JkZqM" id="1W0F6BMcgKu" role="1qtvm3">
          <property role="2JkZqL" value="country == Italy" />
        </node>
      </node>
      <node concept="3DMq4E" id="74ISy0gFlW3" role="3DMq5I">
        <ref role="3DMq5A" node="74ISy0gFlMt" />
        <ref role="3DMq5$" node="1W0F6BMcgHe" />
        <node concept="2JkZqM" id="74ISy0gFlWw" role="1qtvm3">
          <property role="2JkZqL" value="15" />
        </node>
      </node>
      <node concept="3DMq4E" id="6nnLc8PTWaC" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgHe" />
        <ref role="3DMq5$" node="6nnLc8PTW9I" />
        <node concept="2JkZqM" id="6nnLc8PTWb5" role="1qtvm3">
          <property role="2JkZqL" value="name,city" />
        </node>
      </node>
      <node concept="3DMq4E" id="6nnLc8PTWbX" role="3DMq5I">
        <ref role="3DMq5A" node="6nnLc8PTW9I" />
        <ref role="3DMq5$" node="1W0F6BMcgJK" />
        <node concept="2JkZqM" id="6nnLc8PTWcq" role="1qtvm3">
          <property role="2JkZqL" value="city" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgLc" role="3DMq5I">
        <ref role="3DMq5A" node="74ISy0gFlMt" />
        <ref role="3DMq5$" node="1W0F6BMcgHo" />
        <node concept="2JkZqM" id="1W0F6BMcgLn" role="1qtvm3">
          <property role="2JkZqL" value="height &gt;= 1.8 &amp;&amp; weight &lt;= 80.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgL_" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgHo" />
        <ref role="3DMq5$" node="1W0F6BMcgIk" />
        <node concept="2JkZqM" id="1W0F6BMcgLM" role="1qtvm3">
          <property role="2JkZqL" value="name" />
        </node>
      </node>
      <node concept="3DMq4E" id="74ISy0gFlYp" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgH0" />
        <ref role="3DMq5$" node="74ISy0gFlMw" />
        <node concept="2JkZqM" id="74ISy0gFlYS" role="1qtvm3">
          <property role="2JkZqL" value="20" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgM2" role="3DMq5I">
        <ref role="3DMq5A" node="74ISy0gFlMw" />
        <ref role="3DMq5$" node="1W0F6BMcgH$" />
        <node concept="2JkZqM" id="1W0F6BMcgMh" role="1qtvm3">
          <property role="2JkZqL" value="country != Italy" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgMz" role="3DMq5I">
        <ref role="3DMq5A" node="74ISy0gFlMw" />
        <ref role="3DMq5$" node="1W0F6BMcgHM" />
        <node concept="2JkZqM" id="1W0F6BMcgMO" role="1qtvm3">
          <property role="2JkZqL" value="age &lt;= 30 || weight &lt;= 100.0" />
        </node>
      </node>
      <node concept="3DMq4E" id="6nnLc8PTWdi" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgH$" />
        <ref role="3DMq5$" node="6nnLc8PTWaa" />
        <node concept="2JkZqM" id="6nnLc8PTWdJ" role="1qtvm3">
          <property role="2JkZqL" value="University.country" />
        </node>
      </node>
      <node concept="3DMq4E" id="6nnLc8PTWeB" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgHM" />
        <ref role="3DMq5$" node="6nnLc8PTWaa" />
        <node concept="2JkZqM" id="6nnLc8PTWf4" role="1qtvm3">
          <property role="2JkZqL" value="Person.age" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgOu" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgH$" />
        <ref role="3DMq5$" node="1W0F6BMcgJm" />
        <node concept="2JkZqM" id="1W0F6BMcgOP" role="1qtvm3">
          <property role="2JkZqL" value="University.name" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgPf" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgHM" />
        <ref role="3DMq5$" node="1W0F6BMcgJm" />
        <node concept="2JkZqM" id="1W0F6BMcgPC" role="1qtvm3">
          <property role="2JkZqL" value="Person.name" />
        </node>
      </node>
      <node concept="3DMq4E" id="1W0F6BMcgQ4" role="3DMq5I">
        <ref role="3DMq5A" node="1W0F6BMcgJm" />
        <ref role="3DMq5$" node="1W0F6BMcgIC" />
        <node concept="2JkZqM" id="1W0F6BMcgQv" role="1qtvm3">
          <property role="2JkZqL" value="Person.age" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgGY" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgH0" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgvO" resolve="dataSource" />
        </node>
        <node concept="3DMq4_" id="74ISy0gFlMt" role="FpmuI">
          <ref role="3DMq4F" node="74ISy0gFlJ1" resolve="window0" />
        </node>
        <node concept="3DMq4_" id="74ISy0gFlMw" role="FpmuI">
          <ref role="3DMq4F" node="74ISy0gFlLW" resolve="window1" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgH2" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgH6" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgvW" resolve="select0" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgH8" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgHe" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgw3" resolve="select1" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgHg" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgHo" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgwb" resolve="select2" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgHq" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgH$" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgwl" resolve="select3" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgHA" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgHM" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgwx" resolve="select4" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgI4" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgIk" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgDz" resolve="proj1" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgIm" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgIC" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgFE" resolve="proj2" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgJ0" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgJm" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgGv" resolve="join1" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgJo" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgJK" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgCY" resolve="groupBy0" />
        </node>
      </node>
      <node concept="Fpmux" id="1W0F6BMcgJM" role="Fpmug">
        <node concept="3DMq4_" id="1W0F6BMcgKc" role="FpmuI">
          <ref role="3DMq4F" node="1W0F6BMcgEc" resolve="count0" />
        </node>
      </node>
      <node concept="Fpmux" id="6nnLc8PTW9m" role="Fpmug">
        <node concept="3DMq4_" id="6nnLc8PTW9I" role="FpmuI">
          <ref role="3DMq4F" node="6nnLc8PMgb_" resolve="proj0" />
        </node>
      </node>
      <node concept="Fpmux" id="6nnLc8PTW9K" role="Fpmug">
        <node concept="3DMq4_" id="6nnLc8PTWaa" role="FpmuI">
          <ref role="3DMq4F" node="6nnLc8PMg3p" resolve="join0" />
        </node>
      </node>
      <node concept="37mRI7" id="1W0F6BMcgQy" role="lGtFl">
        <node concept="37mRIm" id="1W0F6BMcgQz" role="37mRID">
          <property role="37mO49" value="2233974986210609984" />
          <node concept="gqqVs" id="1W0F6BMcgQx" role="37mO4d">
            <property role="gqqTZ" value="12.000100000000003" />
            <property role="gqqTW" value="246.00025000000002" />
            <property role="gqqTX" value="90.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQ_" role="37mRID">
          <property role="37mO49" value="2233974986210609990" />
          <node concept="gqqVs" id="1W0F6BMcgQ$" role="37mO4d">
            <property role="gqqTZ" value="410.0002831054687" />
            <property role="gqqTW" value="72.0001" />
            <property role="gqqTX" value="66.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQB" role="37mRID">
          <property role="37mO49" value="2233974986210609998" />
          <node concept="gqqVs" id="1W0F6BMcgQA" role="37mO4d">
            <property role="gqqTZ" value="410.0002831054687" />
            <property role="gqqTW" value="420.0004" />
            <property role="gqqTX" value="66.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQD" role="37mRID">
          <property role="37mO49" value="2233974986210610008" />
          <node concept="gqqVs" id="1W0F6BMcgQC" role="37mO4d">
            <property role="gqqTZ" value="410.0002831054687" />
            <property role="gqqTW" value="132.0002" />
            <property role="gqqTX" value="66.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQF" role="37mRID">
          <property role="37mO49" value="2233974986210610020" />
          <node concept="gqqVs" id="1W0F6BMcgQE" role="37mO4d">
            <property role="gqqTZ" value="410.0002831054687" />
            <property role="gqqTW" value="246.00025000000002" />
            <property role="gqqTX" value="66.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQH" role="37mRID">
          <property role="37mO49" value="2233974986210610034" />
          <node concept="gqqVs" id="1W0F6BMcgQG" role="37mO4d">
            <property role="gqqTZ" value="410.0002831054687" />
            <property role="gqqTW" value="306.00035" />
            <property role="gqqTX" value="66.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQJ" role="37mRID">
          <property role="37mO49" value="2233974986210610050" />
          <node concept="gqqVs" id="1W0F6BMcgQI" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="420.0004" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQL" role="37mRID">
          <property role="37mO49" value="2233974986210610068" />
          <node concept="gqqVs" id="1W0F6BMcgQK" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="132.0002" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQN" role="37mRID">
          <property role="37mO49" value="2233974986210610088" />
          <node concept="gqqVs" id="1W0F6BMcgQM" role="37mO4d">
            <property role="gqqTZ" value="910.0006493164062" />
            <property role="gqqTW" value="218.00025000000002" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQP" role="37mRID">
          <property role="37mO49" value="2233974986210610110" />
          <node concept="gqqVs" id="1W0F6BMcgQO" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="334.00035" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQR" role="37mRID">
          <property role="37mO49" value="2233974986210610134" />
          <node concept="gqqVs" id="1W0F6BMcgQQ" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="218.00025000000002" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQT" role="37mRID">
          <property role="37mO49" value="2233974986210610160" />
          <node concept="gqqVs" id="1W0F6BMcgQS" role="37mO4d">
            <property role="gqqTZ" value="910.0006493164062" />
            <property role="gqqTW" value="420.0004" />
            <property role="gqqTX" value="74.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQV" role="37mRID">
          <property role="37mO49" value="2233974986210610188" />
          <node concept="gqqVs" id="1W0F6BMcgQU" role="37mO4d">
            <property role="gqqTZ" value="12.000100000000003" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgQX" role="37mRID">
          <property role="37mO49" value="2233974986210610192" />
          <node concept="2VclpC" id="1W0F6BMcgQW" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgQY" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgQZ" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgR0" role="3wpmZR">
                  <property role="2Vclpx" value="230.0001983642578" />
                  <property role="2Vclpz" value="103.00014999999999" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgR1" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYu" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYv" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="92.00014999999999" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgR3" role="37mRID">
          <property role="37mO49" value="2233974986210610201" />
          <node concept="2VclpC" id="1W0F6BMcgR2" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgR4" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgR5" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgR6" role="3wpmZR">
                  <property role="2Vclpx" value="202.0001983642578" />
                  <property role="2Vclpz" value="451.00045" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgR7" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYw" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYx" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="440.00045" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgR9" role="37mRID">
          <property role="37mO49" value="2233974986210610214" />
          <node concept="2VclpC" id="1W0F6BMcgR8" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRa" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRb" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRc" role="3wpmZR">
                  <property role="2Vclpx" value="592.0003662109375" />
                  <property role="2Vclpz" value="451.00045" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRd" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRf" role="37mRID">
          <property role="37mO49" value="2233974986210610231" />
          <node concept="2VclpC" id="1W0F6BMcgRe" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRg" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRh" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRi" role="3wpmZR">
                  <property role="2Vclpx" value="834.0005493164062" />
                  <property role="2Vclpz" value="451.00045" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRj" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRl" role="37mRID">
          <property role="37mO49" value="2233974986210610252" />
          <node concept="2VclpC" id="1W0F6BMcgRk" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRm" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRn" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRo" role="3wpmZR">
                  <property role="2Vclpx" value="142.0001983642578" />
                  <property role="2Vclpz" value="163.00025000000002" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRp" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYy" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYz" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="152.00025000000002" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRr" role="37mRID">
          <property role="37mO49" value="2233974986210610277" />
          <node concept="2VclpC" id="1W0F6BMcgRq" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRs" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRt" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRu" role="3wpmZR">
                  <property role="2Vclpx" value="612.0003662109375" />
                  <property role="2Vclpz" value="163.00025000000002" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRv" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRx" role="37mRID">
          <property role="37mO49" value="2233974986210610306" />
          <node concept="2VclpC" id="1W0F6BMcgRw" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRy" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRz" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgR$" role="3wpmZR">
                  <property role="2Vclpx" value="202.0001983642578" />
                  <property role="2Vclpz" value="277.00030000000004" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgR_" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRB" role="37mRID">
          <property role="37mO49" value="2233974986210610339" />
          <node concept="2VclpC" id="1W0F6BMcgRA" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRC" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRD" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRE" role="3wpmZR">
                  <property role="2Vclpx" value="154.0001983642578" />
                  <property role="2Vclpz" value="337.0004" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRF" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgY$" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgY_" role="2Vcluh">
              <property role="2Vclpx" value="122.00019836425781" />
              <property role="2Vclpz" value="326.0004" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRH" role="37mRID">
          <property role="37mO49" value="2233974986210610376" />
          <node concept="2VclpC" id="1W0F6BMcgRG" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRI" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRJ" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRK" role="3wpmZR">
                  <property role="2Vclpx" value="556.0003662109375" />
                  <property role="2Vclpz" value="335.00035" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRL" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYA" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYB" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYC" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYD" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="324.00035" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYE" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="324.00035" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYF" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="354.0004" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRN" role="37mRID">
          <property role="37mO49" value="2233974986210610417" />
          <node concept="2VclpC" id="1W0F6BMcgRM" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRO" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRP" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRQ" role="3wpmZR">
                  <property role="2Vclpx" value="588.0003662109375" />
                  <property role="2Vclpz" value="393.0004" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRR" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYG" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="326.0004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYH" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="382.0004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYI" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="382.0004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYJ" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="354.0004" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRT" role="37mRID">
          <property role="37mO49" value="2233974986210610462" />
          <node concept="2VclpC" id="1W0F6BMcgRS" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgRU" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgRV" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgRW" role="3wpmZR">
                  <property role="2Vclpx" value="568.0003662109375" />
                  <property role="2Vclpz" value="221.0003" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgRX" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYK" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYL" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYM" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYN" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="210.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYO" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="210.0003" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYP" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="238.0003" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgRZ" role="37mRID">
          <property role="37mO49" value="2233974986210610511" />
          <node concept="2VclpC" id="1W0F6BMcgRY" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgS0" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgS1" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgS2" role="3wpmZR">
                  <property role="2Vclpx" value="584.0003662109375" />
                  <property role="2Vclpz" value="279.00035" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgS3" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYQ" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="326.0004" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYR" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="268.00035" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYS" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="268.00035" />
            </node>
            <node concept="2VclrF" id="1W0F6BMcgYT" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="238.0003" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="1W0F6BMcgS5" role="37mRID">
          <property role="37mO49" value="2233974986210610564" />
          <node concept="2VclpC" id="1W0F6BMcgS4" role="37mO4d">
            <node concept="3ul5H1" id="1W0F6BMcgS6" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="1W0F6BMcgS7" role="3ul5Gz">
                <node concept="2VclrF" id="1W0F6BMcgS8" role="3wpmZR">
                  <property role="2Vclpx" value="810.0005493164062" />
                  <property role="2Vclpz" value="203.0003" />
                </node>
                <node concept="2VclrF" id="1W0F6BMcgS9" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZVO" role="37mRID">
          <property role="37mO49" value="7338550456230593134" />
          <node concept="gqqVs" id="32lqJACnZVN" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="420.0004" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZVQ" role="37mRID">
          <property role="37mO49" value="7338550456230593162" />
          <node concept="gqqVs" id="32lqJACnZVP" role="37mO4d">
            <property role="gqqTZ" value="740.0004662109375" />
            <property role="gqqTW" value="334.00035" />
            <property role="gqqTX" value="50.0" />
            <property role="gqqTy" value="40.0001" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZVS" role="37mRID">
          <property role="37mO49" value="7338550456230593192" />
          <node concept="2VclpC" id="32lqJACnZVR" role="37mO4d">
            <node concept="3ul5H1" id="32lqJACnZVT" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="32lqJACnZVU" role="3ul5Gz">
                <node concept="2VclrF" id="32lqJACnZVV" role="3wpmZR">
                  <property role="2Vclpx" value="592.0003662109375" />
                  <property role="2Vclpz" value="451.00045" />
                </node>
                <node concept="2VclrF" id="32lqJACnZVW" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZVY" role="37mRID">
          <property role="37mO49" value="7338550456230593277" />
          <node concept="2VclpC" id="32lqJACnZVX" role="37mO4d">
            <node concept="3ul5H1" id="32lqJACnZVZ" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="32lqJACnZW0" role="3ul5Gz">
                <node concept="2VclrF" id="32lqJACnZW1" role="3wpmZR">
                  <property role="2Vclpx" value="834.0005493164062" />
                  <property role="2Vclpz" value="451.00045" />
                </node>
                <node concept="2VclrF" id="32lqJACnZW2" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZW4" role="37mRID">
          <property role="37mO49" value="7338550456230593362" />
          <node concept="2VclpC" id="32lqJACnZW3" role="37mO4d">
            <node concept="3ul5H1" id="32lqJACnZW5" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="32lqJACnZW6" role="3ul5Gz">
                <node concept="2VclrF" id="32lqJACnZW7" role="3wpmZR">
                  <property role="2Vclpx" value="556.0003662109375" />
                  <property role="2Vclpz" value="335.00035" />
                </node>
                <node concept="2VclrF" id="32lqJACnZW8" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="32lqJACnZZD" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="266.00030000000004" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZE" role="2Vcluh">
              <property role="2Vclpx" value="496.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZF" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="238.0003" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZG" role="2Vcluh">
              <property role="2Vclpx" value="536.0003967285156" />
              <property role="2Vclpz" value="324.00035" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZH" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="324.00035" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZI" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="354.0004" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="32lqJACnZWa" role="37mRID">
          <property role="37mO49" value="7338550456230593447" />
          <node concept="2VclpC" id="32lqJACnZW9" role="37mO4d">
            <node concept="3ul5H1" id="32lqJACnZWb" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="32lqJACnZWc" role="3ul5Gz">
                <node concept="2VclrF" id="32lqJACnZWd" role="3wpmZR">
                  <property role="2Vclpx" value="588.0003662109375" />
                  <property role="2Vclpz" value="393.0004" />
                </node>
                <node concept="2VclrF" id="32lqJACnZWe" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="2VclrF" id="32lqJACnZZJ" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="326.0004" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZK" role="2Vcluh">
              <property role="2Vclpx" value="516.0003967285156" />
              <property role="2Vclpz" value="382.0004" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZL" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="382.0004" />
            </node>
            <node concept="2VclrF" id="32lqJACnZZM" role="2Vcluh">
              <property role="2Vclpx" value="720.0003662109375" />
              <property role="2Vclpz" value="354.0004" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="7lfjb8Uvl77" role="2QtU1L">
      <property role="TrG5h" value="DataSource" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8Uvl7h" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8Uvl7i" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="74ISy0g$JkM" role="37ngyo" />
    </node>
    <node concept="1lj4MQ" id="7lfjb8Uvl7l" role="2QtU1L">
      <property role="TrG5h" value="selection" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8Uvl7y" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8Uvl7z" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="7lfjb8Uvl7A" role="37ngyo">
        <node concept="1hWdMI" id="7lfjb8Uvl7C" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFlAf" resolve="selection" />
          <ref role="1hSE7A" node="7lfjb8Uvl7y" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="7lfjb8Uvl7O" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="7lfjb8Uvl88" role="3ZcDeU">
          <node concept="2iUZJK" id="7lfjb8Uvl8a" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="7lfjb8Uvl8c" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2_LUnm" id="7lfjb8UH2wE" role="3ZcDeU">
          <ref role="2_LUnp" node="7lfjb8Uvl8c" resolve="refs" />
          <node concept="Bk5ry" id="7lfjb8UH2wG" role="2_WIQ$">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="37lXYU" id="7lfjb8UH2wP" role="1e4STI">
            <property role="TrG5h" value="m" />
            <node concept="3g$k$6" id="7lfjb8UH2wT" role="GupN0">
              <ref role="3g$k$l" node="7lfjb8Uvl7O" resolve="result" />
            </node>
            <node concept="1lgcPy" id="7lfjb8UH2wW" role="34eGaj">
              <property role="TrG5h" value="e" />
              <property role="2uCmrR" value="5.0" />
              <ref role="1lgcPI" node="7lfjb8UH2wG" resolve="ref" />
            </node>
          </node>
          <node concept="37lS4T" id="7lfjb8UH2x3" role="1e4STI">
            <ref role="37lS4Y" node="7lfjb8UH2wP" resolve="m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="7lfjb8Uvl8l" role="2QtU1L">
      <property role="TrG5h" value="projection" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8Uvl8H" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8Uvl8I" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="7lfjb8Uvl8L" role="37ngyo">
        <node concept="1hWdMI" id="7lfjb8Uvl8P" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFlBD" resolve="projection" />
          <ref role="1hSE7A" node="7lfjb8Uvl8H" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="7lfjb8Uvl92" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="7lfjb8Uvl98" role="3ZcDeU">
          <node concept="2iUZJK" id="7lfjb8Uvl9a" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="7lfjb8Uvl9c" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="7lfjb8Uvl9q" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="7lfjb8Uvl9c" resolve="refs" />
          <node concept="3g$k$6" id="7lfjb8Uvl9s" role="2ngaLO">
            <ref role="3g$k$l" node="7lfjb8Uvl92" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="7lfjb8Uvl9_" role="2QtU1L">
      <property role="TrG5h" value="groupBy" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8Uvl9A" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8Uvl9B" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="7lfjb8Uvl9C" role="37ngyo">
        <node concept="1hWdMI" id="7lfjb8Uvl9D" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFlHZ" resolve="groupBy" />
          <ref role="1hSE7A" node="7lfjb8Uvl9A" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="7lfjb8Uvl9E" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="7lfjb8Uvl9F" role="3ZcDeU">
          <node concept="2iUZJK" id="7lfjb8Uvl9G" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="7lfjb8Uvl9H" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="7lfjb8Uvl9I" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="7lfjb8Uvl9H" resolve="refs" />
          <node concept="3g$k$6" id="7lfjb8Uvl9J" role="2ngaLO">
            <ref role="3g$k$l" node="7lfjb8Uvl9E" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="7lfjb8Uvlak" role="2QtU1L">
      <property role="TrG5h" value="joinColumns" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8Uvlb2" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8Uvlb3" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="7lfjb8Uvlb6" role="37ngyo">
        <node concept="1hWdMI" id="7lfjb8Uvlb8" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFlHt" resolve="join" />
          <ref role="1hSE7A" node="7lfjb8Uvlb2" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="7lfjb8Uvlbo" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="7lfjb8Uvlbu" role="3ZcDeU">
          <node concept="2iUZJK" id="7lfjb8Uvlbw" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="7lfjb8Uvlby" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="7lfjb8UvlbK" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="7lfjb8Uvlby" resolve="refs" />
          <node concept="3g$k$6" id="7lfjb8UvlbM" role="2ngaLO">
            <ref role="3g$k$l" node="7lfjb8Uvlbo" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1lj4MQ" id="7lfjb8UvlbV" role="2QtU1L">
      <property role="TrG5h" value="Count" />
      <property role="2F6P9D" value="msg" />
      <node concept="37lXYU" id="7lfjb8UvlcO" role="2F2NYG">
        <property role="TrG5h" value="msg" />
        <node concept="1lgcPH" id="7lfjb8UvlcP" role="GupN0">
          <property role="TrG5h" value="msg.payload" />
        </node>
      </node>
      <node concept="3ZcDeZ" id="7lfjb8UvlcS" role="37ngyo">
        <node concept="1hWdMI" id="7lfjb8UvlcU" role="3ZcDeU">
          <property role="2nvgqf" value="result" />
          <ref role="1hWdMJ" node="74ISy0gFlCV" resolve="count" />
          <ref role="1hSE7A" node="7lfjb8UvlcO" resolve="msg" />
          <ref role="1fvXTc" node="7lfjb8UlF0K" resolve="ROWS" />
          <node concept="1lgcPH" id="7lfjb8Uvld6" role="2nvgq3">
            <property role="TrG5h" value="result" />
          </node>
        </node>
        <node concept="2iZ$PO" id="7lfjb8Uvldc" role="3ZcDeU">
          <node concept="2iUZJK" id="7lfjb8Uvlde" role="2iUZJS">
            <property role="2iUZJL" value="2oGQ1bfXVEv/TOPOLOGY" />
          </node>
          <node concept="2_DyK2" id="7lfjb8Uvldg" role="BvGUO">
            <property role="TrG5h" value="refs" />
          </node>
        </node>
        <node concept="2nav41" id="7lfjb8Uvldu" role="3ZcDeU">
          <property role="2neSQu" value="5.0" />
          <ref role="2nav44" node="7lfjb8Uvldg" resolve="refs" />
          <node concept="3g$k$6" id="7lfjb8Uvldw" role="2ngaLO">
            <ref role="3g$k$l" node="7lfjb8Uvld6" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

