.class public Lcom/xiaomi/push/service/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/push/service/a/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/push/service/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/a/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/a/d;->a:Lcom/xiaomi/push/service/a/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/service/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/a/d;->a:Lcom/xiaomi/push/service/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/a/d;->a:Lcom/xiaomi/push/service/a/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/a/d;->a:Lcom/xiaomi/push/service/a/d;

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
.method public a(Lcom/xiaomi/j/a/ag;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/a/d;->c:Lcom/xiaomi/push/service/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/a/d;->c:Lcom/xiaomi/push/service/a/a;

    iget-object v1, p0, Lcom/xiaomi/push/service/a/d;->b:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/push/service/a/a;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "not set PerfProcess"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/a/d;->c:Lcom/xiaomi/push/service/a/a;

    return-void
.end method
