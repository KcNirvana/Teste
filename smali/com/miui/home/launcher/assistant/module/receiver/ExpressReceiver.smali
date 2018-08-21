.class public Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;
.super Ljava/lang/Object;
.source "ExpressReceiver.java"


# static fields
.field private static final ACTION_UPDATE_EXPRESS:Ljava/lang/String; = "action_update_express"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpdateExpressReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mUpdateExpressReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

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

    const-string/jumbo v1, "action_update_express"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mUpdateExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mUpdateExpressReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->mUpdateExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
