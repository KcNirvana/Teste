.class public abstract Lcom/flybird/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mPauseTime:J

.field private mPaused:Z

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mCancelled:Z

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mPaused:Z

    new-instance v0, Lcom/flybird/CountDownTimer$1;

    invoke-direct {v0, p0}, Lcom/flybird/CountDownTimer$1;-><init>(Lcom/flybird/CountDownTimer;)V

    iput-object v0, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/flybird/CountDownTimer;->mMillisInFuture:J

    iput-wide p3, p0, Lcom/flybird/CountDownTimer;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/CountDownTimer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/CountDownTimer;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flybird/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/flybird/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/flybird/CountDownTimer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/CountDownTimer;->mCancelled:Z

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/flybird/CountDownTimer;->mCancelled:Z

    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public pause()J
    .locals 4

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mStopTimeInFuture:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->mPauseTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mPaused:Z

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mPauseTime:J

    return-wide v0
.end method

.method public resume()J
    .locals 4

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mPauseTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->mStopTimeInFuture:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mPaused:Z

    iget-object v0, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mPauseTime:J

    return-wide v0
.end method

.method public final declared-synchronized start()Lcom/flybird/CountDownTimer;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flybird/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->mStopTimeInFuture:J

    iget-object v0, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mCancelled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
