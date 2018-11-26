.class public Lcom/miui/antivirus/service/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private auO:I

.field private auP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private auQ:Landroid/app/job/JobParameters;

.field final synthetic auR:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/antivirus/service/b;->auR:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/antivirus/service/b;->auP:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/miui/antivirus/service/b;->auO:I

    iput-object p2, p0, Lcom/miui/antivirus/service/b;->auQ:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public declared-synchronized aBh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/antivirus/service/b;->auO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/service/b;->auO:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/service/b;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/service/b;->auP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/b;->auR:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    iget-object v1, p0, Lcom/miui/antivirus/service/b;->auQ:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const-string/jumbo v0, "VirusAutoUpdateJobService"

    const-string/jumbo v1, "jobFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
