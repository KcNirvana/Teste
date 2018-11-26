.class final Lcom/miui/gamebooster/gbservices/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qk:Lcom/miui/gamebooster/gbservices/e;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/z;->qk:Lcom/miui/gamebooster/gbservices/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/z;->qk:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {p2}, Lcom/android/providers/downloads/remote/service/IDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/e;->sn(Lcom/miui/gamebooster/gbservices/e;Lcom/android/providers/downloads/remote/service/IDownloadService;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "IDownloadService onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/z;->qk:Lcom/miui/gamebooster/gbservices/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/e;->sn(Lcom/miui/gamebooster/gbservices/e;Lcom/android/providers/downloads/remote/service/IDownloadService;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "IDownloadService onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
