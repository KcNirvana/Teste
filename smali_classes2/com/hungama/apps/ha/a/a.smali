.class final Lcom/hungama/apps/ha/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private a:Lcom/hungama/apps/ha/a/c;

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/hungama/apps/ha/a/c;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hungama/apps/ha/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hungama/apps/ha/a/c;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/hungama/apps/ha/a/a;->a:Lcom/hungama/apps/ha/a/c;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/hungama/apps/ha/a/a/a;)J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/a/a;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/hungama/apps/ha/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, v4}, Lcom/hungama/apps/ha/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    move-wide v2, v5

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_0
    :try_start_4
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    :try_start_6
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-wide v2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_2
    :goto_5
    throw p1

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()V
    .locals 5

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hungama/apps/ha/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/hungama/apps/ha/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :goto_3
    :try_start_4
    monitor-exit v0

    return-void

    :goto_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_6

    :cond_1
    :goto_5
    throw v1

    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method declared-synchronized a(Ljava/lang/String;Lcom/hungama/apps/ha/a/a/d;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/a/a;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/hungama/apps/ha/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2, p1}, Lcom/hungama/apps/ha/a/a/d;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v1, p1

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_2
    move-exception p2

    move-object p1, v1

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v2, v1

    goto :goto_6

    :catch_4
    move-exception p2

    move-object p1, v1

    :goto_2
    :try_start_5
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p1, :cond_1

    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_3
    move-exception p2

    move-object v2, v1

    :goto_3
    move-object v1, p1

    goto :goto_6

    :catch_5
    move-exception p2

    move-object v2, v1

    :goto_4
    :try_start_7
    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_2

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return-void

    :goto_6
    if-eqz v1, :cond_4

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_4
    move-exception p1

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw p2

    :goto_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a;->a:Lcom/hungama/apps/ha/a/c;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/a/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/hungama/apps/ha/a/a;->a:Lcom/hungama/apps/ha/a/c;

    invoke-virtual {p3, p2}, Lcom/hungama/apps/ha/a/c;->a(I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
