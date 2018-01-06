.class Lcom/xiaomi/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/a/a/d;->d()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->d(Lcom/xiaomi/a/a/d;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->e(Lcom/xiaomi/a/a/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->f(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->g(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->b()V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "SdkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sys version = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->h(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v1

    const-string v6, "SdkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assets analytics null "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_9

    move v2, v4

    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v2}, Lcom/xiaomi/a/a/d;->i(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v2

    const-string v6, "SdkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local analytics null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v3

    invoke-interface {v1}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/a/a/m;->a(Lcom/xiaomi/a/a/m;)I

    move-result v3

    if-lez v3, :cond_a

    :cond_3
    const-string v1, "SdkManager"

    const-string v3, "use local analytics."

    invoke-static {v1, v3}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/a/a/m;->a(Lcom/xiaomi/a/a/m;)I

    move-result v2

    if-lez v2, :cond_b

    :cond_5
    const-string v0, "SdkManager"

    const-string v2, "use dex analytics."

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/xiaomi/a/a/b/a;->b()V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;Z)V

    move-object v0, v1

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/a/a/a;->b:Lcom/xiaomi/a/a/m;

    invoke-virtual {v1, v2}, Lcom/xiaomi/a/a/m;->a(Lcom/xiaomi/a/a/m;)I

    move-result v1

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->k(Lcom/xiaomi/a/a/d;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/d;->c(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0, v4}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;Z)Z

    :goto_3
    return-void

    :cond_9
    move v2, v3

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_4

    :try_start_2
    const-string v2, "SdkManager"

    const-string v3, "use assets analytics."

    invoke-static {v2, v3}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heavy work exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0, v4}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;Z)Z

    goto :goto_3

    :cond_b
    if-eqz v0, :cond_7

    :try_start_5
    const-string v2, "SdkManager"

    const-string v3, "use sys analytics."

    invoke-static {v2, v3}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v2, v1}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->j(Lcom/xiaomi/a/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/a/a/f;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1, v4}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;Z)Z

    throw v0
.end method
