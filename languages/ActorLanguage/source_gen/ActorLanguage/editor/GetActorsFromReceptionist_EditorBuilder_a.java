package ActorLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSmart;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

/*package*/ class GetActorsFromReceptionist_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public GetActorsFromReceptionist_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
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
    editorCell.setCellId("Collection_gm6qll_a");
    editorCell.setBig(true);
    setCellContext(editorCell);
    editorCell.addEditorCell(createRefNode_0());
    editorCell.addEditorCell(createConstant_0());
    editorCell.addEditorCell(createConstant_1());
    editorCell.addEditorCell(createConstant_2());
    editorCell.addEditorCell(createRefNode_1());
    editorCell.addEditorCell(createConstant_3());
    return editorCell;
  }
  private EditorCell createRefNode_0() {
    SingleRoleCellProvider provider = new actorReferencesSingleRoleHandler_gm6qll_a0(myNode, LINKS.actorReferences$8P4C, getEditorContext());
    return provider.createCell();
  }
  private static class actorReferencesSingleRoleHandler_gm6qll_a0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public actorReferencesSingleRoleHandler_gm6qll_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), LINKS.actorReferences$8P4C, child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), LINKS.actorReferences$8P4C, child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(LINKS.actorReferences$8P4C);
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), LINKS.actorReferences$8P4C));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_actorReferences");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no actorReferences>";
    }
  }
  private EditorCell createConstant_0() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "=");
    editorCell.setCellId("Constant_gm6qll_b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_1() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "get_actors");
    editorCell.setCellId("Constant_gm6qll_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.TEXT_COLOR, getStyleRegistry().getSimpleColor(MPSColors.blue));
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_2() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "(");
    editorCell.setCellId("Constant_gm6qll_d0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_1() {
    SingleRoleCellProvider provider = new policySingleRoleHandler_gm6qll_e0(myNode, LINKS.policy$VmXt, getEditorContext());
    return provider.createCell();
  }
  private static class policySingleRoleHandler_gm6qll_e0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public policySingleRoleHandler_gm6qll_e0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), LINKS.policy$VmXt, child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), LINKS.policy$VmXt, child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(LINKS.policy$VmXt);
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), LINKS.policy$VmXt));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_policy");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no policy>";
    }
  }
  private EditorCell createConstant_3() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, ");");
    editorCell.setCellId("Constant_gm6qll_f0");
    editorCell.setDefaultText("");
    return editorCell;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink actorReferences$8P4C = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x13974e2681690352L, 0x2e933327505d87L, "actorReferences");
    /*package*/ static final SContainmentLink policy$VmXt = MetaAdapterFactory.getContainmentLink(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x13974e2681690352L, 0x13974e26817cb5deL, "policy");
  }
}