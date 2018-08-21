.class public Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;
.super Ljava/lang/Object;
.source "PackageInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;
    }
.end annotation


# static fields
.field private static final PACKAGE_PERSONALASSISTANT:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final TAG:Ljava/lang/String; = "PackageInstallReceiver"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;


# instance fields
.field private mBallUpdateLisenerList:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIUpdateLisener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mXspaceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mBallUpdateLisenerList:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$2;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mXspaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mBallUpdateLisenerList:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBallUpdateLisener(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mBallUpdateLisenerList:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mBallUpdateLisenerList:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mBallUpdateLisenerList:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearUpgradeData()V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "FileName"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$3;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "FileName"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_upgrade"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public registerReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mXspaceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    const/16 v5, 0x3e7

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;->update()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mXspaceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->mXspaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
