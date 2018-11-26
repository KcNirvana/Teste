.class public Lcom/miui/gamebooster/gbservices/c;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private oN:Landroid/content/ServiceConnection;

.field private oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private oP:Z

.field private oQ:Lcom/miui/gamebooster/service/d;

.field private oR:Z

.field private oS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/gbservices/v;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/v;-><init>(Lcom/miui/gamebooster/gbservices/c;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oN:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/c;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/c;->oQ:Lcom/miui/gamebooster/service/d;

    return-void
.end method

.method private rF()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/c;->oQ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->bup(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.powerkeeper"

    const-string/jumbo v2, "com.miui.powerkeeper.feedbackcontrol.FeedbackControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/c;->oN:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oP:Z

    return-void
.end method

.method private rG()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-interface {v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->buq()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/c;->oN:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oP:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic rH(Lcom/miui/gamebooster/gbservices/c;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object v0
.end method

.method static synthetic rI(Lcom/miui/gamebooster/gbservices/c;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oQ:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic rJ(Lcom/miui/gamebooster/gbservices/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oR:Z

    return v0
.end method

.method static synthetic rK(Lcom/miui/gamebooster/gbservices/c;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/c;->oO:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oR:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/c;->rG()V

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mThermalSupported...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsPerformance...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oR:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/c;->rF()V

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mThermalSupported...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsPerformance...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public rd()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oQ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public re()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tI(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oR:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/c;->oQ:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/c;->oS:Z

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initservice mThermalSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gamebooster/gbservices/c;->oS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/c;->oR:Z

    return-void
.end method
