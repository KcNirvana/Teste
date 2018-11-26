.class Lcom/miui/gamebooster/gbservices/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pw:Lcom/miui/gamebooster/gbservices/e;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sl(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->si(Lcom/miui/gamebooster/gbservices/e;)Lcom/android/providers/downloads/remote/service/IDownloadService;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/providers/downloads/remote/service/IDownloadService;->bPe(JJ)Z

    move-result v0

    const-string/jumbo v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLimitSpeed... stop limit speed result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sq(Lcom/miui/gamebooster/gbservices/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sp(Lcom/miui/gamebooster/gbservices/e;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop exception! rebind downloadservice... count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->sj(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/g;->pw:Lcom/miui/gamebooster/gbservices/e;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/e;->sm(Lcom/miui/gamebooster/gbservices/e;)Lcom/miui/gamebooster/gbservices/g;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/miui/gamebooster/gbservices/e;->sk()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/e;->so(I)I

    goto :goto_0
.end method
