.class Lcom/facebook/ads/internal/j/d$1;
.super Lcom/facebook/ads/internal/j/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/j/d;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/j/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:D

.field final synthetic e:D

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/facebook/ads/internal/j/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/j/d;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/j/d$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/internal/j/d$1;->b:I

    iput-object p4, p0, Lcom/facebook/ads/internal/j/d$1;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/ads/internal/j/d$1;->d:D

    iput-wide p7, p0, Lcom/facebook/ads/internal/j/d$1;->e:D

    iput-object p9, p0, Lcom/facebook/ads/internal/j/d$1;->f:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/ads/internal/j/d$1;->g:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/j/d;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v2, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/j/d;->b(Lcom/facebook/ads/internal/j/d;)Lcom/facebook/ads/internal/j/c;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/j/d;->a(Lcom/facebook/ads/internal/j/d;)Lcom/facebook/ads/internal/j/h;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/internal/j/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/internal/j/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/internal/j/d$1;->b:I

    iget-object v6, p0, Lcom/facebook/ads/internal/j/d$1;->c:Ljava/lang/String;

    iget-wide v7, p0, Lcom/facebook/ads/internal/j/d$1;->d:D

    iget-wide v9, p0, Lcom/facebook/ads/internal/j/d$1;->e:D

    iget-object v11, p0, Lcom/facebook/ads/internal/j/d$1;->f:Ljava/lang/String;

    iget-object v12, p0, Lcom/facebook/ads/internal/j/d$1;->g:Ljava/util/Map;

    invoke-virtual/range {v3 .. v12}, Lcom/facebook/ads/internal/j/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/j/d;->c(Lcom/facebook/ads/internal/j/d;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "database"

    sget v4, Lcom/facebook/ads/internal/w/h/b;->w:I

    invoke-static {v1, v3, v4, v0}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/ads/internal/j/d;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_3
    sget-object v3, Lcom/facebook/ads/internal/j/f$a;->c:Lcom/facebook/ads/internal/j/f$a;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/j/d$1;->a(Lcom/facebook/ads/internal/j/f$a;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v3}, Lcom/facebook/ads/internal/j/d;->c(Lcom/facebook/ads/internal/j/d;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    sget v5, Lcom/facebook/ads/internal/w/h/b;->u:I

    invoke-static {v3, v4, v5, v2}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/j/d;->c(Lcom/facebook/ads/internal/j/d;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    sget v4, Lcom/facebook/ads/internal/w/h/b;->w:I

    invoke-static {v2, v3, v4, v0}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/facebook/ads/internal/j/d;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/facebook/ads/internal/j/d$1;->h:Lcom/facebook/ads/internal/j/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/j/d;->c(Lcom/facebook/ads/internal/j/d;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/ads/internal/w/h/b;->w:I

    const-string v4, "database"

    invoke-static {v2, v4, v3, v0}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_3
    :goto_4
    invoke-static {}, Lcom/facebook/ads/internal/j/d;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/j/d$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
