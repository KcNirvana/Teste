.class public Lcom/miui/luckymoney/service/PhoneStateMonitor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final mMonitor:Landroid/telephony/PhoneStateListener;


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/luckymoney/service/PhoneStateMonitor$1;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor$1;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isPhoneBusy(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-class v2, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized registerListener(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized startMonitor(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stopMonitor(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterListener(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
