.class public final Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;
.super Ljava/lang/Object;
.source "OnlineSearchResultDataSource.kt"

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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001e\u0010\u0014\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\tJ\u0016\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u00020\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "()V",
        "mCategory",
        "",
        "mKey",
        "mNext",
        "mSearchData",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "convertToModelData",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "searchData",
        "destory",
        "",
        "getSearchData",
        "load",
        "Lio/reactivex/Observable;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "setSearchData",
        "key",
        "category",
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
.field private mCategory:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mNext:Ljava/lang/String;

.field private mSearchData:Lcom/miui/video/biz/search/entities/SearchData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$convertToModelData(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->convertToModelData(Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMNext$p(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mNext:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMSearchData$p(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)Lcom/miui/video/biz/search/entities/SearchData;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    return-object p0
.end method

.method public static final synthetic access$setMNext$p(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mNext:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMSearchData$p(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    return-void
.end method

.method private final convertToModelData(Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/search/entities/SearchData;",
            ")",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/ModelData;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchData;->getCard_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/ModelData;->setCard_list(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchData;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/net/model/ModelData;->setNext(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public final getSearchData()Lcom/miui/video/biz/search/entities/SearchData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    return-object v0
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 3
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

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$1;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(mSearchD\u2026delData(it)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mKey:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mCategory:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mKey:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$2;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$2;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$3;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$load$4;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    const-string v0, "if (!TextUtils.isEmpty(m\u2026ervable.empty()\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 3
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

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mNext:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mKey:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mNext:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$loadMore$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$loadMore$1;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$loadMore$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource$loadMore$2;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final setSearchData(Lcom/miui/video/biz/search/entities/SearchData;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/search/entities/SearchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mSearchData:Lcom/miui/video/biz/search/entities/SearchData;

    return-void
.end method

.method public final setSearchData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchResultDataSource;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
