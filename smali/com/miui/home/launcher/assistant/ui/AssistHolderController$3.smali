.class Lcom/miui/home/launcher/assistant/ui/AssistHolderController$3;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$3;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "AssistHolderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mListViewAnimationReceiver bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v2, "hideCards"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "hideCards"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "AssistHolderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hideCards="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
