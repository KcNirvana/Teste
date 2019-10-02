.class public Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;
.super Ljava/lang/Object;
.source "SubscribeAuthorDataSource.java"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final horizontalMode:Z

.field protected lastSubscribeId:Ljava/lang/String;

.field protected lastSubscribeTime:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->horizontalMode:Z

    return-void
.end method

.method public static synthetic lambda$loadAuthor$11(Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mv://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const-string v6, "last_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    iput-object v6, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeId:Ljava/lang/String;

    :cond_0
    const-string v6, "gmt_create"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->reset()V

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_RECOMMEND_AUTHOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/miui/video/common/feed/DefaultUIFactory;->TYPE_RECOMMEND_AUTHOR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->rowToCard(Lcom/miui/video/base/common/net/model/CardRowListEntity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->horizontalMode:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->sortTinyCardEntity(Ljava/util/List;I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    const-string p1, "subscribed_author_list"

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setRow_type(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "subscribed_author_list"

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->rowToCard(Lcom/miui/video/base/common/net/model/CardRowListEntity;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private rowToCard(Lcom/miui/video/base/common/net/model/CardRowListEntity;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;-><init>()V

    invoke-virtual {v1, p3}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setRow_type(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setItem_list(Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->reset()V

    return-void
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->reset()V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->loadAuthor()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected loadAuthor()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/miui/video/biz/pgc/data/api/RetroPgcApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/data/api/RetroPgcApi;

    iget-wide v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->horizontalMode:Z

    if-eqz v3, :cond_0

    const-string v3, "mine_subscribed_page"

    goto :goto_0

    :cond_0
    const-string v3, "subscribed_authors_page"

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/pgc/data/api/RetroPgcApi;->getSubscribeAuthorList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;->INSTANCE:Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeAuthorDataSource$_Cuo1smEJAGb5V2z1RJulMqrhz0;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeAuthorDataSource$_Cuo1smEJAGb5V2z1RJulMqrhz0;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->loadAuthor()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected reset()V
    .locals 2

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->lastSubscribeTime:J

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
