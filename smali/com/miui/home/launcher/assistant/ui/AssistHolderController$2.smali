.class Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;
.super Landroid/content/BroadcastReceiver;
.source "AssistHolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/AssistHolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "requestCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$700(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$700(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;->onResult(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->requestFocus()Z

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->onLeaveMinus()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$2;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->resetSearchCard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AssistHolderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
