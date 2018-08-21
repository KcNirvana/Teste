.class public Lcom/alipay/android/app/b/b;
.super Ljava/lang/Object;
.source "BaseWindowManager.java"

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;
.implements Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;


# instance fields
.field protected mBizId:I

.field protected mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field protected mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field protected mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field private mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field private mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field protected mPackageName:Ljava/lang/String;

.field private mStartFlybirdActivityFromOutAppFailed:Z

.field private mStartLocalActivityFromOutAppFailed:Z

.field protected uiStateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/b/b;->mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput-object v1, p0, Lcom/alipay/android/app/b/b;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-boolean v0, p0, Lcom/alipay/android/app/b/b;->mStartFlybirdActivityFromOutAppFailed:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/b/b;->mStartLocalActivityFromOutAppFailed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    return-void
.end method

.method private defaultStartContainer(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/b/b;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "CallingPid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startContainer(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/b/b;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->c()Lcom/alipay/android/app/h;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->b()Lcom/alipay/android/app/l;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v3, v0, p1, v1, v2}, Lcom/alipay/android/app/l;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 v0, 0x4

    const-string/jumbo v2, "phonecashiermsp#flybird"

    const-string/jumbo v4, "startContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callback != null bizId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v0, p1, v1, v4}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 v0, 0x4

    const-string/jumbo v2, "phonecashiermsp#flybird"

    const-string/jumbo v4, "startContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "alipayCallback != null bizId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v3, :cond_1

    const-class v2, Lcom/alipay/android/app/ui/quickpay/window/MiniPayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v7, p0, Lcom/alipay/android/app/b/b;->mStartFlybirdActivityFromOutAppFailed:Z

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/b/b;->defaultStartContainer(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/b/b;->defaultStartContainer(Ljava/lang/String;I)V

    const/4 v0, 0x4

    const-string/jumbo v2, "phonecashiermsp#flybird"

    const-string/jumbo v4, "startContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "defaultStartContainer bizId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iput-boolean v7, p0, Lcom/alipay/android/app/b/b;->mStartLocalActivityFromOutAppFailed:Z

    goto :goto_1
.end method


# virtual methods
.method public createLocalViewContainer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/4 v3, 0x4

    const-class v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "BaseWindowManager.createLocalViewContainer"

    invoke-static {v3, v1, v2, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v2, v2, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-nez v2, :cond_0

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#flybird"

    const-string/jumbo v4, "BaseWindowManager.createLocalViewContaine.startContainer"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/b/b;->startContainer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "createMainContainer"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createMainContainer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v2, v2, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    if-nez v2, :cond_0

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#flybird"

    const-string/jumbo v4, "BaseWindowManager.createMainContainer"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/b/b;->startContainer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "createMainContainer"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public dispose(IILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected disposeUI()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_1
    return-void
.end method

.method public executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    return-void
.end method

.method public exit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public finishLocalViewShower()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-void
.end method

.method public getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method public getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isStartFlybirdActivityFromOutAppFailed()Z
    .locals 5

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "BaseWindowManager.isStartFlybirdActivityFromOutAppFailed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartFlybirdActivityFromOutAppFailed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/android/app/b/b;->mStartFlybirdActivityFromOutAppFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/b/b;->mStartFlybirdActivityFromOutAppFailed:Z

    return v0
.end method

.method public isStartLocalActivityFromOutAppFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/b;->mStartLocalActivityFromOutAppFailed:Z

    return v0
.end method

.method public onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    return-void
.end method

.method public onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hanleEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    return-void
.end method

.method public onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/statistic/e/a;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/alipay/android/app/b/b;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/b/b;->createLocalViewContainer()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/b/b;->createMainContainer()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/b/b;->createMainContainer()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowLoaded(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/4 v3, 0x4

    instance-of v0, p1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mLocalViewFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "BaseWindowManager.onWindowLoaded"

    const-string/jumbo v2, "mLocalViewFormShower"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    check-cast p1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p1, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/b/b;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->setOnFormEventLinstener(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/b/b;->uiStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object v0, p0, Lcom/alipay/android/app/b/b;->mFlybirdFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "BaseWindowManager.onWindowLoaded"

    const-string/jumbo v2, "mFlybirdFormShower"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
