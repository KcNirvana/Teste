.class public Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;
.super Ljava/lang/Object;
.source "GreenDaoDbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager$Holder;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mGreenDaoDbManager:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;


# instance fields
.field private final mSession:Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GreenDaoDbManager  context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GreenDaoDbManager  context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->newSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mSession:Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;
    .locals 3

    sget-object v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mGreenDaoDbManager:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mGreenDaoDbManager:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mGreenDaoDbManager:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    return-object v0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    const-string p0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GreenDaoDbManager  mContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GreenDaoDbManager  mContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->mSession:Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    return-object v0
.end method
