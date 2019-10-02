.class public Lcom/miui/video/base/database/DaoManager;
.super Ljava/lang/Object;
.source "DaoManager.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "mivideo.db"

.field private static final ONLINE_DB_NAME:Ljava/lang/String; = "online.db"

.field private static volatile mDaoManager:Lcom/miui/video/base/database/DaoManager;

.field private static mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

.field private static mDaoSession:Lcom/miui/video/base/database/DaoSession;

.field private static mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

.field private static mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

.field private static mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

.field private static mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/database/DaoManager;
    .locals 2

    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoManager:Lcom/miui/video/base/database/DaoManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/miui/video/base/database/DaoManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/video/base/database/DaoManager;

    invoke-direct {v1}, Lcom/miui/video/base/database/DaoManager;-><init>()V

    sput-object v1, Lcom/miui/video/base/database/DaoManager;->mDaoManager:Lcom/miui/video/base/database/DaoManager;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoManager:Lcom/miui/video/base/database/DaoManager;

    return-object v0
.end method


# virtual methods
.method public closeDaoSession(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    invoke-virtual {p1}, Lcom/miui/video/base/database/DaoSession;->clear()V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    invoke-virtual {p1}, Lcom/miui/video/base/database/DaoSession;->clear()V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    :cond_1
    :goto_0
    return-void
.end method

.method public closeDataBase(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoManager;->closeHelper(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoManager;->closeDaoSession(Z)V

    return-void
.end method

.method public closeHelper(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;->close()V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;->close()V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    :cond_1
    :goto_0
    return-void
.end method

.method public getDaoMaster(Z)Lcom/miui/video/base/database/DaoMaster;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    iget-object v2, p0, Lcom/miui/video/base/database/DaoManager;->context:Landroid/content/Context;

    const-string v3, "online.db"

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v1, Lcom/miui/video/base/database/DaoManager;->mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    new-instance v0, Lcom/miui/video/base/database/DaoMaster;

    sget-object v1, Lcom/miui/video/base/database/DaoManager;->mOnLineHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    iget-object v2, p0, Lcom/miui/video/base/database/DaoManager;->context:Landroid/content/Context;

    const-string v3, "mivideo.db"

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v1, Lcom/miui/video/base/database/DaoManager;->mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    new-instance v0, Lcom/miui/video/base/database/DaoMaster;

    sget-object v1, Lcom/miui/video/base/database/DaoManager;->mHelper:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/database/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    :goto_1
    return-object p1
.end method

.method public getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoMaster(Z)Lcom/miui/video/base/database/DaoMaster;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    :cond_0
    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    invoke-virtual {v0}, Lcom/miui/video/base/database/DaoMaster;->newSession()Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoMaster(Z)Lcom/miui/video/base/database/DaoMaster;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    :cond_2
    sget-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoMaster:Lcom/miui/video/base/database/DaoMaster;

    invoke-virtual {v0}, Lcom/miui/video/base/database/DaoMaster;->newSession()Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mOnLineDaoSession:Lcom/miui/video/base/database/DaoSession;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/miui/video/base/database/DaoManager;->mDaoSession:Lcom/miui/video/base/database/DaoSession;

    :goto_1
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/DaoManager;->context:Landroid/content/Context;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    sput-boolean p1, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_SQL:Z

    sput-boolean p1, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_VALUES:Z

    return-void
.end method
