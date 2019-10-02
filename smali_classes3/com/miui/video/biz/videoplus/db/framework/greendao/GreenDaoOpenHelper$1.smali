.class Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper$1;
.super Ljava/lang/Object;
.source "GreenDaoOpenHelper.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper$ReCreateAllTableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper$1;->this$0:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public onDropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public onUpdateNewColumsValue(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    return-void
.end method
