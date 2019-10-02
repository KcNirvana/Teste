.class public Lcom/miui/video/base/database/VideoGreenDaoDbHelper;
.super Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;
.source "VideoGreenDaoDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/base/database/DaoMaster$DevOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v0, "VideoGreenDaoDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database path  ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---\u5148\u524d\u548c\u66f4\u65b0\u4e4b\u540e\u7684\u7248\u672c---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p3, :cond_0

    const-string p2, "VideoGreenDaoDbHelper"

    const-string p3, "\u8fdb\u884c\u6570\u636e\u5e93\u5347\u7ea7"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/miui/video/base/database/GreenDaoUpdateHelper;

    invoke-direct {p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;-><init>()V

    new-instance p3, Lcom/miui/video/base/database/VideoGreenDaoDbHelper$1;

    invoke-direct {p3, p0}, Lcom/miui/video/base/database/VideoGreenDaoDbHelper$1;-><init>(Lcom/miui/video/base/database/VideoGreenDaoDbHelper;)V

    invoke-virtual {p2, p3}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->setCallBack(Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;)Lcom/miui/video/base/database/GreenDaoUpdateHelper;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    aput-object v1, p3, v0

    const/4 v0, 0x2

    const-class v1, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    aput-object v1, p3, v0

    const/4 v0, 0x3

    const-class v1, Lcom/miui/video/base/database/OVHistoryEntityDao;

    aput-object v1, p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->compatibleUpdate(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V

    const-string p1, "VideoGreenDaoDbHelper"

    const-string p2, "\u8fdb\u884c\u6570\u636e\u5e93\u5347\u7ea7--\u5b8c\u6210"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 0

    return-void
.end method
