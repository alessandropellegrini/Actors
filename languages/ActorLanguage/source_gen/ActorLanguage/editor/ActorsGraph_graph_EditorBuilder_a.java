package ActorLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import de.itemis.mps.editor.diagram.runtime.jgraph.BaseDiagramECell;
import de.itemis.mps.editor.diagram.runtime.EditorUtil;
import de.itemis.mps.editor.diagram.runtime.jgraph.DiagramCreationContext;
import de.itemis.mps.editor.diagram.runtime.DiagramContext;
import de.itemis.mps.editor.diagram.runtime.ContextVariables;
import de.itemis.mps.editor.diagram.runtime.model.IDiagramAccessor;
import de.itemis.mps.editor.diagram.runtime.model.AbstractDiagramAccessor;
import java.util.List;
import de.itemis.mps.editor.diagram.runtime.model.IDiagramElementAccessor;
import de.itemis.mps.editor.diagram.runtime.model.IAccessorFactory;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import de.itemis.mps.editor.diagram.runtime.model.IConnectionType;
import java.util.Collections;
import de.itemis.mps.editor.diagram.runtime.model.GeneratedConnectionType;
import de.itemis.mps.editor.diagram.runtime.model.IConnectionEndpoint;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import de.itemis.mps.editor.diagram.runtime.model.DiagramModel;
import de.itemis.mps.editor.diagram.runtime.model.IPaletteEntryProvider;
import de.itemis.mps.editor.diagram.runtime.model.CompositePaletteEntryProvider;
import de.itemis.mps.editor.diagram.runtime.model.SubstituteInfoPaletteEntryProvider;
import de.itemis.mps.editor.diagram.runtime.substitute.SubstituteInfoFactory;
import de.itemis.mps.editor.diagram.runtime.jgraph.SubDiagramECell;
import de.itemis.mps.editor.diagram.runtime.jgraph.RootDiagramECell;
import de.itemis.mps.editor.diagram.runtime.jgraph.ElkLayouter;
import de.itemis.mps.editor.diagram.runtime.jgraph.LayeredLayouter;
import org.eclipse.elk.core.options.Direction;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import de.itemis.mps.editor.diagram.runtime.jgraph.RootDCell;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SConcept;

