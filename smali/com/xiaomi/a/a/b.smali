.class public Lcom/xiaomi/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static volatile b:Lcom/xiaomi/a/a/b;


# instance fields
.field private c:Landroid/content/Context;

.field private volatile d:Z

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/a/a/b;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/b;->d:Z

    new-instance v0, Lcom/xiaomi/a/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/c;-><init>(Lcom/xiaomi/a/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/b;->e:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/xiaomi/a/a/a/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/a/a/b;
    .locals 2

    const-class v1, Lcom/xiaomi/a/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/a/a/b;->b:Lcom/xiaomi/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/a/a/b;->b:Lcom/xiaomi/a/a/b;

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/b;->b:Lcom/xiaomi/a/a/b;
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
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/a/a/b;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/a/b;->d:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/a/a/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/a/a/b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
