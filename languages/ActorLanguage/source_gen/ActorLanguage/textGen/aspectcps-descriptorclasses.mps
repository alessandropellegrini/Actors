<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fe6a767(checkpoints/ActorLanguage.textGen@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="haeo" ref="r:5c12de31-eabc-4138-b711-95b52bc1fc4c(ActorLanguage.textGen)" />
    <import index="kpbf" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.impl(MPS.TextGen/)" />
    <import index="yfwt" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.rt(MPS.TextGen/)" />
    <import index="tpcf" ref="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="o1mc" ref="r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
      <concept id="1100832983841311024" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassCreator" flags="nn" index="xCZzO">
        <property id="1100832983841311026" name="fqClassName" index="xCZzQ" />
        <child id="1100832983841311029" name="type" index="xCZzL" />
      </concept>
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
      <concept id="1173995204289" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticFieldReference" flags="nn" index="1n$iZg">
        <property id="1173995448817" name="fqClassName" index="1n_ezw" />
        <property id="1173995466678" name="fieldName" index="1n_iUB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="ActorScript_TextGen" />
    <uo k="s:originTrace" v="n:3865756215866094073" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3865756215866094073" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3865756215866094073" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3865756215866094073" />
      <node concept="3cqZAl" id="4" role="3clF45">
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
      <node concept="3Tm1VV" id="5" role="1B3o_S">
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
      <node concept="3clFbS" id="6" role="3clF47">
        <uo k="s:originTrace" v="n:3865756215866094073" />
        <node concept="3cpWs8" id="9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866094073" />
          <node concept="3cpWsn" id="1S" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3865756215866094073" />
            <node concept="3uibUv" id="1T" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3865756215866094073" />
            </node>
            <node concept="2ShNRf" id="1U" role="33vP2m">
              <uo k="s:originTrace" v="n:3865756215866094073" />
              <node concept="1pGfFk" id="1V" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3865756215866094073" />
                <node concept="37vLTw" id="1W" role="37wK5m">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3865756215866094073" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822790551" />
          <node concept="1niqFM" id="1X" role="3clFbG">
            <property role="1npL6y" value="init" />
            <property role="1npUBZ" value="ActorLanguage.textGen.Initialization" />
            <uo k="s:originTrace" v="n:3204091364822790551" />
            <node concept="3uibUv" id="1Y" role="32Mpfj">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
            <node concept="37vLTw" id="1Z" role="2U24H$">
              <ref role="3cqZAo" node="7" resolve="ctx" />
              <uo k="s:originTrace" v="n:3204091364822790551" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823307157" />
          <node concept="3clFbS" id="20" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3clFbF" id="23" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364823307157" />
              <node concept="2OqwBi" id="24" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364823307157" />
                <node concept="37vLTw" id="25" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                </node>
                <node concept="liA8E" id="26" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:3204091364823307157" />
                  <node concept="37vLTw" id="27" role="37wK5m">
                    <ref role="3cqZAo" node="21" resolve="item" />
                    <uo k="s:originTrace" v="n:3204091364823307157" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="21" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:3204091364823307157" />
            <node concept="3Tqbb2" id="28" role="1tU5fm">
              <uo k="s:originTrace" v="n:3204091364823307157" />
            </node>
          </node>
          <node concept="2OqwBi" id="22" role="1DdaDG">
            <uo k="s:originTrace" v="n:3204091364823307201" />
            <node concept="2OqwBi" id="29" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823307185" />
              <node concept="37vLTw" id="2b" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="2c" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="2a" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364823307282" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078298" />
        </node>
        <node concept="3clFbF" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078393" />
          <node concept="2OqwBi" id="2d" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078393" />
            <node concept="37vLTw" id="2e" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078393" />
            </node>
            <node concept="liA8E" id="2f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825078393" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078420" />
        </node>
        <node concept="3clFbF" id="f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825267327" />
          <node concept="2OqwBi" id="2g" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267327" />
            <node concept="37vLTw" id="2h" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
            </node>
            <node concept="liA8E" id="2i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825267327" />
              <node concept="Xl_RD" id="2j" role="37wK5m">
                <property role="Xl_RC" value="int main() {" />
                <uo k="s:originTrace" v="n:3204091364825267327" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825267857" />
          <node concept="2OqwBi" id="2k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825267857" />
            <node concept="37vLTw" id="2l" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
            <node concept="liA8E" id="2m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825267857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="2n" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="2o" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="2q" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="2s" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="2t" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="2r" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="2p" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="2u" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="2v" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825224934" />
          <node concept="2OqwBi" id="2x" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825224934" />
            <node concept="37vLTw" id="2y" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
            </node>
            <node concept="liA8E" id="2z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825224934" />
              <node concept="Xl_RD" id="2$" role="37wK5m">
                <property role="Xl_RC" value="int num_threads = " />
                <uo k="s:originTrace" v="n:3204091364825224934" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078806" />
          <node concept="2OqwBi" id="2_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078806" />
            <node concept="37vLTw" id="2A" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
            </node>
            <node concept="liA8E" id="2B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078806" />
              <node concept="2YIFZM" id="2C" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3204091364825102831" />
                <node concept="2OqwBi" id="2D" role="37wK5m">
                  <uo k="s:originTrace" v="n:3204091364825127637" />
                  <node concept="2OqwBi" id="2E" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364825115211" />
                    <node concept="2OqwBi" id="2G" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364825109732" />
                      <node concept="37vLTw" id="2I" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="2J" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2H" role="2OqNvi">
                      <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
                      <uo k="s:originTrace" v="n:3204091364825116106" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2F" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    <uo k="s:originTrace" v="n:3204091364825161146" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825239668" />
          <node concept="2OqwBi" id="2K" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825239668" />
            <node concept="37vLTw" id="2L" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
            </node>
            <node concept="liA8E" id="2M" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825239668" />
              <node concept="Xl_RD" id="2N" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3204091364825239668" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825240473" />
          <node concept="2OqwBi" id="2O" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825240473" />
            <node concept="37vLTw" id="2P" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
            <node concept="liA8E" id="2Q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825240473" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="2R" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="2S" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="2T" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825078679" />
          <node concept="2OqwBi" id="2U" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825078679" />
            <node concept="37vLTw" id="2V" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
            </node>
            <node concept="liA8E" id="2W" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825078679" />
              <node concept="Xl_RD" id="2X" role="37wK5m">
                <property role="Xl_RC" value="pthread_t threads[num_threads];" />
                <uo k="s:originTrace" v="n:3204091364825078679" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825241436" />
          <node concept="2OqwBi" id="2Y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825241436" />
            <node concept="37vLTw" id="2Z" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
            <node concept="liA8E" id="30" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825241436" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825242920" />
          <node concept="2OqwBi" id="31" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825242920" />
            <node concept="37vLTw" id="32" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
            <node concept="liA8E" id="33" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="r" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825242920" />
          <node concept="2OqwBi" id="34" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825242920" />
            <node concept="37vLTw" id="35" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
            </node>
            <node concept="liA8E" id="36" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825242920" />
              <node concept="Xl_RD" id="37" role="37wK5m">
                <property role="Xl_RC" value="ThreadData threads_data[num_threads];" />
                <uo k="s:originTrace" v="n:3204091364825242920" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="s" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825243591" />
          <node concept="2OqwBi" id="38" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825243591" />
            <node concept="37vLTw" id="39" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825243591" />
            </node>
            <node concept="liA8E" id="3a" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825243591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825244671" />
          <node concept="2OqwBi" id="3b" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825244671" />
            <node concept="37vLTw" id="3c" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
            <node concept="liA8E" id="3d" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825244671" />
          <node concept="2OqwBi" id="3e" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825244671" />
            <node concept="37vLTw" id="3f" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
            </node>
            <node concept="liA8E" id="3g" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825244671" />
              <node concept="Xl_RD" id="3h" role="37wK5m">
                <property role="Xl_RC" value="int pipes_fd[num_threads][2];" />
                <uo k="s:originTrace" v="n:3204091364825244671" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825251944" />
          <node concept="2OqwBi" id="3i" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825251944" />
            <node concept="37vLTw" id="3j" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825251944" />
            </node>
            <node concept="liA8E" id="3k" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825251944" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825253744" />
          <node concept="2OqwBi" id="3l" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825253744" />
            <node concept="37vLTw" id="3m" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825253744" />
            </node>
            <node concept="liA8E" id="3n" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825253744" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825291825" />
        </node>
        <node concept="3clFbF" id="y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255353" />
          <node concept="2OqwBi" id="3o" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255353" />
            <node concept="37vLTw" id="3p" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
            <node concept="liA8E" id="3q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255353" />
          <node concept="2OqwBi" id="3r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255353" />
            <node concept="37vLTw" id="3s" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
            </node>
            <node concept="liA8E" id="3t" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825255353" />
              <node concept="Xl_RD" id="3u" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; NUM_THREADS; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825255353" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825255861" />
          <node concept="2OqwBi" id="3v" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825255861" />
            <node concept="37vLTw" id="3w" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825255861" />
            </node>
            <node concept="liA8E" id="3x" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825255861" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256527" />
          <node concept="2OqwBi" id="3y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256527" />
            <node concept="2OqwBi" id="3z" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825256527" />
              <node concept="2OqwBi" id="3_" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825256527" />
                <node concept="37vLTw" id="3B" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
                <node concept="liA8E" id="3C" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
              </node>
              <node concept="liA8E" id="3A" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825256527" />
              </node>
            </node>
            <node concept="liA8E" id="3$" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825256527" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="A" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256983" />
          <node concept="2OqwBi" id="3D" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256983" />
            <node concept="37vLTw" id="3E" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
            <node concept="liA8E" id="3F" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256983" />
          <node concept="2OqwBi" id="3G" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256983" />
            <node concept="37vLTw" id="3H" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
            </node>
            <node concept="liA8E" id="3I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825256983" />
              <node concept="Xl_RD" id="3J" role="37wK5m">
                <property role="Xl_RC" value="if (pipe(pipes_fd[i])) {" />
                <uo k="s:originTrace" v="n:3204091364825256983" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="C" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257060" />
          <node concept="2OqwBi" id="3K" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257060" />
            <node concept="37vLTw" id="3L" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257060" />
            </node>
            <node concept="liA8E" id="3M" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257060" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="D" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257138" />
          <node concept="2OqwBi" id="3N" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257138" />
            <node concept="2OqwBi" id="3O" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825257138" />
              <node concept="2OqwBi" id="3Q" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825257138" />
                <node concept="37vLTw" id="3S" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
                <node concept="liA8E" id="3T" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
              </node>
              <node concept="liA8E" id="3R" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825257138" />
              </node>
            </node>
            <node concept="liA8E" id="3P" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825257138" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="E" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257196" />
          <node concept="2OqwBi" id="3U" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257196" />
            <node concept="37vLTw" id="3V" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
            <node concept="liA8E" id="3W" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257196" />
          <node concept="2OqwBi" id="3X" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257196" />
            <node concept="37vLTw" id="3Y" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
            </node>
            <node concept="liA8E" id="3Z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257196" />
              <node concept="Xl_RD" id="40" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;pipe&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825257196" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257250" />
          <node concept="2OqwBi" id="41" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257250" />
            <node concept="37vLTw" id="42" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257250" />
            </node>
            <node concept="liA8E" id="43" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257250" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257361" />
          <node concept="2OqwBi" id="44" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257361" />
            <node concept="37vLTw" id="45" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
            <node concept="liA8E" id="46" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257361" />
          <node concept="2OqwBi" id="47" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257361" />
            <node concept="37vLTw" id="48" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
            </node>
            <node concept="liA8E" id="49" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257361" />
              <node concept="Xl_RD" id="4a" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825257361" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257438" />
          <node concept="2OqwBi" id="4b" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257438" />
            <node concept="37vLTw" id="4c" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257438" />
            </node>
            <node concept="liA8E" id="4d" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257438" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257138" />
          <node concept="2OqwBi" id="4e" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257138" />
            <node concept="2OqwBi" id="4f" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825257138" />
              <node concept="2OqwBi" id="4h" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825257138" />
                <node concept="37vLTw" id="4j" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
                <node concept="liA8E" id="4k" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825257138" />
                </node>
              </node>
              <node concept="liA8E" id="4i" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825257138" />
              </node>
            </node>
            <node concept="liA8E" id="4g" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825257138" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257612" />
          <node concept="2OqwBi" id="4l" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257612" />
            <node concept="37vLTw" id="4m" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
            <node concept="liA8E" id="4n" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257612" />
          <node concept="2OqwBi" id="4o" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257612" />
            <node concept="37vLTw" id="4p" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
            </node>
            <node concept="liA8E" id="4q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257612" />
              <node concept="Xl_RD" id="4r" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825257612" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257688" />
          <node concept="2OqwBi" id="4s" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257688" />
            <node concept="37vLTw" id="4t" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257688" />
            </node>
            <node concept="liA8E" id="4u" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257821" />
          <node concept="2OqwBi" id="4v" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257821" />
            <node concept="37vLTw" id="4w" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
            <node concept="liA8E" id="4x" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257821" />
          <node concept="2OqwBi" id="4y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257821" />
            <node concept="37vLTw" id="4z" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
            </node>
            <node concept="liA8E" id="4$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257821" />
              <node concept="Xl_RD" id="4_" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].read_fd = pipes_fd[i][0];" />
                <uo k="s:originTrace" v="n:3204091364825257821" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257878" />
          <node concept="2OqwBi" id="4A" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257878" />
            <node concept="37vLTw" id="4B" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257878" />
            </node>
            <node concept="liA8E" id="4C" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825257878" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257994" />
          <node concept="2OqwBi" id="4D" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257994" />
            <node concept="37vLTw" id="4E" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
            <node concept="liA8E" id="4F" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825257994" />
          <node concept="2OqwBi" id="4G" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825257994" />
            <node concept="37vLTw" id="4H" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
            </node>
            <node concept="liA8E" id="4I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825257994" />
              <node concept="Xl_RD" id="4J" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].write_fd = pipes_fd[i][1];" />
                <uo k="s:originTrace" v="n:3204091364825257994" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825258051" />
          <node concept="2OqwBi" id="4K" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825258051" />
            <node concept="37vLTw" id="4L" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825258051" />
            </node>
            <node concept="liA8E" id="4M" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825258051" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825256527" />
          <node concept="2OqwBi" id="4N" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825256527" />
            <node concept="2OqwBi" id="4O" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825256527" />
              <node concept="2OqwBi" id="4Q" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825256527" />
                <node concept="37vLTw" id="4S" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
                <node concept="liA8E" id="4T" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825256527" />
                </node>
              </node>
              <node concept="liA8E" id="4R" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825256527" />
              </node>
            </node>
            <node concept="liA8E" id="4P" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825256527" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825265617" />
          <node concept="2OqwBi" id="4U" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825265617" />
            <node concept="37vLTw" id="4V" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
            <node concept="liA8E" id="4W" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825265617" />
          <node concept="2OqwBi" id="4X" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825265617" />
            <node concept="37vLTw" id="4Y" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
            </node>
            <node concept="liA8E" id="4Z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825265617" />
              <node concept="Xl_RD" id="50" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825265617" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312714" />
          <node concept="2OqwBi" id="51" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312714" />
            <node concept="37vLTw" id="52" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312714" />
            </node>
            <node concept="liA8E" id="53" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312770" />
          <node concept="2OqwBi" id="54" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312770" />
            <node concept="37vLTw" id="55" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312770" />
            </node>
            <node concept="liA8E" id="56" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312770" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825301603" />
        </node>
        <node concept="3clFbF" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="57" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="58" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="59" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311359" />
          <node concept="2OqwBi" id="5a" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825311359" />
            <node concept="37vLTw" id="5b" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
            </node>
            <node concept="liA8E" id="5c" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825311359" />
              <node concept="Xl_RD" id="5d" role="37wK5m">
                <property role="Xl_RC" value="map_item *map = malloc(sizeof(map_item)*SIZE);" />
                <uo k="s:originTrace" v="n:3204091364825311359" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825312873" />
          <node concept="2OqwBi" id="5e" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825312873" />
            <node concept="37vLTw" id="5f" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
            <node concept="liA8E" id="5g" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825312873" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="5h" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="5i" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="5j" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825326996" />
          <node concept="2OqwBi" id="5k" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825326996" />
            <node concept="37vLTw" id="5l" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
            </node>
            <node concept="liA8E" id="5m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825326996" />
              <node concept="Xl_RD" id="5n" role="37wK5m">
                <property role="Xl_RC" value="if (!map) {" />
                <uo k="s:originTrace" v="n:3204091364825326996" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825327053" />
          <node concept="2OqwBi" id="5o" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825327053" />
            <node concept="37vLTw" id="5p" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
            <node concept="liA8E" id="5q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825327053" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="5r" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="5s" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="5u" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="5w" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="5x" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="5v" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="5t" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="5y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="5z" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="5$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334588" />
          <node concept="2OqwBi" id="5_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334588" />
            <node concept="37vLTw" id="5A" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
            </node>
            <node concept="liA8E" id="5B" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334588" />
              <node concept="Xl_RD" id="5C" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;malloc&quot;);" />
                <uo k="s:originTrace" v="n:3204091364825334588" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334757" />
          <node concept="2OqwBi" id="5D" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334757" />
            <node concept="37vLTw" id="5E" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
            <node concept="liA8E" id="5F" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334757" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1a" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="5G" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="5H" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="5I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334891" />
          <node concept="2OqwBi" id="5J" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334891" />
            <node concept="37vLTw" id="5K" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
            </node>
            <node concept="liA8E" id="5L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825334891" />
              <node concept="Xl_RD" id="5M" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364825334891" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1c" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334948" />
          <node concept="2OqwBi" id="5N" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334948" />
            <node concept="37vLTw" id="5O" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
            <node concept="liA8E" id="5P" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825334948" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1d" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825334116" />
          <node concept="2OqwBi" id="5Q" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825334116" />
            <node concept="2OqwBi" id="5R" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825334116" />
              <node concept="2OqwBi" id="5T" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825334116" />
                <node concept="37vLTw" id="5V" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
                <node concept="liA8E" id="5W" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825334116" />
                </node>
              </node>
              <node concept="liA8E" id="5U" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825334116" />
              </node>
            </node>
            <node concept="liA8E" id="5S" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825334116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="5X" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="5Y" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="5Z" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342497" />
          <node concept="2OqwBi" id="60" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342497" />
            <node concept="37vLTw" id="61" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
            </node>
            <node concept="liA8E" id="62" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825342497" />
              <node concept="Xl_RD" id="63" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825342497" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1g" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342574" />
          <node concept="2OqwBi" id="64" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342574" />
            <node concept="37vLTw" id="65" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
            <node concept="liA8E" id="66" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342574" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825342630" />
          <node concept="2OqwBi" id="67" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825342630" />
            <node concept="37vLTw" id="68" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
            <node concept="liA8E" id="69" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825342630" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1i" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825311387" />
        </node>
        <node concept="2Gpval" id="1j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825366924" />
          <node concept="2GrKxI" id="6a" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:3204091364825366926" />
          </node>
          <node concept="2OqwBi" id="6b" role="2GsD0m">
            <uo k="s:originTrace" v="n:3204091364825367975" />
            <node concept="2OqwBi" id="6d" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825367434" />
              <node concept="37vLTw" id="6f" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="6g" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="6e" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364825369189" />
            </node>
          </node>
          <node concept="3clFbS" id="6c" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364825366930" />
            <node concept="3clFbF" id="6h" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825386095" />
              <node concept="2OqwBi" id="6o" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825386095" />
                <node concept="37vLTw" id="6p" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825386095" />
                </node>
                <node concept="liA8E" id="6q" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:3204091364825386095" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6i" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825386095" />
              <node concept="2OqwBi" id="6r" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825386095" />
                <node concept="37vLTw" id="6s" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825386095" />
                </node>
                <node concept="liA8E" id="6t" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825386095" />
                  <node concept="Xl_RD" id="6u" role="37wK5m">
                    <property role="Xl_RC" value="map[" />
                    <uo k="s:originTrace" v="n:3204091364825386095" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6j" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825386195" />
              <node concept="2OqwBi" id="6v" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825386195" />
                <node concept="37vLTw" id="6w" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825386195" />
                </node>
                <node concept="liA8E" id="6x" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825386195" />
                  <node concept="2YIFZM" id="6y" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825403193" />
                    <node concept="2OqwBi" id="6z" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825407145" />
                      <node concept="2GrUjf" id="6$" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6a" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825405778" />
                      </node>
                      <node concept="3TrcHB" id="6_" role="2OqNvi">
                        <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                        <uo k="s:originTrace" v="n:3204091364825411549" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6k" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825413272" />
              <node concept="2OqwBi" id="6A" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825413272" />
                <node concept="37vLTw" id="6B" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825413272" />
                </node>
                <node concept="liA8E" id="6C" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825413272" />
                  <node concept="Xl_RD" id="6D" role="37wK5m">
                    <property role="Xl_RC" value="].write_fd = pipes[" />
                    <uo k="s:originTrace" v="n:3204091364825413272" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6l" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825420456" />
              <node concept="2OqwBi" id="6E" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825420456" />
                <node concept="37vLTw" id="6F" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825420456" />
                </node>
                <node concept="liA8E" id="6G" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825420456" />
                  <node concept="2YIFZM" id="6H" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825426819" />
                    <node concept="2OqwBi" id="6I" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825427811" />
                      <node concept="2GrUjf" id="6J" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6a" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825427101" />
                      </node>
                      <node concept="2bSWHS" id="6K" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3204091364825437496" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6m" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825439283" />
              <node concept="2OqwBi" id="6L" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825439283" />
                <node concept="37vLTw" id="6M" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825439283" />
                </node>
                <node concept="liA8E" id="6N" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825439283" />
                  <node concept="Xl_RD" id="6O" role="37wK5m">
                    <property role="Xl_RC" value="][1]" />
                    <uo k="s:originTrace" v="n:3204091364825439283" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6n" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825440845" />
              <node concept="2OqwBi" id="6P" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825440845" />
                <node concept="37vLTw" id="6Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825440845" />
                </node>
                <node concept="liA8E" id="6R" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:3204091364825440845" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825442594" />
          <node concept="2OqwBi" id="6S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825442594" />
            <node concept="37vLTw" id="6T" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825442594" />
            </node>
            <node concept="liA8E" id="6U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825442594" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1l" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825442670" />
        </node>
        <node concept="3clFbF" id="1m" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825450953" />
          <node concept="2OqwBi" id="6V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825450953" />
            <node concept="37vLTw" id="6W" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825450953" />
            </node>
            <node concept="liA8E" id="6X" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825450953" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1n" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825450953" />
          <node concept="2OqwBi" id="6Y" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825450953" />
            <node concept="37vLTw" id="6Z" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825450953" />
            </node>
            <node concept="liA8E" id="70" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825450953" />
              <node concept="Xl_RD" id="71" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825450953" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1o" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825451853" />
          <node concept="2OqwBi" id="72" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825451853" />
            <node concept="37vLTw" id="73" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825451853" />
            </node>
            <node concept="liA8E" id="74" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825451853" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1p" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825460844" />
          <node concept="2OqwBi" id="75" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825460844" />
            <node concept="2OqwBi" id="76" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825460844" />
              <node concept="2OqwBi" id="78" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825460844" />
                <node concept="37vLTw" id="7a" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825460844" />
                </node>
                <node concept="liA8E" id="7b" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825460844" />
                </node>
              </node>
              <node concept="liA8E" id="79" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825460844" />
              </node>
            </node>
            <node concept="liA8E" id="77" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825460844" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825461608" />
          <node concept="2OqwBi" id="7c" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825461608" />
            <node concept="37vLTw" id="7d" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825461608" />
            </node>
            <node concept="liA8E" id="7e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825461608" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1r" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825461608" />
          <node concept="2OqwBi" id="7f" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825461608" />
            <node concept="37vLTw" id="7g" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825461608" />
            </node>
            <node concept="liA8E" id="7h" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825461608" />
              <node concept="Xl_RD" id="7i" role="37wK5m">
                <property role="Xl_RC" value="threads_data[i].map = map;" />
                <uo k="s:originTrace" v="n:3204091364825461608" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1s" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825461685" />
          <node concept="2OqwBi" id="7j" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825461685" />
            <node concept="37vLTw" id="7k" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825461685" />
            </node>
            <node concept="liA8E" id="7l" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825461685" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1t" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825460844" />
          <node concept="2OqwBi" id="7m" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825460844" />
            <node concept="2OqwBi" id="7n" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825460844" />
              <node concept="2OqwBi" id="7p" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825460844" />
                <node concept="37vLTw" id="7r" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825460844" />
                </node>
                <node concept="liA8E" id="7s" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825460844" />
                </node>
              </node>
              <node concept="liA8E" id="7q" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825460844" />
              </node>
            </node>
            <node concept="liA8E" id="7o" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825460844" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1u" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825469936" />
          <node concept="2OqwBi" id="7t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825469936" />
            <node concept="37vLTw" id="7u" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825469936" />
            </node>
            <node concept="liA8E" id="7v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825469936" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825469936" />
          <node concept="2OqwBi" id="7w" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825469936" />
            <node concept="37vLTw" id="7x" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825469936" />
            </node>
            <node concept="liA8E" id="7y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825469936" />
              <node concept="Xl_RD" id="7z" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825469936" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470036" />
          <node concept="2OqwBi" id="7$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825470036" />
            <node concept="37vLTw" id="7_" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825470036" />
            </node>
            <node concept="liA8E" id="7A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825470036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470092" />
          <node concept="2OqwBi" id="7B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825470092" />
            <node concept="37vLTw" id="7C" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825470092" />
            </node>
            <node concept="liA8E" id="7D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825470092" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470121" />
        </node>
        <node concept="2Gpval" id="1z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825470974" />
          <node concept="2GrKxI" id="7E" role="2Gsz3X">
            <property role="TrG5h" value="actor" />
            <uo k="s:originTrace" v="n:3204091364825470975" />
          </node>
          <node concept="2OqwBi" id="7F" role="2GsD0m">
            <uo k="s:originTrace" v="n:3204091364825470976" />
            <node concept="2OqwBi" id="7H" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825470977" />
              <node concept="37vLTw" id="7J" role="2Oq$k0">
                <ref role="3cqZAo" node="7" resolve="ctx" />
              </node>
              <node concept="liA8E" id="7K" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="7I" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMWzdR" resolve="actors" />
              <uo k="s:originTrace" v="n:3204091364825470978" />
            </node>
          </node>
          <node concept="3clFbS" id="7G" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364825470979" />
            <node concept="3clFbF" id="7L" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485451" />
              <node concept="2OqwBi" id="7U" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485451" />
                <node concept="37vLTw" id="7V" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
                <node concept="liA8E" id="7W" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7M" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485451" />
              <node concept="2OqwBi" id="7X" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485451" />
                <node concept="37vLTw" id="7Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                </node>
                <node concept="liA8E" id="7Z" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825485451" />
                  <node concept="Xl_RD" id="80" role="37wK5m">
                    <property role="Xl_RC" value="pthread_create(&amp;threads[" />
                    <uo k="s:originTrace" v="n:3204091364825485451" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7N" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825485916" />
              <node concept="2OqwBi" id="81" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825485916" />
                <node concept="37vLTw" id="82" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825485916" />
                </node>
                <node concept="liA8E" id="83" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825485916" />
                  <node concept="2YIFZM" id="84" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825492423" />
                    <node concept="2OqwBi" id="85" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825493634" />
                      <node concept="2GrUjf" id="86" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7E" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825492683" />
                      </node>
                      <node concept="2bSWHS" id="87" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3204091364825496760" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7O" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825498414" />
              <node concept="2OqwBi" id="88" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825498414" />
                <node concept="37vLTw" id="89" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825498414" />
                </node>
                <node concept="liA8E" id="8a" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825498414" />
                  <node concept="Xl_RD" id="8b" role="37wK5m">
                    <property role="Xl_RC" value="], NULL, " />
                    <uo k="s:originTrace" v="n:3204091364825498414" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7P" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825498949" />
              <node concept="2OqwBi" id="8c" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825498949" />
                <node concept="37vLTw" id="8d" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825498949" />
                </node>
                <node concept="liA8E" id="8e" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825498949" />
                  <node concept="2OqwBi" id="8f" role="37wK5m">
                    <uo k="s:originTrace" v="n:3204091364825506285" />
                    <node concept="2GrUjf" id="8g" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7E" resolve="actor" />
                      <uo k="s:originTrace" v="n:3204091364825505685" />
                    </node>
                    <node concept="3TrcHB" id="8h" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:3204091364825509022" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Q" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825510881" />
              <node concept="2OqwBi" id="8i" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825510881" />
                <node concept="37vLTw" id="8j" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825510881" />
                </node>
                <node concept="liA8E" id="8k" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825510881" />
                  <node concept="Xl_RD" id="8l" role="37wK5m">
                    <property role="Xl_RC" value=", (void *)&amp;threads_data[" />
                    <uo k="s:originTrace" v="n:3204091364825510881" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7R" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825518165" />
              <node concept="2OqwBi" id="8m" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825518165" />
                <node concept="37vLTw" id="8n" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825518165" />
                </node>
                <node concept="liA8E" id="8o" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825518165" />
                  <node concept="2YIFZM" id="8p" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <uo k="s:originTrace" v="n:3204091364825518166" />
                    <node concept="2OqwBi" id="8q" role="37wK5m">
                      <uo k="s:originTrace" v="n:3204091364825518167" />
                      <node concept="2GrUjf" id="8r" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7E" resolve="actor" />
                        <uo k="s:originTrace" v="n:3204091364825518168" />
                      </node>
                      <node concept="2bSWHS" id="8s" role="2OqNvi">
                        <uo k="s:originTrace" v="n:3204091364825518169" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7S" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825525192" />
              <node concept="2OqwBi" id="8t" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825525192" />
                <node concept="37vLTw" id="8u" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825525192" />
                </node>
                <node concept="liA8E" id="8v" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                  <uo k="s:originTrace" v="n:3204091364825525192" />
                  <node concept="Xl_RD" id="8w" role="37wK5m">
                    <property role="Xl_RC" value="]);" />
                    <uo k="s:originTrace" v="n:3204091364825525192" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7T" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364825526712" />
              <node concept="2OqwBi" id="8x" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364825526712" />
                <node concept="37vLTw" id="8y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364825526712" />
                </node>
                <node concept="liA8E" id="8z" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                  <uo k="s:originTrace" v="n:3204091364825526712" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825529124" />
          <node concept="2OqwBi" id="8$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825529124" />
            <node concept="37vLTw" id="8_" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825529124" />
            </node>
            <node concept="liA8E" id="8A" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825529124" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825529151" />
        </node>
        <node concept="3clFbF" id="1A" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="8B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="8C" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="8D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1B" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540062" />
          <node concept="2OqwBi" id="8E" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540062" />
            <node concept="37vLTw" id="8F" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
            </node>
            <node concept="liA8E" id="8G" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825540062" />
              <node concept="Xl_RD" id="8H" role="37wK5m">
                <property role="Xl_RC" value="for (int i = 0; i &lt; num_threads; i++) {" />
                <uo k="s:originTrace" v="n:3204091364825540062" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1C" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825540208" />
          <node concept="2OqwBi" id="8I" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825540208" />
            <node concept="37vLTw" id="8J" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
            <node concept="liA8E" id="8K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825540208" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1D" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="8L" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="8M" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="8O" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="8Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="8R" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="8P" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="8N" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1E" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="8S" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="8T" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="8U" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1F" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550168" />
          <node concept="2OqwBi" id="8V" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550168" />
            <node concept="37vLTw" id="8W" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
            </node>
            <node concept="liA8E" id="8X" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825550168" />
              <node concept="Xl_RD" id="8Y" role="37wK5m">
                <property role="Xl_RC" value="pthread_join(threads[i], NULL);" />
                <uo k="s:originTrace" v="n:3204091364825550168" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825550222" />
          <node concept="2OqwBi" id="8Z" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825550222" />
            <node concept="37vLTw" id="90" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
            <node concept="liA8E" id="91" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825550222" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825549086" />
          <node concept="2OqwBi" id="92" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825549086" />
            <node concept="2OqwBi" id="93" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825549086" />
              <node concept="2OqwBi" id="95" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825549086" />
                <node concept="37vLTw" id="97" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
                <node concept="liA8E" id="98" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825549086" />
                </node>
              </node>
              <node concept="liA8E" id="96" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825549086" />
              </node>
            </node>
            <node concept="liA8E" id="94" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825549086" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1I" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="99" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="9a" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="9b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1J" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569047" />
          <node concept="2OqwBi" id="9c" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569047" />
            <node concept="37vLTw" id="9d" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
            </node>
            <node concept="liA8E" id="9e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825569047" />
              <node concept="Xl_RD" id="9f" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825569047" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1K" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569124" />
          <node concept="2OqwBi" id="9g" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569124" />
            <node concept="37vLTw" id="9h" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
            <node concept="liA8E" id="9i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569124" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1L" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569180" />
          <node concept="2OqwBi" id="9j" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825569180" />
            <node concept="37vLTw" id="9k" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
            <node concept="liA8E" id="9l" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825569180" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1M" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825569209" />
        </node>
        <node concept="3clFbF" id="1N" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="9m" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="9n" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="9o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825571490" />
          <node concept="2OqwBi" id="9p" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825571490" />
            <node concept="37vLTw" id="9q" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
            </node>
            <node concept="liA8E" id="9r" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825571490" />
              <node concept="Xl_RD" id="9s" role="37wK5m">
                <property role="Xl_RC" value="return 0;" />
                <uo k="s:originTrace" v="n:3204091364825571490" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825573885" />
          <node concept="2OqwBi" id="9t" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825573885" />
            <node concept="37vLTw" id="9u" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
            <node concept="liA8E" id="9v" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364825573885" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825268551" />
          <node concept="2OqwBi" id="9w" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825268551" />
            <node concept="2OqwBi" id="9x" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364825268551" />
              <node concept="2OqwBi" id="9z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364825268551" />
                <node concept="37vLTw" id="9_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
                <node concept="liA8E" id="9A" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364825268551" />
                </node>
              </node>
              <node concept="liA8E" id="9$" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364825268551" />
              </node>
            </node>
            <node concept="liA8E" id="9y" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364825268551" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364825583909" />
          <node concept="2OqwBi" id="9B" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364825583909" />
            <node concept="37vLTw" id="9C" role="2Oq$k0">
              <ref role="3cqZAo" node="1S" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
            </node>
            <node concept="liA8E" id="9D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364825583909" />
              <node concept="Xl_RD" id="9E" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364825583909" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3865756215866094073" />
        <node concept="3uibUv" id="9F" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3865756215866094073" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3865756215866094073" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9G">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Actor_TextGen" />
    <property role="3GE5qa" value="actor" />
    <uo k="s:originTrace" v="n:3204091364823173251" />
    <node concept="3Tm1VV" id="9H" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3uibUv" id="9I" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
    </node>
    <node concept="3clFb_" id="9J" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823173251" />
      <node concept="3cqZAl" id="9K" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3Tm1VV" id="9L" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
      <node concept="3clFbS" id="9M" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3cpWs8" id="9P" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173251" />
          <node concept="3cpWsn" id="aI" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823173251" />
            <node concept="3uibUv" id="aJ" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823173251" />
            </node>
            <node concept="2ShNRf" id="aK" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823173251" />
              <node concept="1pGfFk" id="aL" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823173251" />
                <node concept="37vLTw" id="aM" role="37wK5m">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823173251" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173308" />
          <node concept="2OqwBi" id="aN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173308" />
            <node concept="37vLTw" id="aO" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
            </node>
            <node concept="liA8E" id="aP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173308" />
              <node concept="Xl_RD" id="aQ" role="37wK5m">
                <property role="Xl_RC" value="void *" />
                <uo k="s:originTrace" v="n:3204091364823173308" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9R" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823173477" />
          <node concept="2OqwBi" id="aR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823173477" />
            <node concept="37vLTw" id="aS" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
            </node>
            <node concept="liA8E" id="aT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823173477" />
              <node concept="2OqwBi" id="aU" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823173986" />
                <node concept="2OqwBi" id="aV" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823173513" />
                  <node concept="37vLTw" id="aX" role="2Oq$k0">
                    <ref role="3cqZAo" node="9N" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="aY" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="aW" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823181405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9S" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181644" />
          <node concept="2OqwBi" id="aZ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181644" />
            <node concept="37vLTw" id="b0" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
            </node>
            <node concept="liA8E" id="b1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823181644" />
              <node concept="Xl_RD" id="b2" role="37wK5m">
                <property role="Xl_RC" value="(void *arg) {" />
                <uo k="s:originTrace" v="n:3204091364823181644" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9T" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823181871" />
          <node concept="2OqwBi" id="b3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823181871" />
            <node concept="37vLTw" id="b4" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
            <node concept="liA8E" id="b5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823181871" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182201" />
          <node concept="2OqwBi" id="b6" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182201" />
            <node concept="2OqwBi" id="b7" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823182201" />
              <node concept="2OqwBi" id="b9" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823182201" />
                <node concept="37vLTw" id="bb" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
                <node concept="liA8E" id="bc" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
              </node>
              <node concept="liA8E" id="ba" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823182201" />
              </node>
            </node>
            <node concept="liA8E" id="b8" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823182201" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182421" />
          <node concept="2OqwBi" id="bd" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182421" />
            <node concept="37vLTw" id="be" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
            <node concept="liA8E" id="bf" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182421" />
          <node concept="2OqwBi" id="bg" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182421" />
            <node concept="37vLTw" id="bh" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
            </node>
            <node concept="liA8E" id="bi" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823182421" />
              <node concept="Xl_RD" id="bj" role="37wK5m">
                <property role="Xl_RC" value="ThreadData *data = (ThreadData *)arg;" />
                <uo k="s:originTrace" v="n:3204091364823182421" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9X" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182708" />
          <node concept="2OqwBi" id="bk" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182708" />
            <node concept="37vLTw" id="bl" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823182708" />
            </node>
            <node concept="liA8E" id="bm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823182708" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183536" />
          <node concept="2OqwBi" id="bn" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183536" />
            <node concept="37vLTw" id="bo" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
            <node concept="liA8E" id="bp" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183536" />
          <node concept="2OqwBi" id="bq" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183536" />
            <node concept="37vLTw" id="br" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
            </node>
            <node concept="liA8E" id="bs" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823183536" />
              <node concept="Xl_RD" id="bt" role="37wK5m">
                <property role="Xl_RC" value="char buffer[BUFFER_SIZE];" />
                <uo k="s:originTrace" v="n:3204091364823183536" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183613" />
          <node concept="2OqwBi" id="bu" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183613" />
            <node concept="37vLTw" id="bv" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183613" />
            </node>
            <node concept="liA8E" id="bw" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823183613" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823407812" />
          <node concept="2OqwBi" id="bx" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823407812" />
            <node concept="37vLTw" id="by" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
            <node concept="liA8E" id="bz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823407812" />
          <node concept="2OqwBi" id="b$" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823407812" />
            <node concept="37vLTw" id="b_" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
            </node>
            <node concept="liA8E" id="bA" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823407812" />
              <node concept="Xl_RD" id="bB" role="37wK5m">
                <property role="Xl_RC" value="char *actor_name = &quot;" />
                <uo k="s:originTrace" v="n:3204091364823407812" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823408004" />
          <node concept="2OqwBi" id="bC" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823408004" />
            <node concept="37vLTw" id="bD" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823408004" />
            </node>
            <node concept="liA8E" id="bE" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823408004" />
              <node concept="2OqwBi" id="bF" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364823408513" />
                <node concept="2OqwBi" id="bG" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364823408040" />
                  <node concept="37vLTw" id="bI" role="2Oq$k0">
                    <ref role="3cqZAo" node="9N" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="bJ" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="bH" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3204091364823409302" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409408" />
          <node concept="2OqwBi" id="bK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409408" />
            <node concept="37vLTw" id="bL" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409408" />
            </node>
            <node concept="liA8E" id="bM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823409408" />
              <node concept="Xl_RD" id="bN" role="37wK5m">
                <property role="Xl_RC" value="&quot;;" />
                <uo k="s:originTrace" v="n:3204091364823409408" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823460411" />
          <node concept="2OqwBi" id="bO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823460411" />
            <node concept="37vLTw" id="bP" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823460411" />
            </node>
            <node concept="liA8E" id="bQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823460411" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823460658" />
          <node concept="2OqwBi" id="bR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823460658" />
            <node concept="37vLTw" id="bS" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823460658" />
            </node>
            <node concept="liA8E" id="bT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823460658" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="a7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824545437" />
        </node>
        <node concept="1DcWWT" id="a8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824060511" />
          <node concept="3clFbS" id="bU" role="2LFqv$">
            <uo k="s:originTrace" v="n:3204091364824060511" />
            <node concept="3clFbF" id="bX" role="3cqZAp">
              <uo k="s:originTrace" v="n:3204091364824060511" />
              <node concept="2OqwBi" id="bY" role="3clFbG">
                <uo k="s:originTrace" v="n:3204091364824060511" />
                <node concept="37vLTw" id="bZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="aI" resolve="tgs" />
                  <uo k="s:originTrace" v="n:3204091364824060511" />
                </node>
                <node concept="liA8E" id="c0" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:3204091364824060511" />
                  <node concept="37vLTw" id="c1" role="37wK5m">
                    <ref role="3cqZAo" node="bV" resolve="item" />
                    <uo k="s:originTrace" v="n:3204091364824060511" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="bV" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:3204091364824060511" />
            <node concept="3Tqbb2" id="c2" role="1tU5fm">
              <uo k="s:originTrace" v="n:3204091364824060511" />
            </node>
          </node>
          <node concept="2OqwBi" id="bW" role="1DdaDG">
            <uo k="s:originTrace" v="n:3204091364824060985" />
            <node concept="2OqwBi" id="c3" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824060541" />
              <node concept="37vLTw" id="c5" role="2Oq$k0">
                <ref role="3cqZAo" node="9N" resolve="ctx" />
              </node>
              <node concept="liA8E" id="c6" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="c4" role="2OqNvi">
              <ref role="3TtcxE" to="o1mc:3m_VcJMYehj" resolve="actions" />
              <uo k="s:originTrace" v="n:3204091364824062394" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="a9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824032989" />
        </node>
        <node concept="3clFbF" id="aa" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183233" />
          <node concept="2OqwBi" id="c7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183233" />
            <node concept="37vLTw" id="c8" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
            <node concept="liA8E" id="c9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ab" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183233" />
          <node concept="2OqwBi" id="ca" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183233" />
            <node concept="37vLTw" id="cb" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
            </node>
            <node concept="liA8E" id="cc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823183233" />
              <node concept="Xl_RD" id="cd" role="37wK5m">
                <property role="Xl_RC" value="ssize_t bytes_read = read(data-&gt;read_fd, buffer, BUFFER_SIZE);" />
                <uo k="s:originTrace" v="n:3204091364823183233" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ac" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823183772" />
          <node concept="2OqwBi" id="ce" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823183772" />
            <node concept="37vLTw" id="cf" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823183772" />
            </node>
            <node concept="liA8E" id="cg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823183772" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ad" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184165" />
          <node concept="2OqwBi" id="ch" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184165" />
            <node concept="37vLTw" id="ci" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
            <node concept="liA8E" id="cj" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ae" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184165" />
          <node concept="2OqwBi" id="ck" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184165" />
            <node concept="37vLTw" id="cl" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
            </node>
            <node concept="liA8E" id="cm" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823184165" />
              <node concept="Xl_RD" id="cn" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_read &gt; 0) {" />
                <uo k="s:originTrace" v="n:3204091364823184165" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="af" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184242" />
          <node concept="2OqwBi" id="co" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184242" />
            <node concept="37vLTw" id="cp" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184242" />
            </node>
            <node concept="liA8E" id="cq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823184242" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ag" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184467" />
          <node concept="2OqwBi" id="cr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184467" />
            <node concept="2OqwBi" id="cs" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823184467" />
              <node concept="2OqwBi" id="cu" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823184467" />
                <node concept="37vLTw" id="cw" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
                <node concept="liA8E" id="cx" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
              </node>
              <node concept="liA8E" id="cv" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823184467" />
              </node>
            </node>
            <node concept="liA8E" id="ct" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823184467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ah" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184564" />
          <node concept="2OqwBi" id="cy" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184564" />
            <node concept="37vLTw" id="cz" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184564" />
            </node>
            <node concept="liA8E" id="c$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823184564" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ai" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184564" />
          <node concept="2OqwBi" id="c_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184564" />
            <node concept="37vLTw" id="cA" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823184564" />
            </node>
            <node concept="liA8E" id="cB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823184564" />
              <node concept="Xl_RD" id="cC" role="37wK5m">
                <property role="Xl_RC" value="buffer[bytes_read] = '\0';" />
                <uo k="s:originTrace" v="n:3204091364823184564" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823357549" />
          <node concept="2OqwBi" id="cD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823357549" />
            <node concept="37vLTw" id="cE" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823357549" />
            </node>
            <node concept="liA8E" id="cF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823357549" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ak" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409607" />
          <node concept="2OqwBi" id="cG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409607" />
            <node concept="37vLTw" id="cH" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
            <node concept="liA8E" id="cI" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="al" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823409607" />
          <node concept="2OqwBi" id="cJ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823409607" />
            <node concept="37vLTw" id="cK" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
            </node>
            <node concept="liA8E" id="cL" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823409607" />
              <node concept="Xl_RD" id="cM" role="37wK5m">
                <property role="Xl_RC" value="printf(&quot;%s received message: %s&quot;, actor_name, buffer);" />
                <uo k="s:originTrace" v="n:3204091364823409607" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="am" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823186905" />
          <node concept="2OqwBi" id="cN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823186905" />
            <node concept="37vLTw" id="cO" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823186905" />
            </node>
            <node concept="liA8E" id="cP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823186905" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="an" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299528" />
          <node concept="2OqwBi" id="cQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299528" />
            <node concept="37vLTw" id="cR" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
            <node concept="liA8E" id="cS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ao" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299528" />
          <node concept="2OqwBi" id="cT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299528" />
            <node concept="37vLTw" id="cU" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
            </node>
            <node concept="liA8E" id="cV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299528" />
              <node concept="Xl_RD" id="cW" role="37wK5m">
                <property role="Xl_RC" value="puts(&quot;&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824299528" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ap" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299666" />
          <node concept="2OqwBi" id="cX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299666" />
            <node concept="37vLTw" id="cY" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299666" />
            </node>
            <node concept="liA8E" id="cZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299666" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823184467" />
          <node concept="2OqwBi" id="d0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823184467" />
            <node concept="2OqwBi" id="d1" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823184467" />
              <node concept="2OqwBi" id="d3" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823184467" />
                <node concept="37vLTw" id="d5" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
                <node concept="liA8E" id="d6" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823184467" />
                </node>
              </node>
              <node concept="liA8E" id="d4" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823184467" />
              </node>
            </node>
            <node concept="liA8E" id="d2" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823184467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ar" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823187415" />
          <node concept="2OqwBi" id="d7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823187415" />
            <node concept="37vLTw" id="d8" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
            <node concept="liA8E" id="d9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="as" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823187415" />
          <node concept="2OqwBi" id="da" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823187415" />
            <node concept="37vLTw" id="db" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
            </node>
            <node concept="liA8E" id="dc" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823187415" />
              <node concept="Xl_RD" id="dd" role="37wK5m">
                <property role="Xl_RC" value="} else {" />
                <uo k="s:originTrace" v="n:3204091364823187415" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="at" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612469" />
          <node concept="2OqwBi" id="de" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612469" />
            <node concept="37vLTw" id="df" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612469" />
            </node>
            <node concept="liA8E" id="dg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612469" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="au" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190643" />
          <node concept="2OqwBi" id="dh" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190643" />
            <node concept="2OqwBi" id="di" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823190643" />
              <node concept="2OqwBi" id="dk" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823190643" />
                <node concept="37vLTw" id="dm" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
                <node concept="liA8E" id="dn" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
              </node>
              <node concept="liA8E" id="dl" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823190643" />
              </node>
            </node>
            <node concept="liA8E" id="dj" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823190643" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="av" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189566" />
          <node concept="2OqwBi" id="do" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189566" />
            <node concept="37vLTw" id="dp" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
            <node concept="liA8E" id="dq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189566" />
          <node concept="2OqwBi" id="dr" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189566" />
            <node concept="37vLTw" id="ds" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
            </node>
            <node concept="liA8E" id="dt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823189566" />
              <node concept="Xl_RD" id="du" role="37wK5m">
                <property role="Xl_RC" value="printf(&quot;%s: Error reading from pipe&quot;, actor_name);" />
                <uo k="s:originTrace" v="n:3204091364823189566" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ax" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823189793" />
          <node concept="2OqwBi" id="dv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823189793" />
            <node concept="37vLTw" id="dw" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823189793" />
            </node>
            <node concept="liA8E" id="dx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823189793" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ay" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299608" />
          <node concept="2OqwBi" id="dy" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299608" />
            <node concept="37vLTw" id="dz" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
            <node concept="liA8E" id="d$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="az" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299608" />
          <node concept="2OqwBi" id="d_" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299608" />
            <node concept="37vLTw" id="dA" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
            </node>
            <node concept="liA8E" id="dB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299608" />
              <node concept="Xl_RD" id="dC" role="37wK5m">
                <property role="Xl_RC" value="puts(&quot;&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824299608" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299721" />
          <node concept="2OqwBi" id="dD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299721" />
            <node concept="37vLTw" id="dE" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299721" />
            </node>
            <node concept="liA8E" id="dF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299721" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190643" />
          <node concept="2OqwBi" id="dG" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190643" />
            <node concept="2OqwBi" id="dH" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823190643" />
              <node concept="2OqwBi" id="dJ" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823190643" />
                <node concept="37vLTw" id="dL" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
                <node concept="liA8E" id="dM" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823190643" />
                </node>
              </node>
              <node concept="liA8E" id="dK" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823190643" />
              </node>
            </node>
            <node concept="liA8E" id="dI" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823190643" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190998" />
          <node concept="2OqwBi" id="dN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190998" />
            <node concept="37vLTw" id="dO" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
            <node concept="liA8E" id="dP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823190998" />
          <node concept="2OqwBi" id="dQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823190998" />
            <node concept="37vLTw" id="dR" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
            </node>
            <node concept="liA8E" id="dS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823190998" />
              <node concept="Xl_RD" id="dT" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823190998" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612524" />
          <node concept="2OqwBi" id="dU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612524" />
            <node concept="37vLTw" id="dV" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612524" />
            </node>
            <node concept="liA8E" id="dW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612524" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823182201" />
          <node concept="2OqwBi" id="dX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823182201" />
            <node concept="2OqwBi" id="dY" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823182201" />
              <node concept="2OqwBi" id="e0" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823182201" />
                <node concept="37vLTw" id="e2" role="2Oq$k0">
                  <ref role="3cqZAo" node="9N" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
                <node concept="liA8E" id="e3" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823182201" />
                </node>
              </node>
              <node concept="liA8E" id="e1" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823182201" />
              </node>
            </node>
            <node concept="liA8E" id="dZ" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823182201" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="e4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="e5" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="e6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823191220" />
          <node concept="2OqwBi" id="e7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823191220" />
            <node concept="37vLTw" id="e8" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
            </node>
            <node concept="liA8E" id="e9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823191220" />
              <node concept="Xl_RD" id="ea" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364823191220" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612579" />
          <node concept="2OqwBi" id="eb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612579" />
            <node concept="37vLTw" id="ec" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
            <node concept="liA8E" id="ed" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612579" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823612635" />
          <node concept="2OqwBi" id="ee" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823612635" />
            <node concept="37vLTw" id="ef" role="2Oq$k0">
              <ref role="3cqZAo" node="aI" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
            <node concept="liA8E" id="eg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823612635" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9N" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
        <node concept="3uibUv" id="eh" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823173251" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823173251" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="ei">
    <node concept="39e2AJ" id="ej" role="39e2AI">
      <property role="39e3Y2" value="GetExtension" />
      <node concept="39e2AG" id="eo" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="ep" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="er" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="eq" role="39e2AY">
          <ref role="39e2AS" node="l$" resolve="getFileExtension_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="ek" role="39e2AI">
      <property role="39e3Y2" value="GetFilename" />
      <node concept="39e2AG" id="es" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="et" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="ev" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="eu" role="39e2AY">
          <ref role="39e2AS" node="lz" resolve="getFileName_ActorScript" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="el" role="39e2AI">
      <property role="39e3Y2" value="LanguageUtilityClass" />
      <node concept="39e2AG" id="ew" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1Vca2fl" resolve="Initialization" />
        <node concept="385nmt" id="ex" role="385vvn">
          <property role="385vuF" value="Initialization" />
          <node concept="3u3nmq" id="ez" role="385v07">
            <property role="3u3nmv" value="3204091364822754261" />
          </node>
        </node>
        <node concept="39e2AT" id="ey" role="39e2AY">
          <ref role="39e2AS" node="eQ" resolve="Initialization" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="em" role="39e2AI">
      <property role="39e3Y2" value="TextGenClass" />
      <node concept="39e2AG" id="e$" role="39e3Y0">
        <ref role="39e2AK" to="haeo:3m_VcJMXf7T" resolve="ActorScript_TextGen" />
        <node concept="385nmt" id="eC" role="385vvn">
          <property role="385vuF" value="ActorScript_TextGen" />
          <node concept="3u3nmq" id="eE" role="385v07">
            <property role="3u3nmv" value="3865756215866094073" />
          </node>
        </node>
        <node concept="39e2AT" id="eD" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ActorScript_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="e_" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcbCy3" resolve="Actor_TextGen" />
        <node concept="385nmt" id="eF" role="385vvn">
          <property role="385vuF" value="Actor_TextGen" />
          <node concept="3u3nmq" id="eH" role="385v07">
            <property role="3u3nmv" value="3204091364823173251" />
          </node>
        </node>
        <node concept="39e2AT" id="eG" role="39e2AY">
          <ref role="39e2AS" node="9G" resolve="Actor_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="eA" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VcgoXq" resolve="Message_TextGen" />
        <node concept="385nmt" id="eI" role="385vvn">
          <property role="385vuF" value="Message_TextGen" />
          <node concept="3u3nmq" id="eK" role="385v07">
            <property role="3u3nmv" value="3204091364824420186" />
          </node>
        </node>
        <node concept="39e2AT" id="eJ" role="39e2AY">
          <ref role="39e2AS" node="iq" resolve="Message_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="eB" role="39e3Y0">
        <ref role="39e2AK" to="haeo:2LRe1VceMmW" resolve="SendMessage_TextGen" />
        <node concept="385nmt" id="eL" role="385vvn">
          <property role="385vuF" value="SendMessage_TextGen" />
          <node concept="3u3nmq" id="eN" role="385v07">
            <property role="3u3nmv" value="3204091364823999932" />
          </node>
        </node>
        <node concept="39e2AT" id="eM" role="39e2AY">
          <ref role="39e2AS" node="jm" resolve="SendMessage_TextGen" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="en" role="39e2AI">
      <property role="39e3Y2" value="TextGenAspectDescriptorCons" />
      <node concept="39e2AG" id="eO" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="eP" role="39e2AY">
          <ref role="39e2AS" node="ls" resolve="TextGenAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="eQ">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="Initialization" />
    <uo k="s:originTrace" v="n:3204091364822754261" />
    <node concept="3Tm1VV" id="eR" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364822754261" />
    </node>
    <node concept="2YIFZL" id="eS" role="jymVt">
      <property role="TrG5h" value="init" />
      <uo k="s:originTrace" v="n:3204091364822754261" />
      <node concept="3cqZAl" id="eT" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3Tm1VV" id="eU" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364822754261" />
      </node>
      <node concept="3clFbS" id="eV" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3cpWs8" id="eX" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754261" />
          <node concept="3cpWsn" id="fH" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364822754261" />
            <node concept="3uibUv" id="fI" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364822754261" />
            </node>
            <node concept="2ShNRf" id="fJ" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364822754261" />
              <node concept="1pGfFk" id="fK" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364822754261" />
                <node concept="37vLTw" id="fL" role="37wK5m">
                  <ref role="3cqZAo" node="eW" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822754261" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="eY" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754369" />
          <node concept="2OqwBi" id="fM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754369" />
            <node concept="37vLTw" id="fN" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
            </node>
            <node concept="liA8E" id="fO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754369" />
              <node concept="Xl_RD" id="fP" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdio.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754369" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="eZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882556" />
          <node concept="2OqwBi" id="fQ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882556" />
            <node concept="37vLTw" id="fR" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
            <node concept="liA8E" id="fS" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882556" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f0" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754506" />
          <node concept="2OqwBi" id="fT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754506" />
            <node concept="37vLTw" id="fU" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
            </node>
            <node concept="liA8E" id="fV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754506" />
              <node concept="Xl_RD" id="fW" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;stdlib.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754506" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f1" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882601" />
          <node concept="2OqwBi" id="fX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882601" />
            <node concept="37vLTw" id="fY" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
            <node concept="liA8E" id="fZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882601" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f2" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754555" />
          <node concept="2OqwBi" id="g0" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754555" />
            <node concept="37vLTw" id="g1" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
            </node>
            <node concept="liA8E" id="g2" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754555" />
              <node concept="Xl_RD" id="g3" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;pthread.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754555" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f3" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882645" />
          <node concept="2OqwBi" id="g4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882645" />
            <node concept="37vLTw" id="g5" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
            <node concept="liA8E" id="g6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882645" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f4" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754594" />
          <node concept="2OqwBi" id="g7" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754594" />
            <node concept="37vLTw" id="g8" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
            </node>
            <node concept="liA8E" id="g9" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754594" />
              <node concept="Xl_RD" id="ga" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;unistd.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754594" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f5" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882689" />
          <node concept="2OqwBi" id="gb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882689" />
            <node concept="37vLTw" id="gc" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
            <node concept="liA8E" id="gd" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882689" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f6" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754655" />
          <node concept="2OqwBi" id="ge" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754655" />
            <node concept="37vLTw" id="gf" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
            </node>
            <node concept="liA8E" id="gg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754655" />
              <node concept="Xl_RD" id="gh" role="37wK5m">
                <property role="Xl_RC" value="#include &lt;string.h&gt;" />
                <uo k="s:originTrace" v="n:3204091364822754655" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f7" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882714" />
          <node concept="2OqwBi" id="gi" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882714" />
            <node concept="37vLTw" id="gj" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
            <node concept="liA8E" id="gk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882714" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f8" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882863" />
          <node concept="2OqwBi" id="gl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882863" />
            <node concept="37vLTw" id="gm" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
            <node concept="liA8E" id="gn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882863" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f9" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754823" />
          <node concept="2OqwBi" id="go" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754823" />
            <node concept="37vLTw" id="gp" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
            </node>
            <node concept="liA8E" id="gq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754823" />
              <node concept="Xl_RD" id="gr" role="37wK5m">
                <property role="Xl_RC" value="#define SIZE 100" />
                <uo k="s:originTrace" v="n:3204091364822754823" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fa" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882758" />
          <node concept="2OqwBi" id="gs" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882758" />
            <node concept="37vLTw" id="gt" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
            <node concept="liA8E" id="gu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882758" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fb" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822754917" />
          <node concept="2OqwBi" id="gv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822754917" />
            <node concept="37vLTw" id="gw" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
            </node>
            <node concept="liA8E" id="gx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822754917" />
              <node concept="Xl_RD" id="gy" role="37wK5m">
                <property role="Xl_RC" value="#define BUFFER_SIZE 1024" />
                <uo k="s:originTrace" v="n:3204091364822754917" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fc" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882783" />
          <node concept="2OqwBi" id="gz" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882783" />
            <node concept="37vLTw" id="g$" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
            <node concept="liA8E" id="g_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882783" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fd" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882943" />
          <node concept="2OqwBi" id="gA" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882943" />
            <node concept="37vLTw" id="gB" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
            <node concept="liA8E" id="gC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882943" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fe" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755293" />
          <node concept="2OqwBi" id="gD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755293" />
            <node concept="37vLTw" id="gE" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
            </node>
            <node concept="liA8E" id="gF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755293" />
              <node concept="Xl_RD" id="gG" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364822755293" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ff" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822882986" />
          <node concept="2OqwBi" id="gH" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822882986" />
            <node concept="37vLTw" id="gI" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
            <node concept="liA8E" id="gJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822882986" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fg" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="gK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="gL" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="gN" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="gP" role="2Oq$k0">
                  <ref role="3cqZAo" node="eW" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="gQ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="gO" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="gM" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fh" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="gR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="gS" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="gT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fi" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755431" />
          <node concept="2OqwBi" id="gU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755431" />
            <node concept="37vLTw" id="gV" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
            </node>
            <node concept="liA8E" id="gW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755431" />
              <node concept="Xl_RD" id="gX" role="37wK5m">
                <property role="Xl_RC" value="int address" />
                <uo k="s:originTrace" v="n:3204091364822755431" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883011" />
          <node concept="2OqwBi" id="gY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883011" />
            <node concept="37vLTw" id="gZ" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
            <node concept="liA8E" id="h0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883011" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fk" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="h1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="h2" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="h3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fl" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755512" />
          <node concept="2OqwBi" id="h4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755512" />
            <node concept="37vLTw" id="h5" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
            </node>
            <node concept="liA8E" id="h6" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755512" />
              <node concept="Xl_RD" id="h7" role="37wK5m">
                <property role="Xl_RC" value="int write_fd" />
                <uo k="s:originTrace" v="n:3204091364822755512" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fm" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822883036" />
          <node concept="2OqwBi" id="h8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822883036" />
            <node concept="37vLTw" id="h9" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
            <node concept="liA8E" id="ha" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364822883036" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fn" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755792" />
          <node concept="2OqwBi" id="hb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755792" />
            <node concept="2OqwBi" id="hc" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364822755792" />
              <node concept="2OqwBi" id="he" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364822755792" />
                <node concept="37vLTw" id="hg" role="2Oq$k0">
                  <ref role="3cqZAo" node="eW" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
                <node concept="liA8E" id="hh" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364822755792" />
                </node>
              </node>
              <node concept="liA8E" id="hf" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364822755792" />
              </node>
            </node>
            <node concept="liA8E" id="hd" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364822755792" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fo" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364822755564" />
          <node concept="2OqwBi" id="hi" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364822755564" />
            <node concept="37vLTw" id="hj" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
            </node>
            <node concept="liA8E" id="hk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364822755564" />
              <node concept="Xl_RD" id="hl" role="37wK5m">
                <property role="Xl_RC" value="} map_item;" />
                <uo k="s:originTrace" v="n:3204091364822755564" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fp" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124161" />
          <node concept="2OqwBi" id="hm" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124161" />
            <node concept="37vLTw" id="hn" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
            <node concept="liA8E" id="ho" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124161" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fq" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124169" />
          <node concept="2OqwBi" id="hp" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124169" />
            <node concept="37vLTw" id="hq" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
            <node concept="liA8E" id="hr" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124169" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="fr" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025775" />
        </node>
        <node concept="3clFbF" id="fs" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823025955" />
          <node concept="2OqwBi" id="hs" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823025955" />
            <node concept="37vLTw" id="ht" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
            </node>
            <node concept="liA8E" id="hu" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823025955" />
              <node concept="Xl_RD" id="hv" role="37wK5m">
                <property role="Xl_RC" value="typedef struct {" />
                <uo k="s:originTrace" v="n:3204091364823025955" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ft" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124116" />
          <node concept="2OqwBi" id="hw" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124116" />
            <node concept="37vLTw" id="hx" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
            <node concept="liA8E" id="hy" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fu" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="hz" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="h$" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="hA" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="hC" role="2Oq$k0">
                  <ref role="3cqZAo" node="eW" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="hD" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="hB" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="h_" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="hE" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="hF" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="hG" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026094" />
          <node concept="2OqwBi" id="hH" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026094" />
            <node concept="37vLTw" id="hI" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
            </node>
            <node concept="liA8E" id="hJ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026094" />
              <node concept="Xl_RD" id="hK" role="37wK5m">
                <property role="Xl_RC" value="map_item *map;" />
                <uo k="s:originTrace" v="n:3204091364823026094" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026235" />
          <node concept="2OqwBi" id="hL" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026235" />
            <node concept="37vLTw" id="hM" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
            <node concept="liA8E" id="hN" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026235" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fy" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="hO" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="hP" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="hQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026283" />
          <node concept="2OqwBi" id="hR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026283" />
            <node concept="37vLTw" id="hS" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
            </node>
            <node concept="liA8E" id="hT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026283" />
              <node concept="Xl_RD" id="hU" role="37wK5m">
                <property role="Xl_RC" value="int read_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026283" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026390" />
          <node concept="2OqwBi" id="hV" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026390" />
            <node concept="37vLTw" id="hW" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
            <node concept="liA8E" id="hX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026390" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="f_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="hY" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="hZ" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="i0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026442" />
          <node concept="2OqwBi" id="i1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026442" />
            <node concept="37vLTw" id="i2" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
            </node>
            <node concept="liA8E" id="i3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823026442" />
              <node concept="Xl_RD" id="i4" role="37wK5m">
                <property role="Xl_RC" value="int write_fd;" />
                <uo k="s:originTrace" v="n:3204091364823026442" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026591" />
          <node concept="2OqwBi" id="i5" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026591" />
            <node concept="37vLTw" id="i6" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
            <node concept="liA8E" id="i7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823026591" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823026934" />
          <node concept="2OqwBi" id="i8" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823026934" />
            <node concept="2OqwBi" id="i9" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364823026934" />
              <node concept="2OqwBi" id="ib" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364823026934" />
                <node concept="37vLTw" id="id" role="2Oq$k0">
                  <ref role="3cqZAo" node="eW" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
                <node concept="liA8E" id="ie" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364823026934" />
                </node>
              </node>
              <node concept="liA8E" id="ic" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364823026934" />
              </node>
            </node>
            <node concept="liA8E" id="ia" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364823026934" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027309" />
          <node concept="2OqwBi" id="if" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027309" />
            <node concept="37vLTw" id="ig" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
            </node>
            <node concept="liA8E" id="ih" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823027309" />
              <node concept="Xl_RD" id="ii" role="37wK5m">
                <property role="Xl_RC" value="} ThreadData;" />
                <uo k="s:originTrace" v="n:3204091364823027309" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823027467" />
          <node concept="2OqwBi" id="ij" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823027467" />
            <node concept="37vLTw" id="ik" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
            <node concept="liA8E" id="il" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823027467" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823124367" />
          <node concept="2OqwBi" id="im" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823124367" />
            <node concept="37vLTw" id="in" role="2Oq$k0">
              <ref role="3cqZAo" node="fH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
            <node concept="liA8E" id="io" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364823124367" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="fG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823076252" />
        </node>
      </node>
      <node concept="37vLTG" id="eW" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364822754261" />
        <node concept="3uibUv" id="ip" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364822754261" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="iq">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Message_TextGen" />
    <property role="3GE5qa" value="actions" />
    <uo k="s:originTrace" v="n:3204091364824420186" />
    <node concept="3Tm1VV" id="ir" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3uibUv" id="is" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
    </node>
    <node concept="3clFb_" id="it" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364824420186" />
      <node concept="3cqZAl" id="iu" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3Tm1VV" id="iv" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
      <node concept="3clFbS" id="iw" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3cpWs8" id="iz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420186" />
          <node concept="3cpWsn" id="iH" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364824420186" />
            <node concept="3uibUv" id="iI" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364824420186" />
            </node>
            <node concept="2ShNRf" id="iJ" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364824420186" />
              <node concept="1pGfFk" id="iK" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364824420186" />
                <node concept="37vLTw" id="iL" role="37wK5m">
                  <ref role="3cqZAo" node="ix" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824420186" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="iM" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="iN" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="iO" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896554" />
          <node concept="2OqwBi" id="iP" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896554" />
            <node concept="37vLTw" id="iQ" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
            </node>
            <node concept="liA8E" id="iR" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824896554" />
              <node concept="Xl_RD" id="iS" role="37wK5m">
                <property role="Xl_RC" value="// message to send" />
                <uo k="s:originTrace" v="n:3204091364824896554" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896654" />
          <node concept="2OqwBi" id="iT" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896654" />
            <node concept="37vLTw" id="iU" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
            <node concept="liA8E" id="iV" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896654" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420243" />
          <node concept="2OqwBi" id="iW" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420243" />
            <node concept="37vLTw" id="iX" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
            <node concept="liA8E" id="iY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420243" />
          <node concept="2OqwBi" id="iZ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420243" />
            <node concept="37vLTw" id="j0" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
            </node>
            <node concept="liA8E" id="j1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824420243" />
              <node concept="Xl_RD" id="j2" role="37wK5m">
                <property role="Xl_RC" value="char *message = &quot;" />
                <uo k="s:originTrace" v="n:3204091364824420243" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824420366" />
          <node concept="2OqwBi" id="j3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824420366" />
            <node concept="37vLTw" id="j4" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824420366" />
            </node>
            <node concept="liA8E" id="j5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824420366" />
              <node concept="2OqwBi" id="j6" role="37wK5m">
                <uo k="s:originTrace" v="n:3204091364824420877" />
                <node concept="2OqwBi" id="j7" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3204091364824420402" />
                  <node concept="37vLTw" id="j9" role="2Oq$k0">
                    <ref role="3cqZAo" node="ix" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="ja" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="j8" role="2OqNvi">
                  <ref role="3TsBF5" to="o1mc:3m_VcJMWzdM" resolve="text" />
                  <uo k="s:originTrace" v="n:3204091364824422291" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824422531" />
          <node concept="2OqwBi" id="jb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824422531" />
            <node concept="37vLTw" id="jc" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824422531" />
            </node>
            <node concept="liA8E" id="jd" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824422531" />
              <node concept="Xl_RD" id="je" role="37wK5m">
                <property role="Xl_RC" value="&quot;;" />
                <uo k="s:originTrace" v="n:3204091364824422531" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824422666" />
          <node concept="2OqwBi" id="jf" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824422666" />
            <node concept="37vLTw" id="jg" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824422666" />
            </node>
            <node concept="liA8E" id="jh" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824422666" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824896873" />
          <node concept="2OqwBi" id="ji" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824896873" />
            <node concept="37vLTw" id="jj" role="2Oq$k0">
              <ref role="3cqZAo" node="iH" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824896873" />
            </node>
            <node concept="liA8E" id="jk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824896873" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ix" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
        <node concept="3uibUv" id="jl" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364824420186" />
        </node>
      </node>
      <node concept="2AHcQZ" id="iy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364824420186" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="jm">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SendMessage_TextGen" />
    <property role="3GE5qa" value="actions" />
    <uo k="s:originTrace" v="n:3204091364823999932" />
    <node concept="3Tm1VV" id="jn" role="1B3o_S">
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3uibUv" id="jo" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
    </node>
    <node concept="3clFb_" id="jp" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3204091364823999932" />
      <node concept="3cqZAl" id="jq" role="3clF45">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3Tm1VV" id="jr" role="1B3o_S">
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
      <node concept="3clFbS" id="js" role="3clF47">
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3cpWs8" id="jv" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999932" />
          <node concept="3cpWsn" id="jR" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3204091364823999932" />
            <node concept="3uibUv" id="jS" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3204091364823999932" />
            </node>
            <node concept="2ShNRf" id="jT" role="33vP2m">
              <uo k="s:originTrace" v="n:3204091364823999932" />
              <node concept="1pGfFk" id="jU" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3204091364823999932" />
                <node concept="37vLTw" id="jV" role="37wK5m">
                  <ref role="3cqZAo" node="jt" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364823999932" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jw" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824249952" />
          <node concept="2OqwBi" id="jW" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824249952" />
            <node concept="37vLTw" id="jX" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
            <node concept="liA8E" id="jY" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jx" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824249952" />
          <node concept="2OqwBi" id="jZ" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824249952" />
            <node concept="37vLTw" id="k0" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
            </node>
            <node concept="liA8E" id="k1" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824249952" />
              <node concept="Xl_RD" id="k2" role="37wK5m">
                <property role="Xl_RC" value="int receiver_address = " />
                <uo k="s:originTrace" v="n:3204091364824249952" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jy" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824270279" />
          <node concept="2OqwBi" id="k3" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824270279" />
            <node concept="37vLTw" id="k4" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824270279" />
            </node>
            <node concept="liA8E" id="k5" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824270279" />
              <node concept="2YIFZM" id="k6" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3204091364824750557" />
                <node concept="2OqwBi" id="k7" role="37wK5m">
                  <uo k="s:originTrace" v="n:3204091364824753109" />
                  <node concept="2OqwBi" id="k8" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3204091364824751551" />
                    <node concept="2OqwBi" id="ka" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3204091364824750718" />
                      <node concept="37vLTw" id="kc" role="2Oq$k0">
                        <ref role="3cqZAo" node="jt" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="kd" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="kb" role="2OqNvi">
                      <ref role="3Tt5mk" to="o1mc:3m_VcJMWARR" resolve="receiver" />
                      <uo k="s:originTrace" v="n:3204091364824752190" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="k9" role="2OqNvi">
                    <ref role="3TsBF5" to="o1mc:3m_VcJMWzdw" resolve="address" />
                    <uo k="s:originTrace" v="n:3204091364824753880" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jz" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299122" />
          <node concept="2OqwBi" id="ke" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299122" />
            <node concept="37vLTw" id="kf" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299122" />
            </node>
            <node concept="liA8E" id="kg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824299122" />
              <node concept="Xl_RD" id="kh" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3204091364824299122" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824299279" />
          <node concept="2OqwBi" id="ki" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824299279" />
            <node concept="37vLTw" id="kj" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824299279" />
            </node>
            <node concept="liA8E" id="kk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824299279" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="j_" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="kl" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="km" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="kn" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jA" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364823999990" />
          <node concept="2OqwBi" id="ko" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364823999990" />
            <node concept="37vLTw" id="kp" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
            </node>
            <node concept="liA8E" id="kq" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364823999990" />
              <node concept="Xl_RD" id="kr" role="37wK5m">
                <property role="Xl_RC" value="ssize_t bytes_written = write(data-&gt;map[receiver_address].write_fd, message, strlen(message));" />
                <uo k="s:originTrace" v="n:3204091364823999990" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jB" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824005116" />
          <node concept="2OqwBi" id="ks" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824005116" />
            <node concept="37vLTw" id="kt" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
            <node concept="liA8E" id="ku" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824005116" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jC" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="kv" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="kw" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="kx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jD" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006418" />
          <node concept="2OqwBi" id="ky" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006418" />
            <node concept="37vLTw" id="kz" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
            </node>
            <node concept="liA8E" id="k$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824006418" />
              <node concept="Xl_RD" id="k_" role="37wK5m">
                <property role="Xl_RC" value="if (bytes_written == -1) {" />
                <uo k="s:originTrace" v="n:3204091364824006418" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824006475" />
          <node concept="2OqwBi" id="kA" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824006475" />
            <node concept="37vLTw" id="kB" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
            <node concept="liA8E" id="kC" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824006475" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="kD" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="kE" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="kG" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="kI" role="2Oq$k0">
                  <ref role="3cqZAo" node="jt" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="kJ" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="kH" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="kF" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jG" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="kK" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="kL" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="kM" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jH" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824007688" />
          <node concept="2OqwBi" id="kN" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824007688" />
            <node concept="37vLTw" id="kO" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
            </node>
            <node concept="liA8E" id="kP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824007688" />
              <node concept="Xl_RD" id="kQ" role="37wK5m">
                <property role="Xl_RC" value="perror(&quot;write&quot;);" />
                <uo k="s:originTrace" v="n:3204091364824007688" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jI" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657942" />
          <node concept="2OqwBi" id="kR" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657942" />
            <node concept="37vLTw" id="kS" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
            <node concept="liA8E" id="kT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657942" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="kU" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="kV" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="kW" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jK" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008569" />
          <node concept="2OqwBi" id="kX" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008569" />
            <node concept="37vLTw" id="kY" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
            </node>
            <node concept="liA8E" id="kZ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008569" />
              <node concept="Xl_RD" id="l0" role="37wK5m">
                <property role="Xl_RC" value="exit(EXIT_FAILURE);" />
                <uo k="s:originTrace" v="n:3204091364824008569" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jL" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824657997" />
          <node concept="2OqwBi" id="l1" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824657997" />
            <node concept="37vLTw" id="l2" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
            <node concept="liA8E" id="l3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824657997" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jM" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008237" />
          <node concept="2OqwBi" id="l4" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008237" />
            <node concept="2OqwBi" id="l5" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3204091364824008237" />
              <node concept="2OqwBi" id="l7" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3204091364824008237" />
                <node concept="37vLTw" id="l9" role="2Oq$k0">
                  <ref role="3cqZAo" node="jt" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
                <node concept="liA8E" id="la" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3204091364824008237" />
                </node>
              </node>
              <node concept="liA8E" id="l8" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3204091364824008237" />
              </node>
            </node>
            <node concept="liA8E" id="l6" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3204091364824008237" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jN" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="lb" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="lc" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="ld" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jO" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824008857" />
          <node concept="2OqwBi" id="le" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824008857" />
            <node concept="37vLTw" id="lf" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
            </node>
            <node concept="liA8E" id="lg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3204091364824008857" />
              <node concept="Xl_RD" id="lh" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3204091364824008857" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jP" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824658052" />
          <node concept="2OqwBi" id="li" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824658052" />
            <node concept="37vLTw" id="lj" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
            <node concept="liA8E" id="lk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824658052" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3204091364824658108" />
          <node concept="2OqwBi" id="ll" role="3clFbG">
            <uo k="s:originTrace" v="n:3204091364824658108" />
            <node concept="37vLTw" id="lm" role="2Oq$k0">
              <ref role="3cqZAo" node="jR" resolve="tgs" />
              <uo k="s:originTrace" v="n:3204091364824658108" />
            </node>
            <node concept="liA8E" id="ln" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3204091364824658108" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="jt" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
        <node concept="3uibUv" id="lo" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3204091364823999932" />
        </node>
      </node>
      <node concept="2AHcQZ" id="ju" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3204091364823999932" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="lp">
    <property role="TrG5h" value="TextGenAspectDescriptor" />
    <node concept="312cEg" id="lq" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="l_" role="1B3o_S" />
      <node concept="2eloPW" id="lA" role="1tU5fm">
        <property role="2ely0U" value="ActorLanguage.structure.LanguageConceptSwitch" />
        <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
      </node>
      <node concept="2ShNRf" id="lB" role="33vP2m">
        <node concept="xCZzO" id="lC" role="2ShVmc">
          <property role="xCZzQ" value="ActorLanguage.structure.LanguageConceptSwitch" />
          <node concept="3uibUv" id="lD" role="xCZzL">
            <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lr" role="jymVt" />
    <node concept="3clFbW" id="ls" role="jymVt">
      <node concept="3cqZAl" id="lE" role="3clF45" />
      <node concept="3clFbS" id="lF" role="3clF47" />
      <node concept="3Tm1VV" id="lG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="lt" role="jymVt" />
    <node concept="3Tm1VV" id="lu" role="1B3o_S" />
    <node concept="3uibUv" id="lv" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenAspectBase" resolve="TextGenAspectBase" />
    </node>
    <node concept="3clFb_" id="lw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="lH" role="1B3o_S" />
      <node concept="3uibUv" id="lI" role="3clF45">
        <ref role="3uigEE" to="yfwt:~TextGenDescriptor" resolve="TextGenDescriptor" />
      </node>
      <node concept="37vLTG" id="lJ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="lN" role="1tU5fm" />
        <node concept="2AHcQZ" id="lO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="lK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="lL" role="3clF47">
        <node concept="3KaCP$" id="lP" role="3cqZAp">
          <node concept="2OqwBi" id="lR" role="3KbGdf">
            <node concept="37vLTw" id="lW" role="2Oq$k0">
              <ref role="3cqZAo" node="lq" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="lX" role="2OqNvi">
              <ref role="37wK5l" to="tpcf:1OW7rNmnuDr" resolve="index" />
              <node concept="37vLTw" id="lY" role="37wK5m">
                <ref role="3cqZAo" node="lJ" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lS" role="3KbHQx">
            <node concept="1n$iZg" id="lZ" role="3Kbmr1">
              <property role="1n_iUB" value="Actor" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="m0" role="3Kbo56">
              <node concept="3cpWs6" id="m1" role="3cqZAp">
                <node concept="2ShNRf" id="m2" role="3cqZAk">
                  <node concept="HV5vD" id="m3" role="2ShVmc">
                    <ref role="HV5vE" node="9G" resolve="Actor_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lT" role="3KbHQx">
            <node concept="1n$iZg" id="m4" role="3Kbmr1">
              <property role="1n_iUB" value="ActorScript" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="m5" role="3Kbo56">
              <node concept="3cpWs6" id="m6" role="3cqZAp">
                <node concept="2ShNRf" id="m7" role="3cqZAk">
                  <node concept="HV5vD" id="m8" role="2ShVmc">
                    <ref role="HV5vE" node="0" resolve="ActorScript_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lU" role="3KbHQx">
            <node concept="1n$iZg" id="m9" role="3Kbmr1">
              <property role="1n_iUB" value="Message" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="ma" role="3Kbo56">
              <node concept="3cpWs6" id="mb" role="3cqZAp">
                <node concept="2ShNRf" id="mc" role="3cqZAk">
                  <node concept="HV5vD" id="md" role="2ShVmc">
                    <ref role="HV5vE" node="iq" resolve="Message_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lV" role="3KbHQx">
            <node concept="1n$iZg" id="me" role="3Kbmr1">
              <property role="1n_iUB" value="SendMessage" />
              <property role="1n_ezw" value="ActorLanguage.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="mf" role="3Kbo56">
              <node concept="3cpWs6" id="mg" role="3cqZAp">
                <node concept="2ShNRf" id="mh" role="3cqZAk">
                  <node concept="HV5vD" id="mi" role="2ShVmc">
                    <ref role="HV5vE" node="jm" resolve="SendMessage_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="lQ" role="3cqZAp">
          <node concept="10Nm6u" id="mj" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="lM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lx" role="jymVt" />
    <node concept="3clFb_" id="ly" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="breakdownToUnits" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="mk" role="1B3o_S" />
      <node concept="3cqZAl" id="ml" role="3clF45" />
      <node concept="37vLTG" id="mm" role="3clF46">
        <property role="TrG5h" value="outline" />
        <node concept="3uibUv" id="mp" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenModelOutline" resolve="TextGenModelOutline" />
        </node>
        <node concept="2AHcQZ" id="mq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="mn" role="3clF47">
        <node concept="1DcWWT" id="mr" role="3cqZAp">
          <node concept="3clFbS" id="ms" role="2LFqv$">
            <node concept="3clFbJ" id="mv" role="3cqZAp">
              <node concept="3clFbS" id="mw" role="3clFbx">
                <node concept="3cpWs8" id="my" role="3cqZAp">
                  <node concept="3cpWsn" id="mA" role="3cpWs9">
                    <property role="TrG5h" value="fname" />
                    <node concept="3uibUv" id="mB" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="mC" role="33vP2m">
                      <ref role="37wK5l" node="lz" resolve="getFileName_ActorScript" />
                      <node concept="37vLTw" id="mD" role="37wK5m">
                        <ref role="3cqZAo" node="mt" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="mz" role="3cqZAp">
                  <node concept="3cpWsn" id="mE" role="3cpWs9">
                    <property role="TrG5h" value="ext" />
                    <node concept="3uibUv" id="mF" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="mG" role="33vP2m">
                      <ref role="37wK5l" node="l$" resolve="getFileExtension_ActorScript" />
                      <node concept="37vLTw" id="mH" role="37wK5m">
                        <ref role="3cqZAo" node="mt" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="m$" role="3cqZAp">
                  <node concept="2OqwBi" id="mI" role="3clFbG">
                    <node concept="37vLTw" id="mJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="mm" resolve="outline" />
                    </node>
                    <node concept="liA8E" id="mK" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenModelOutline.registerTextUnit(java.lang.String,java.lang.String,java.nio.charset.Charset,org.jetbrains.mps.openapi.model.SNode...)" resolve="registerTextUnit" />
                      <node concept="3K4zz7" id="mL" role="37wK5m">
                        <node concept="1eOMI4" id="mN" role="3K4GZi">
                          <node concept="3cpWs3" id="mQ" role="1eOMHV">
                            <node concept="37vLTw" id="mR" role="3uHU7w">
                              <ref role="3cqZAo" node="mE" resolve="ext" />
                            </node>
                            <node concept="3cpWs3" id="mS" role="3uHU7B">
                              <node concept="37vLTw" id="mT" role="3uHU7B">
                                <ref role="3cqZAo" node="mA" resolve="fname" />
                              </node>
                              <node concept="1Xhbcc" id="mU" role="3uHU7w">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="mO" role="3K4E3e">
                          <ref role="3cqZAo" node="mA" resolve="fname" />
                        </node>
                        <node concept="3clFbC" id="mP" role="3K4Cdx">
                          <node concept="10Nm6u" id="mV" role="3uHU7w" />
                          <node concept="37vLTw" id="mW" role="3uHU7B">
                            <ref role="3cqZAo" node="mE" resolve="ext" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="mM" role="37wK5m">
                        <ref role="3cqZAo" node="mt" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="m_" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="mx" role="3clFbw">
                <node concept="2OqwBi" id="mX" role="2Oq$k0">
                  <node concept="37vLTw" id="mZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="mt" resolve="root" />
                  </node>
                  <node concept="liA8E" id="n0" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="mY" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="35c_gC" id="n1" role="37wK5m">
                    <ref role="35c_gD" to="o1mc:3m_VcJMWzdQ" resolve="ActorScript" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="mt" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="n2" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="mu" role="1DdaDG">
            <node concept="2OqwBi" id="n3" role="2Oq$k0">
              <node concept="37vLTw" id="n5" role="2Oq$k0">
                <ref role="3cqZAo" node="mm" resolve="outline" />
              </node>
              <node concept="liA8E" id="n6" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenModelOutline.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="n4" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="mo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="lz" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileName_ActorScript" />
      <node concept="3clFbS" id="n7" role="3clF47">
        <node concept="3cpWs6" id="nb" role="3cqZAp">
          <node concept="2OqwBi" id="nc" role="3cqZAk">
            <node concept="37vLTw" id="nd" role="2Oq$k0">
              <ref role="3cqZAo" node="na" resolve="node" />
            </node>
            <node concept="liA8E" id="ne" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="n8" role="1B3o_S" />
      <node concept="3uibUv" id="n9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="na" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="nf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="l$" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileExtension_ActorScript" />
      <node concept="3clFbS" id="ng" role="3clF47">
        <node concept="3clFbF" id="nk" role="3cqZAp">
          <uo k="s:originTrace" v="n:3865756215866095114" />
          <node concept="Xl_RD" id="nl" role="3clFbG">
            <property role="Xl_RC" value="c" />
            <uo k="s:originTrace" v="n:3865756215866095113" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="nh" role="1B3o_S" />
      <node concept="3uibUv" id="ni" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="nj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="nm" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
</model>