/*package*/ class ActorsGraph_graph_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public ActorsGraph_graph_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createDiagram_1();
  }

  private EditorCell createDiagram_0(final EditorContext editorContext, final SNode node) {
    final Wrappers._T<BaseDiagramECell> editorCell = new Wrappers._T<BaseDiagramECell>(null);

    EditorUtil.noCaching(editorContext, () -> {
      DiagramCreationContext.createDiagram(() -> {
        DiagramContext.withContext(node, () -> editorCell.value, () -> {
          ContextVariables.withValue("thisNode", node, () -> {
            final ContextVariables _variablesContext = ContextVariables.getCurrent();
            IDiagramAccessor accessor = new AbstractDiagramAccessor(node) {
              public List<? extends IDiagramElementAccessor> getElements(IAccessorFactory accessorFactory) {
                final List<IDiagramElementAccessor> elements = new ArrayList<IDiagramElementAccessor>();
                for (SNode e : ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.actors$PE1V))) {
                  elements.addAll(accessorFactory.fromSNode(e));
                }
                for (SNode e : ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.links$3jtH))) {
                  elements.addAll(accessorFactory.fromSNode(e));
                }
                return elements;
              }
              @Override
              public List<IConnectionType> getConnectionTypes() {
                List<IConnectionType> connectionTypes = new ArrayList<IConnectionType>();
                connectionTypes.addAll(Collections.singletonList(new GeneratedConnectionType() {
                  public String getName() {
                    return "Create Link";
                  }
                  @Override
                  public void create(final IConnectionEndpoint from, final IConnectionEndpoint to) {
                    final SNode fromNode = SNodeOperations.cast(from.getSNode(), CONCEPTS.ActorBox$s8);
                    final SNode toNode = SNodeOperations.cast(to.getSNode(), CONCEPTS.ActorBox$s8);
                    final String fromPort = from.getPortName();
                    final String toPort = to.getPortName();

                    {
                      SNode link = SLinkOperations.addNewChild(((SNode) _variablesContext.getValue("thisNode")), LINKS.links$3jtH, CONCEPTS.ActorLink$sB);
                      SLinkOperations.setTarget(link, LINKS.actorFrom$3cFe, fromNode);
                      SLinkOperations.setTarget(link, LINKS.actorTo$3d9g, toNode);
                    }
                  }
                  @Override
                  public boolean isValidStart(IConnectionEndpoint from) {
                    final SNode fromNode = SNodeOperations.as(from.getSNode(), CONCEPTS.ActorBox$s8);
                    if (fromNode == null) {
                      return false;
                    }
                    final String fromPort = from.getPortName();
                    return true;
                  }
                  @Override
                  public boolean isValidEnd(IConnectionEndpoint to) {
                    final SNode toNode = SNodeOperations.as(to.getSNode(), CONCEPTS.ActorBox$s8);
                    if (toNode == null) {
                      return false;
                    }
                    final String toPort = to.getPortName();
                    return true;
                  }
                }));
                return connectionTypes;
              }






              private boolean nodeCondition_9dsbqe_a0() {
                return true;
              }

              @Override
              public boolean runAutoLayout() {
                boolean autoLayoutFlag = true;
                autoLayoutFlag = nodeCondition_9dsbqe_a0();
                return autoLayoutFlag;
              }

            };

            DiagramModel model = DiagramModel.getModel(editorContext, node, "2750811047725496301", accessor);


            IPaletteEntryProvider paletteEntryProvider = new CompositePaletteEntryProvider(new SubstituteInfoPaletteEntryProvider(new SubstituteInfoFactory(editorContext, node).forChildLink(node, SLinkOperations.findLinkDeclaration(LINKS.actors$PE1V))));
            model.setPaletteEntryProvider(paletteEntryProvider);

            if (DiagramCreationContext.isSubdiagram()) {
              editorCell.value = new SubDiagramECell(editorContext, node, model);
            } else {
              editorCell.value = new RootDiagramECell(editorContext, node, model);
              ((RootDiagramECell) editorCell.value).runAutoLayouterOnInit(node, accessor.runAutoLayout());
            }
            editorCell.value.setCellId("Diagram_9dsbqe_a");
            editorCell.value.setBig(true);
            setCellContext(editorCell.value);

            ElkLayouter layouter = new LayeredLayouter(Direction.RIGHT);
            layouter.toggleConnectBoxesWithoutDummyPort(false);
            ((_FunctionTypes._void_P0_E0) () -> {
              // the closure is necessary so that we can declare the style variable again in the current scope
              Style style = new StyleImpl();
              editorCell.value.getStyle().putAll(style);
            }).invoke();
            layouter.setStyle(editorCell.value.getStyle());

            model.setLayouter(layouter);

            if (editorCell.value.getContextGraph() != null) {
              Object defaultParent = editorCell.value.getContextGraph().getDefaultParent();
              if (defaultParent instanceof RootDCell) {
                ((RootDCell) defaultParent).resetButtonConfig();
              }
            }
          });
        });
      });
    });



    return editorCell.value;
  }
  private EditorCell createDiagram_1() {
    return createDiagram_0(getEditorContext(), myNode);
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink actors$PE1V = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57936L, 0x6b33cca64056ab36L, "actors");
    /*package*/ static final SContainmentLink links$3jtH = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57936L, 0x262cd812cfe5797cL, "links");
    /*package*/ static final SReferenceLink actorFrom$3cFe = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57974L, "actorFrom");
    /*package*/ static final SReferenceLink actorTo$3d9g = MetaAdapterFactory.getReferenceLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, 0x262cd812cfe57976L, "actorTo");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept ActorBox$s8 = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L, "ActorLanguage.structure.ActorBox");
    /*package*/ static final SConcept ActorLink$sB = MetaAdapterFactory.getConcept(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57938L, "ActorLanguage.structure.ActorLink");
  }
}
