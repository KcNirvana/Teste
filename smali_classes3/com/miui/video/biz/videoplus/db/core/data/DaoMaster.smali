.class public Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$DevOpenHelper;,
        Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1341661


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const v0, 0x1341661

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    const-class p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    new-instance p1, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->newSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;
    .locals 4

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->newSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object p1

    return-object p1
.end method
