.class Lcom/miui/gamebooster/gbservices/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pv:Lcom/miui/gamebooster/gbservices/e;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x2710

    const/4 v6, 0x5

    const/4 v0, 0x0

    const-string/jumbo v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDownloadService :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v3}, Lcom/miui/gamebooster/gbservices/e;->si(Lcom/miui/gamebooster/gbservices/e;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->si(Lcom/miui/gamebooster/gbservices/e;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v0

    if-ge v0, v6, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sp(Lcom/miui/gamebooster/gbservices/e;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sl(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/f;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDownloadService is null, rebinding... count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->so(I)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "rebind count has been 5 times, still failure!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "setLimitSpeed..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->si(Lcom/miui/gamebooster/gbservices/e;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sg(Lcom/miui/gamebooster/gbservices/e;)I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sh(Lcom/miui/gamebooster/gbservices/e;)I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/providers/downloads/remote/service/IDownloadService;->bPe(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->so(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Has Stop limitSpeed?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->-get0()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sl(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v2}, Lcom/miui/gamebooster/gbservices/e;->sh(Lcom/miui/gamebooster/gbservices/e;)I

    move-result v2

    add-int/lit16 v2, v2, -0x1388

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sp(Lcom/miui/gamebooster/gbservices/e;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start exception! rebind downloadservice... count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/f;->pv:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sl(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/f;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->so(I)I

    return-void
.end method
