.class final Lcom/miui/gamebooster/service/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic nk:Lcom/miui/gamebooster/service/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pP(Lcom/miui/gamebooster/service/d;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pK(Lcom/miui/gamebooster/service/d;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    iget-object v1, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v1}, Lcom/miui/gamebooster/service/d;->pK(Lcom/miui/gamebooster/service/d;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->bur()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gamebooster/service/d;->mr:Z

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mThermalSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    iget-boolean v2, v2, Lcom/miui/gamebooster/service/d;->mr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pO(Lcom/miui/gamebooster/service/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v1}, Lcom/miui/gamebooster/service/d;->pN(Lcom/miui/gamebooster/service/d;)Lcom/miui/gamebooster/gbservices/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    iget-object v1, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v1}, Lcom/miui/gamebooster/service/d;->pN(Lcom/miui/gamebooster/service/d;)Lcom/miui/gamebooster/gbservices/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pQ(Lcom/miui/gamebooster/service/d;Lcom/miui/gamebooster/gbservices/d;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addThermal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    iget-boolean v2, v2, Lcom/miui/gamebooster/service/d;->mr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    invoke-static {v1}, Lcom/miui/gamebooster/service/d;->pG(Lcom/miui/gamebooster/service/d;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/G;->nk:Lcom/miui/gamebooster/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pP(Lcom/miui/gamebooster/service/d;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-void
.end method
