.class public final Lcom/miui/video/biz/search/datasources/SearchResultCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "SearchResultCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Lcom/miui/video/biz/search/entities/SearchData;",
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/video/biz/search/datasources/SearchResultCase;",
        "Lcom/miui/video/common/library/base/BaseCase;",
        "Lcom/miui/video/biz/search/entities/SearchData;",
        "()V",
        "mApi",
        "Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;",
        "getSearchResult",
        "",
        "key",
        "",
        "category",
        "baseObserver",
        "Lcom/miui/video/common/library/base/BaseObserver;",
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
.field private mApi:Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    const-class v0, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RetroApiService.create(R\u2026ineSearchApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    iput-object v0, p0, Lcom/miui/video/biz/search/datasources/SearchResultCase;->mApi:Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    return-void
.end method


# virtual methods
.method public final getSearchResult(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/common/library/base/BaseObserver;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/common/library/base/BaseObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/video/common/library/base/BaseObserver<",
            "Lcom/miui/video/biz/search/entities/SearchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseObserver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/SearchResultCase;->mApi:Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;->getSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;->INSTANCE:Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$1;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$2;->INSTANCE:Lcom/miui/video/biz/search/datasources/SearchResultCase$getSearchResult$2;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/miui/video/biz/search/datasources/SearchResultCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
