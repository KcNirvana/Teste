.class public final Lnet/sqlcipher/BulkCursorToCursorAdaptor;
.super Lnet/sqlcipher/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Lnet/sqlcipher/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sqlcipher/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method public static findRowIdColumnIndex([Ljava/lang/String;)I
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->close()V

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Remote process exception when closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->supportsUpdates()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BulkCursor"

    const-string/jumbo v4, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-gtz v4, :cond_2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    iget-object v5, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Lnet/sqlcipher/IBulkCursor;->updateRows(Ljava/util/Map;)Z

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->onChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "BulkCursor"

    const-string/jumbo v5, "Unable to commit updates because the remote process is dead"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public deactivate()V
    .locals 3

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->deactivate()V

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteRow()Z
    .locals 5

    :try_start_0
    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    iget v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    invoke-interface {v3, v4}, Lnet/sqlcipher/IBulkCursor;->deleteRow(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v3}, Lnet/sqlcipher/IBulkCursor;->count()I

    move-result v3

    iput v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iget v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    iget v4, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    if-ge v3, v4, :cond_1

    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    const/4 v3, -0x1

    iput v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->moveToPosition(I)Z

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->onChange(Z)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iput v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BulkCursor"

    const-string/jumbo v4, "Unable to delete row because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Unable to fetch column names because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized getObserver()Lnet/sqlcipher/IContentObserver;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;-><init>(Lnet/sqlcipher/AbstractCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMove(II)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v2}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v2}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v2

    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v3}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v2, p2}, Lnet/sqlcipher/IBulkCursor;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v2

    iput-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v2, :cond_4

    :goto_1
    return v1

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v2, p2}, Lnet/sqlcipher/IBulkCursor;->onMove(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BulkCursor"

    const-string/jumbo v3, "Unable to get window because the remote process is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v2, p2}, Lnet/sqlcipher/IBulkCursor;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v2

    iput-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public requery()Z
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->getObserver()Lnet/sqlcipher/IContentObserver;

    move-result-object v4

    new-instance v5, Lnet/sqlcipher/CursorWindow;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    invoke-interface {v3, v4, v5}, Lnet/sqlcipher/IBulkCursor;->requery(Lnet/sqlcipher/IContentObserver;Lnet/sqlcipher/CursorWindow;)I

    move-result v3

    iput v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iget v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    if-eq v3, v7, :cond_0

    const/4 v3, -0x1

    iput v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->requery()Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BulkCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to requery because the remote process exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->deactivate()V

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1, p1}, Lnet/sqlcipher/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public set(Lnet/sqlcipher/IBulkCursor;)V
    .locals 3

    iput-object p1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->count()I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->getWantsAllOnMoveCalls()Z

    move-result v1

    iput-boolean v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    invoke-static {v1}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mRowIdColumnIndex:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Setup failed because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set(Lnet/sqlcipher/IBulkCursor;II)V
    .locals 1

    iput-object p1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    iput p2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iput p3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mRowIdColumnIndex:I

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
