.class Lcom/xiaomi/push/c/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/metoknlp/c/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/c/a/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/c/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/c/a/n;->a:Lcom/xiaomi/push/c/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/c/a/n;->a:Lcom/xiaomi/push/c/a/m;

    invoke-static {p1}, Lcom/xiaomi/push/c/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/c/a/m;->a(Lcom/xiaomi/push/c/a/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/c/a/n;->a:Lcom/xiaomi/push/c/a/m;

    invoke-static {v0}, Lcom/xiaomi/push/c/a/m;->a(Lcom/xiaomi/push/c/a/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/c/a/n;->a:Lcom/xiaomi/push/c/a/m;

    invoke-static {v0}, Lcom/xiaomi/push/c/a/m;->a(Lcom/xiaomi/push/c/a/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
