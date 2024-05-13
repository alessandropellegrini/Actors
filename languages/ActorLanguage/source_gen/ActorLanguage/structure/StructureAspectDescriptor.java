package ActorLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.DataTypeDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptAbstractActor = createDescriptorForAbstractActor();
  /*package*/ final ConceptDescriptor myConceptActor = createDescriptorForActor();
  /*package*/ final ConceptDescriptor myConceptActorAction = createDescriptorForActorAction();
  /*package*/ final ConceptDescriptor myConceptActorScript = createDescriptorForActorScript();
  /*package*/ final ConceptDescriptor myConceptBecomeBehavior = createDescriptorForBecomeBehavior();
  /*package*/ final ConceptDescriptor myConceptCreateMessage = createDescriptorForCreateMessage();
  /*package*/ final ConceptDescriptor myConceptSendMessage = createDescriptorForSendMessage();
  /*package*/ final EnumerationDescriptor myEnumerationBehavior = new EnumerationDescriptor_Behavior();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAbstractActor, myConceptActor, myConceptActorAction, myConceptActorScript, myConceptBecomeBehavior, myConceptCreateMessage, myConceptSendMessage);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.AbstractActor:
        return myConceptAbstractActor;
      case LanguageConceptSwitch.Actor:
        return myConceptActor;
      case LanguageConceptSwitch.ActorAction:
        return myConceptActorAction;
      case LanguageConceptSwitch.ActorScript:
        return myConceptActorScript;
      case LanguageConceptSwitch.BecomeBehavior:
        return myConceptBecomeBehavior;
      case LanguageConceptSwitch.CreateMessage:
        return myConceptCreateMessage;
      case LanguageConceptSwitch.SendMessage:
        return myConceptSendMessage;
      default:
        return null;
    }
  }

  @Override
  public Collection<DataTypeDescriptor> getDataTypeDescriptors() {
    return Arrays.asList(myEnumerationBehavior);
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForAbstractActor() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "AbstractActor", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L);
    b.class_(false, true, false);
    // extends: ActorLanguage.structure.ActorAction
    b.super_(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f8e44bL);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865914120");
    b.version(3);
    b.property("address", 0x35a5eccbf2f23360L).type(PrimitiveTypeId.INTEGER).origin("3865756215865914208").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForActor() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "Actor", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23364L);
    b.class_(false, false, false);
    // extends: ActorLanguage.structure.AbstractActor
    b.super_(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865914212");
    b.version(3);
    b.aggregate("actions", 0x35a5eccbf2f8e453L).target(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f8e44bL).optional(true).ordered(true).multiple(true).origin("3865756215866352723").done();
    b.alias("create_actor");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForActorAction() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "ActorAction", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f8e44bL);
    b.class_(false, true, false);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215866352715");
    b.version(3);
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForActorScript() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "ActorScript", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23376L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865914230");
    b.version(3);
    b.aggregate("actors", 0x35a5eccbf2f23377L).target(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L).optional(true).ordered(true).multiple(true).origin("3865756215865914231").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBecomeBehavior() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "BecomeBehavior", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26dfaL);
    b.class_(false, false, false);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865929210");
    b.version(3);
    b.property("behavior", 0x35a5eccbf2f26dfdL).type(MetaIdFactory.dataTypeId(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26de9L)).origin("3865756215865929213").done();
    b.associate("receiver", 0x35a5eccbf2f26dffL).target(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L).optional(false).origin("3865756215865929215").done();
    b.alias("become");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCreateMessage() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "CreateMessage", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L);
    b.class_(false, false, false);
    // extends: ActorLanguage.structure.ActorAction
    b.super_(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f8e44bL);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865914225");
    b.version(3);
    b.property("text", 0x35a5eccbf2f23372L).type(PrimitiveTypeId.STRING).origin("3865756215865914226").done();
    b.alias("create_message");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForSendMessage() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ActorLanguage", "SendMessage", 0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f26df2L);
    b.class_(false, false, false);
    // extends: ActorLanguage.structure.ActorAction
    b.super_(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f8e44bL);
    b.origin("r:a6f544b3-65b6-4da8-ad8a-228799e10ea8(ActorLanguage.structure)/3865756215865929202");
    b.version(3);
    b.associate("message", 0x35a5eccbf2f26df5L).target(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23371L).optional(false).origin("3865756215865929205").done();
    b.associate("receiver", 0x35a5eccbf2f26df7L).target(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x35a5eccbf2f23308L).optional(false).origin("3865756215865929207").done();
    b.alias("send_message");
    return b.create();
  }
}
