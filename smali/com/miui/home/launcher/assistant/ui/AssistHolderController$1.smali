.class Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "AssistHolderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "leavePersonalAssistant"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$000(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->trackPageEnd()V

    const-string/jumbo v3, "AssistHolderController"

    const-string/jumbo v4, "go out of minus screen"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->onLeaveMinus()V

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->shrinkNoteBoardCardView()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->shrinkDeviceCardView()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$100(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->hideStatusBar(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->clearFocus()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setAiTransVisible(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3, v6}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$002(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v3

    const-string/jumbo v4, "leave_minus"

    invoke-virtual {v3, v7, v4, v7, v7}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v3, "hasLightBgForClock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    const-string/jumbo v4, "hasLightBgForClock"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$202(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z

    :cond_4
    if-eqz v1, :cond_8

    const-string/jumbo v3, "isFromSetting"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "isFromSetting"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string/jumbo v3, "isFromBackup"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "isFromBackup"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    const-string/jumbo v3, "isFromLaunch"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3, v8}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$302(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z

    :cond_7
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->reLoadMinusScreen()V

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    const-string/jumbo v3, "hasLightBgForStatusBar"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3, v8}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$002(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$400(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3, v8}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->requestFocus()Z

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    const-string/jumbo v4, "hasLightBgForStatusBar"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$502(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;Z)Z

    const-string/jumbo v3, "AssistHolderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "into minus screen isStatusBarDark:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$500(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$500(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$200(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initView(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->resetSearchCard()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateStatusBar()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$500(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->updateSearchCard(Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setAiTransVisible(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->onResume()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$600(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v3

    const-string/jumbo v4, "checkVersionUpgrade"

    invoke-virtual {v3, v7, v4, v7, v7}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_0

    const-string/jumbo v3, "DownloadFinish"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$100(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FileName"

    const-string/jumbo v5, "FileName"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->access$100(Lcom/miui/home/launcher/assistant/ui/AssistHolderController;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ChangeLog"

    const-string/jumbo v5, "ChangeLog"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3, v8}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateUpgradeStatus(Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/AssistHolderController$1;->this$0:Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->reLoadMinusScreen()V

    goto/16 :goto_0
.end method
