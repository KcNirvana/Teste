.class public final Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;
.super Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.source "PlaylistInfoStreamPresenter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "view",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
        "repository",
        "Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;",
        "refreshStrategy",
        "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
        "(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V",
        "isLoading",
        "",
        "load",
        "",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "setListLoadingBar",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private isLoading:Z


# direct methods
.method public constructor <init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 1
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method

.method public static final synthetic access$convertToFeedRow(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNextPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getNextPage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isLoading$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isLoading:Z

    return p0
.end method

.method public static final synthetic access$isRefreshing$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isRefreshing()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onLoadComplete(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->onLoadComplete()V

    return-void
.end method

.method public static final synthetic access$onLoadData(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->onLoadData(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onLoadError(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->onLoadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setLoadMoreDisable(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->setLoadMoreDisable()V

    return-void
.end method

.method public static final synthetic access$setLoading$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isLoading:Z

    return-void
.end method

.method public static final synthetic access$setNextPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->setNextPage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setRefreshing$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->setRefreshing(Z)V

    return-void
.end method


# virtual methods
.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isLoading:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getRepository()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$1;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$3;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$3;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$4;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$4;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$5;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$6;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$6;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$7;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$8;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getLifeCycle()Lio/reactivex/subjects/Subject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$9;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    new-instance v1, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$10;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$10;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$11;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$load$11;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getRepository()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isLoading:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->isLoading:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getRepository()Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$1;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$3;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$3;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$4;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$5;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$5;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$6;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$7;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;->getLifeCycle()Lio/reactivex/subjects/Subject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$8;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    new-instance v1, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$9;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$9;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$10;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter$loadMore$10;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;)V

    check-cast v2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.shortvideo.datasource.PlaylistDetailDataSource"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setListLoadingBar()V
    .locals 0

    return-void
.end method
