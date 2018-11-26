.class public Lcom/miui/luckymoney/utils/ScreenUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_REMOVE_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

.field public static final ACTION_SHOW_MIUI_SECURE_KEYGUARD:Ljava/lang/String; = "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

.field private static final keyguardUnlockedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static latestAction:Landroid/app/PendingIntent;

.field private static registered:Z

.field private static unlockBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    sput-object p0, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/luckymoney/utils/ScreenUtil;->registered:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    new-instance v0, Lcom/miui/luckymoney/utils/ScreenUtil$1;

    invoke-direct {v0}, Lcom/miui/luckymoney/utils/ScreenUtil$1;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/luckymoney/utils/ScreenUtil;->registered:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->keyguardUnlockedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearKeyguardNotifications(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isKeyguardSecure(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isScreenLocked(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isSecureLocked(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isKeyguardSecure(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized notifyKeyguardUnlocked()V
    .locals 3

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->keyguardUnlockedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    invoke-interface {v0}, Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;->onKeyguardUnlocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized powerOnScreen(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v2, "hongbaoassistant"

    const v3, 0x3000000a

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized register(Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->keyguardUnlockedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->keyguardUnlockedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

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

.method public static declared-synchronized unlockKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    const-class v1, Lcom/miui/luckymoney/utils/ScreenUtil;

    monitor-enter v1

    :try_start_0
    sput-object p1, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockMiuiKeyguard(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static unlockMiuiKeyguard(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->EXTRA_ACTION_INTENT:Ljava/lang/String;

    sget-object v2, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sput-object v3, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    sget-object v1, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    sput-object v3, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public static unlockSecureMiuiKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    sget-boolean v0, Lcom/miui/luckymoney/utils/ScreenUtil;->registered:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/luckymoney/utils/ScreenUtil;->registered:Z

    :cond_0
    sput-object p1, Lcom/miui/luckymoney/utils/ScreenUtil;->latestAction:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/luckymoney/utils/ScreenUtil;->registered:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
