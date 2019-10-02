.class public final Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;
.super Ljava/lang/Object;
.source "OnlineSearchWordsDataSource.kt"

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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J$\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u001c\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c0\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001e\u0010\u0015\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "key",
        "",
        "(Ljava/lang/String;)V",
        "mKey",
        "convertToCardListEntity",
        "trem",
        "index",
        "",
        "convertToModelData",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "searchWordsEntity",
        "Lcom/miui/video/biz/search/entities/SearchWordsEntity;",
        "destory",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "refreshKey",
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
.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$convertToModelData(Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;Lcom/miui/video/biz/search/entities/SearchWordsEntity;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->convertToModelData(Lcom/miui/video/biz/search/entities/SearchWordsEntity;)Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p0

    return-object p0
.end method

.method private final convertToCardListEntity(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/video/base/common/net/model/CardListEntity;
    .locals 3

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

    const-string v2, "single_text_item"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->setRow_type(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    invoke-virtual {v2, p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setBaseLabel(Ljava/lang/String;)V

    iput p3, v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    invoke-virtual {v1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final convertToModelData(Lcom/miui/video/biz/search/entities/SearchWordsEntity;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/search/entities/SearchWordsEntity;",
            ")",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/ModelData;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/ModelData;->setCard_list(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchWordsEntity;->getTerm_list()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchWordsEntity;->getTerm_list()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchWordsEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/biz/search/entities/SearchWordsEntity;->getTerm_list()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->convertToCardListEntity(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/video/base/common/net/model/CardListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->mKey:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.empty()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;

    iget-object v0, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->mKey:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {p1, v0}, Lcom/miui/video/biz/search/datasources/RetroOnlineSearchApi;->getSearchAssociative(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$1;-><init>(Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$2;->INSTANCE:Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource$load$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RetroApiService.create(R\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
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

.method public final refreshKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/search/datasources/OnlineSearchWordsDataSource;->mKey:Ljava/lang/String;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
