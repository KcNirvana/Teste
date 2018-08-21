.class public Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;
.super Ljava/lang/Object;
.source "LocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;
    }
.end annotation


# static fields
.field private static final INVOKING_WAITING_TIME:J = 0x4e20L

.field public static final LC_CB_ID_DIDI:I = 0x3

.field public static final LC_CB_ID_ETA:I = 0x1

.field public static final LC_CB_ID_MAP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocationReceiver"

.field private static mIsInvoking:Z

.field private static mLastInvokMills:J

.field static mLocationRC:Landroid/content/BroadcastReceiver;

.field private static sCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mIsInvoking:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLastInvokMills:J

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLocationRC:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mIsInvoking:Z

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->callbackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static callbackInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;->getCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;->getCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static getCurrentLocation(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v2, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mIsInvoking:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLastInvokMills:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mIsInvoking:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLastInvokMills:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v8, [Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "getCurrentLocation"

    invoke-virtual {v1, v0, v2, v9, v9}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LocationReceiver"

    const-string/jumbo v2, "getCurrentLocation callback:%s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v8

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getEtaInfo(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->sCallbackMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const-string/jumbo v1, "getEtaInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LocationReceiver"

    const-string/jumbo v1, "getEtaInfo pkg:%s callback:%s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.getcurrentlocation"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.personalassistant.getetalineinfo"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLocationRC:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationReceiver"

    const-string/jumbo v3, "SecurityException"

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unRegisterReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->mLocationRC:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
