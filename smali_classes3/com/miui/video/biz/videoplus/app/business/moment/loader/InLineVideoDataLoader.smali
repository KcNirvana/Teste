.class public Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;
.super Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
.source "InLineVideoDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider<",
        "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

.field private mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    return-void
.end method

.method private createQueryBuilder(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->CAMERA:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v6, "%video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v6, "%/DCIM/Camera%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v4

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WECHAT:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v6, "%video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v6, "%/Tencent/MicroMsg/WeiXin%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    sget-object v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v7, "%/tencent/MicroMsg/WeiXin%"

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v9, "%/tencent/MicroMsg/WeChat%"

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0, v3, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v4

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v6, "%video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v6, "%/WhatsApp/Media/WhatsApp Video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    sget-object v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v7, "%/whats-App/Media/WhatsApp Video%"

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v4

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v6, "%video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v6, "%/Pictures/Facebook%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v4

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v6, "%video%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v5

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    const-string v6, "%/Movies/Instagram%"

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v4

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v1, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->createQueryByTimeSql(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_7

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->createQueryWhereTimeDimensionGroupByDayAndLocationSql(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v2, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->createQueryBuilder(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v8, v8, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Address:Lorg/greenrobot/greendao/Property;

    iget-object v9, v9, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v8, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->loadDataWhereDayAndLocation(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    invoke-static {v9}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->createFakeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_4

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v11}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v8}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setAddress(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    :try_start_3
    const-string v4, ""

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_4
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    :goto_5
    return-object v0
.end method

.method private getSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "medias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, " ( "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, " is null "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " and ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->CAMERA:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/DCIM/Camera"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WECHAT:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne p1, p2, :cond_4

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tencent/MicroMsg/WeChat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne p1, p2, :cond_5

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/WhatsApp/Media/WhatsApp Video"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/whats-App/Media/WhatsApp Video"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne p1, p2, :cond_6

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Pictures/Facebook"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne p1, p2, :cond_7

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Movies/Instagram"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " like \'%video%\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'0\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " order by "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " desc;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canZoomIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()J
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->CAMERA:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryVideoCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/WhatsApp/Media/WhatsApp Video"

    const-string v2, "/whats-App/Media/WhatsApp Video"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryVideoCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/Pictures/Facebook"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryVideoCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/Movies/Instagram"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryVideoCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getData()Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mData:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getData()Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object v0

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mType:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadDataWhereDayAndLocation(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryMediaEntity(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_2
    :goto_3
    return-object p2
.end method

.method protected startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsParsed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getFlagsExceptCover()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getRotation()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v4

    if-ne v4, v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v2, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->updateInTx(Ljava/lang/Iterable;)V

    :cond_6
    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->transferToMomentEntityForVideo(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mData:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->mData:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object p1
.end method

.method protected bridge synthetic startLoad(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method
