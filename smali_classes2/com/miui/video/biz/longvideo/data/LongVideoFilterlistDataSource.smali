.class public final Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;
.super Ljava/lang/Object;
.source "LongVideoFilterlistDataSource.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongVideoFilterlistDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongVideoFilterlistDataSource.kt\ncom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,84:1\n69#2,9:85\n145#2,2:94\n78#2:96\n*E\n*S KotlinDebug\n*F\n+ 1 LongVideoFilterlistDataSource.kt\ncom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource\n*L\n64#1,9:85\n64#1,2:94\n64#1:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u001c\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001e\u0010\u001b\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0018\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0016\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004J\u0008\u0010\u001f\u001a\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\u0005R-\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\rj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "channel",
        "",
        "(Ljava/lang/String;)V",
        "getChannel",
        "()Ljava/lang/String;",
        "setChannel",
        "conditions",
        "getConditions",
        "setConditions",
        "map",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getMap",
        "()Ljava/util/HashMap;",
        "page",
        "",
        "condition2Str",
        "",
        "destory",
        "load",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "putCondition",
        "key",
        "value",
        "updatePage",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private channel:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private conditions:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->channel:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->map:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    return p0
.end method

.method public static final synthetic access$setPage$p(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    return-void
.end method

.method private final condition2Str()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->map:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->map:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/miui/video/biz/longvideo/data/entity/CondistionEntity;

    invoke-direct {v6, v5, v4}, Lcom/miui/video/biz/longvideo/data/entity/CondistionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v2, Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditions()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;

    return-object v0
.end method

.method public final getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->map:Ljava/util/HashMap;

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

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->condition2Str()V

    const-class p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->channel:Ljava/lang/String;

    iget v1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;->getLongVideoFilterList(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$1;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$2;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$load$3;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)V

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

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->condition2Str()V

    const-class p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->channel:Ljava/lang/String;

    iget v1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->page:I

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/longvideo/data/RetroLongVideoApi;->getLongVideoFilterList(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$1;->INSTANCE:Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource$loadMore$2;-><init>(Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final putCondition(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setConditions(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/data/LongVideoFilterlistDataSource;->conditions:Ljava/lang/String;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
