.class Lcom/miui/gamebooster/service/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/gamebooster/view/a;


# instance fields
.field private lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

.field private lW:Ljava/lang/String;

.field private lX:Ljava/lang/String;

.field private lY:Landroid/os/Handler;

.field private lZ:Z

.field private mContext:Landroid/content/Context;

.field private ma:Z

.field private mb:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/service/y;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/y;-><init>(Lcom/miui/gamebooster/service/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/b;->lY:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/b;->lZ:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    iput-object p1, p0, Lcom/miui/gamebooster/service/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/service/b;->lX:Ljava/lang/String;

    return-void
.end method

.method static synthetic oU(Lcom/miui/gamebooster/service/b;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    return-object v0
.end method

.method static synthetic oV(Lcom/miui/gamebooster/service/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic oW(Lcom/miui/gamebooster/service/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic oX(Lcom/miui/gamebooster/service/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/b;->lZ:Z

    return v0
.end method

.method static synthetic oY(Lcom/miui/gamebooster/service/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    return v0
.end method

.method static synthetic oZ(Lcom/miui/gamebooster/service/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/b;->mb:J

    return-wide v0
.end method


# virtual methods
.method public oO()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->dismiss()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lY:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public oP(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v10, 0x3c

    const v9, 0x7f0c005d

    const v8, 0x7f0c005c

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "--"

    aput-object v3, v2, v7

    invoke-virtual {v0, v8, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "--"

    aput-object v3, v2, v7

    invoke-virtual {v0, v9, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    div-long v4, v2, v10

    long-to-int v1, v4

    rem-long/2addr v2, v10

    long-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v8, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "%02d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oQ()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/service/z;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/z;-><init>(Lcom/miui/gamebooster/service/b;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/service/z;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public oR()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    return-void
.end method

.method public oS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/b;->lW:Ljava/lang/String;

    return-void
.end method

.method public oT()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qJ(Landroid/content/Context;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    iget-object v1, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lX:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gamebooster/service/b;->mb:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/gamebooster/service/b;->oP(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qN(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qP(Lcom/miui/gamebooster/view/a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lV:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->show()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lY:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v6, p0, Lcom/miui/gamebooster/service/b;->ma:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->lW:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/gamebooster/service/b;->mb:J

    return-void
.end method
