.class public Lcom/xiaomi/market/sdk/DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadCompleteReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketSDKDownloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p2, "MarketSDKDownloadReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on sdk download complete : id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p2, v3, v1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/xiaomi/market/sdk/DownloadInstallManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->handleDownloadComplete(J)V

    :cond_1
    return-void
.end method
