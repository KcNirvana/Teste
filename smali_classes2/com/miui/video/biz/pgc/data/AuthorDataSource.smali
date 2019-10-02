.class public Lcom/miui/video/biz/pgc/data/AuthorDataSource;
.super Ljava/lang/Object;
.source "AuthorDataSource.java"

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
.field private filter:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private lastId:Ljava/lang/String;

.field private page:I

.field private resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "new"

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->filter:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    return-void
.end method

.method public static synthetic lambda$loadAuthorDetail$19(Lcom/miui/video/biz/pgc/data/AuthorDataSource;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;->onResult(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "last_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    iget v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/CardListEntity;->setRow_list(Ljava/util/List;)V

    new-instance v1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setItem_list(Ljava/util/List;)V

    const-string v2, "no_more_content"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setRow_type(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    invoke-virtual {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v3, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setAuthorName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private loadAuthorDetail()Lio/reactivex/Observable;
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

    iget-object v1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->filter:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/pgc/data/api/RetroPgcApi;->getAuthorDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;->INSTANCE:Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$AuthorDataSource$G50w1pdLaEAAJifunLrEJhpvKoc;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$AuthorDataSource$G50w1pdLaEAAJifunLrEJhpvKoc;-><init>(Lcom/miui/video/biz/pgc/data/AuthorDataSource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "author_page"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    invoke-static {v0, p1, v1}, Lcom/miui/video/biz/pgc/data/DataSourceTracker;->trackRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->loadAuthorDetail()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "author_page"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->page:I

    invoke-static {v0, p1, v1}, Lcom/miui/video/biz/pgc/data/DataSourceTracker;->trackRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lastId:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->loadAuthorDetail()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->filter:Ljava/lang/String;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
