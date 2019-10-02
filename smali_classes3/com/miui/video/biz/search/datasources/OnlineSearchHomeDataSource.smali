.class public final Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;
.super Ljava/lang/Object;
.source "OnlineSearchHomeDataSource.kt"

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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "keyList",
        "",
        "",
        "(Ljava/util/List;)V",
        "convertToCardListEntity",
        "destory",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "updatePage",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;->keyList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$convertToCardListEntity(Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;Ljava/util/List;)Lcom/miui/video/base/common/net/model/CardListEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;->convertToCardListEntity(Ljava/util/List;)Lcom/miui/video/base/common/net/model/CardListEntity;

    move-result-object p0

    return-object p0
.end method

.method private final convertToCardListEntity(Ljava/util/List;)Lcom/miui/video/base/common/net/model/CardListEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/video/base/common/net/model/CardListEntity;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/CardListEntity;->setRow_list(Ljava/util/List;)V

    new-instance v1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setItem_list(Ljava/util/List;)V

    const-string v2, "search_history"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setRow_type(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setImageList(Ljava/util/List;)V

    if-nez p1, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;->keyList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;->convertToCardListEntity(Ljava/util/List;)Lcom/miui/video/base/common/net/model/CardListEntity;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableHistory$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableHistory$1;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-class v0, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-interface {v0}, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;->getSearchHomeData()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableRemote$1;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableRemote$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableRemote$2;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$observableRemote$2;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast p1, Lio/reactivex/ObservableSource;

    check-cast v0, Lio/reactivex/ObservableSource;

    sget-object v1, Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchHomeDataSource$load$1;

    check-cast v1, Lio/reactivex/functions/BiFunction;

    invoke-static {p1, v0, v1}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.zip(observabl\u2026        t2\n            })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
