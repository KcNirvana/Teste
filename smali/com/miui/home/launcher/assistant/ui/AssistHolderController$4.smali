.class Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$000(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getSearchBoxCard()Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getSearchBoxCard()Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->onLeaveMinus()V

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->onLeaveMinus()V

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$4;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->onLeaveMinus()V

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->dismiss()V

    invoke-static {}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
