.class public Lcom/miui/video/framework/utils/TimerUtils;
.super Ljava/lang/Object;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;
    }
.end annotation


# static fields
.field private static final TYPE_ADD:I = 0x0

.field private static final TYPE_REMOVE:I = 0x1

.field private static final TYPE_REMOVE_ALL:I = 0x2

.field private static volatile mInstance:Lcom/miui/video/framework/utils/TimerUtils;


# instance fields
.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayTimer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayTimerListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPeriodHandler:Landroid/os/Handler;

.field private mPeriodTimer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mPeriodTimerListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/framework/utils/TimerUtils$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/framework/utils/TimerUtils$3;-><init>(Lcom/miui/video/framework/utils/TimerUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/video/framework/utils/TimerUtils$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/framework/utils/TimerUtils$4;-><init>(Lcom/miui/video/framework/utils/TimerUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/video/framework/utils/TimerUtils;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/framework/utils/TimerUtils;Ljava/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    return-object p0
.end method

.method private addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;",
            ">;>;I",
            "Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;",
            "I)Z"
        }
    .end annotation

    if-lez p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    monitor-enter v0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/miui/video/framework/utils/TimerUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/framework/utils/TimerUtils;->mInstance:Lcom/miui/video/framework/utils/TimerUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/framework/utils/TimerUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/utils/TimerUtils;->mInstance:Lcom/miui/video/framework/utils/TimerUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/framework/utils/TimerUtils;

    invoke-direct {v1}, Lcom/miui/video/framework/utils/TimerUtils;-><init>()V

    sput-object v1, Lcom/miui/video/framework/utils/TimerUtils;->mInstance:Lcom/miui/video/framework/utils/TimerUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/framework/utils/TimerUtils;->mInstance:Lcom/miui/video/framework/utils/TimerUtils;

    return-object v0
.end method

.method private removeTimer(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Timer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    invoke-direct {p0, v2}, Lcom/miui/video/framework/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-void
.end method

.method private removeTimerListener(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/utils/TimerUtils$ITimerListener;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method private stopTimer(Ljava/util/Timer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDelayTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/miui/video/framework/utils/TimerUtils;->addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Timer;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/miui/video/framework/utils/TimerUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/framework/utils/TimerUtils$1;-><init>(Lcom/miui/video/framework/utils/TimerUtils;I)V

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addPeriodTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/miui/video/framework/utils/TimerUtils;->addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Timer;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/miui/video/framework/utils/TimerUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/framework/utils/TimerUtils$2;-><init>(Lcom/miui/video/framework/utils/TimerUtils;I)V

    const-wide/16 v2, 0x0

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v4, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    :cond_3
    return-void
.end method

.method public removeAllTimer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimer(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimer(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimerListener(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimerListener(Landroid/util/SparseArray;)V

    return-void
.end method

.method public removeDelayTimer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimer(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimerListener(Landroid/util/SparseArray;)V

    return-void
.end method

.method public removeDelayTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/miui/video/framework/utils/TimerUtils;->addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimerListener:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Timer;

    invoke-direct {p0, p2}, Lcom/miui/video/framework/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mDelayTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public removePeriodTimer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimer(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->removeTimerListener(Landroid/util/SparseArray;)V

    return-void
.end method

.method public removePeriodTimer(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/miui/video/framework/utils/TimerUtils;->addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/miui/video/framework/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public removePeriodTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/miui/video/framework/utils/TimerUtils;->addOrRemoveTimerListener(Landroid/util/SparseArray;ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimerListener:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Timer;

    invoke-direct {p0, p2}, Lcom/miui/video/framework/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    iget-object p2, p0, Lcom/miui/video/framework/utils/TimerUtils;->mPeriodTimer:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method
