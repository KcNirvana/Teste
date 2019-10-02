.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;
.super Ljava/lang/Object;
.source "MomentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;,
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;,
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$Holder;
    }
.end annotation


# instance fields
.field private mCheckMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInEditMode:Z

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSortCheckMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$wwo-LPmK--pw1tN-Y_nrNj5W6kU;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$wwo-LPmK--pw1tN-Y_nrNj5W6kU;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static deleteFile(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private static deleteFile(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$vF3JZ6f7BIuXaMwsQiVAKVd9DaY;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$vF3JZ6f7BIuXaMwsQiVAKVd9DaY;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static deleteMediaStore(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findFirstMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private getCheckMediaEntityList()Ljava/util/List;
    .locals 5
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

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    return-object v0
.end method

.method private getMediaEntityList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$delete$50(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$j5ZKP0Js4OQCVrWMIgE-x5jCzmA;

    invoke-direct {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$j5ZKP0Js4OQCVrWMIgE-x5jCzmA;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    invoke-static {p2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-static {p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->deleteMediaStore(Landroid/content/Context;Ljava/util/List;)V

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$5qSZqpLH1_U7u8jtEcv9Sx638qo;

    invoke-direct {p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$5qSZqpLH1_U7u8jtEcv9Sx638qo;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    invoke-static {p2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->deleteFile(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$delete$53(Ljava/util/List;Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-static {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->deleteMediaStore(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$XoIqmx_ry-a6e0sNzF0akryeboE;

    invoke-direct {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$XoIqmx_ry-a6e0sNzF0akryeboE;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->deleteFile(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$deleteFile$51(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->deleteFile(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$48(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;->deleteCompleted()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$49(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;->deleteCompleted()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$52(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;->deleteCompleted()V

    :cond_0
    return-void
.end method

.method private notifyCheckChange(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;",
            ">;Z)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;->check(Ljava/lang/String;Ljava/util/List;ZZ)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setChecked(Z)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->reset()V

    return-void
.end method

.method public check(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->notifyCheckChange(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public checkInTx(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setChecked(Z)V

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_1

    :cond_8
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->notifyCheckChange(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public delete(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public enableEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mIsInEditMode:Z

    return-void
.end method

.method public getCheckCount()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public isInEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mIsInEditMode:Z

    return v0
.end method

.method public registerCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->enableEditMode(Z)V

    return-void
.end method

.method public share(Landroid/support/v4/app/Fragment;)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getMediaEntityList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getCheckMediaEntityList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCheckList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->findFirstMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Ljava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v2, v3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->createIntent(Landroid/content/Context;IZZZ)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public uncheck(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->notifyCheckChange(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public uncheckInTx(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mCheckMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mSortCheckMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->notifyCheckChange(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public unregisterCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
