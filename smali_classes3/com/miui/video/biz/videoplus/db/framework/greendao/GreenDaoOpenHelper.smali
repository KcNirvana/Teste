.class public Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;
.super Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$OpenHelper;
.source "GreenDaoOpenHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "third.db"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "third.db"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 2

    new-instance p2, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper$1;-><init>(Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const-class v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {p1, p2, p3}, Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper$ReCreateAllTableListener;[Ljava/lang/Class;)V

    return-void
.end method
