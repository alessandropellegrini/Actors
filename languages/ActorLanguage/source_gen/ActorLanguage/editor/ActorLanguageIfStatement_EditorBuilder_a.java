package ActorLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.baseLanguage.editor.BigStatement_comment_action;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet.KeyWordStyleClass;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfoPartEx;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.openapi.editor.menus.EditorMenuDescriptor;
import jetbrains.mps.nodeEditor.cellMenu.CellContext;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet.LeftParenStyleClass;
import jetbrains.mps.baseLanguage.editor.DeleteCondition;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSmart;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet.RightParenStyleClass;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet.LeftBraceStyleClass;
import jetbrains.mps.baseLanguage.behavior.IfStatement__BehaviorDescriptor;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet.RightBraceStyleClass;
import jetbrains.mps.baseLanguage.editor.IfStatement_LastBrace;
import jetbrains.mps.lang.editor.menus.transformation.NamedTransformationMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.baseLanguage.editor.IfStatement_elseDelete_action;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_Generic_Item;
import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.action.NodeSubstituteActionWrapper;
import jetbrains.mps.openapi.editor.menus.EditorMenuTraceInfo;
import jetbrains.mps.nodeEditor.menus.EditorMenuTraceInfoImpl;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

/*package*/ class ActorLanguageIfStatement_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public ActorLanguageIfStatement_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createCollection_0();
  }

  private EditorCell createCollection_0() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_zcp8bn_a");
    editorCell.setBig(true);
    setCellContext(editorCell);
    BigStatement_comment_action.setCellActions(editorCell, myNode, getEditorContext());
    editorCell.addEditorCell(createConstant_0());
    editorCell.addEditorCell(createConstant_1());
    editorCell.addEditorCell(createRefNode_0());
    editorCell.addEditorCell(createConstant_2());
    editorCell.addEditorCell(createCollection_1());
    if (nodeCondition_zcp8bn_a5a()) {
      editorCell.addEditorCell(createRefNodeList_1());
    }
    if (nodeCondition_zcp8bn_a6a()) {
      editorCell.addEditorCell(createCollection_3());
    }
    return editorCell;
  }
  private boolean nodeCondition_zcp8bn_a5a() {
    return Sequence.fromIterable(AttributeOperations.getChildNodesAndAttributes(myNode, LINKS.elsifClauses$EVJW)).isNotEmpty();
  }
  private boolean nodeCondition_zcp8bn_a6a() {
    return Sequence.fromIterable(AttributeOperations.getChildNodesAndAttributes(myNode, LINKS.ifFalseStatement$psZK)).isNotEmpty();
  }
  private EditorCell createConstant_0() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "if");
    editorCell.setCellId("Constant_zcp8bn_a0");
    Style style = new StyleImpl();
    new KeyWordStyleClass(this).apply(style, editorCell);
    style.set(StyleAttributes.EDITABLE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(getEditorContext(), new BasicCellContext(myNode), new SubstituteInfoPartExt[]{new ReplaceWith_WhileStatement_cellMenu_zcp8bn_a0a0(), new ReplaceWith_DoWhileStatement_cellMenu_zcp8bn_b0a0(), new ReplaceWith_ForStatement_cellMenu_zcp8bn_c0a0(), new ReplaceWith_ForeachStatement_cellMenu_zcp8bn_d0a0(), new SChildSubstituteInfoPartEx(editorCell)}));
    return editorCell;
  }
  public static class ReplaceWith_WhileStatement_cellMenu_zcp8bn_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_WhileStatement_cellMenu_zcp8bn_a0a0() {
    }
    public SAbstractConcept getReplacementConcept() {
      return CONCEPTS.WhileStatement$Ay;
    }
    @Override
    protected EditorMenuDescriptor createEditorMenuDescriptor(CellContext cellContext, EditorContext editorContext) {
      return new EditorMenuDescriptorBase("replace node (custom node concept: " + "WhileStatement" + ")", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "4920206213422922708"));
    }
  }
  public static class ReplaceWith_DoWhileStatement_cellMenu_zcp8bn_b0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_DoWhileStatement_cellMenu_zcp8bn_b0a0() {
    }
    public SAbstractConcept getReplacementConcept() {
      return CONCEPTS.DoWhileStatement$9p;
    }
    @Override
    protected EditorMenuDescriptor createEditorMenuDescriptor(CellContext cellContext, EditorContext editorContext) {
      return new EditorMenuDescriptorBase("replace node (custom node concept: " + "DoWhileStatement" + ")", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "4920206213422998388"));
    }
  }
  public static class ReplaceWith_ForStatement_cellMenu_zcp8bn_c0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_ForStatement_cellMenu_zcp8bn_c0a0() {
    }
    public SAbstractConcept getReplacementConcept() {
      return CONCEPTS.ForStatement$qV;
    }
    @Override
    protected EditorMenuDescriptor createEditorMenuDescriptor(CellContext cellContext, EditorContext editorContext) {
      return new EditorMenuDescriptorBase("replace node (custom node concept: " + "ForStatement" + ")", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "4920206213423011847"));
    }
  }
  public static class ReplaceWith_ForeachStatement_cellMenu_zcp8bn_d0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_ForeachStatement_cellMenu_zcp8bn_d0a0() {
    }
    public SAbstractConcept getReplacementConcept() {
      return CONCEPTS.ForeachStatement$Po;
    }
    @Override
    protected EditorMenuDescriptor createEditorMenuDescriptor(CellContext cellContext, EditorContext editorContext) {
      return new EditorMenuDescriptorBase("replace node (custom node concept: " + "ForeachStatement" + ")", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "4920206213423017233"));
    }
  }
  private EditorCell createConstant_1() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "(");
    editorCell.setCellId("Constant_zcp8bn_b0");
    Style style = new StyleImpl();
    new LeftParenStyleClass(this).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    DeleteCondition.setCellActions(editorCell, myNode, getEditorContext());
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_0() {
    SingleRoleCellProvider provider = new conditionSingleRoleHandler_zcp8bn_c0(myNode, LINKS.condition$5R17, getEditorContext());
    return provider.createCell();
  }
  private static class conditionSingleRoleHandler_zcp8bn_c0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public conditionSingleRoleHandler_zcp8bn_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), LINKS.condition$5R17, child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), LINKS.condition$5R17, child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(LINKS.condition$5R17);
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), LINKS.condition$5R17));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_condition");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no condition>";
    }
  }
  private EditorCell createConstant_2() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, ")");
    editorCell.setCellId("Constant_zcp8bn_d0");
    Style style = new StyleImpl();
    new RightParenStyleClass(this).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    DeleteCondition.setCellActions(editorCell, myNode, getEditorContext());
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_1() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_zcp8bn_e0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, false);
    style.set(StyleAttributes.SELECTABLE, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(createConstant_3());
    editorCell.addEditorCell(createCollection_2());
    editorCell.addEditorCell(createConstant_4());
    return editorCell;
  }
  private EditorCell createConstant_3() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "{");
    editorCell.setCellId("Constant_zcp8bn_a4a");
    Style style = new StyleImpl();
    new LeftBraceStyleClass(this).apply(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, _StyleParameter_QueryFunction_zcp8bn_a0a4a());
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private boolean _StyleParameter_QueryFunction_zcp8bn_a0a4a() {
    return !((boolean) IfStatement__BehaviorDescriptor.isGuardIf_idi0z$SHa.invoke(getNode()));
  }
  private EditorCell createCollection_2() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_zcp8bn_b4a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, false);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, _StyleParameter_QueryFunction_zcp8bn_a1b4a());
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, _StyleParameter_QueryFunction_zcp8bn_a2b4a());
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(createRefNodeList_0());
    return editorCell;
  }
  private boolean _StyleParameter_QueryFunction_zcp8bn_a1b4a() {
    return !((boolean) IfStatement__BehaviorDescriptor.isGuardIf_idi0z$SHa.invoke(getNode()));
  }
  private boolean _StyleParameter_QueryFunction_zcp8bn_a2b4a() {
    return !((boolean) IfStatement__BehaviorDescriptor.isGuardIf_idi0z$SHa.invoke(getNode()));
  }
  private EditorCell createRefNodeList_0() {
    AbstractCellListHandler handler = new statementsListHandler_zcp8bn_a1e0(myNode, getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_statements");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSRole(handler.getElementSRole());
    return editorCell;
  }
  private static class statementsListHandler_zcp8bn_a1e0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public statementsListHandler_zcp8bn_a1e0(SNode ownerNode, EditorContext context) {
      super(context, false);
      myNode = ownerNode;
    }

    @NotNull
    public SNode getNode() {
      return myNode;
    }
    public SContainmentLink getSLink() {
      return LINKS.statements$wOQE;
    }
    public SAbstractConcept getChildSConcept() {
      return CONCEPTS.Statement$P6;
    }

    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell, false);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(statementsListHandler_zcp8bn_a1e0.this.getNode(), LINKS.statements$wOQE));
      try {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell();
        installElementCellActions(null, emptyCell, true);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }

    private static final Object OBJ = new Object();

    public void installElementCellActions(SNode elementNode, EditorCell elementCell, boolean isEmptyCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET) == null) {
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, OBJ);
          elementCell.setSubstituteInfo((isEmptyCell ? new SEmptyContainmentSubstituteInfo(elementCell) : new SChildSubstituteInfo(elementCell)));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, OBJ);
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
        }
      }
      if (elementCell.getUserObject(ELEMENT_CELL_BACKSPACE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(ELEMENT_CELL_BACKSPACE_SET, OBJ);
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, OBJ);
        }
      }
    }
  }
  private EditorCell createConstant_4() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "}");
    editorCell.setCellId("Constant_zcp8bn_c4a");
    Style style = new StyleImpl();
    new RightBraceStyleClass(this).apply(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, true);
    editorCell.getStyle().putAll(style);
    IfStatement_LastBrace.setCellActions(editorCell, myNode, getEditorContext());
    editorCell.setTransformationMenuLookup(new NamedTransformationMenuLookup(LanguageRegistry.getInstance(getEditorContext().getRepository()), CONCEPTS.IfStatement$Q4, "jetbrains.mps.baseLanguage.editor.ifStatement"));
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new SChildSubstituteInfo(editorCell));
    return editorCell;
  }
  private EditorCell createRefNodeList_1() {
    AbstractCellListHandler handler = new elsifClausesListHandler_zcp8bn_f0(myNode, getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_elsifClauses");
    editorCell.setSRole(handler.getElementSRole());
    return editorCell;
  }
  private static class elsifClausesListHandler_zcp8bn_f0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public elsifClausesListHandler_zcp8bn_f0(SNode ownerNode, EditorContext context) {
      super(context, false);
      myNode = ownerNode;
    }

    @NotNull
    public SNode getNode() {
      return myNode;
    }
    public SContainmentLink getSLink() {
      return LINKS.elsifClauses$EVJW;
    }
    public SAbstractConcept getChildSConcept() {
      return CONCEPTS.ElsifClause$J9;
    }

    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell, false);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(elsifClausesListHandler_zcp8bn_f0.this.getNode(), LINKS.elsifClauses$EVJW));
      try {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell();
        installElementCellActions(null, emptyCell, true);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }

    private static final Object OBJ = new Object();

    public void installElementCellActions(SNode elementNode, EditorCell elementCell, boolean isEmptyCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET) == null) {
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, OBJ);
          elementCell.setSubstituteInfo((isEmptyCell ? new SEmptyContainmentSubstituteInfo(elementCell) : new SChildSubstituteInfo(elementCell)));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, OBJ);
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
        }
      }
      if (elementCell.getUserObject(ELEMENT_CELL_BACKSPACE_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(ELEMENT_CELL_BACKSPACE_SET, OBJ);
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
      }
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        if (elementNode != null) {
          elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, OBJ);
        }
      }
    }
  }
  private EditorCell createCollection_3() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_zcp8bn_g0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(createConstant_5());
    editorCell.addEditorCell(createRefNode_1());
    return editorCell;
  }
  private EditorCell createConstant_5() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "else");
    editorCell.setCellId("Constant_zcp8bn_a6a");
    Style style = new StyleImpl();
    new KeyWordStyleClass(this).apply(style, editorCell);
    style.set(StyleAttributes.EDITABLE, true);
    editorCell.getStyle().putAll(style);
    IfStatement_elseDelete_action.setCellActions(editorCell, myNode, getEditorContext());
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(getEditorContext(), new BasicCellContext(myNode), new SubstituteInfoPartExt[]{new ActorLanguageIfStatement_generic_cellMenu_zcp8bn_a0a6a(), new ActorLanguageIfStatement_generic_cellMenu_zcp8bn_b0a6a(), new SChildSubstituteInfoPartEx(editorCell)}));
    return editorCell;
  }
  public static class ActorLanguageIfStatement_generic_cellMenu_zcp8bn_a0a6a extends AbstractCellMenuPart_Generic_Item {
    public ActorLanguageIfStatement_generic_cellMenu_zcp8bn_a0a6a() {
    }
    @Override
    public List<SubstituteAction> createActions(CellContext cellContext, EditorContext editorContext) {
      return ListSequence.fromList(super.createActions(cellContext, editorContext)).select((action) -> {
        return (SubstituteAction) new NodeSubstituteActionWrapper(action) {
          @Override
          public EditorMenuTraceInfo getEditorMenuTraceInfo() {
            EditorMenuTraceInfoImpl result = new EditorMenuTraceInfoImpl();
            result.setDescriptor(new EditorMenuDescriptorBase("generic item", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "1237468206393")));
            return result;
          }
        };
      }).toList();
    }

    protected void handleAction(SNode node, SModel model, EditorContext editorContext) {
    }
    public String getMatchingText() {
      return "else";
    }
  }
  public static class ActorLanguageIfStatement_generic_cellMenu_zcp8bn_b0a6a extends AbstractCellMenuPart_Generic_Item {
    public ActorLanguageIfStatement_generic_cellMenu_zcp8bn_b0a6a() {
    }
    @Override
    public List<SubstituteAction> createActions(CellContext cellContext, EditorContext editorContext) {
      return ListSequence.fromList(super.createActions(cellContext, editorContext)).select((action) -> {
        return (SubstituteAction) new NodeSubstituteActionWrapper(action) {
          @Override
          public EditorMenuTraceInfo getEditorMenuTraceInfo() {
            EditorMenuTraceInfoImpl result = new EditorMenuTraceInfoImpl();
            result.setDescriptor(new EditorMenuDescriptorBase("generic item", new SNodePointer("r:69381955-c8b5-4c14-b1e0-ddad66dcca70(ActorLanguage.editor)", "1237468206396")));
            return result;
          }
        };
      }).toList();
    }

    protected void handleAction(SNode node, SModel model, EditorContext editorContext) {
      IfStatement__BehaviorDescriptor.convertElseToElseIf_idhIdhuD7.invoke(node);
    }
    public String getMatchingText() {
      return "else if";
    }
  }
  private EditorCell createRefNode_1() {
    SingleRoleCellProvider provider = new ifFalseStatementSingleRoleHandler_zcp8bn_b6a(myNode, LINKS.ifFalseStatement$psZK, getEditorContext());
    return provider.createCell();
  }
  private static class ifFalseStatementSingleRoleHandler_zcp8bn_b6a extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public ifFalseStatementSingleRoleHandler_zcp8bn_b6a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), LINKS.ifFalseStatement$psZK, child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), LINKS.ifFalseStatement$psZK, child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(LINKS.ifFalseStatement$psZK);
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), LINKS.ifFalseStatement$psZK));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_ifFalseStatement");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no ifFalseStatement>";
    }
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink elsifClauses$EVJW = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0x118cecf1287L, "elsifClauses");
    /*package*/ static final SContainmentLink ifFalseStatement$psZK = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement");
    /*package*/ static final SContainmentLink condition$5R17 = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition");
    /*package*/ static final SContainmentLink statements$wOQE = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x61da6c5c2fc9e231L, 0x61da6c5c2fc9e232L, "statements");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept WhileStatement$Ay = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfaa4bf0f2fL, "jetbrains.mps.baseLanguage.structure.WhileStatement");
    /*package*/ static final SConcept DoWhileStatement$9p = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11232674988L, "jetbrains.mps.baseLanguage.structure.DoWhileStatement");
    /*package*/ static final SConcept ForStatement$qV = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, "jetbrains.mps.baseLanguage.structure.ForStatement");
    /*package*/ static final SConcept ForeachStatement$Po = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a6933ce33L, "jetbrains.mps.baseLanguage.structure.ForeachStatement");
    /*package*/ static final SConcept Statement$P6 = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement");
    /*package*/ static final SConcept IfStatement$Q4 = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, "jetbrains.mps.baseLanguage.structure.IfStatement");
    /*package*/ static final SConcept ElsifClause$J9 = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118ceceb41aL, "jetbrains.mps.baseLanguage.structure.ElsifClause");
  }
}