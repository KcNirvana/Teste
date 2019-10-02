.class Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;
.super Ljava/lang/Object;
.source "DownloadInstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->arrange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Utils;->hasExternalStorage(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;->notifyResult(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$400()Landroid/app/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->access$500(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object v2, v2, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/xiaomi/market/sdk/DownloadInstallManager;

    invoke-static {v2}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->access$100(Lcom/xiaomi/market/sdk/DownloadInstallManager;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->install(Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object v2, p0, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler$1;->this$1:Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-static {v2}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->access$600(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;->access$700(Lcom/xiaomi/market/sdk/DownloadInstallManager$WorkerHandler;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
