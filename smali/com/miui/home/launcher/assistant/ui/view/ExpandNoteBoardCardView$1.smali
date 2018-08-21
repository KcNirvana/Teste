.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->isInMinusScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ExpandNoteBoardCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyboard onVisibilityChanged ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$100()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$200()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    goto :goto_1
.end method
