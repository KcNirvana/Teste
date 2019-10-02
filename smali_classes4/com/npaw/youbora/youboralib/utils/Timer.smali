.class public Lcom/npaw/youbora/youboralib/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;
    }
.end annotation


# instance fields
.field private callback:Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;

.field private chrono:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private isRunning:Z

.field private final tickRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;)V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-direct {p0, p1, v0, v1}, Lcom/npaw/youbora/youboralib/utils/Timer;-><init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;J)V

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Timer$1;

    invoke-direct {v0, p0}, Lcom/npaw/youbora/youboralib/utils/Timer$1;-><init>(Lcom/npaw/youbora/youboralib/utils/Timer;)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->tickRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->callback:Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;

    iput-wide p2, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->interval:J

    new-instance p1, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {p1}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->chrono:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/npaw/youbora/youboralib/utils/Timer;)Lcom/npaw/youbora/youboralib/utils/Chrono;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->chrono:Lcom/npaw/youbora/youboralib/utils/Chrono;

    return-object p0
.end method

.method static synthetic access$100(Lcom/npaw/youbora/youboralib/utils/Timer;)Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->callback:Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/npaw/youbora/youboralib/utils/Timer;)V
    .locals 0

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/utils/Timer;->setNextPing()V

    return-void
.end method

.method private setNextPing()V
    .locals 4

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->chrono:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->tickRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->interval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getChrono()Lcom/npaw/youbora/youboralib/utils/Chrono;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->chrono:Lcom/npaw/youbora/youboralib/utils/Chrono;

    return-object v0
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/utils/Timer;->setNextPing()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer started: every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->isRunning:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/utils/Timer;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
