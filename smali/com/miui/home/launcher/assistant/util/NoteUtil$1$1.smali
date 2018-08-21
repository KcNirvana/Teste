.class Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;
.super Ljava/lang/Object;
.source "NoteUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/NoteUtil$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/NoteUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;->this$0:Lcom/miui/home/launcher/assistant/util/NoteUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;->this$0:Lcom/miui/home/launcher/assistant/util/NoteUtil$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$context:Landroid/content/Context;

    const v1, 0x1b0b007b

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/ToastUtils;->show(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;->this$0:Lcom/miui/home/launcher/assistant/util/NoteUtil$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$listener:Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;->this$0:Lcom/miui/home/launcher/assistant/util/NoteUtil$1;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$noteStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;->onSaved(Ljava/lang/String;)V

    return-void
.end method
