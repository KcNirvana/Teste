.class public Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;
.super Ljava/lang/Object;
.source "DiDiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIUpdateLisener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;",
            ">;"
        }
    .end annotation
.end field

.field private mPriceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mPriceReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

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
.method public registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.home.launcher.assistant.didi.CALLAPI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mPriceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mPriceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mPriceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public updateCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;->updateCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
