.class public Lnet/sqlcipher/database/SQLiteCursor;
.super Lnet/sqlcipher/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;,
        Lnet/sqlcipher/database/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Lnet/sqlcipher/database/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0}, Lnet/sqlcipher/AbstractWindowedCursor;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iput v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    iput v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    iput v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    iput-object v6, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    new-instance v3, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v3}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v3}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    iput-object v6, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    :try_start_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteQuery;->columnCountLocked()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v3, v2}, Lnet/sqlcipher/database/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v3
.end method

.method static synthetic access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/CursorWindow;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lnet/sqlcipher/database/SQLiteCursor;I)I
    .locals 0

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$600(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/database/SQLiteQuery;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Lnet/sqlcipher/database/SQLiteCursor;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 5

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v1, :cond_1

    new-instance v1, Lnet/sqlcipher/CursorWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    :goto_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1, p1}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr v1, p1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string/jumbo v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v1
.end method

.method private queryThreadLock()V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->close()V

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteQuery;->close()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorClosed()V

    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 17
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

    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteCursor;->supportsUpdates()Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "Cursor"

    const-string/jumbo v13, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v13

    if-eqz p1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v12}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_4

    if-nez v10, :cond_5

    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "null rowId or values found! rowId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", values = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v12

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v14}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UPDATE "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, " SET "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v12

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "=?"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v2, v4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " WHERE "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x3d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x3b

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v12, v15, v6, v7}, Lnet/sqlcipher/database/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v12}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v12}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/sqlcipher/database/SQLiteCursor;->onChange(Z)V

    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 1

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->deactivate()V

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method public deleteRow()Z
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->checkPosition()V

    iget v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v3, "Cursor"

    const-string/jumbo v5, "Could not delete row because either the row ID column is not available or ithas not been read."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    :try_start_0
    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v9, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :goto_1
    :try_start_1
    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->requery()Z

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v5}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteCursor;->onChange(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v1, :cond_1

    new-instance v1, Lnet/sqlcipher/CursorWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    :goto_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1, p1}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr v1, p1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string/jumbo v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v1
.end method

.method protected finalize()V
    .locals 6

    const/16 v1, 0x64

    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v2, v2, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v2, "Cursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", table = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", query = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v4, v4, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    const/4 v5, 0x0

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->close()V

    invoke-static {}, Lnet/sqlcipher/database/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->finalize()V

    throw v1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 10

    const/4 v6, -0x1

    iget-object v7, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v7, :cond_1

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    array-length v0, v1

    new-instance v4, Ljava/util/HashMap;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v7}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v7, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v7, "Cursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requesting column name with table name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v7, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_3
    return v6
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    :cond_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    const v1, 0x7fffffff

    invoke-super {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;-><init>(Lnet/sqlcipher/database/SQLiteCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->notifyDataSetChange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .locals 5

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->clear()V

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPos:I

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v1, p0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    const/4 v1, -0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    iget v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->requery()Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v1
.end method

.method public setLoadStyle(II)V
    .locals 2

    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lnet/sqlcipher/database/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Lnet/sqlcipher/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    :cond_0
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
