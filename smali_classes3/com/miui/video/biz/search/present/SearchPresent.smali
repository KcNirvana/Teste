.class public final Lcom/miui/video/biz/search/present/SearchPresent;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "SearchPresent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/search/view/SearchView;",
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\u0014J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/miui/video/biz/search/present/SearchPresent;",
        "Lcom/miui/video/common/library/base/BasePresenter;",
        "Lcom/miui/video/biz/search/view/SearchView;",
        "()V",
        "mSearchResultCase",
        "Lcom/miui/video/biz/search/datasources/SearchResultCase;",
        "createCases",
        "",
        "Lcom/miui/video/common/library/base/BaseCase;",
        "",
        "getSearchResult",
        "",
        "key",
        "",
        "category",
        "searchType",
        "position",
        "",
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
.field private mSearchResultCase:Lcom/miui/video/biz/search/datasources/SearchResultCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/biz/search/datasources/SearchResultCase;

    invoke-direct {v0}, Lcom/miui/video/biz/search/datasources/SearchResultCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent;->mSearchResultCase:Lcom/miui/video/biz/search/datasources/SearchResultCase;

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/search/present/SearchPresent;->mSearchResultCase:Lcom/miui/video/biz/search/datasources/SearchResultCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent;->mCaseList:Ljava/util/List;

    const-string v1, "mCaseList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/present/SearchPresent;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/view/SearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/biz/search/view/SearchView;->showLoading()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/present/SearchPresent;->mSearchResultCase:Lcom/miui/video/biz/search/datasources/SearchResultCase;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/miui/video/biz/search/present/SearchPresent$getSearchResult$1;-><init>(Lcom/miui/video/biz/search/present/SearchPresent;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/video/biz/search/datasources/SearchResultCase;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/common/library/base/BaseObserver;)V

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "search_req"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    const-string v0, "item_id"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p4, :cond_2

    const-string p1, "position"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
