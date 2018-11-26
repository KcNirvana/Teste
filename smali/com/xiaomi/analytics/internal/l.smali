.class final Lcom/xiaomi/analytics/internal/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic boj:Lcom/xiaomi/analytics/internal/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/o;->bMf()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMs(Lcom/xiaomi/analytics/internal/o;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMO(Lcom/xiaomi/analytics/internal/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/analytics/internal/o;->bMy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMc(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bLY(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/a/a;->bKo()V

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sys version = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/analytics/internal/o;->bMy()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "use system analytics only, so don\'t load asset/local analytics.apk"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/o;->bMn(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/o;->bMH(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0, v4}, Lcom/xiaomi/analytics/internal/o;->bLV(Lcom/xiaomi/analytics/internal/o;Z)Z

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMv(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    const-string/jumbo v6, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "assets analytics null "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_a

    move v1, v4

    :goto_0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMI(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v1

    const-string/jumbo v6, "SdkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "local analytics null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v3

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/analytics/internal/m;->bLS(Lcom/xiaomi/analytics/internal/m;)I

    move-result v3

    if-lez v3, :cond_b

    :cond_5
    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v3, "use local analytics."

    invoke-static {v0, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v1

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/analytics/internal/m;->bLS(Lcom/xiaomi/analytics/internal/m;)I

    move-result v1

    if-lez v1, :cond_c

    :cond_7
    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v2, "use dex analytics."

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->bKo()V

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/o;->bMb(Lcom/xiaomi/analytics/internal/o;Z)V

    :goto_2
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/analytics/internal/c;->bnQ:Lcom/xiaomi/analytics/internal/m;

    invoke-virtual {v1, v2}, Lcom/xiaomi/analytics/internal/m;->bLS(Lcom/xiaomi/analytics/internal/m;)I

    move-result v1

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/o;->bMn(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMR(Lcom/xiaomi/analytics/internal/o;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/o;->bMH(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0, v4}, Lcom/xiaomi/analytics/internal/o;->bLV(Lcom/xiaomi/analytics/internal/o;Z)Z

    :goto_3
    return-void

    :cond_a
    move v1, v3

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_6

    :try_start_5
    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v3, "use assets analytics."

    invoke-static {v1, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v5

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "heavy work exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0, v4}, Lcom/xiaomi/analytics/internal/o;->bLV(Lcom/xiaomi/analytics/internal/o;Z)Z

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    :try_start_8
    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v3, "use sys analytics."

    invoke-static {v1, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/o;->bMP(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMA(Lcom/xiaomi/analytics/internal/o;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/l;->boj:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1, v4}, Lcom/xiaomi/analytics/internal/o;->bLV(Lcom/xiaomi/analytics/internal/o;Z)Z

    throw v0

    :cond_d
    move-object v0, v2

    goto :goto_2
.end method
