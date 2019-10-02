.class public Lcom/miui/video/biz/pgc/data/SubscribeDataSource;
.super Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;
.source "SubscribeDataSource.java"

# interfaces
.implements Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private hasSubscribeAuthor:Z

.field private lastVideoItemId:Ljava/lang/String;

.field private lastVideoPlayListId:Ljava/lang/String;

.field private lastVideoTime:J

.field private final listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

.field private page:I

.field private resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;-><init>(Z)V

    iput v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    return-void
.end method

.method public static synthetic lambda$load$13(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;Lcom/miui/video/base/common/net/model/ModelData;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subscribed_author_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->hasSubscribeAuthor:Z

    iget-object v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;->onUpdate(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->hasSubscribeAuthor:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->loadVideo()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;

    invoke-direct {v2, v0, p1}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$yc8MN1_lIQJNUAl1EGep3QzuIT0;-><init>(Lcom/miui/video/base/common/net/model/CardRowListEntity;Lcom/miui/video/base/common/net/model/ModelData;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$load$14(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$load$15(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "0"

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$loadVideo$16(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 6
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

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    const-string v5, "lastId"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoItemId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v5, "gmtPublish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoTime:J

    goto :goto_1

    :cond_1
    const-string v5, "playlistId"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoPlayListId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    :goto_3
    const-string p1, "1"

    goto :goto_4

    :cond_4
    const-string p1, "0"

    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->onResult(Ljava/lang/String;)V

    return-void

    :goto_5
    if-eqz v0, :cond_5

    const-string v0, "1"

    goto :goto_6

    :cond_5
    const-string v0, "0"

    :goto_6
    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->onResult(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$null$12(Lcom/miui/video/base/common/net/model/CardRowListEntity;Lcom/miui/video/base/common/net/model/ModelData;Lcom/miui/video/base/common/net/model/ModelData;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setTopped(I)V

    :try_start_0
    invoke-virtual {p2}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object p1
.end method

.method private loadVideo()Lio/reactivex/Observable;
    .locals 5
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

    iget-object v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoPlayListId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/pgc/data/api/RetroPgcApi;->getSubscribeVideoList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;->INSTANCE:Lcom/miui/video/biz/pgc/data/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$h1TThPE91GHZRoWVz61SWUIfTDo;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$h1TThPE91GHZRoWVz61SWUIfTDo;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private onResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;->onResult(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->resultListener:Lcom/miui/video/biz/pgc/utils/OnFirstLoadResultListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->reset()V

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

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->listener:Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;

    invoke-interface {v0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource$AuthorTypeUpdateListener;->onLoad()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->reset()V

    const-string v0, "subscription"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I

    invoke-static {v0, p1, v1}, Lcom/miui/video/biz/pgc/data/DataSourceTracker;->trackRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->loadAuthor()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$9jjV-g0Ovsb61bGzCoDuEBuULCU;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$9jjV-g0Ovsb61bGzCoDuEBuULCU;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$ResK9uYf6TjN4V1Uf02rMJb-fO0;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$ResK9uYf6TjN4V1Uf02rMJb-fO0;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$sDrmd4A6vv0MPbuphXtsXrODlEw;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/data/-$$Lambda$SubscribeDataSource$sDrmd4A6vv0MPbuphXtsXrODlEw;-><init>(Lcom/miui/video/biz/pgc/data/SubscribeDataSource;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
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

    const-string v0, "subscription"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I

    invoke-static {v0, p1, v1}, Lcom/miui/video/biz/pgc/data/DataSourceTracker;->trackRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->hasSubscribeAuthor:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->loadVideo()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastSubscribeTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->loadAuthor()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected reset()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/pgc/data/SubscribeAuthorDataSource;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoTime:J

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoItemId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->lastVideoPlayListId:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/pgc/data/SubscribeDataSource;->page:I

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
