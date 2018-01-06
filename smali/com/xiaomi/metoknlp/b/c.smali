.class public Lcom/xiaomi/metoknlp/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/metoknlp/b/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/List;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/metoknlp/b/c;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->d:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/metoknlp/b/d;

    invoke-static {}, Lcom/xiaomi/metoknlp/a;->a()Lcom/xiaomi/metoknlp/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/a;->d()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/b/d;-><init>(Lcom/xiaomi/metoknlp/b/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/metoknlp/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/b/e;-><init>(Lcom/xiaomi/metoknlp/b/c;Lcom/xiaomi/metoknlp/b/b;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/metoknlp/b/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a()Lcom/xiaomi/metoknlp/b/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/metoknlp/b/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/b/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/metoknlp/b/a;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/c;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
