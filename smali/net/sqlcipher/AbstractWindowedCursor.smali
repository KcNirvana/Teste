.class public abstract Lnet/sqlcipher/AbstractWindowedCursor;
.super Lnet/sqlcipher/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected mWindow:Lnet/sqlcipher/CursorWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sqlcipher/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 2

    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->checkPosition()V

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sqlcipher/StaleDataException;

    const-string/jumbo v1, "Access closed cursor"

    invoke-direct {v0, v1}, Lnet/sqlcipher/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Lnet/sqlcipher/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->getBlob(II)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDouble(I)D
    .locals 5

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    monitor-exit v4

    :goto_0
    return-wide v2

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getDouble(II)D

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFloat(I)F
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getFloat(II)F

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInt(I)I
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getInt(II)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLong(I)J
    .locals 5

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    monitor-exit v4

    :goto_0
    return-wide v2

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getLong(II)J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getShort(I)S
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getShort(II)S

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getType(I)I
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->getType(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWindow()Landroid/database/CursorWindow;
    .locals 1

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->getWindow()Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lnet/sqlcipher/CursorWindow;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isBlob(II)Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isFloat(I)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isFloat(II)Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isLong(I)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isLong(II)Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isNull(I)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->isNull(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isString(I)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isString(II)Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setWindow(Lnet/sqlcipher/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V

    :cond_0
    iput-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-void
.end method
