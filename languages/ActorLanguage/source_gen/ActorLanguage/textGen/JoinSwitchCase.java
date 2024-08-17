package ActorLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;

public abstract class JoinSwitchCase {
  public static void AppendJoin(int[] from, int address, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("case ");
    tgs.append(String.valueOf(address));
    tgs.append(":");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("/* JOIN */");
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
    tgs.append("JoinInit(topology, ");
    tgs.append(String.valueOf(from[0]));
    tgs.append(", ");
    tgs.append(String.valueOf(from[1]));
    tgs.append(", me);");
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
    tgs.append("join(me, now, content, s);");
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
    tgs.append("JoinCleanUp((JoinData *)s);");
    tgs.newLine();
    tgs.indent();
    tgs.append("break;");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("case TERMINATE:");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("join_data = (JoinData *)s;");
    tgs.newLine();
    tgs.indent();
    tgs.append("if (!join_data->can_end) {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("join_data->can_end = true;");
    tgs.newLine();
    tgs.indent();
    tgs.append("ForwardTerminationMessage(topology, me, now);");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
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
  }
}
