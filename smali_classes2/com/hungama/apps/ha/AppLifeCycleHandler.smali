.class public Lcom/hungama/apps/ha/AppLifeCycleHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Ljava/util/TimerTask;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/hungama/apps/ha/HAController;->getInstance()Lcom/hungama/apps/ha/HAController;

    move-result-object v0

    const-string v1, "SESSION_ENDED"

    invoke-virtual {v0, v1}, Lcom/hungama/apps/ha/HAController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->e()V

    return-void
.end method

.method static synthetic a(Lcom/hungama/apps/ha/AppLifeCycleHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/hungama/apps/ha/HAController;->getInstance()Lcom/hungama/apps/ha/HAController;

    move-result-object v0

    const-string v1, "SESSION_STARTED"

    invoke-virtual {v0, v1}, Lcom/hungama/apps/ha/HAController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a()V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a:Ljava/util/Timer;

    new-instance v0, Lcom/hungama/apps/ha/AppLifeCycleHandler$1;

    invoke-direct {v0, p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler$1;-><init>(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->c:Z

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/hungama/apps/ha/AppLifeCycleHandler$2;

    invoke-direct {v1, p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler$2;-><init>(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->c()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iget-boolean p1, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->d()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
