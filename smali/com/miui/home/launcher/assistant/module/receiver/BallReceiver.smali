.class public Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;
.super Ljava/lang/Object;
.source "BallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BallReceiver"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideHupuBtnReceiver:Landroid/content/BroadcastReceiver;

.field private mIUpdateLisenerList:Ljava/util/WeakHashMap;
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

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mWorldCupTabShowedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$2;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mHideHupuBtnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mWorldCupTabShowedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

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
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "miui.intent.action.MINUS_SCREEN_UPDATE_BALL_HIDE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mHideHupuBtnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "miui.intent.action.MINUS_SCREEN_WORLD_CUP_SHOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mWorldCupTabShowedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mIUpdateLisenerList:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mHideHupuBtnReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mHideHupuBtnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mWorldCupTabShowedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->mWorldCupTabShowedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method
