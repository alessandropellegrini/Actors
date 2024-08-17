package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public class ActorScript_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("#include <ROOT-Sim.h>");
    tgs.newLine();
    tgs.append("#include <ROOT-Sim/topology.h>");
    tgs.newLine();
    tgs.append("#include <pseudosql.h>");
    tgs.newLine();
    tgs.append("#include <stdio.h>");
    tgs.newLine();
    tgs.append("#include <string.h>");
    tgs.newLine();
    tgs.append("#include <unistd.h>");
    tgs.newLine();
    tgs.newLine();

    tgs.append("#ifndef NUM_LPS");
    tgs.newLine();
    tgs.append("#define NUM_LPS 256");
    tgs.newLine();
    tgs.append("#endif");
    tgs.newLine();
    tgs.newLine();

    tgs.append("#ifndef NUM_THREADS");
    tgs.newLine();
    tgs.append("#define NUM_THREADS 0");
    tgs.newLine();
    tgs.append("#endif");
    tgs.newLine();
    tgs.newLine();

    tgs.append("#define INPUT_FILE \"taxi-1.csv\"");
    tgs.newLine();
    tgs.newLine();

    tgs.append("FILE *file;");
    tgs.newLine();
    tgs.append("Schema schema;");
    tgs.newLine();
    tgs.append("struct topology *topology;");
    tgs.newLine();

    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc));

    tgs.newLine();
    tgs.newLine();

    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.behaviors$VQhG)) {
      tgs.appendNode(item);
    }

    tgs.append("void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *content, __unused unsigned size, void *s)");
    tgs.newLine();
    tgs.append("{");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("WindowData *window_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("SelectionData *selection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("ProjectionData *projection_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OrderByData *orderBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("GroupByData *groupBy_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("AggregateFunctionData *agg_function_data;");
    tgs.newLine();
    tgs.indent();
    tgs.append("OutputProcessData *output_data;");
    tgs.newLine();
    tgs.newLine();

    tgs.indent();
    tgs.append("switch(me) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("case 0:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("/* DATA SOURCE */");
    tgs.newLine();
    tgs.indent();
    tgs.append("switch(event_type) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("case LP_INIT:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestionInit(me, now, &file, INPUT_FILE, &schema);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("case EVENT:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestion(topology, me, now, (DataSourceData *)s, &file, &schema);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("case LP_FINI:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("DataIngestionCleanUp(file, (DataSourceData *)s);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("default:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("fprintf(stderr, \"Unknown event type\");");
    tgs.newLine();
    tgs.indent();
    tgs.append("puts(\"\");");
    tgs.newLine();
    tgs.indent();
    tgs.append("abort();");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();

    ctx.getBuffer().area().decreaseIndent();

    for (final SNode actor : ListSequence.fromList(SNodeOperations.getNodeDescendants(ctx.getPrimaryInput(), CONCEPTS.CreateActor$Uv, false, new SAbstractConcept[]{}))) {
      if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("window")) {
        WindowSwitchCase.AppendWindow(SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("selection")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        SelectionSwitchCase.AppendSelection(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("projection")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        ProjectionSwitchCase.AppendProjection(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("groupBy")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        GroupBySwitchCase.AppendGroupBy(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("orderBy")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        OrderBySwitchCase.AppendOrderBy(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("joinColumns")) {
        Iterable<SNode> links = ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).where((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_));
        int[] from = {SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(Sequence.fromIterable(links).toList()).getElement(0), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_), SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(Sequence.fromIterable(links).toList()).getElement(1), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_)};
        JoinSwitchCase.AppendJoin(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("Min")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "MIN", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("Max")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "MAX", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("Average")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "AVG", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("Sum")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "SUM", ctx);
      } else if (SPropertyOperations.getString(SLinkOperations.getTarget(actor, LINKS.behavior$QgnL), PROPS.name$MnvL).equals("Count")) {
        int from = SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.topology$GORc), CONCEPTS.ActorLink$sB, false, new SAbstractConcept[]{})).findFirst((it) -> SPropertyOperations.getInteger(SLinkOperations.getTarget(SLinkOperations.getTarget(it, LINKS.actorTo$3d9g), LINKS.actor$8xF), PROPS.address$DqJ_) == SPropertyOperations.getInteger(actor, PROPS.address$DqJ_)), LINKS.actorFrom$3cFe), LINKS.actor$8xF), PROPS.address$DqJ_);
        AggregateFunctionSwitchCase.AppendAggregateFunction(from, SPropertyOperations.getInteger(actor, PROPS.address$DqJ_), "COUNT", ctx);
      }
    }

    tgs.indent();
    tgs.append("}");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
    tgs.newLine();

  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink topology$GORc = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x262cd812cfe6cc9dL, "topology");
    /*package*/ static final SContainmentLink behaviors$VQhG = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L, 0x5d890eb3ebfeaec2L, "behaviors");
    /*package*/ static final SReferenceLink behavior$QgnL = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681516c72L, "behavior");
    /*package*/ static final SReferenceLink actorTo$3d9g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57976L, "actorTo");
    /*package*/ static final SReferenceLink actor$8xF = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L, 0x262cd812cfe57939L, "actor");
    /*package*/ static final SReferenceLink actorFrom$3cFe = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57974L, "actorFrom");
  }

  private static final class PROPS {
    /*package*/ static final SProperty address$DqJ_ = MetaAdapterFactory.getProperty(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, 0x13974e2681512c34L, "address");
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ActorLink$sB = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, "ActorLanguage.structure.ActorLink");
    /*package*/ static final SConcept CreateActor$Uv = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L, "ActorLanguage.structure.CreateActor");
  }
}
