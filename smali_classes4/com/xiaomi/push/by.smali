.class Lcom/xiaomi/push/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/bw$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/bw$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iput-object p2, p0, Lcom/xiaomi/push/by;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/bw$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v2, p0, Lcom/xiaomi/push/by;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/bw$a;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v0, v0, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v0, v0, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    invoke-virtual {v0}, Lcom/xiaomi/push/bu;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v0, v0, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v0, v0, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    invoke-virtual {v0}, Lcom/xiaomi/push/bu;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :goto_4
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/bw$a;->a(Landroid/content/Context;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_8

    :cond_4
    :goto_7
    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v1, v1, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v1, v1, Lcom/xiaomi/push/bw$a;->a:Lcom/xiaomi/push/bu;

    invoke-virtual {v1}, Lcom/xiaomi/push/bu;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :goto_8
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw$a;

    iget-object v2, p0, Lcom/xiaomi/push/by;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/bw$a;->a(Landroid/content/Context;)V

    throw v0
.end method
