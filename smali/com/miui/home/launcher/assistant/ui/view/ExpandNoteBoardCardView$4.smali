.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$902(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;)V

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->saveTextToNotes(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b007c

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b007a

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
