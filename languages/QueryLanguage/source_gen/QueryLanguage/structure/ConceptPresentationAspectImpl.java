package QueryLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_AggregationFunction;
  private ConceptPresentation props_AllColumns;
  private ConceptPresentation props_Average;
  private ConceptPresentation props_Column;
  private ConceptPresentation props_ColumnRef;
  private ConceptPresentation props_Condition;
  private ConceptPresentation props_Count;
  private ConceptPresentation props_CreateTable;
  private ConceptPresentation props_DBOperation;
  private ConceptPresentation props_Delete;
  private ConceptPresentation props_GroupBy;
  private ConceptPresentation props_InsertInto;
  private ConceptPresentation props_JoinCondition;
  private ConceptPresentation props_Location;
  private ConceptPresentation props_Max;
  private ConceptPresentation props_Min;
  private ConceptPresentation props_MultipleCondition;
  private ConceptPresentation props_OrderBy;
  private ConceptPresentation props_Script;
  private ConceptPresentation props_Select;
  private ConceptPresentation props_SelectColumn;
  private ConceptPresentation props_ServiceZone;
  private ConceptPresentation props_SimpleCondition;
  private ConceptPresentation props_Statement;
  private ConceptPresentation props_Sum;
  private ConceptPresentation props_TableReference;
  private ConceptPresentation props_Update;
  private ConceptPresentation props_Value;
  private ConceptPresentation props_Where;
  private ConceptPresentation props_Window;
  private ConceptPresentation props_Zone;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.AggregationFunction:
        if (props_AggregationFunction == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_AggregationFunction = cpb.create();
        }
        return props_AggregationFunction;
      case LanguageConceptSwitch.AllColumns:
        if (props_AllColumns == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("*");
          props_AllColumns = cpb.create();
        }
        return props_AllColumns;
      case LanguageConceptSwitch.Average:
        if (props_Average == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("AVG");
          props_Average = cpb.create();
        }
        return props_Average;
      case LanguageConceptSwitch.Column:
        if (props_Column == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Column = cpb.create();
        }
        return props_Column;
      case LanguageConceptSwitch.ColumnRef:
        if (props_ColumnRef == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x11100ee7375157f4L, 0x11100ee7375157f5L, "column", "", "");
          props_ColumnRef = cpb.create();
        }
        return props_ColumnRef;
      case LanguageConceptSwitch.Condition:
        if (props_Condition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Condition = cpb.create();
        }
        return props_Condition;
      case LanguageConceptSwitch.Count:
        if (props_Count == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("COUNT");
          props_Count = cpb.create();
        }
        return props_Count;
      case LanguageConceptSwitch.CreateTable:
        if (props_CreateTable == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CreateTable = cpb.create();
        }
        return props_CreateTable;
      case LanguageConceptSwitch.DBOperation:
        if (props_DBOperation == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_DBOperation = cpb.create();
        }
        return props_DBOperation;
      case LanguageConceptSwitch.Delete:
        if (props_Delete == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("DELETE");
          props_Delete = cpb.create();
        }
        return props_Delete;
      case LanguageConceptSwitch.GroupBy:
        if (props_GroupBy == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("GROUP BY");
          props_GroupBy = cpb.create();
        }
        return props_GroupBy;
      case LanguageConceptSwitch.InsertInto:
        if (props_InsertInto == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("INSERT INTO");
          props_InsertInto = cpb.create();
        }
        return props_InsertInto;
      case LanguageConceptSwitch.JoinCondition:
        if (props_JoinCondition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("JoinCondition");
          props_JoinCondition = cpb.create();
        }
        return props_JoinCondition;
      case LanguageConceptSwitch.Location:
        if (props_Location == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Location = cpb.create();
        }
        return props_Location;
      case LanguageConceptSwitch.Max:
        if (props_Max == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("MAX");
          props_Max = cpb.create();
        }
        return props_Max;
      case LanguageConceptSwitch.Min:
        if (props_Min == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("MIN");
          props_Min = cpb.create();
        }
        return props_Min;
      case LanguageConceptSwitch.MultipleCondition:
        if (props_MultipleCondition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("MultipleCondition");
          props_MultipleCondition = cpb.create();
        }
        return props_MultipleCondition;
      case LanguageConceptSwitch.OrderBy:
        if (props_OrderBy == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ORDER BY");
          props_OrderBy = cpb.create();
        }
        return props_OrderBy;
      case LanguageConceptSwitch.Script:
        if (props_Script == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Script = cpb.create();
        }
        return props_Script;
      case LanguageConceptSwitch.Select:
        if (props_Select == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SELECT");
          props_Select = cpb.create();
        }
        return props_Select;
      case LanguageConceptSwitch.SelectColumn:
        if (props_SelectColumn == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_SelectColumn = cpb.create();
        }
        return props_SelectColumn;
      case LanguageConceptSwitch.ServiceZone:
        if (props_ServiceZone == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ServiceZone = cpb.create();
        }
        return props_ServiceZone;
      case LanguageConceptSwitch.SimpleCondition:
        if (props_SimpleCondition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SimpleCondition");
          props_SimpleCondition = cpb.create();
        }
        return props_SimpleCondition;
      case LanguageConceptSwitch.Statement:
        if (props_Statement == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Statement = cpb.create();
        }
        return props_Statement;
      case LanguageConceptSwitch.Sum:
        if (props_Sum == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SUM");
          props_Sum = cpb.create();
        }
        return props_Sum;
      case LanguageConceptSwitch.TableReference:
        if (props_TableReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x26d1395b1ee643adL, 0xb522c0cdd699ded3L, 0x207f13a8b545f6deL, 0x207f13a8b545f6dfL, "tableRef", "", "");
          props_TableReference = cpb.create();
        }
        return props_TableReference;
      case LanguageConceptSwitch.Update:
        if (props_Update == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("UPDATE");
          props_Update = cpb.create();
        }
        return props_Update;
      case LanguageConceptSwitch.Value:
        if (props_Value == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Value");
          props_Value = cpb.create();
        }
        return props_Value;
      case LanguageConceptSwitch.Where:
        if (props_Where == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("WHERE");
          props_Where = cpb.create();
        }
        return props_Where;
      case LanguageConceptSwitch.Window:
        if (props_Window == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("WINDOW");
          props_Window = cpb.create();
        }
        return props_Window;
      case LanguageConceptSwitch.Zone:
        if (props_Zone == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Zone = cpb.create();
        }
        return props_Zone;
    }
    return null;
  }
}
