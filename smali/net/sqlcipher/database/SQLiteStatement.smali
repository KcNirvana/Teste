.class public Lnet/sqlcipher/database/SQLiteStatement;
.super Lnet/sqlcipher/database/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 5

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public executeInsert()J
    .locals 5

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :goto_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public executeUpdateDelete()I
    .locals 5

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method public simpleQueryForLong()J
    .locals 7

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v6}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " already closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_long()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v4
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_string()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v1
.end method
