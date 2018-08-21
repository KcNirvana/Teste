.class public Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;
.super Ljava/lang/Object;
.source "AgendaAssistantReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;,
        Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;
    }
.end annotation


# static fields
.field private static final ACTION_AGENDA_SETTINGS:Ljava/lang/String; = "com.miui.personalassistant.AGENDA_SETTINGS"

.field private static final ACTION_CALENDAR_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static volatile sInstance:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIUpdateLisener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;",
            ">;"
        }
    .end annotation
.end field

.field private mIUpdateViewLisener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mIUpdateViewLisener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->sInstance:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

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
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.AGENDA_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mIUpdateLisener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mIUpdateViewLisener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
