.class Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xspace packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;->onAppChanged(Ljava/lang/String;)V

    goto :goto_0
.end method
