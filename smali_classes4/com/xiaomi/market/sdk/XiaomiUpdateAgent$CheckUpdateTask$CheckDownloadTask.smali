.class Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;
.super Landroid/os/AsyncTask;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/xiaomi/market/sdk/DownloadInstallManager;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->isDownloading(Lcom/xiaomi/market/sdk/LocalAppInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->access$1200()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
