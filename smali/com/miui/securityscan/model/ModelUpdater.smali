.class public Lcom/miui/securityscan/model/ModelUpdater;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Bg:Ljava/util/concurrent/ExecutorService;

.field private static Bh:Lcom/miui/securityscan/model/ModelUpdater;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Bd:Landroid/app/AlarmManager;

.field private volatile Be:Z

.field private Bf:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/model/ModelUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/securityscan/model/ModelUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/model/ModelUpdater;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/model/ModelUpdater;->Bg:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->Be:Z

    new-instance v0, Lcom/miui/securityscan/model/b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/model/b;-><init>(Lcom/miui/securityscan/model/ModelUpdater;)V

    iput-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->Bf:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static BH(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/miui/common/c/a;->aJt(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    sget-object v4, Lcom/miui/securityscan/model/ModelUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "check file md5: given: %s with caculated: %s, success:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic BI(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic BJ(Lcom/miui/securityscan/model/ModelUpdater;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->Be:Z

    return v0
.end method

.method static synthetic BK()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/model/ModelUpdater;->Bg:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic BL(Lcom/miui/securityscan/model/ModelUpdater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/ModelUpdater;->Be:Z

    return p1
.end method

.method static synthetic BM(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/securityscan/model/ModelUpdater;->BH(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/securityscan/model/ModelUpdater;
    .locals 2

    const-class v1, Lcom/miui/securityscan/model/ModelUpdater;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/model/ModelUpdater;->Bh:Lcom/miui/securityscan/model/ModelUpdater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/model/ModelUpdater;

    invoke-direct {v0}, Lcom/miui/securityscan/model/ModelUpdater;-><init>()V

    sput-object v0, Lcom/miui/securityscan/model/ModelUpdater;->Bh:Lcom/miui/securityscan/model/ModelUpdater;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/ModelUpdater;->Bh:Lcom/miui/securityscan/model/ModelUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/model/ModelUpdater;->Bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public init()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->Bd:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miui.securitycenter.action.ITEM_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/securityscan/model/ModelUpdater;->Bf:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.securitycenter.action.ITEM_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securityscan/model/ModelUpdater;->mContext:Landroid/content/Context;

    const/16 v3, 0x2714

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater;->Bd:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
