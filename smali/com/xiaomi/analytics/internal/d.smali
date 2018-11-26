.class public Lcom/xiaomi/analytics/internal/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile bnR:Lcom/xiaomi/analytics/internal/d;

.field public static bnT:Z


# instance fields
.field private volatile bnS:Z

.field private bnU:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/analytics/internal/d;->bnT:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/d;->bnS:Z

    new-instance v0, Lcom/xiaomi/analytics/internal/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/j;-><init>(Lcom/xiaomi/analytics/internal/d;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/d;->bnU:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/d;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized bLv(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/d;
    .locals 2

    const-class v1, Lcom/xiaomi/analytics/internal/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/d;->bnR:Lcom/xiaomi/analytics/internal/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/analytics/internal/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/d;->bnR:Lcom/xiaomi/analytics/internal/d;

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/d;->bnR:Lcom/xiaomi/analytics/internal/d;
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
.method public bLw()V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/d;->bnS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/d;->bnS:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/d;->bnU:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
