.class Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PackageInstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "com.miui.personalassistant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->clearUpgradeData()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    const-string/jumbo v3, "5"

    const-string/jumbo v4, ""

    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;

    invoke-interface {v3, v2}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;->onAppChanged(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v3, "com.hupu.games"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$100(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$100(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;->onHupuBtnStateChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "com.miui.personalassistant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->isInMinusScreen()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "PackageInstallReceiver"

    const-string/jumbo v4, "isInMinusScreen"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->reLoadMinusScreen()V

    :goto_2
    const-string/jumbo v3, "5"

    const-string/jumbo v4, ""

    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "PackageInstallReceiver"

    const-string/jumbo v4, "isNotInMinusScreen"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->reLoadMinusScreenDelay()V

    goto :goto_2
.end method
