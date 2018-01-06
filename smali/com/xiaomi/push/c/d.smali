.class public Lcom/xiaomi/push/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/xiaomi/push/c/d;


# instance fields
.field private a:Lcom/xiaomi/push/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/push/c/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/c/d;->b:Lcom/xiaomi/push/c/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/c/d;->b:Lcom/xiaomi/push/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/c/d;

    invoke-direct {v0}, Lcom/xiaomi/push/c/d;-><init>()V

    sput-object v0, Lcom/xiaomi/push/c/d;->b:Lcom/xiaomi/push/c/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/c/d;->b:Lcom/xiaomi/push/c/d;

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
.method public a(Lcom/xiaomi/push/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/c/d;->a:Lcom/xiaomi/push/c/c;

    return-void
.end method

.method public b()Lcom/xiaomi/push/c/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c/d;->a:Lcom/xiaomi/push/c/c;

    return-object v0
.end method
