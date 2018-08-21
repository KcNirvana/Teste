.class public Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;
.super Ljava/lang/Object;
.source "TransmissionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_SERVICE:I = 0x2

.field private static final MSG_UNBIND_SERVICE:I = 0x1

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.miui.personalassistant.TRANSMISSION_PROVIDER"

.field private static final SERVICE_PACKAGENAME:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final TAG:Ljava/lang/String; = "TransmissionProvider"

.field private static final UNBIND_WAITING_TIME:J = 0x7530L

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;


# instance fields
.field private isBinded:Z

.field private mBinderLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmiui/assistant/provider/ITransmissionService;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mParamList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mBinderLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;-><init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->bindService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mBinderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mParamList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Lmiui/assistant/provider/ITransmissionService;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Lmiui/assistant/provider/ITransmissionService;)Lmiui/assistant/provider/ITransmissionService;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->unbindService()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sendMsg()V

    return-void
.end method

.method private bindIntentService(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.TRANSMISSION_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private bindService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mBinderLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v0, "TransmissionProvider"

    const-string/jumbo v1, "invoke method: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mParamList:Ljava/util/List;

    new-instance v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$TransParam;-><init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->bindIntentService(Landroid/content/Context;)Z

    move-result v6

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sendMsg()V

    :cond_0
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->bindIntentService(Landroid/content/Context;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized checkTread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "TransmissionProvider"

    const-string/jumbo v1, " new HandlerThread "

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TransmissionProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$2;-><init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sInstance:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sInstance:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sInstance:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->sInstance:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMsg()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->checkTread()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "TransmissionProvider"

    const-string/jumbo v2, "unbindService & quitSafely"

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->isBinded:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mService:Lmiui/assistant/provider/ITransmissionService;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->mThread:Landroid/os/HandlerThread;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v6

    new-instance v0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;-><init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->bindService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
