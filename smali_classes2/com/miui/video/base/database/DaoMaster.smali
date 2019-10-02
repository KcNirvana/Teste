.class public Lcom/miui/video/base/database/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;,
        Lcom/miui/video/base/database/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1341668


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/miui/video/base/database/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const v0, 0x1341668

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    const-class p1, Lcom/miui/video/base/database/OVHistoryEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/miui/video/base/database/HideVideoEntityDao;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OldOVHistoryEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OldFavorVideoEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/HideVideoEntityDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVHistoryEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OldOVHistoryEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/OldFavorVideoEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/miui/video/base/database/HideVideoEntityDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/base/database/DaoSession;
    .locals 1

    new-instance v0, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    new-instance p1, Lcom/miui/video/base/database/DaoMaster;

    invoke-direct {p1, p0}, Lcom/miui/video/base/database/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {p1}, Lcom/miui/video/base/database/DaoMaster;->newSession()Lcom/miui/video/base/database/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/miui/video/base/database/DaoSession;
    .locals 4

    new-instance v0, Lcom/miui/video/base/database/DaoSession;

    iget-object v1, p0, Lcom/miui/video/base/database/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/miui/video/base/database/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/base/database/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/miui/video/base/database/DaoSession;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/DaoSession;

    iget-object v1, p0, Lcom/miui/video/base/database/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/miui/video/base/database/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/video/base/database/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/base/database/DaoMaster;->newSession()Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/miui/video/base/database/DaoSession;

    move-result-object p1

    return-object p1
.end method
