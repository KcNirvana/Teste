.class public final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;
.super Ljava/lang/Object;
.source "ShortVideoChannelDataSource.kt"

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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u001c\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00100\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001e\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0010\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "entity",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "listener",
        "Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;",
        "(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;)V",
        "isFirst",
        "",
        "next",
        "",
        "page",
        "",
        "convertToCardListEntity",
        "convertToModelData",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "destory",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "trackRefreshEvent",
        "updatePage",
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
.field private final entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

.field private isFirst:Z

.field private final listener:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;

.field private next:Ljava/lang/String;

.field private page:I


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->listener:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->isFirst:Z

    iput p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->page:I

    return-void
.end method

.method public static final synthetic access$convertToModelData(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->convertToModelData()Lcom/miui/video/base/common/net/model/ModelData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->listener:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$ISearchKeyResultListener;

    return-object p0
.end method

.method public static final synthetic access$getNext$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->next:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPage$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->page:I

    return p0
.end method

.method public static final synthetic access$isFirst$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->isFirst:Z

    return p0
.end method

.method public static final synthetic access$setFirst$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->isFirst:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->next:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPage$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->page:I

    return-void
.end method

.method private final convertToCardListEntity()Lcom/miui/video/base/common/net/model/CardListEntity;
    .locals 4

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

    return-object v0
.end method

.method private final convertToModelData()Lcom/miui/video/base/common/net/model/ModelData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->convertToCardListEntity()Lcom/miui/video/base/common/net/model/CardListEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "main_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 6
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

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;I)V

    iget-boolean p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->isFirst:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const-class p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/ShortVideoConfigKt;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getRec_channel_id()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v4, v2}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MiCloudGlobalSessionLogg\u2026n(entity?.rec_channel_id)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0, v3, v2}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getFeedVideoList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$1;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$3;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RetroApiService.create(R\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-class p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTarget()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/ShortVideoConfigKt;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getRec_channel_id()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v4, v2}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MiCloudGlobalSessionLogg\u2026n(entity?.rec_channel_id)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getFeedVideoList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$4;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$load$4;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RetroApiService.create(R\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)Lio/reactivex/Observable;
    .locals 5
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

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->next:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->page:I

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTab()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    const-class v0, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->next:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/ShortVideoConfigKt;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;->entity:Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getRec_channel_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiCloudGlobalSessionLogg\u2026n(entity?.rec_channel_id)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getFeedVideoList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$loadMore$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$loadMore$1;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$loadMore$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource$loadMore$2;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoChannelDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
