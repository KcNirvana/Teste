.class final Lcom/miui/gamebooster/service/n;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source ""


# static fields
.field private static final synthetic mL:[I


# instance fields
.field final synthetic mK:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method

.method private static synthetic qf()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/service/n;->mL:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/service/n;->mL:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->values()[Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rb:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/gamebooster/service/n;->mL:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .locals 6

    invoke-static {}, Lcom/miui/gamebooster/service/GameBoosterService;->nA()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nK(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nC(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gameStartDelay foreground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nO(Lcom/miui/gamebooster/service/GameBoosterService;J)J

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nB(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nG(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/gamebooster/service/o;

    invoke-direct {v3, p0, v0}, Lcom/miui/gamebooster/service/o;-><init>(Lcom/miui/gamebooster/service/n;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->ob(Lcom/miui/gamebooster/service/GameBoosterService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nL(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nM(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->rc:Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/service/d;->pe(Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/service/d;->pd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->ob(Lcom/miui/gamebooster/service/GameBoosterService;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video gameStartDelay foreground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nY(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    :try_start_4
    invoke-static {}, Lcom/miui/gamebooster/service/n;->qf()[I

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v3, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/d;->pf()Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/constants/EnumCollection$BoosterType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->od(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nx(Lcom/miui/gamebooster/service/GameBoosterService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v2

    iget-object v3, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/miui/gamebooster/a/y;->hH(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nJ(Lcom/miui/gamebooster/service/GameBoosterService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nV(Lcom/miui/gamebooster/service/GameBoosterService;J)J

    const-string/jumbo v0, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pop XunyouAlertActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/n;->mK:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nZ(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v0, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGameStatusChange foreground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v0, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video onGameStatusChange foreground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_7
    monitor-exit v1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
