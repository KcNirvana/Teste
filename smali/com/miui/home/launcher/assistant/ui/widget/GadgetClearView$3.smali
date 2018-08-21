.class Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;
.super Landroid/os/Handler;
.source "GadgetClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "GadgetClearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear showToast..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$500(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$602(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$400(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$000(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
