.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
.super Ljava/lang/Object;
.source "FlybirdFrameStack.java"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataStack:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public static addDisposeWin(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeValidatedFrame()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setIsBack(Z)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->notifyFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_0
    return-void
.end method

.method public static clearWin()V
    .locals 3

    sget-object v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private notifyFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;

    const/4 v2, 0x1

    invoke-interface {v0, p0, p1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;->onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pop()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->addDisposeWin(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto :goto_0
.end method


# virtual methods
.method public addDataSourceObserver(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearDataStack()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pop()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-void
.end method

.method public clearToWindowFrame()Z
    .locals 1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isDefaultWindow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pop()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentDefaultWindow()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getTopWindowFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    new-array v3, v1, [Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isDefaultWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public peekFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popTopWindowFrame()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isDefaultWindow()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_1

    move v0, v2

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pop()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    const-string/jumbo v2, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isDefaultWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->changeValidatedFrame()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_4
.end method

.method public popUntilWindowFrame()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearToWindowFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pop()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isDefaultWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isShowOneTime()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isKeepPre()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->changeValidatedFrame()V

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_4
    const-string/jumbo v3, "ex"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_4

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public pushFrame(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->push(Ljava/lang/Object;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdFrameStack.pushFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "frame count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->notifyFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto :goto_0
.end method

.method public removeDataSourceObserver(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reset()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->mDataStack:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-void
.end method
